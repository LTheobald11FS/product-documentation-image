---
sidebar_position: 2
id: card-programme
sidebar_label: Card Programmes
---

# Card Programmes

A card programme is a predefined card product that can be issued to customers. Each card programme has a number of key characteristics including:

Fees
: A fixed a mount charge that is made to the card balance on a regular occurence

Interest
: A variable amount that is either credited or debited to the card, based on the card balance

Rewards
: A reward given on a set interval that doesn't effect the card balance directly.

## Creating A Card Programme

Before you can issue cards, you need to decide what your card programme should offer to customers. The below example shows creating card which:

* Is a Visa credit card
* Has a 20% interest rate, charged monthly
* Has a $100 sign up fee
* Gives 2 Aeroplan points with every purchase

```shell
curl -X POST http://127.0.0.1:4010/cardprogramme \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'
  -d '{
    "name": "Titanium Card",
    "scheme": "visa",
    "type": "credit",
    "rewards": [
      {
        "amount": 2,
        "reward_scheme": ["aeroplan"],
        "label": "Aeroplan",
        "interval": "per_transaction"
      }
    ],
    "fees": [
      {
        "amount": 100,
        "currency": "CAD",
        "interval": "one_time"
      }
    ],
    "interest": [
      {
        "amount": -20,
        "interval": "daily"
      }
    ]
  }'
```