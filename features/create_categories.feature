Feature: Create/Edit Categories
  As a blog administrator
  In order to properly organize articles
  I want to be able to create and edit categories

Background: categories to be edited and created

  Scenario: An admin should be able to create categories
  	Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I fill in "category_name" with "Sports"
    And I fill in "category_keywords" with "sports football"
    And I fill in "category_description" with "Sports Articles"
    And I press "Save"
    Then I should see "Category was successfully saved"

  Scenario: An admin should be able to edit categories
   	Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I follow "General"
    And I fill in "category_name" with "War"
    And I fill in "category_keywords" with "war"
    And I fill in "category_description" with "War Articles"
    And I press "Save"
    Then I should see "Category was successfully saved"