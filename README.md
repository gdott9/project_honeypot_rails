# ProjectHoneypotRails

ProjectHoneypotRails provides integration between [ProjectHoneypot](https://github.com/gdott9/project_honeypot)
and Rails 3 to prevent suspicious IP to access your website.

## Installation

Add this line to your application's Gemfile:

    gem 'project_honeypot_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install project_honeypot_rails

## Usage

Add this line in the controllers you want to protect
```
protect_from_suspicious_ips
```
This method can take the same arguments as `before_filter` to specify the actions you want to protect.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
