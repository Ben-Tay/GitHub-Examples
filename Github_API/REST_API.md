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
* Can use CURL to list out issuesto us: https://docs.github.com/en/rest/issues/issues?apiVersion=2022-11-28
> Curl requires a `Personal Access Token` to be able to be used and ISSUES MUST BE `ASSIGNED TO US`
```sh
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <Your PAT>" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/issues
```


