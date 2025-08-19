# GET

Retrieve items from a specific collection.

## Request

- Method: `GET`
- Endpoint: `/items/:collection`
- Path Parameter:
  - `collection` (string, required): The collection name.
- Query Parameters:
  - `filter` (object, optional): Filter results.
  - `limit` (int, optional): Limit number of results.

### Example
```bash
curl "http://localhost:8055/items/articles?limit=2"
```
### Response
```bash
{
  "data": [
    { "id": 1, "title": "Intro to Directus" },
    { "id": 2, "title": "Advanced API Queries" }
  ]
}
```
