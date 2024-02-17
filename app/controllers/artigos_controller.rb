class ArtigosController < ApplicationController

  def index
    @artigos = Artigo.all
  end

  def show
    @artigo = Artigo.find(params[:id])
  end

  def new
    @artigo = Artigo.new
  end
  
  def create
    @artigo = Artigo.new(artigo_params)

    if @artigo.save 
      redirect_to :root
    else
      render :new, status: :not_found
    end
  end

  def edit
    @artigo = Artigo.find(params[:id])
  end

  def update
    @artigo = Artigo.find(params[:id])

    if @artigo.update(artigo_params)
      redirect_to @artigo
    else
      render :edit, status: :not_found
    end
  end

  def destroy
    @artigo = Artigo.find(params[:id])
    @artigo.destroy

    redirect_to :root, status: :see_other
  end

  private 
    def artigo_params
      params.require(:artigo).permit(:titulo, :corpo)
    end

end
