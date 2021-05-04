module PeopleHelper
  def loan_state(person)

    if(person.loan.nil?)
      return 'table-danger'
    else
      paid = 0 
      person.loan.deliveries.each do |d|
        paid += d.amount
      end
      if(person.loan.amount - paid == 0)
        return 'table-success'
      else
          return 'table-warning'
      end 
    end
  end
end
