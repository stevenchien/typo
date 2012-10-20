Feature: permalinks of merged articles

As a visiter of the blog
So that I can efficiently navigate and keep track of merge articles
I want to make sure original article permalinks redirect properly

Background: articles ready to be merged

Given the following articles exist:
| title | author | body |
| Article A | AuthorA | BodyA |
| Article B | AuthorB | BodyB |
And I am on the edit page for "Article A"
And the current user is "admin"
When I fill in "Merge Article With" with "2"
And I follow "Merge With This Article"
Then I should be on the view page for "Article A + Article B"
## Not sure how we plan to create a new title for merged articles
Scenario: the permalinks of the articles point to the merged article
When I follow the permalink to "Article A"
Then I should be on the view page for "Article A + Article B"
When I follow the permalink to "Article B"
Then I should be on the view page for "Article A + Article B"