
require 'watir-webdriver'
require 'watir'
require 'models/parking_lot'

Given(/^User selects a lot in short term parking$/) do
  @lot="Short-Term Parking"
  @entrytime = "01:00"
  @entrytimeam= "am"
  @entrydate= "05/15/2016"
  @exittime= "01:30"
  @exittimeam= "am"
  @exitdate= "05/15/2016"
end

When(/^User selects the parking for thirty mins$/) do
  parkingbrowser=Watir::Browser.new :ie
  parkingbrowser.goto 'http://adam.goucher.ca/parkcalc/index.php'
  mypageobject=ParkingLot.new
  mypageobject.calculate(@lot,@entrytime,@entrytimeam,@entrydate,@exittime,@exittimeam,@exitdate)


end

Then(/^User should be charged one dollar$/) do
  expect(@result).to eq("$ 1.00")
end

When(/^User selects the parking for more than thirty mins but less than one hour$/) do
  pending
end

Then(/^User should be charged two dollars$/) do
  pending
end