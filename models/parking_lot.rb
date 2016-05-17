require 'page-object'

class ParkingLot
  include PageObject
  text_field(:entrytime, :name=> 'EntryTime')
  select(:lot ,:id=>'Lot')
  radio(:entrytimeam,:name=>'EntryTimeAMPM')
  text_field(:entrydate, :id=>'EntryDate')
  text_field(:exittime, :name=> 'ExitTime')
  radio(:exittimeam, :name=>'ExitTimeAMPM')
  text_field(:exitdate, :id=>'ExitDate')
  button(:submitpage,:name=>'Submit')
  span(:result, :class => 'SubHead')


  def calculate(lot,entrytime,entrytimeam,entrydate,exittime,exittimeam,exitdate)
    self.entrytime = entrytime
    self.lot = lot
    entrytimeam
    self.entrydate=entrydate
    self.exittime=exittime
    exittimeam
    self.exitdate=exitdate
    submitpage
    result_element
  end

end




