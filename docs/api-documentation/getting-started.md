# Getting Started With Chimoney API

## API User Requirements

Here are the API User Requirements to get started with the Chimoney API:

- Create an **account** on the Chimoney Developer Portal.
- Log in to access the Chimoney dashboard.
- Generate your **API Key**. It will be used to authenticate API requests.
- Choose your environment:
  - Sandbox: Default testing environment with preloaded test credits.
  - Production: Requires business verification and an approved plan.

## API base URL

Use this base URL to start a request:

- **Sandbox** (development/testing):
  https://sandbox.chimoney.io
- **Production** (live use):
  Follow the base URL format https://api.chimoney.io/v0.2.4/ (for example, /redeem/gift-card endpoint)

## Authentication Process

The Chimoney API uses API Key authentication.

1. Log in to the Chimoney dashboard.
1. Go to **Developers** then click on **Create App**.
1. Copy your generated API key.
1. Pass it as a header in every request:

```bash
X-API-KEY: YOUR_API_KEY_HERE
```

## Required headers

Include the following in your HTTP request headers:

`Accept: application/json` - specify that you want JSON responses.

`Content-Type: application/json` - indicates you're sending JSON payloads.

`X-API-KEY: YOUR_API_KEY_HERE` - your generated API key.

## Sample cURL request

Here’s an example showing how to redeem a Chimoney transaction as a gift card:

#### Endpoint:

`POST /v0.2.4/accounts/balance`

#### Request (cURL):

```bash
curl --request POST \
  --url https://api.chimoney.io/v0.2.4/accounts/balance \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "X-API-KEY: YOUR_API_KEY_HERE" \
  --data '{}'
```

#### Sample Response:

```bash
{
  "data": {
    "balance": {
      "USD": 1000,
      "NGN": 500000
    }
  },
  "status": "success"
}
```
