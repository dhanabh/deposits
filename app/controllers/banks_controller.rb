class BanksController < ApplicationController
  def index
  end
def get_name
@bank = Bank.new
return @bank.name

end


end
