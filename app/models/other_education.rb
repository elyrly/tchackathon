class OtherEducation < ActiveRecord::Base
    attr_accessible :medicine_id, :content
    belongs_to :medicine
end
