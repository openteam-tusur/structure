class Subdepartment < ActiveRecord::Base
  belongs_to :faculty

  normalize_attributes    :title, :abbr

  validates_presence_of   :title, :abbr, :faculty_id
  validates_uniqueness_of :title, :scope => :abbr

  def to_s
    "#{title} (#{abbr})"
  end
end
