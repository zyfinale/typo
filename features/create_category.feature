Feature: Login as admin
  As a Test
  
  Scenario: Successfully access to the admin page
    Given the blog is set up
    And I am an admin
    When I go to the admin page
    Then I should see "Welcome back, admin!"
    

  Scenario: Successfully access to the Category page
    Given the blog is set up
    And I am an admin
    And I am on the admin page
    When I go to the new category page
    Then I should see "Categories"
    
  Scenario: Successfully create Category
    Given the blog is set up
    And I am an admin
    When I am on the new category page
    And I fill in "category_name" with "Test 1"
    And I fill in "category_description" with "Description 1"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Test 1"
    And I should see "Description 1"
    
  Scenario: Successfully Edit Category
    Given the blog is set up
    And I am an admin
    When I am on the new category page
    And I fill in "category_name" with "Test 1"
    And I fill in "category_description" with "Description 1"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Test 1"
    And I should see "Description 1"
    And I fill in "category_name" with "Test 1 (edited)"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Test 1 (edited)"
    