# POST Request

Create a new item in collection.

## Request

- Method: `POST`
- Endpoint: `/items/:collection`
- Path Parameter:
  - `collection` (string, required): The collection name.
- Body Parameters:
  - JSON object containing item fields.

### Example

```bash
curl -X POST "http://localhost:8055/items/articles" \
-H "Content-Type: application/json" \
-d '{
  "title": "New Article",
  "content": "This is a new post created with Directus API."
}'
```

### Response

```bash
{
  "data": {
    "id": 3,
    "title": "New Article",
    "content": "This is a new post created with Directus API."
  }
}
```
