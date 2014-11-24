# Application Data

The application is currently strongly tied to the content and structure of application 
data in Firebase. An object with the key "trip0" is hard-coded into the application, and 
its structure is approximately as follows

## Trip

```
{ "trip0" : {
    "destination" :     {
        "coordinate" :         {
            "latitude" = "39.7392",
            "longitude" = "-104.9847"
        },
        "name" : "Denver"
    },
    "startDate" : "2014-12-25T12:44:52-0500";
    "endDate" : "2014-12-30T22:44:52-0500";
}}
```

## Place

Nested within a trip on its `destination` key, a location might look like this:

```
"destination" :     {
        "coordinate" :         {
            "latitude" = "39.7392",
            "longitude" = "-104.9847"
        },
        "name" : "Denver"
    }
```
