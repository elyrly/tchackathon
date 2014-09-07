class MedicalSession < ActiveRecord::Base
  attr_accessible :start_time, :stop_time
  has_and_belongs_to_many :medicines

  def next_drug(drug)
    drug_ids = Array.new
    #add all medicines of that sessions
    self.medicines.each do |medicine|
       drug_ids << medicine.id
    end

    hash = Hash[drug_ids.map.with_index.to_a]
    next_drug = Medicine.find_by_id(drug_ids[hash[drug.id]+1])
  end

  def first_element?(drug)
    drug_ids = Array.new
    #add all medicines of that sessions
    self.medicines.each do |medicine|
       drug_ids << medicine.id
    end
    hash = Hash[drug_ids.map.with_index.to_a]
    drug == Medicine.find_by_id(hash.first[0])
  end

  def started?
    self.start_time?
  end
end
