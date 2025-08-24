# Initiate a Payout

### Endpoint & Method

`POST /v0.2.4/payouts/initiate`

### Description

Initiates a payout to a recipient (e.g., email, phone, or wallet).

### Request Body Parameters

| Field    | Type   | Required | Description                    |
| -------- | ------ | -------- | ------------------------------ |
| email    | string | Yes      | Recipient email                |
| amount   | number | Yes      | Amount to payout               |
| currency | string | Yes      | Currency code (e.g., USD, NGN) |
| reason   | string | Optional | Reason for payout              |

### Example Request

```bash
curl --request POST \
  --url https://api.chimoney.io/v0.2.4/payouts/initiate \
  --header "Content-Type: application/json" \
  --header "X-API-KEY: YOUR_API_KEY" \
  --data '{
    "email": "recipient@example.com",
    "amount": 20,
    "currency": "USD",
    "reason": "Test payout"
  }'
```

### Sample JSON Response

```bash
{
  "status": "success",
  "data": {
    "payoutId": "pyt_1234567890",
    "amount": 20,
    "currency": "USD",
    "recipient": "recipient@example.com",
    "status": "pending"
  }
}
```

### Notes

- There are insufficient funds.
- The email recipient is invalid.
- In sandbox, transactions remain “pending” for testing.
