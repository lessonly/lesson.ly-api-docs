# Courses

## List Courses

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/courses"
```

> The above command returns JSON structured like this:

```json
{
  "type": "courses",
  "courses":[
    {
      "id": 1,
      "title": "Course 1"
    },
    {
      "id": 2,
      "title": "Course 2"
    }
  ]
}
```

This endpoint retrieves all courses.

### HTTP Request

`GET https://api.lesson.ly/api/v1/courses`

## Show Course Details

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/courses/:course_id
```

> The above command returns JSON structured like this:

```json
{
  "type": "course",
  "resource_type": "course",
  "id": 1,
  "owner_id": 12,
  "title": "Course 1",
  "assignees_count": 10,
  "completed_count": 4,
  "description": "Test Description of Course 1",
  "lessons": [
    {
      "id": 1,
      "title": "First Lesson"
    },
    {
      "id": 1,
      "title": "Second Lesson"
    }
  ]
}
```

This endpoint retrieves all the courses details including their lessons and some other statistics about the completion of the course and its assignees.

### HTTP Request

`GET https://api.lesson.ly/api/v1/courses/:course_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
course_id | yes | Positive Integer | The course to access.  The company must have access to the course.

## Course Assignments

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/courses/:course_id/assignments
```

> The above command returns JSON structured like this:

```json
{
  "type": "course_assignments",
  "total_assignments": 2000,
  "page": 1,
  "per_page": 2,
  "total_pages": 1000,
  "assignments":[
    {
      "id": 1,
      "resource_type": "assignment",
      "assignee_id": 1,
      "ext_uid": "ABC123",
      "due_by": "2020-09-30T00:00:00Z",
      "reassigned_at": "2020-09-30T00:00:00Z"
    },
    {
      "id": 2,
      "resource_type": "assignment",
      "assignee_id": 2,
      "ext_uid": "DEF456",
      "due_by": "2020-09-30T00:00:00Z",
      "reassigned_at": "2020-09-30T00:00:00Z"
    }
  ]
}
```

This endpoint retrieves all the assignments for a particular course.
### HTTP Request

`GET https://api.lesson.ly/api/v1/courses/:course_id/assignments`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
course_id | yes | Positive Integer | The course to access.  The company must have access to the lesson.
page | no | which page in the pagination to fetch.  Default = 1
per_page | no | how many results to return in each page.  Default = 50

## Assign Course

```shell
curl -u "DOMAIN:API_KEY" "https://api.lesson.ly/api/v1/courses/:course_id/assignments" -p params
```

> The following are sample parameters for this request:

```json
{
  "assignments":[
    {
      "assignee_id": 1,
      "due_by": "2020-09-30T00:00:00Z",
      "notify": true
    }
  ]
}

```

> A successful update returns JSON formatted version of the assignments made

```json
{
  "type": "update_course_assignments",
  "assignments": [
    {
      "id": 1,
      "resource_type": "assignment",
      "assignee_id": 1,
      "assignable_type": "Course",
      "assignable_id": 3,
      "ext_uid": "ABC123",
      "due_by": "2020-09-30T00:00:00Z",
      "reassigned_at": "2020-09-30T00:00:00Z",
      "completed_at": "2020-09-30T00:00:00Z",
      "status": "Incomplete",
      "score": 0
    }
  ]
}
```

This endpoint allows you to make assignments to a particular course in the API.

### HTTP Request

`PUT https://api.lesson.ly/api/v1/courses/:course_id/assignments -p params`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
course_id | yes | Positive Integer | The course to access. The company must have access to the user.
assignments | no | Hash | A hash of assignments to be made to the course.  If the assignment for a particular user already exists, the user will be reassigned the course. Set `notify` to `true` to send an email to the assignee; it will come from notifications@lesson.ly.

