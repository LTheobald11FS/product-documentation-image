---
title: BNC Card API v1.0.0
language_tabs:
  - shell: cUrl
  - kotlin: Kotlin
  - go: Go
  - ruby: Ruby
  - python: Python
language_clients:
  - shell: ""
  - kotlin: ""
  - go: ""
  - ruby: ""
  - python: ""
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="bnc-card-api">BNC Card API v1.0.0</h1>gi

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

An example card API for BNC

Base URLs:

* <a href="http://127.0.0.1:4010/">http://127.0.0.1:4010/</a>

Email: <a href="mailto:lee.theobald@11fs.com">Support</a> 
License: <a href="http://www.apache.org/licenses/LICENSE-2.0.html">Apache 2.0</a>

<h1 id="bnc-card-api-default">Default</h1>

## Creates a new card programme

<a id="opIdcreateCardProgramme"></a>

> Code samples

```shell
# You can also use wget
curl -X POST http://127.0.0.1:4010/cardprogramme \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "http://127.0.0.1:4010/cardprogramme", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'http://127.0.0.1:4010/cardprogramme',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('http://127.0.0.1:4010/cardprogramme', headers = headers)

print(r.json())

```

`POST /cardprogramme`

Creates a new card programme

> Body parameter

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}
```

<h3 id="creates-a-new-card-programme-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[card_programme](#schemacard_programme)|true|Create a new card programme|

> Example responses

> 200 Response

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}
```

<h3 id="creates-a-new-card-programme-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card programm created successfully|[card_programme](#schemacard_programme)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve the details of a card programme

<a id="opIdretrieveCardProgramme"></a>

> Code samples

```shell
# You can also use wget
curl -X GET http://127.0.0.1:4010/cardprogramme/{cardProgrammeId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.get 'http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.get('http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}', headers = headers)

print(r.json())

```

`GET /cardprogramme/{cardProgrammeId}`

Retrieve the details of a card programme

> Body parameter

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}
```

<h3 id="retrieve-the-details-of-a-card-programme-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardProgrammeId|path|string|true|The ID of the card programme you wish to retrieve|
|body|body|[card_programme](#schemacard_programme)|true|Card programme details for the requested ID|

> Example responses

> 200 Response

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}
```

<h3 id="retrieve-the-details-of-a-card-programme-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card programme details retrieved successfully|[card_programme](#schemacard_programme)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Cancel the card programme with the specified ID

<a id="opIdcancelCardProgramme"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE http://127.0.0.1:4010/cardprogramme/{cardProgrammeId} \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete 'http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('http://127.0.0.1:4010/cardprogramme/{cardProgrammeId}', headers = headers)

print(r.json())

```

`DELETE /cardprogramme/{cardProgrammeId}`

Cancel the card programme with the specific ID

<h3 id="cancel-the-card-programme-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardProgrammeId|path|string|true|The ID of the card programme you wish to retrieve|

> Example responses

> 200 Response

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}
```

<h3 id="cancel-the-card-programme-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card programme details retrieved successfully|[card_programme](#schemacard_programme)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Creates a new card for a customer

<a id="opIdcreateCard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST http://127.0.0.1:4010/cards \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "http://127.0.0.1:4010/cards", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'http://127.0.0.1:4010/cards',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('http://127.0.0.1:4010/cards', headers = headers)

print(r.json())

```

`POST /cards`

Creates a new card for a customer

> Body parameter

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}
```

<h3 id="creates-a-new-card-for-a-customer-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[card](#schemacard)|true|Create a new card for a customer|

> Example responses

> 200 Response

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}
```

<h3 id="creates-a-new-card-for-a-customer-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card created successfully|[card](#schemacard)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve the details of a card

<a id="opIdretrieveCard"></a>

> Code samples

```shell
# You can also use wget
curl -X GET http://127.0.0.1:4010/cards/{cardId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "http://127.0.0.1:4010/cards/{cardId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.get 'http://127.0.0.1:4010/cards/{cardId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.get('http://127.0.0.1:4010/cards/{cardId}', headers = headers)

print(r.json())

```

`GET /cards/{cardId}`

Retrieve the details of a card

> Body parameter

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}
```

<h3 id="retrieve-the-details-of-a-card-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to retrieve|
|body|body|[card](#schemacard)|true|Card details for the requested ID|

> Example responses

> 200 Response

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}
```

<h3 id="retrieve-the-details-of-a-card-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card details retrieved successfully|[card](#schemacard)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Cancel the card with the specified ID

<a id="opIdcancelCard"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE http://127.0.0.1:4010/cards/{cardId} \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "http://127.0.0.1:4010/cards/{cardId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete 'http://127.0.0.1:4010/cards/{cardId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('http://127.0.0.1:4010/cards/{cardId}', headers = headers)

print(r.json())

```

`DELETE /cards/{cardId}`

Cancel the card with the specific ID

<h3 id="cancel-the-card-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to retrieve|

> Example responses

> 200 Response

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}
```

<h3 id="cancel-the-card-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card details retrieved successfully|[card](#schemacard)|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<aside class="success">
This operation does not require authentication
</aside>

## Freeze the card with the specified ID

<a id="opIdfreezeCard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST http://127.0.0.1:4010/cards/{cardId}/freeze \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "http://127.0.0.1:4010/cards/{cardId}/freeze", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.post 'http://127.0.0.1:4010/cards/{cardId}/freeze',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('http://127.0.0.1:4010/cards/{cardId}/freeze', headers = headers)

print(r.json())

```

`POST /cards/{cardId}/freeze`

Freeze the card with the specified ID

<h3 id="freeze-the-card-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to freeze|

> Example responses

> 200 Response

```json
{
  "response": true
}
```

<h3 id="freeze-the-card-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card frozen successfully|Inline|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<h3 id="freeze-the-card-with-the-specified-id-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» response|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Thaw (Unfreeze) the card with the specified ID

<a id="opIdthawCard"></a>

> Code samples

```shell
# You can also use wget
curl -X POST http://127.0.0.1:4010/cards/{cardId}/thaw \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "http://127.0.0.1:4010/cards/{cardId}/thaw", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.post 'http://127.0.0.1:4010/cards/{cardId}/thaw',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('http://127.0.0.1:4010/cards/{cardId}/thaw', headers = headers)

print(r.json())

```

`POST /cards/{cardId}/thaw`

Thaw (Unfreeze) the card with the specified ID

<h3 id="thaw-(unfreeze)-the-card-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to freeze|

> Example responses

> 200 Response

```json
{
  "response": true
}
```

<h3 id="thaw-(unfreeze)-the-card-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Card frozen successfully|Inline|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<h3 id="thaw-(unfreeze)-the-card-with-the-specified-id-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» response|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve the PIN of the card with the specified ID

<a id="opIdretrievePin"></a>

> Code samples

```shell
# You can also use wget
curl -X GET http://127.0.0.1:4010/cards/{cardId}/pin \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "http://127.0.0.1:4010/cards/{cardId}/pin", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'http://127.0.0.1:4010/cards/{cardId}/pin',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('http://127.0.0.1:4010/cards/{cardId}/pin', headers = headers)

print(r.json())

```

`GET /cards/{cardId}/pin`

Retrieve the PIN of the card with the specified ID

<h3 id="retrieve-the-pin-of-the-card-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to freeze|

> Example responses

> 200 Response

```json
{
  "pin": 3123
}
```

<h3 id="retrieve-the-pin-of-the-card-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Pin retrieved for the specified card|Inline|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<h3 id="retrieve-the-pin-of-the-card-with-the-specified-id-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» pin|integer|false|none|The card PIN in plain text|

<aside class="success">
This operation does not require authentication
</aside>

## Update the PIN of the card with the specified ID

<a id="opIdupdatePin"></a>

> Code samples

```shell
# You can also use wget
curl -X POST http://127.0.0.1:4010/cards/{cardId}/pin \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "http://127.0.0.1:4010/cards/{cardId}/pin", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'http://127.0.0.1:4010/cards/{cardId}/pin',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('http://127.0.0.1:4010/cards/{cardId}/pin', headers = headers)

print(r.json())

```

`POST /cards/{cardId}/pin`

Update the PIN of the card with the specified ID

> Body parameter

```json
3123
```

<h3 id="update-the-pin-of-the-card-with-the-specified-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cardId|path|string|true|The ID of the card you wish to retrieve the pin of|
|body|body|integer|true|Create a new card programme|

> Example responses

> 200 Response

```json
{
  "result": "OK"
}
```

<h3 id="update-the-pin-of-the-card-with-the-specified-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Pin retrieved for the specified card|Inline|
|405|[Method Not Allowed](https://tools.ietf.org/html/rfc7231#section-6.5.5)|Could not validate input|None|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|A server-side error occurred|None|

<h3 id="update-the-pin-of-the-card-with-the-specified-id-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» result|string|false|none|An indication of the result|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_card_programme">card_programme</h2>
<!-- backwards compatibility -->
<a id="schemacard_programme"></a>
<a id="schema_card_programme"></a>
<a id="tocScard_programme"></a>
<a id="tocscard_programme"></a>

```json
{
  "name": "Titanium Card",
  "scheme": "visa",
  "rewards": [
    {
      "amount": 250,
      "reward_scheme": [
        "cashback"
      ],
      "label": "Cashback",
      "interval": "daily"
    }
  ],
  "fees": [
    {
      "amount": 250,
      "currency": "CAD",
      "interval": "daily"
    }
  ],
  "interest": [
    {
      "amount": -14.99,
      "interval": "daily"
    }
  ]
}

```

CardProgramme

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|Name of the card programme|
|scheme|string|true|none|The card scheme used for the card|
|rewards|[[reward](#schemareward)]|false|none|A list of rates that are applied to the card programme|
|fees|[[fee](#schemafee)]|false|none|A list of fees that are applied to the card programme|
|interest|[[interest](#schemainterest)]|false|none|A list of interest rates that are applied to the card programm|

#### Enumerated Values

|Property|Value|
|---|---|
|scheme|visa|
|scheme|mastercard|

<h2 id="tocS_interest">interest</h2>
<!-- backwards compatibility -->
<a id="schemainterest"></a>
<a id="schema_interest"></a>
<a id="tocSinterest"></a>
<a id="tocsinterest"></a>

```json
{
  "amount": -14.99,
  "interval": "daily"
}

```

Interest

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|amount|number(double)|true|none|The amount of interest to be charged as a percentage. Can either be positive (interest earnt) or negative (interest charged)|
|interval|string|true|none|Interval (or event) to which the amount applies.|

#### Enumerated Values

|Property|Value|
|---|---|
|interval|daily|
|interval|monthly|
|interval|per_transaction|
|interval|weekly|
|interval|yearly|

<h2 id="tocS_fee">fee</h2>
<!-- backwards compatibility -->
<a id="schemafee"></a>
<a id="schema_fee"></a>
<a id="tocSfee"></a>
<a id="tocsfee"></a>

```json
{
  "amount": 250,
  "currency": "CAD",
  "interval": "daily"
}

```

Fee

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|amount|integer|true|none|The amount of the fee associated with this card|
|currency|string|true|none|Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.|
|interval|string|true|none|Interval (or event) to which the amount applies.|

#### Enumerated Values

|Property|Value|
|---|---|
|interval|daily|
|interval|monthly|
|interval|per_transaction|
|interval|weekly|
|interval|yearly|

<h2 id="tocS_reward">reward</h2>
<!-- backwards compatibility -->
<a id="schemareward"></a>
<a id="schema_reward"></a>
<a id="tocSreward"></a>
<a id="tocsreward"></a>

```json
{
  "amount": 250,
  "reward_scheme": [
    "cashback"
  ],
  "label": "Cashback",
  "interval": "daily"
}

```

Reward

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|amount|integer|true|none|Amount of reward 'points' the cardholder use receive|
|reward_scheme|[reward_schemes](#schemareward_schemes)|false|none|Array of string containing various reward schemes a card can be assigned to|
|label|string|true|none|The label for the points being received|
|interval|string|false|none|Interval (or event) to which the amount applies.|

#### Enumerated Values

|Property|Value|
|---|---|
|interval|daily|
|interval|monthly|
|interval|per_transaction|
|interval|weekly|
|interval|yearly|

<h2 id="tocS_reward_schemes">reward_schemes</h2>
<!-- backwards compatibility -->
<a id="schemareward_schemes"></a>
<a id="schema_reward_schemes"></a>
<a id="tocSreward_schemes"></a>
<a id="tocsreward_schemes"></a>

```json
[
  "cashback"
]

```

Array of string containing various reward schemes a card can be assigned to

### Properties

*None*

<h2 id="tocS_merchant_categories">merchant_categories</h2>
<!-- backwards compatibility -->
<a id="schemamerchant_categories"></a>
<a id="schema_merchant_categories"></a>
<a id="tocSmerchant_categories"></a>
<a id="tocsmerchant_categories"></a>

```json
[
  "ac_refrigeration_repair"
]

```

Array of strings containing merchant category codes

### Properties

*None*

<h2 id="tocS_card">card</h2>
<!-- backwards compatibility -->
<a id="schemacard"></a>
<a id="schema_card"></a>
<a id="tocScard"></a>
<a id="tocscard"></a>

```json
{
  "card_programme": "312957f9-87da-4721-8ed7-7ff5ee66f3d5",
  "cancellation_reason": "lost",
  "cardholder": {
    "billing": {
      "city": "Laval",
      "country": "CA",
      "line1": "628 Pitfield Blvd",
      "line2": "Apartment 7b",
      "postal_code": "H7A 4B7",
      "state": "Quebec"
    },
    "company_tax_id": "13410987213",
    "created": 1652261833,
    "email": "Joanna.Bloggs@11fs.com",
    "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
    "individual": {
      "dob": {
        "day": 11,
        "month": 12,
        "year": 1978
      },
      "first_name": "Joanna",
      "last_name": "Bloggs",
      "documentId": "745671239871238679",
      "documentType": "passport"
    },
    "name": "JOANNA BLOGGS",
    "phone_number": "+441223556347",
    "spending_controls": {
      "allowed_categories": [
        "ac_refrigeration_repair"
      ],
      "blocked_categories": [
        "ac_refrigeration_repair"
      ],
      "spending_limits": [
        {
          "amount": 250,
          "categories": [
            "ac_refrigeration_repair"
          ],
          "interval": "all_time"
        }
      ],
      "spending_limits_currency": "CAD"
    },
    "status": "active",
    "type": "company"
  },
  "created": 1652261833,
  "currency": "CAD",
  "cvc": "987",
  "exp_month": 8,
  "exp_year": 2022,
  "id": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "last4": "3456",
  "number": "4444333322221111",
  "replaced_by": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_for": "7d4f7fff-84ba-4179-b3ca-7f2402c67864",
  "replacement_reason": "damaged",
  "shipping": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "physical"
}

```

Card

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|card_programme|string|false|none|The ID of the card programme this card belongs too|
|cancellation_reason|string¦null|false|none|The reason why the card was canceled.|
|cardholder|[cardholder](#schemacardholder)|true|none|An Issuing `Cardholder` object represents an individual or business entity who is issued cards.|
|created|integer(unix-time)|true|none|Time at which the object was created. Measured in seconds since the Unix epoch.|
|currency|string|true|none|Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.|
|cvc|string|false|none|The card's CVC. For security reasons, this is only populated when retrieving details of virtual cards|
|exp_month|integer|true|none|The expiration month of the card.|
|exp_year|integer|true|none|The expiration year of the card.|
|id|string|true|none|Unique identifier for the object.|
|last4|string|true|none|The last 4 digits of the card number.|
|number|string|false|none|The full unredacted card number. For security reasons, this is only retrieved when fetching virtual card details|
|replaced_by|object¦null|false|none|The latest card that replaces this card, if any.|

anyOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|An ID of a card|

or

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[card](#schemacard)|false|none|You can create physical or virtual cards that are issued to cardholders.|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|replacement_for|any|false|none|The card this card replaces, if any.|

anyOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|An ID of a card|

or

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[card](#schemacard)|false|none|You can create physical or virtual cards that are issued to cardholders.|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|replacement_reason|string¦null|false|none|The reason why the previous card needed to be replaced.|
|shipping|[address](#schemaaddress)¦null|false|none|Where and how the card will be shipped.|
|spending_controls|[auth_controls](#schemaauth_controls)|true|none|none|
|status|string|true|none|Whether authorizations can be approved on this card.|
|type|string|true|none|The type of the card.|

#### Enumerated Values

|Property|Value|
|---|---|
|cancellation_reason|lost|
|cancellation_reason|stolen|
|replacement_reason|damaged|
|replacement_reason|expired|
|replacement_reason|lost|
|replacement_reason|stolen|
|status|active|
|status|canceled|
|status|inactive|
|type|physical|
|type|virtual|

<h2 id="tocS_cardholder">cardholder</h2>
<a id="schemacardholder"></a>
<a id="schema_cardholder"></a>
<a id="tocScardholder"></a>
<a id="tocscardholder"></a>

```json
{
  "billing": {
    "city": "Laval",
    "country": "CA",
    "line1": "628 Pitfield Blvd",
    "line2": "Apartment 7b",
    "postal_code": "H7A 4B7",
    "state": "Quebec"
  },
  "company_tax_id": "13410987213",
  "created": 1652261833,
  "email": "Joanna.Bloggs@11fs.com",
  "id": "b7c11d5e-0b6b-4f8a-831e-83b19680adce",
  "individual": {
    "dob": {
      "day": 11,
      "month": 12,
      "year": 1978
    },
    "first_name": "Joanna",
    "last_name": "Bloggs",
    "documentId": "745671239871238679",
    "documentType": "passport"
  },
  "name": "JOANNA BLOGGS",
  "phone_number": "+441223556347",
  "spending_controls": {
    "allowed_categories": [
      "ac_refrigeration_repair"
    ],
    "blocked_categories": [
      "ac_refrigeration_repair"
    ],
    "spending_limits": [
      {
        "amount": 250,
        "categories": [
          "ac_refrigeration_repair"
        ],
        "interval": "all_time"
      }
    ],
    "spending_limits_currency": "CAD"
  },
  "status": "active",
  "type": "company"
}

```

Cardholder

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|billing|[address](#schemaaddress)|true|none|A physical address for a person or company|
|company_tax_id|string¦null|false|none|Tax ID of the cardholding company - if applicable|
|created|integer(unix-time)|true|none|Time at which the object was created. Measured in seconds since the Unix epoch.|
|email|string(email)¦null|false|none|The cardholder's email address.|
|id|string|true|none|Unique identifier for the object.|
|individual|[individual](#schemaindividual)¦null|false|none|Additional information about an `individual` cardholder.|
|name|string|true|none|The cardholder's name, in uppercase. This will be printed on cards issued to them.|
|phone_number|string¦null|false|none|The cardholder's phone number in E.164 format (+[country code] [number])|
|spending_controls|[auth_controls](#schemaauth_controls)¦null|false|none|Rules that control spending across this cardholder's card.|
|status|string|true|none|Specifies whether to permit authorizations on this cardholder's cards.|
|type|string|true|none|One of `individual` or `company`.|

#### Enumerated Values

|Property|Value|
|---|---|
|status|active|
|status|blocked|
|status|inactive|
|type|company|
|type|individual|

<h2 id="tocS_address">address</h2>
<!-- backwards compatibility -->
<a id="schemaaddress"></a>
<a id="schema_address"></a>
<a id="tocSaddress"></a>
<a id="tocsaddress"></a>

```json
{
  "city": "Laval",
  "country": "CA",
  "line1": "628 Pitfield Blvd",
  "line2": "Apartment 7b",
  "postal_code": "H7A 4B7",
  "state": "Quebec"
}

```

Address

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|city|string|true|none|City, district, suburb, town, or village.|
|country|string|true|none|Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), in lowercase|
|line1|string|true|none|Address line 1 (e.g., street, PO Box, or company name).|
|line2|string¦null|false|none|Address line 2 (e.g., apartment, suite, unit, or building).|
|postal_code|string|true|none|ZIP or postal code.|
|state|string|true|none|State, county, province, or region.|

<h2 id="tocS_auth_controls">auth_controls</h2>
<!-- backwards compatibility -->
<a id="schemaauth_controls"></a>
<a id="schema_auth_controls"></a>
<a id="tocSauth_controls"></a>
<a id="tocsauth_controls"></a>

```json
{
  "allowed_categories": [
    "ac_refrigeration_repair"
  ],
  "blocked_categories": [
    "ac_refrigeration_repair"
  ],
  "spending_limits": [
    {
      "amount": 250,
      "categories": [
        "ac_refrigeration_repair"
      ],
      "interval": "all_time"
    }
  ],
  "spending_limits_currency": "CAD"
}

```

Authorisation controls

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|allowed_categories|[merchant_categories](#schemamerchant_categories)|false|none|Array of strings containing merchant category codes. If specified, only transactions from merchants with these category codes will be ACCEPTED|
|blocked_categories|[merchant_categories](#schemamerchant_categories)|false|none|Array of strings containing merchant category codes. If specified, any transactions from merchants with these category codes will be BLOCKED|
|spending_limits|[[spending_limit](#schemaspending_limit)]¦null|false|none|Limit spending with amount-based rules that apply across this cardholder's card.|
|spending_limits_currency|string|false|none|Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.|

<h2 id="tocS_individual">individual</h2>
<!-- backwards compatibility -->
<a id="schemaindividual"></a>
<a id="schema_individual"></a>
<a id="tocSindividual"></a>
<a id="tocsindividual"></a>

```json
{
  "dob": {
    "day": 11,
    "month": 12,
    "year": 1978
  },
  "first_name": "Joanna",
  "last_name": "Bloggs",
  "documentId": "745671239871238679",
  "documentType": "passport"
}

```

Individial

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|dob|[dob](#schemadob)¦null|false|none|The date of birth of this cardholder.|
|first_name|string|true|none|The first name of this cardholder.|
|last_name|string|true|none|The last name of this cardholder.|
|documentId|string¦null|false|none|Government-issued ID document for this cardholder.|
|documentType|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|documentType|passport|
|documentType|driving_license|

<h2 id="tocS_dob">dob</h2>
<!-- backwards compatibility -->
<a id="schemadob"></a>
<a id="schema_dob"></a>
<a id="tocSdob"></a>
<a id="tocsdob"></a>

```json
{
  "day": 11,
  "month": 12,
  "year": 1978
}

```

DOB

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|day|integer|false|none|The day of birth, between 1 and 31.|
|month|integer|false|none|The month of birth, between 1 and 12.|
|year|integer|false|none|The four-digit year of birth.|

<h2 id="tocS_spending_limit">spending_limit</h2>
<!-- backwards compatibility -->
<a id="schemaspending_limit"></a>
<a id="schema_spending_limit"></a>
<a id="tocSspending_limit"></a>
<a id="tocsspending_limit"></a>

```json
{
  "amount": 250,
  "categories": [
    "ac_refrigeration_repair"
  ],
  "interval": "all_time"
}

```

SpendingLimit

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|amount|integer|true|none|Maximum amount allowed to spend per interval. The currency for the spending limit is set at the card level. Set in major currency units|
|categories|[merchant_categories](#schemamerchant_categories)|false|none|Array of strings containing merchant category codes|
|interval|string|true|none|Interval (or event) to which the amount applies.|

#### Enumerated Values

|Property|Value|
|---|---|
|interval|all_time|
|interval|daily|
|interval|monthly|
|interval|per_transaction|
|interval|weekly|
|interval|yearly|

