# Tags

## List Tags

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags"
```

> The above command returns JSON structured like this:

```json
{
  "type": "tags",
  "tags": [
    {
      "id": 1,
      "resource_type": "tag",
      "name": "Marketing"
    },
    {
      "id": 2,
      "resource_type": "tag",
      "name": "Development"
    }
  ]
}
```

This endpoint retrieves all tags.

### HTTP Request

`GET https://api.lessonly.com/api/v1/tags`

## Show Tag Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag",
  "resource_type": "tag",
  "id": 1,
  "name": "Marketing"
}
```

This endpoint retrieves all the tag details.
### HTTP Request

`GET https://api.lessonly.com/api/v1/tags/:tag_id`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Lessons

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id/lessons
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_lessons",
  "lessons": [
    {
      "id": 5,
      "resource_type": "tag",
      "title": "Marketing 101",
      "assignees_count": 21,
      "completed_count": 1,
      "retake_score": 90,
      "description": "A quick overview about how we do marketing."
    },
    {
      "id": 456,
      "resource_type": "tag",
      "title": "Development 101",
      "assignees_count": 11,
      "completed_count": 5,
      "retake_score": 95,
      "description": "A quick overview about how we do development."
    }
  ]
}
```

This endpoint retrieves all the lessons tagged with a particular tag.
### HTTP Request

`GET https://api.lessonly.com/api/v1/tags/:tag_id/lessons`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.

## Tag Courses

```shell
curl -u "DOMAIN:API_KEY" "https://api.lessonly.com/api/v1/tags/:tag_id/courses
```

> The above command returns JSON structured like this:

```json
{
  "type": "tag_courses",
  "courses": [
    {
      "id": 123,
      "resource_type": "tag",
      "title": "Onboarding Course",
      "assignees_count": 15,
      "completed_count": 11,
      "description": "This course will get you up to speed in our company.",
      "lessons": [
        {
          "id": 5,
          "resource_type": "lesson",
          "title": "Marketing 101",
          "assignees_count": 21,
          "completed_count": 1,
          "retake_score": 90,
          "description": "A quick overview about how we do marketing."
        },
        {
          "id": 456,
          "resource_type": "lesson",
          "title": "Development 101",
          "assignees_count": 11,
          "completed_count": 5,
          "retake_score": 95,
          "description": "A quick overview about how we do development."
        }
      ]
    }
  ]
}
```

This endpoint retrieves all the courses tagged with a particular tag.
### HTTP Request

`GET https://api.lessonly.com/api/v1/tags/:tag_id/courses`

### Query Parameters

Parameter | Required | Type |  Description
--- | --- | --- | ---
tag_id | yes | Positive Integer | The tag to access.  The company must have access to the tag.
