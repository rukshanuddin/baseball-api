# Requirements Checklist

1. Level 1

   - [x] Create an API in a Rails app. You can use Rails::API, Rails v5.0.0.rc1, Grape-Ruby API, or roll your own.
   - [x] The app should have models for baseball players, their teams, games, and any other models you deem necessary to track scoring.

2. Level 2

   - The API should be RESTful to GET, POST, PUT, and DELETE data for the models. A user of the API should also be able to:
     - [x] Get top scoring players
       - https://baseball-api-rails.herokuapp.com/api/players/rankings
     - [x] Get a ranked list of teams
       - https://baseball-api-rails.herokuapp.com/api/teams/rankings
     - [x] Get a list of games with their scores
       - https://baseball-api-rails.herokuapp.com/api/games

3. Level 3

   - [ ] The API should cache responses, keep response data accurate and up to date, and keep response times minimal (under 150ms).
     - Had a tough time figuring out how to cache with actionpack, may need to try other options, like Faraday or other gems.

4. Level 4

   - [x] The API should paginate results for any list of objects. For example, a user of the API should be able to get a list of players at a path like /api/players, passing in params per_page and page, and get results paginated in the response body and pagination metadata in the response headers.
     - https://baseball-api-rails.herokuapp.com/api/players?per_page=2&page=5

5. Level 5

   - [x] Each player should have a robust "player card".
     - https://baseball-api-rails.herokuapp.com/api/players/1
   - [x] Players should have a photo and multiple videos associated with their profile.
     - Players have one image (a link to head shot)
     - Players have a link to API call for assets(YouTube videos) that match their playerID.
   - [ ] An API user should be able to "upload" photo and videos through the API for the player.
     - Need to work on getting this working and set up in this application, was working on some stuff involving has_many_attached, would love guidance here.

## Report

- My biggest difficulty in building this solution, was starting and figuring out what information to include for my models. I don't follow baseball at all, so I ended up looking through various baseball APIs and stats websites for inspiration, and datasets. I wasn't sure I to model my data, so I decided to use existing information to seed my database.
- It was really fun figuring out how to process the data and learning how different gems paginate data. I worked with a couple different gems before landing on the one I picked for my pagination.
- I would love to be able tio figure out caching for this project. I was not able to figure out a working solution, I may have to look outside actionpack for support here.
