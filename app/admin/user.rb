ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :email, :password, :admin
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  id_column
  column :name
  column :email
  column :admin
  actions
end

show do
  attributes_table do
    row :name
    row :email
    row :admin
  end
end

form do |f|
  f.inputs do
    f.input :name
    f.input :email
    f.input :password
    f.input :admin
  end
  f.actions
end

end
