class SubjectsController < ApplicationController

  layout false
  def index
    @organizations = Organization.sorted
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
