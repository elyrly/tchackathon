class FinalIndication < ActiveRecord::Base
  attr_accessible :medicine_id, :content
  belongs_to :medicine

  def self.choose(params)
    for item in params
      if item.first.is_number?
        indication = Indication.find_by_id(item.first)
        final_indication = FinalIndication.create(medicine_id: indication.medicine_id,
                                              content: indication.content)
      end
    end
  end
end
