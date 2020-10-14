include Helpers
require "json"
When('I want to know all the pets in the clinic') do
   @pets_response= Helpers.call_get("api/pets")
   puts @pets_response.body
   
end
  
Then('I should receive 13 pets') do
    expect(JSON.parse(@pets_response.body).count).to be 13
end