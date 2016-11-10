class BasesController < ApplicationController
  def index
    @bases = Basis.all

    render("bases/index.html.erb")
  end

  def show
    @basis = Basis.find(params[:id])

    render("bases/show.html.erb")
  end

  def new
    @basis = Basis.new

    render("bases/new.html.erb")
  end

  def create
    @basis = Basis.new

    @basis.name = params[:name]
    @basis.team_id = params[:team_id]

    save_status = @basis.save

    if save_status == true
      redirect_to(:back, :notice => "Basis created successfully.")
    else
      render("bases/new.html.erb")
    end
  end

  def edit
    @basis = Basis.find(params[:id])

    render("bases/edit.html.erb")
  end

  def update
    @basis = Basis.find(params[:id])

    @basis.name = params[:name]
    @basis.team_id = params[:team_id]

    save_status = @basis.save

    if save_status == true
      redirect_to(:back, :notice => "Basis updated successfully.")
    else
      render("bases/edit.html.erb")
    end
  end

  def destroy
    @basis = Basis.find(params[:id])

    @basis.destroy

    if URI(request.referer).path == "/bases/#{@basis.id}"
      redirect_to("/", :notice => "Basis deleted.")
    else
      redirect_to(:back, :notice => "Basis deleted.")
    end
  end
end
