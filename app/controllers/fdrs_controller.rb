
class FdrsController < ApplicationController
before_filter :authenticate_user!, :except => [:some_action_without_auth]

  def index
@fdrs = Fdr.find(:all)	
  end

def new
@fdr = Fdr.new
@h  = Holder.find(:all)
@b  = Bank.find(:all)

end

def create
@fdr = Fdr.new(params[:fdr])
@b  = Bank.find(:all)
@h  = Holder.find(:all)
if @fdr.save
flash[:notice] = 'FDR submissision succeeded'
redirect_to fdrs_path

else
render :action =>  'new'
end


end


def destroy
 Fdr.find(params[:id]).destroy
redirect_to fdrs_path

end
def show
redirect_to fdrs_path
end

end
