Feature: API test with Karate DSL

Scenario: Verify return of pages
Given url apiURL
And request read('classpath:resourses/Das.json')
When method post
Then status 201
And match $ contains {name:"morpheus"}

Scenario: Verify name change
* def changes = read('classpath:resourses/Das.json')
* set changes.name = 'Vaibhav'

Given url apiURL
And request changes
When method post
Then status 201
And match $ contains {name:#notnull}