@ignore
Feature: Update Book request

Scenario:
#* def id = req_id 
Given url "http://localhost:8081/api/books/"+ req_id
And request {"id": #(req_id), "title": '#(req_title)', "author": '#(req_author)'}
When method PUT
Then status 200