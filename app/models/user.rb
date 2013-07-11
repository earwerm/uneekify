# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  age             :string(255)
#  gender          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :age, :gender, :password, :password_confirmation


  validates :name, :uniqueness => true, :length => { :minimum => 2}
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
  validates :gender, :presence => true
end
