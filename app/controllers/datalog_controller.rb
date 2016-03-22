class DatalogController < ApplicationController

    def new
    end

    def create
        @datastr = Datastr.new
        @datastr.income = params[:income]
        @datastr.expenses = params[:expenses]
        @datastr.use = params[:use]
        @datastr.save
        redirect_to datastr_path(@datastr.id)
    end
    
    def list
        @datalist = Datastr.all
    end
    
    def show
        @datastr = Datastr.find(params[:id])
    end
end