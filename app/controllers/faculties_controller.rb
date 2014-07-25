class FacultiesController < ApplicationController
  inherit_resources

  respond_to :html
  respond_to :json, :only => :index

  actions :all, :except => [:show]

  has_scope :sort do |controller, scope, _|
    scope.order('created_at ASC')
  end

  private

  def faculty_params
    params.require(:faculty).permit(:title, :abbr)
  end

  def collection
    @faculties ||= end_of_association_chain.includes(:subdepartments)
  end
end
