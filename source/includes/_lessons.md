# Lessons

## List Lessons

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/lessons"
```

> The above command returns JSON structured like this:

```json
{
  "type": "lessons",
  "lessons":[
      {
        "id": 1,
        "title": "First Lesson"
      },
      {
        "id": 2,
        "title": "Second Lesson"
      },
    ]
}
```

This endpoint retrieves all lessons.

### HTTP Request

`GET https://lesson.ly/lessons`

## Show Lesson Details

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/lessons/:lesson_id
```

> The above command returns JSON structured like this:

```json
{
  "type": "lesson",
  "id": 1,
  "title": "Lesson 1",
  "assignee_count": 10,
  "completed_count": 5
}
```

This endpoint retrieves all the lesson details including statistics about the completion of the course.
### HTTP Request

`GET https://lesson.ly/lessons/:lesson_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
lesson_id | yes | Positive Integer | The lesson to access.  The company must have access to the lesson.

## Lesson Assignments

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/lessons/:lesson_id/assignments
```

> The above command returns JSON structured like this:

```json
{
  "type": "lesson_assignments",
  "total_assignments": 2000,
  "page": 1,
  "per_page": 2,
  "total_pages": 1000,
  "assignments":[
    {
      "id": 1,
      "assignee_id": 1,
      "due_by": "09/09/2020",
      "reassigned_at": "09/09/2020",
      "completed_at": "09/09/2020",
      "updated_at": "09/09/2020",
      "status": "Incomplete",
      "score": 20
    },
    {
      "id": 2,
      "assignee_id": 2,
      "due_by": "09/09/2020",
      "reassigned_at": "09/09/2020",
      "completed_at": "09/09/2020",
      "updated_at": "09/09/2020",
      "status": "Complete",
      "score": 100
    }
  ]
}
```

This endpoint retrieves all the assignments for a particular lesson.
### HTTP Request

`GET https://lesson.ly/lessons/:lesson_id/assignments`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
lesson_id | yes | Positive Integer | The lesson to access.  The company must have access to the lesson.
page | no | which page in the pagination to fetch.  Default = 1
per_page | no | how many results to return in each page.  Default = 50

## Assign Lesson

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/lessons/:lesson_id/assignments" -p params
```

> The following are sample parameters for this request:

```json
{
  "assignements":[
    {
      "assignee_id": 1,
      "due_by": "09/09/2020"
    }
  ]
}

```

> A successful update returns JSON formatted version of the assignments made

```json
{
  "type": "update_lesson_assignments",
  "assignments": [
    {
      "id": 1,
      "assignee_id": 1,
      "due_by": "09/09/2020",
      "reassigned_at": null,
      "completed_at": null,
      "updated_at": "09/09/2020",
      "status": "Incomplete",
      "score": 0
    }
  ]
}
```

This endpoint allows you to make assignments to a particular lesson in the api.

### HTTP Request

`PUT https://lesson.ly/lessons/:lesson_id/assignments -p params`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
lesson_id | yes | Positive Integer | The lesson to access.  The company must have access to the user.
assignments | no | Hash | A hash of assignments to be made to the lesson.  If the assignment for a particular user already exists, the user will be reassigned the lesson.
