class Oystercard

   attr_reader :balance
   #attr_reader :is_in_journey
   MAXIMUM_BALANCE = 90

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
    @is_in_journey
  end

 def touch_in
   fail "Insufficient balance to touch in" if @balance < 1
   @is_in_journey = true
 end

 def touch_out
   @is_in_journey = false
 end



end