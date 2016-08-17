class Post < ApplicationRecord
  belongs_to :user

  require 'sanitize'
  before_save :sanitize_body

  def sanitize_body
    Sanitize.fragment(content, Sanitize::Config::RELAXED)
  end
end
