class User < ApplicationRecord
  has_many :custom_fields, dependent: :destroy
  accepts_nested_attributes_for :custom_fields, allow_destroy: true

  validates :mobile_number, :name, :password, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "must be a valid email address" }
end
