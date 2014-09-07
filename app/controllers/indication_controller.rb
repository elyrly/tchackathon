class IndicationController < ApplicationController
  def choose_indication
    FinalIndication.choose(params)
    @drug = Medicine.find(params[:id])
    @education = @drug.education.all
    redirect_to show_education_url
  end
end
