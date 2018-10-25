ActiveAdmin.register Event do

permit_params :name, :date, :desc, :title, :event_image
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
	f.inputs
	f.input :event_image, as: :file
	f.actions
end

show do
    attributes_table do
      row :name
      row :date
      row :desc
      row :title
      row :event_image do |ad|
        image_tag url_for(ad.event_image)
      end
    end
  end

end
