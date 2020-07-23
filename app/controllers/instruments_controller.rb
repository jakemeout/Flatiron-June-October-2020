class InstrumentsController < ApplicationController
    def new
        @instrument = Instrument.new
    end

    def index
        @instruments = Instrument.all
    end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def create
        @instrument = Instrument.create(instrument_params)
        if @instrument.valid?
            redirect_to artist_path(@artist)
        else
            flash[:error] = @instrument.errors.full_messages.
            redirect_to new_instrument_path
        end
    end
    
    def update
        @instrument = Instrument.find(params[:id])
        
        if @instrument = Instrument.update(instrument_params)
            redirect_to artist_path(@artist)
        else
            flash[:error] = @instrument.errors.full_messages.
            redirect_to edit_instrument_path
        end
    end

    private 

    def instrument_params
        params.require(:instrument).permit(:name, :classification, :artist_id)
    end

end
