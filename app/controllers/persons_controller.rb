class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(persons_params)
 
    if @person.save
      redirect_to persons_path
    else
      render :new
    end
  end
 
  private
 
    def persons_params
      params.require(:person).permit(:name, :age, :gender)
    end
end
