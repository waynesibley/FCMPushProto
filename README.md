# FCMPushProto
A simple Proof of Concept that pushes notifications to mobile devices using a
a simple wrapper around Firebase Cloud Messaging that uses HTTPoison.

## Needed configuration

```elixir

config :exfcm,
  fcm_url: "fcmHTTPRequestEndpoint"
  server_key: "yourKeyFromConsole"

```

## To send message to a device
Push.fire(deviceToken)

## Usage

  1. `mix deps.clean`
  2. `mix deps.get --all`
  3. `mix deps.update --all`  
  4. `mix deps.compile`
  5. `iex -S mix`
  6. `Push.fire(deviceToken)`
