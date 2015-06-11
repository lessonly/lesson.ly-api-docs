# Users

## List Users

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users"
```

> The above command returns JSON structured like this:

```json
{
  "type": "users",
  "total_users": 2000,
  "page": 1,
  "per_page": 2,
  "total_pages": 1000,
  "users":[
      {
        "id": 1,
        "name": "User Name",
        "email": "email1@example.com",
        "role": "learner"
      },
      {
        "id": 2,
        "name": "User Name",
        "email": "email2@example.com",
        "role": "learner"
      }
    ]
}
```

This endpoint retrieves all users.

### HTTP Request

`GET https://lesson.ly/users`

### Query Parameters

Parameter | Required | Type | Description
--------- | ------- | ------- | -----------
page | no | which page in the pagination to fetch.  Default = 1
per_page | no | how many results to return in each page.  Default = 50

## Show User Details

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/:user_id
```

> The above command returns JSON structured like this:

```json
 {
  "type": "user",
  "id": 1, 
  "name": "Test User", 
  "email": "test@test.com", 
  "role": "learner",
  "custom_field_data": 
    [
      {"id": "custom_field_id", "name": "SSID", "value": "12345"},
    ]
}
```

This endpoint retrieves all the users details including their custom field data.  To see the users groups see the user group endpoint.

### HTTP Request

`GET https://lesson.ly/users/:user_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
user_id | yes | Positive Integer | The user to access.  The company must have access to the user.

## Create User

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/" -p params
```

> The following are sample parameters for this request:

```json
{
  "name": "User Name",
  "email": "email@example.com",
  "role": "learner",
  "custom_user_fields": [
    {
      "custom_user_field_id": 1,
      "value": "Custom Value 1"
    },
    {
      "custom_user_field_id": 2,
      "value": "Custom Value 2"
    }
  ]
}
```

> A successful post returns JSON consisting of the show user detail response

```json
 {
  "type": "create_user",
  "id": 1, 
  "name": "User Name", 
  "email": "email@example.com", 
  "role": "learner",
  "custom_field_data": 
    [
      {
        "id": 1, 
        "value": "Custom Value 1"
      },
      {
        "id": 2, 
        "value": "Custom Value 2"
      }
    ]
}
```

This endpoint allows you to create a user in the api. 

### HTTP Request

`POST https://lesson.ly/users/ -p params`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
name | yes | String | User full name
email | yes | String | User Email
role | yes | String | User role. Options: admin, manager, creator, learner
custom_user_fields |  no | Array | Custom user field values for specified custom user field ids. Hashses must containt a "customer_user_field_id" and a "value".

## Update User

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/:user_id" -p params
```

> The following are sample parameters for this request:

```json
{
  "name": "User Name",
  "email": "email@example.com",
  "role": "learner",
  "custom_user_fields": [
    {
      "custom_user_field_id": 1,
      "value": "Custom Value 1"
    },
    {
      "custom_user_field_id": 2,
      "value": "Custom Value 2"
    }
  ]
}
```

> A successful update returns JSON consisting of the show user detail response

```json
 {
  "type": "update_user",
  "id": 1, 
  "name": "User Name", 
  "email": "email@example.com", 
  "role": "learner",
  "custom_field_data": 
    [
      {
        "id": 1, 
        "value": "Custom Value 1"
      },
      {
        "id": 2, 
        "value": "Custom Value 2"
      }
    ]
}
```

This endpoint allows you to update a user in the api. 

### HTTP Request

`PUT https://lesson.ly/users/:user_id -p params`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
user_id | yes | Positive Integer | The user to access.  The company must have access to the user.
name | no | String | User name to change user to
email | no | String | User Email to change user to
role | no | String | User role to change user to. Options: admin, manager, creator, learner
custom_user_fields |  no | Array | Custom user fields for the update.  If the user does not have a value for the specified "customer_user_field_id" it will be added, otherwise it will be updated to the specified "value".

## Delete User

```shell
curl -X DELETE "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/:user_id"
```

> A successful update returns JSON consisting of the id of the deleted user

```json
{
  "type": "delete_user",
  "id": "3"
}
```

This endpoint allows you to delete a user in the api. 

### HTTP Request

`DELETE https://lesson.ly/users/:user_id`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
user_id | yes | Positive Integer | The user to delete.  The company must have access to the user.


## User Groups

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/:user_id/groups"
```

> The above command returns JSON structured like this:

```json

{"type": "user_groups",
 "memberships":
    [ 
        {"id": 1, "name": "Test Group"},
        {"id": 3, "name": "Test Group 3"},
    ],
  "managing": 
    [ 
        {"id": 1, "name": "Test Group5"},
    ]
}
```

This endpoint allows you to list out a users group memberships and groups they are managing.

### HTTP Request

`GET https://lesson.ly/users/:user_id/groups`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
user_id | yes | Positive Integer | The user to access.  The company must have access to the user.


## Update User Groups

```shell
curl -u "DOMAIN:API_KEY" "https://lesson.ly/api/v1/users/:user_id/groups/" -p params
```

> The following are sample parameters for this request:

```json
{
  "memberships":
    [ 
      {"id": 1 },
      {"id": 2, "remove": "true"}

    ],
  "managing":
    [
      {"id":  3, "remove": "true" },
      {"id":  4 }
    ]

}
```
> A successful update will return JSON consisting of the user group repsonse:

```json
{"type": "update_user_groups",
 "memberships":
    [ 
        {"id": 1, "name": "Test Group"},
        {"id": 3, "name": "Test Group 3"},
    ],
  "managing": 
    [ 
        {"id": 1, "name": "Test Group5"},
    ]
}
```

This endpoint allows you to update a users involvement in various groups.

### HTTP Request

`PUT https://lesson.ly/users/:user_id/groups`

### Query Parameters

Paramter | Required | Type |  Description
--- | --- | --- | ---
user_id | yes | Positive Integer | The user to access.  The company must have access to the user.
memberships | no | Array |  The groups in which the user is a member.  Passing "remove": "true" will remove this association.
managing | no | Array | The groups in which the user is managing.  Passing "remove": "true" will remove this association.



