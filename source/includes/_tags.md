# Tags

## List Tags

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags"
```

> The above command returns JSON structured like this:

```json
{
    "type": "tags",
    "tags": [
        {
            "id": 1,
            "name": "Marketing"
        },
        {
            "id": 2,
            "name": "Development"
        }
    ]
}
```

This endpoint retrieves all tags.

### HTTP Request

`GET https://api.lesson.ly/api/v1/tags`
