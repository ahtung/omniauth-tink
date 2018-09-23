# OmniAuth Tink

This is the official OmniAuth strategy for authenticating to Rabobank. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Tink Applications Page](https://docs.tink.se).

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :tink, ENV['TINK_KEY'], ENV['TINK_SECRET']
end
```
