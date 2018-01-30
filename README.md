# Authy
Elixir library access to the Authy API / Twilio Verify API , based loosely on the [ruby gem](https://github.com/authy/authy-ruby).

## Features

- [x] Phone Verification [docs](https://www.twilio.com/docs/api/verify/rest)

## Installation

1. Add authy to your list of dependencies in `mix.exs`:

  ```
  def deps do
    [{:authy, github: "CristianOspina/authy"}]
  end
  ```

2. Ensure authy is started before your application:

  ```
  def application do
    [applications: [:authy]]
  end
  ```

3. Configure your api key and defaults for the various APIs

  ```
  config :authy,
    api_key: System.get_env("AUTHY_API_KEY")
    phone_verification: [
      via: "sms",
      country_code: "61",
      locale: "en-AU",
      code_length: 4,
      custom_message: "Verification code, yo!"]
  ```
