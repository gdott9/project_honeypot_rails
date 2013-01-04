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
      session[:project_honeypot_safe] ||= ::ProjectHoneypot.lookup(request.remote_ip).safe?
      handle_unverified_request if !session[:project_honeypot_safe]
    end

    def handle_unverified_request
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end
end

class ActionController::Base
  include ProjectHoneypotRails::RequestSuspiciousIpsProtection
end
