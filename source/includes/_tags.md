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

## Show Tag Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/tags/:tag_id
```

> The above command returns JSON structured like this:

```json
{
    "type": "tag",
    "id": 1,
    "name": "Marketing"
}
```

This endpoint retrieves all the tag details.
### HTTP Request

`GET https://api.lesson.ly/api/v1/tags/:tag_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.
