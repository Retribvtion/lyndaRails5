class SubjectsController < ApplicationController

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(params[:subject])
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end

  end

  def edit

  end

  def update

  end

  def delete

  end

  def destroy

  end
end
