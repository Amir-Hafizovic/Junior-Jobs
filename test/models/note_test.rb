# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :text
#  user_id    :integer
#  job_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
