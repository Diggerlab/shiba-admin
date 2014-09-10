ActiveAdmin.register Feedback do
 menu label: 'Feedback', parent: 'Operation'
  index  do  
    column "Email",:email                  
    column "User",:user_code     
    column "Content",:content
    column "picture", :avatar_file_name                 
    actions  
  end         
  show do |feedback|
    attributes_table do
      row :uid
      row :email
      row :content
      row :error_reported_at
      row :order_note
      row :order_number
      feedback.uploads.each do |upload|
        row "image_name" do
          upload.avatar_file_name
        end 
        row :image do
          image_tag(upload.avatar.url(:square))
        end

      end
      row :created_at
    end
  end
end