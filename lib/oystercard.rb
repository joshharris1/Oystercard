class Oystercard

   attr_reader :entry_station
   attr_reader :balance
   
   MAXIMUM_BALANCE = 90
   MINIMUM_BALANCE = 1
   MINIMUM_CHARGE = 1
   
   public 
   
   attr_reader :entry_station
   
   
  def initialize
    @balance = 0
    @is_in_journey = false
  end

  def top_up(amount)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + @balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    !!entry_station
  end

 def touch_in(station)
   fail "Insufficient balance to touch in" if @balance < MINIMUM_BALANCE
   @is_in_journey = true
   @entry_station = station
 end

 def touch_out
     deduct(MINIMUM_CHARGE)
   @entry_station = nil
 end
 
 private
 
 def deduct(amount)
    @balance -= amount
 end
 



end