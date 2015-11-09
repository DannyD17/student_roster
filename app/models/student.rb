class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, :format => {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
  validates :cell_phone, format: {with: /\d{3}-\d{3}-\d{4}/,
      message: 'format xxx-xxx-xxxx'}
end
