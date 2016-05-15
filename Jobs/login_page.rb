require 'page-object'
class LoginPage
include PageObject
  text_field(:username, :id=> 'UserID')
  text_field(:password, :id => 'Password')
button(:submission,:id=>'logon')


  def login_with(username, password)
    self.username = username
    self.password = password
    self.submission.click
  end
end


 b = Watir::Browser.new :ie
 b.goto 'http://adam.goucher.ca/parkcalc/index.php'

my_page_object = LoginPage.new(b)
 my_page_object.login_with("hariramesh9a","")