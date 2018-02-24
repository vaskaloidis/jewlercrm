#JewlerCRM
A CRM for Programmers


## Possible Frontend Template Purchases
[Alba Bootstrap HTML Template - $10](https://themeforest.net/item/alba-startupsoftware-html-template/20570883?s_rank=1)

[Apnew Multipurpose Landing Page Template - $17](https://themeforest.net/item/apnew-multipurpose-landing-page-template/16154013?s_rank=8)

[Kodo - $16](https://themeforest.net/item/kodo-business-app-template/18156327?s_rank=7)



## API Documentation

### Coveralls Test Coverage
[Coveralls - Test Coverage Docs](https://docs.coveralls.io/api-introduction)

`https://coveralls.io/github/lemurheavy/coveralls-ruby.json`

Response:

```json
{
	"created_at": "2018-01-15T10:36:12Z",
	"url": null,
	"commit_message": "Less strict simplecov dependency",
	"branch": "master",
	"committer_name": "GitHub",
	"committer_email": "noreply@github.com",
	"commit_sha": "7dd5fb068a0ac34ca46e68574275d4cdb56756e8",
	"repo_name": "lemurheavy/coveralls-ruby",
	"badge_url": "https://s3.amazonaws.com/assets.coveralls.io/badges/coveralls_89.svg",
	"coverage_change": -1.6,
	"covered_percent": 89.4736842105263
}
```
### Travis CI

[Travis CI API V3 Docs - Build](https://developer.travis-ci.com/resource/build#Build)

[Getting Started API Docs](https://developer.travis-ci.com/gettingstarted)

Example Get Request:

```bash
curl -H "Travis-API-Version: 3" -H "User-Agent: API Explorer" \
  -H "Authorization: token w98NP8DSLPwmFigVwRKgYg" \
  https://api.travis-ci.com/user
```

Response:

```json
{
  "@type":           "user",
  "@href":           "/user/422665",
  "@representation": "standard",
  "@permissions":    {
    "read":          true,
    "sync":          true
  },
  "id":              422665,
  "login":           "vaskaloidis",
  "name":            "Vasilis Kaloidis",
  "github_id":       5200569,
  "avatar_url":      "https://avatars3.githubusercontent.com/u/5200569?v=4",
  "is_syncing":      false,
  "synced_at":       "2018-02-24T17:24:11Z"
}
```

Example Post Request:

```bash
curl -X POST -H "Content-Type: text/yaml" -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token w98NP8DSLPwmFigVwRKgYg" \
  -T ".travis.yml" https://api.travis-ci.com/lint
```

Respnse:

```json
{
  "@type":    "lint",
  "warnings": [ ]
}
```