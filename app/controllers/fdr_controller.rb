class FdrController < ApplicationController
  def index

@fdrs = Fdr.find(:all) 
  end

end
