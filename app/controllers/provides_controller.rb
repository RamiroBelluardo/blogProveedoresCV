class ProvidesController < ApplicationController
  def new
    @provide = Provide.new
  end

  def create
    @provide = Provide.new(provide_params)

    if @provide.save
      redirect_to @provide
    else
      render 'new'
    end
  end

  def edit
    @provide = Provide.find(params[:id])
  end

  def update
    @provide = Provide.find(params[:id])

    if @provide.update(provide_params)
      redirect_to @provide
    else
      render 'edit'
    end
  end
  def show
    @provide = Provide.find(params[:id])
  end

  def index
    @provides =Provide.all
  end

  def destroy
    @provide = Provide.find(params[:id])
    @provide.destroy

    redirect_to provides_path
  end

  private
  def provide_params
    params.require(:provide).permit(:title, :content, :urlImage  )
  end

end
