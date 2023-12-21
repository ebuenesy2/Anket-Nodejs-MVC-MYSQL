# Anket Veri Tabanı

## Tüm Veriler

### Url
```
{{url}}/api/survey/all
```

## Tüm Veriler - Params

### Url
```
{{url}}/api/survey/all?page=2&rowcount=4&order=asc
```
```
{{url}}/api/survey/all?order=asc&ValueTop=15
```

## Veri Arama

### Url
```
{{url}}/api/survey/find/33
```

## Veri Detaylı Arama

### Url
```
{{url}}/api/survey/find/detail/31
```

## Veri Arama - Post

### Url
```
{{url}}/api/survey/find_post
```
### POST
```
{
    "id":2
}
```

## Veri Arama - Kullanıcı

### Url
```
{{url}}/api/survey/find_user?order=asc
```
```
{{url}}/api/survey/find_user?page=2&rowcount=4&order=asc
```
### POST
```
{
   "created_byId": 1
}
```

## Veri Ekleme

### Url
```
{{url}}/api/survey/add
```
### POST
```
{
    "title":"title add",
    "created_byId": 1
}
```

## Veri Ekleme  - Seçenek

### Url
```
{{url}}/api/survey/add/options
```
### POST
```
{
    "title":"Title",
    "optionsData": [
      "Seçenek 1",  
      "Seçenek 2",  
      "Seçenek 3"  
    ],
    "created_byToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsImlhdCI6MTcwMzA3OTIyOX0.BkbTAFtpJlYBtDOLR2diF0YipECYeRkmIdA1q7Krk4Q"
}
```

## Veri Güncelleme

### Url
```
{{url}}/api/survey/edit
```
### POST
```
{   
    "id":2,
    "title":"title güncelleme",
    "updated_byId": 5
}
```

## Veri Güncelleme - Token

### Url
```
{{url}}/api/survey/edit/token
```
### POST
```
{   
    "id":31,
    "title":"title güncelleme",
    "updated_byToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJ1c2VyQGdtYWlsLmNvbSIsImlhdCI6MTcwMzA3OTIyOX0.BkbTAFtpJlYBtDOLR2diF0YipECYeRkmIdA1q7Krk4Q"
}
```


## Çoklu Veri Güncelleme

### Url
```
{{url}}/api/survey/edit/multi
```
### POST
```
{
    "ids": "2,3",
    "title":"title güncelleme",
    "updated_byId": 5
}
```

## Veri Silme

### Url
```
{{url}}/api/survey/delete/68
```
### POST
```
{
    "deleted_byId": 1
}
```

## Çoklu Veri Silme 

### Url
```
{{url}}/api/survey/delete/multi
```
### POST
```
{
    "ids": "68,67",
    "deleted_byId": 1
}
```

## Geçisi Veri Silme 

### Url
```
{{url}}/api/survey/delete/edit
```
### POST
```
{
    "ids":"33",
    "deleted_byId": 10
}
```
