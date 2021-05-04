module LoansHelper
  def colec (people) 
    @pe = []
    people.each do | person |
      if(person.loan.nil?)
        @pe << person
      end
    end
    return @pe
  end 
end
