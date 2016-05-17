require 'watir'
require 'watir-webdriver'
require 'models/parking_lot'

Given(/^when user choose half and hour parking$/) do
  @lot="Short-Term Parking"
  @entrytime = "01:00"
  @entrytimeam= "am"
  @entrydate= "05/15/2016"
  @exittime= "01:29"
  @exittimeam= "am"
  @exitdate= "05/15/2016"
end

When(/^he exits the parking lot$/) do
  parkingbrowser=Watir::Browser.new :ie
  parkingbrowser.goto 'http://adam.goucher.ca/parkcalc/index.php'
  pl=ParkingLot.new(parkingbrowser)
  pl.calculate(@lot,@entrytime,@entrytimeam,@entrydate,@exittime,@exittimeam,@exitdate)
end

Then(/^user is charged with one dollar$/) do
  expect(@result).to be(nil)
end