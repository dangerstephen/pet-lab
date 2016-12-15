class Owner < ActiveRecord::Base
  # TODO: add validations

  validates :first_name, length: {maximum: 255}, presence: true
  validates :last_name, length: {maximum: 255}, presence: true
  validates :email, length: {maximum: 255}, presence: true, uniqueness: true, format: {with:/@/, message: "must contain the @ symbol"}


  before_save :normalize_phone_number




  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
