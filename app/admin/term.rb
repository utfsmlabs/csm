ActiveAdmin.register Term do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	permit_params :start, :end, :name
end
