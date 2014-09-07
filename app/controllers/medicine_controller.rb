class MedicineController < ApplicationController
    include MedicineHelper

  def drug_list
  end

  def drug_indication
    @session = MedicalSession.find_by_id(params[:medical_session])
    @drug = Medicine.find_by_id(params[:id])
    @indication = @drug.indication.all
  end

  def drug_education
    FinalIndication.choose(params)
    @session = MedicalSession.find_by_id(params[:medical_session])
    @drug = Medicine.find_by_id(params[:id])
    @next_drug = @session.next_drug(@drug)

  end

  def drug_final_indication
  end

  def show_import
  end

  def import
    unless params[:file]
      redirect_to show_import_url, notice: "Please select file"
      return
    end
    clear_database(Medicine)
    Medicine.import(params[:file])
    redirect_to drug_list_path
  end
end
