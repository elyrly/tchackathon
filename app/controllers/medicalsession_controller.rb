class MedicalsessionController < ApplicationController
  def new_session
    session = MedicalSession.new
    ids = []
    params["medicine"].each_pair  do |key, value|
      ids << key
    end
    session.medicines  = Medicine.find(ids)
    session.save!
    @drug = session.medicines.first
    redirect_to controller: 'medicine', action: 'drug_education', medical_session: session.id, id: @drug.id
  end

end