ActiveAdmin.register Achievement do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :awardee, :desc, :image
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
	f.input :image, as: :file
	f.actions
end

show do
    attributes_table do
      row :title
      row :awardee
      row :desc
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end

end
