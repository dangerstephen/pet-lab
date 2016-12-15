class OwnersController < ApplicationController

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
  respond_to do |format|
    if @owner.save
      format.html {redirect_to @owner, notice: "Owner was successfully created!"}
    else
      format.html{render :new}
      flash[:notice]= "ERROR while creating owner. Try again"
    end
  end
end

  def show
    owner_id = params[:id]
    @owner = Owner.find_by(id: owner_id)
  end

  def edit
    owner_id = params[:id]
    @owner = Owner.find(owner_id)
    end

  def update
    owner_id = params[:id]
    @owner = Owner.find(owner_id)

    if @owner.update(owner_params)
      redirect_to('/owners')
      flash[:notice]= "You updated the owner"
    else
      render('edit')
      flash[:notice]= "ERROR updating please try agian"
    end
  end

  def destroy
    owner_id = params[:id]
@owner = Owner.find(owner_id)
@owner.destroy

redirect_to('/owners')
  end


  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :phone)
  end

end
