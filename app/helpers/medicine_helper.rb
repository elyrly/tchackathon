module MedicineHelper
  def clear_database(model)
    model ? model.delete_all : nil
  end
end