# This an API for authentication system using Ruby on Rails and JWT

Base URL : https://idiyaa.herokuapp.com

## Endpoints
### Sign up

POST: `api/signup`

Body json : 
```
{
      "user":{
          "email":"any@gmail.com",
          "password":"123456"
      }
  }

  ```
### Login

POST `api/signup`

Body json :


```
{
    "user":{
      "email":"any-email@g.com",
      "password":""
    }
}

```
    
## Response sample

```
{
  "user": {
    "id": 1,
    "email": "helloo@g.com",
    "created_at": "2021-10-31T19:53:44.621Z",
    "updated_at": "2021-10-31T19:53:44.621Z"
  },
  "message": "You are logged in.",
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJyZXNvdXJjZSI6IiM8VXNlcjoweDAwMDA1NjE1NmFhMTYwYTA-IiwiZXhwIjoxNjM1Nzk3OTM5fQ.mTFUMBKGr7Hx0XRTuB2dNDrFXPkJ8-4aYbWXe6uwWoQ"
}

```
