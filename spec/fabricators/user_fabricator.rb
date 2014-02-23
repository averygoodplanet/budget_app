# Uses fabrication gem to create objects
# creates an instance of class User with name, etc. attributes
Fabricator(:user) do
  email "example@example.com"
  password "password"
  password_confirmation "password"
end