@ignore
Feature: Book request

Scenario:
Given url 'http://localhost:8081/api/books'
And request {"title": '#(req_title)', "author": '#(req_author)'}
When method POST
Then status 201