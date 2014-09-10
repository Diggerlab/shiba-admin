ActiveAdmin.register Notice do
  permit_params :title, :published_at, :closed_at, :content_en, :content_zh, :content_jp, 
  :content_tw, :admin_user_id
  menu label: 'Notices', parent: 'Operation'
  index  do                   
    column "結束時間",:closed_at     
    column "显示时间",:published_at                 
    actions    
  end         
           
  form do |f|
    f.inputs "活动标题" do
      f.input :title
    end
    f.inputs "活動显示时间" do
      f.input :published_at
    end
    f.inputs "結束時間" do
      f.input :closed_at
    end
    f.inputs "content" do
      f.kindeditor :content, :owner_id => current_admin_user.id, filterMode: false
    end
    f.input :admin_user_id, as: 'hidden', value: current_admin_user.id
    f.actions
  end

end
