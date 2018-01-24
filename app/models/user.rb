# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  employer_title  :text
#  junior_title    :text
#  user_type       :integer
#  image           :text
#  bio             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company         :text
#

class User < ApplicationRecord
  has_secure_password
  enum user_type: [:employer, :junior]
  has_many :notes, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :favourites, dependent: :destroy
end
