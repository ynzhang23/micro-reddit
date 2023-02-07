class User < ApplicationRecord
  has_many :created_links, class_name: "Link"
  has_many :comments
  has_many :commented_links, through: :comments, source: :link

  validates :user_name, presence: true, uniqueness: true
end
