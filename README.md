# HW Challenge

![ruby](https://img.shields.io/badge/Ruby-2.7.4-red)
![rails](https://img.shields.io/badge/Rails-7.0.3-red)
![rspec](https://img.shields.io/badge/RSpec-3.11.0-green)
![contributors](https://img.shields.io/badge/Contributors-1-yellow)

## Table of Contents
- [Schema](#schema)
- [Commits](#commits)
- [Queries](#queries)
- [Installation](#installation)
- [Contributor](#contributor)

## Schema
<img width="1063" alt="image" src="https://user-images.githubusercontent.com/97060659/184510369-3a873e77-457e-4fd4-ac41-6cac3c46adbc.png">

<p align="right">(<a href="#top">back to top</a>)</p>

## Commits 
#### starting branch: main
- Initial Commit
- set up db migrations and schema
- establish and test model relationships
- seed database with source data
#### branch: api_design
- generate graphql scaffolds
- add factory_bot for graphql testing
- add clients_connection field and clientType
- test default and paginated clients_connection query
- add clientPolicies query and complete tests with factoryBot
- update default clients return count to 20
- add app_datum class to return record counts
- add and modify factories
- complete appData testing and returns all record counts
- ignore hw_schema and mutation_type in coverage percent calculation

<p align="right">(<a href="#top">back to top</a>)</p>

## Queries
POST http://localhost:3000/graphql

### appData
* graphql query
```
query {
    appData
    {
        carrierCount
        clientCount
        policyCount
    }
}
```
* Response
```
{
    "data": {
        "appData": {
            "carrierCount": 934,
            "clientCount": 5000,
            "policyCount": 100000
        }
    }
}
```

<p align="right">(<a href="#top">back to top</a>)</p>

### clientsConnection
* graphql query
```
query {
 clientsConnection(first: 3, after: "MTA") { 
 pageInfo {
     startCursor
     endCursor
 }
 edges{
     node {
            id
            sourceId
            name
            fullAddress
            division
            majorGroup
            industryGroup
            SIC 
            description
            }
        }
    }
}
```
* Response:

```
{
    "data": {
        "clientsConnection": {
            "pageInfo": {
                "startCursor": "MTE",
                "endCursor": "MTM"
            },
            "edges": [
                {
                    "node": {
                        "id": "11",
                        "sourceId": 11,
                        "name": null,
                        "fullAddress": "67239 Harvey Manors Apt. 001,Amandaburgh,New York",
                        "division": "D",
                        "majorGroup": 24,
                        "industryGroup": 244,
                        "SIC": 2441,
                        "description": "Nailed and Lock Corner Wood Boxes and Shook"
                    }
                },
                {
                    "node": {
                        "id": "12",
                        "sourceId": 12,
                        "name": "Clay Inc",
                        "fullAddress": "214 Andrew Fords,Lake Jamesburgh,Utah",
                        "division": "E",
                        "majorGroup": 44,
                        "industryGroup": 443,
                        "SIC": 4432,
                        "description": "Freight Transportation on the Great Lakes-St. Lawrence Seaway"
                    }
                },
                {
                    "node": {
                        "id": "13",
                        "sourceId": 13,
                        "name": "Mata Group",
                        "fullAddress": "260 Wolfe Mountain,Gloriafurt,New Hampshire",
                        "division": "G",
                        "majorGroup": 57,
                        "industryGroup": 571,
                        "SIC": 5712,
                        "description": "Furniture Stores"
                    }
                }
            ]
        }
    }
}
```

<p align="right">(<a href="#top">back to top</a>)</p>

### clientPolicies
* graphql query
```
query {
    clientPolicies(clientId: 20)
        {
          policyType
          division
          carrierId
          clientId 
          effectiveDate
          expirationDate
          writtenPremium
          carrierPolicyNumber
        }

}
```
* Response
```
{
    "data": {
        "clientPolicies": [
            {
                "policyType": "Commercial Property",
                "division": "Phoenix",
                "carrierId": 1342,
                "clientId": 20,
                "effectiveDate": "2012-01-01",
                "expirationDate": "2013-01-01",
                "writtenPremium": 5640,
                "carrierPolicyNumber": 4479692
            },
            {
                "policyType": "Cyber Liability",
                "division": "Northeast",
                "carrierId": 495,
                "clientId": 20,
                "effectiveDate": "2009-04-01",
                "expirationDate": "2010-04-01",
                "writtenPremium": 7710,
                "carrierPolicyNumber": 178609
            },
            {
                "policyType": "Individual Life",
                "division": "Seattle",
                "carrierId": 1427,
                "clientId": 20,
                "effectiveDate": "2014-04-01",
                "expirationDate": "2015-04-01",
                "writtenPremium": 13250,
                "carrierPolicyNumber": 0
            },
            {
                "policyType": "Professional/General Liab",
                "division": "Phoenix",
                "carrierId": 1211,
                "clientId": 20,
                "effectiveDate": "2015-01-01",
                "expirationDate": "2016-01-01",
                "writtenPremium": 15320,
                "carrierPolicyNumber": 502056
            },
          ...
        ]
    }
}
```
<p align="right">(<a href="#top">back to top</a>)</p>

## Installation

1. Fork and/or Clone the repo 
  ```
  git clone git@github.com:kg-byte/hw_challenge.git
  ```
2. Install gems and dependencies
  ```
   bundle install
  ```
3. Create database, run migrations, and seed database
  ```
rails db:{create,migrate,seed}
```

4. Run run test suit 
  ```
  bundle exec rspec
  ```
5. Start the local server to service API requests:
  ```
  rails s
  ```
6. Sample testing coverage:
```
Coverage report generated for RSpec to /Users/xiaoleguo/kg_byte/fun/hw_challenge/coverage. 240 / 240 LOC (100.0%) covered.
```


<p align="right">(<a href="#top">back to top</a>)</p>

## Contributor

### Kim Guo 
[<img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" />](https://github.com/kg-byte) &#124; [<img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" />](https://www.linkedin.com/in/kim-guo-5331b4158/)

<p align="right">(<a href="#top">back to top</a>)</p>
