@BDDSTORY-DEMO-3
Feature: BDD Feature
BDD feature desc


	@BDDTEST-DEMO-4
	@BDDVER--1
	@BDDCYC-a76cf090-112c-4e57-b049-7948fe241a8c
	Scenario: Scenario num 1
		Given url apiURL
		And request read('classpath:resourses/Das.json')
		When method post
		Then status 201
		And match $ contains {name:"morpheus"}

	@BDDTEST-DEMO-5
	@BDDVER--1
	@BDDCYC-a76cf090-112c-4e57-b049-7948fe241a8c
	Scenario: Scenario 2
		Given url apiURL
		And request read('classpath:resourses/Das.json')
		When method post
		Then status 201
		And match $ contains {name:#notnull}

