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
      row :user_code
      row :email
      row :content
      row :bug_happen
      row :avatar_file_name
      row :image do
        image_tag(feedback.avatar.url(:square))
      end
      row :created_at
    end
  end
end