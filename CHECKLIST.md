# Requirements Checklist

1. Level 1

   - [x] Create an API in a Rails app. You can use Rails::API, Rails v5.0.0.rc1, Grape-Ruby API, or roll your own.
   - [x] The app should have models for baseball players, their teams, games, and any other models you deem necessary to track scoring.

2. Level 2

   - The API should be RESTful to GET, POST, PUT, and DELETE data for the models. A user of the API should also be able to:
     - [x] Get top scoring players
     - [x] Get a ranked list of teams
     - [x] Get a list of games with their scores

3. Level 3

   - [] The API should cache responses, keep response data accurate and up to date, and keep response times minimal (under 150ms).

4. Level 4

   - [x] The API should paginate results for any list of objects. For example, a user of the API should be able to get a list of players at a path like /api/players, passing in params per_page and page, and get results paginated in the response body and pagination metadata in the response headers.

5. Level 5

   - [x] Each player should have a robust "player card".
   - [x] Players should have a photo and multiple videos associated with their profile.
   - [] An API user should be able to "upload" photo and videos through the API for the player.

## Report

- My biggest difficulty in building this solution, was starting and figuring out what information to include for my models. I don't follow baseball at all, so I ended up looking through various baseball API's and stats websites for inspiration, and datasets. I wasn't sure I to model my data, so I decided to use existing information to seed my database.
- It was really fun figuring out how to process the data and learning how different gems paginate data. I worked with a couple different gems before landing on the one I picked for my pagination.
- I would love to be able tio figure out caching for this project. I was not able to figure out a working solution, I may have to look outside Actionpack for support here.
