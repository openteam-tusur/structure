class Faculty < ActiveRecord::Base
  has_many :subdepartments, -> { order('created_at ASC') }, :dependent => :destroy

  normalize_attributes    :title, :abbr

  validates_presence_of   :title, :abbr
  validates_uniqueness_of :title, :scope => :abbr

  def to_s
    "#{title} (#{abbr})"
  end

  def as_json(*options)
    super(:only => [:title, :abbr], :include => { :subdepartments => { :only => [:title, :abbr] } })
  end
end
