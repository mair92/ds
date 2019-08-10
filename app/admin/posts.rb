ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :text, :user_id, :category_id, :image

  # index do
  #   selectable_column
  #   id_column
  #   column 'Image', sortable: :image_file_name do |firmware| link_to firmware.image_file_name, firmware.image.url end
  #   column :image_file_size, sortable: :image_file_size do |firmware| "#{firmware.image_file_size / 1024} KB" end
  #   column "Version" do |firmware| "#{firmware.major_version}.#{firmware.minor_version}.#{firmware.patch_version}" end
  #   column :created_at
  #   actions
  # end

  form do |f|
    f.input :title
    f.input :text

    f.input :user_id, :label => 'Author', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
    f.input :category_id, :label => 'Category', :as => :select, :collection => Category.all.map{|u| ["#{u.title}", u.id]}

    f.inputs "Upload" do
      f.input :image, required: true, as: :file
    end
    f.actions
  end
end
