module DeliveriesHelper
  def se (people) 
    @pe = []
    people.each do | person |
      if(!person.loan.nil?)
        paid = 0 
        person.loan.deliveries.each do |d|
          paid += d.amount
        end
        if(person.loan.amount - paid > 0)
          @pe << person
        end
      
      end
    end
    return @pe
  end 
end
