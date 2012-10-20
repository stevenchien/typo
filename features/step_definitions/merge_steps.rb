Given /the following articles exist/ do |articles|
  articles.hashes.each do |article|
    Article.create(:title => article['title'])
  end
end

And /my login is "([^\"]*)" with password "([^\"]*)"$/ do |username, password|
  visit '/accounts/login'
  fill_in "login", :with => username
  fill_in "password", :with => password
  click_button "Login"
end

And /my login is not "([^\"]*)" with password "([^\"]*)"$/ do |username, password|
    visit '/accounts/login'
    fill_in "login", :with => username
    fill_in "password", :with => password
    click_button "Login"
end
