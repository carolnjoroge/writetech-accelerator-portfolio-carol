# Check Account Balance

### Endpoint & Method

`POST /v0.2.4/accounts/balance`

### Description

Returns the available balance in your Chimoney wallet(s).

### Request Body / Parameters

Send {}

| Field | Type | Required | Description               |
| ----- | ---- | -------- | ------------------------- |
| —     | —    | —        | No request body is needed |

### Example Request

```bash
curl --request POST \
  --url https://api.chimoney.io/v0.2.4/accounts/balance \
  --header "Content-Type: application/json" \
  --header "X-API-KEY: YOUR_API_KEY" \
  --data '{}'
```

### Sample JSON Response

```bash
{
  "status": "success",
  "data": {
    "balance": {
      "USD": 1000,
      "NGN": 500000
    }
  }
}
```

### Notes

- Missing X-API-KEY.
- Works in sandbox with preloaded credits.
