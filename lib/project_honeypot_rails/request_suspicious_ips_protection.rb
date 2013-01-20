module ProjectHoneypotRails
  module RequestSuspiciousIpsProtection
    extend ActiveSupport::Concern

    module ClassMethods
      def protect_from_suspicious_ips(options = {})
        prepend_before_filter :verify_ip_address, options
      end
    end

    protected

    def verify_ip_address
      ip_address = request.remote_ip
      key = "httpbl_#{ip_address}"

      safe = Rails.cache.fetch(key, expires_in: 6.hours) do
        ::ProjectHoneypot.lookup(ip_address).safe?
      end

      handle_unverified_request unless safe
    end

    def handle_unverified_request
      render :status => :forbidden, :text => "Forbidden"
    end
  end
end

class ActionController::Base
  include ProjectHoneypotRails::RequestSuspiciousIpsProtection
end
