class CatalogsController < ApplicationController
def show
    @catalog = Catalog.find(params[:id])
  end

  def new
    @title = "Sign up"
  end
end