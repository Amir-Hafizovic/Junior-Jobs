# == Schema Information
#
# Table name: jobs
#
#  id            :integer          not null, primary key
#  title         :text
#  description   :text
#  job_location  :text
#  job_date      :text
#  job_company   :text
#  contract_type :text
#  logo_image    :text
#  salary        :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
