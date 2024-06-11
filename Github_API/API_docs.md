### Rest API (Resource-Based) - Lower learning curve
* Different endpoints per resource
* HTTP methods: GET, POST, PUT, DELETE
* Data Fetching: Multiple requests for related data
* Can have over-fetching/under-fetching
* Performance: Less efficient for complex systems
* Caching: Easier due to HTTP methods
* Server-driven structure (less flexible)
* Often requires API versioning: https://docs.github.com/en/rest/about-the-rest-api/api-versions?apiVersion=2022-11-28
* More mature, with extensive tools
* https://docs.github.com/en/rest
* Can use CURL: https://docs.github.com/en/rest/issues/issues?apiVersion=2022-11-28

### GraphQL API (Single End Point)
* Query for precise data requests
* HTTP methods: Mainly POST for all operations
* Data Fetching: Single request for complex, related data
* Precise data fetching so no over/under fetching
* Performance: More efficient for complex queries
* Caching: More challenging due to POST method
* Client-Driven structure, more flexible
* Less requirement for versioning
* Growing, with unique tools
* https://docs.github.com/en/graphql
* Comes with its own syntax as part of the Explorer

