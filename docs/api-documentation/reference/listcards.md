# List Gift Card Products

### Endpoint & Method

`GET /v0.2.4/info/gift-card/products`

### Description

Returns a list of available gift card products you can redeem.

### Request Parameters

Query parameters (optional):

| Field       | Type   | Required | Description                           |
| ----------- | ------ | -------- | ------------------------------------- |
| countryCode | string | Optional | Filter products by country (e.g., US) |

### Example Request

```bash
curl --request GET \
  --url "https://api.chimoney.io/v0.2.4/info/gift-card/products?countryCode=US" \
  --header "X-API-KEY: YOUR_API_KEY"
```

### Sample JSON Response

```bash
{
  "status": "success",
  "data": [
    {
      "productId": "GIFT123",
      "productName": "Amazon Gift Card",
      "currency": "USD",
      "minAmount": 5,
      "maxAmount": 500
    },
    {
      "productId": "GIFT456",
      "productName": "Netflix Gift Card",
      "currency": "USD",
      "minAmount": 10,
      "maxAmount": 100
    }
  ]
}
```

### Notes

- Missing X-API-KEY.
- Useful before calling `/redeem/gift-card` to fetch valid `productIds`.
