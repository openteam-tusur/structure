class SubdepartmentsController < ApplicationController
  inherit_resources

  belongs_to  :faculty
  actions     :all, :except => [:show, :index]

  def create
    create! { faculties_path }
  end

  def update
    update! { faculties_path }
  end

  def destroy
    destroy! { faculties_path }
  end

  private

  def subdepartment_params
    params.require(:subdepartment).permit(:title, :abbr, :faculty_id)
  end
end
