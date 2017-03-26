ActiveAdmin.register Animal do
  permit_params :name, :breed, :gender, :castrated, :birthday, :last_checkin,
    :owner, :owner_phone

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :breed, as: :select, collection: Animal.pluck(:breed).uniq, include_blank: false
      f.input :gender, as: :select, collection: [['Male', 'male'], ['Female', 'female']], include_blank: false
      f.input :castrated
      f.input :birthday, as: :date_time_picker
      f.input :last_checkin, as: :date_time_picker
      f.input :owner
      f.input :owner_phone
    end
    f.actions
  end
end
