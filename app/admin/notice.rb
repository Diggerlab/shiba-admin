ActiveAdmin.register Notice do
 menu label: 'Notices', parent: 'Operation'
  index  do  
    column "開始時間",:start_at                  
    column "結束時間",:end_at     
    column "活動是否存在",:enabled                 
    default_actions    
  end         
           
  form do |f|
    f.inputs "活動是否結束" do
      f.input :enabled
    end
    f.inputs "開始時間" do
      f.input :start_at
    end
    f.inputs "結束時間" do
      f.input :end_at, value: (Time.now + 3600)
    end
    f.inputs "content_en" do
      f.kindeditor :content_en, :owner_id => current_admin_user.id, filterMode: false
    end
    f.inputs "content_zh" do
      f.kindeditor :content_zh, :owner_id => current_admin_user.id, filterMode: false
    end
    f.inputs "content_jp" do
     f.kindeditor :content_jp, :owner_id => current_admin_user.id, filterMode: false
    end
    f.inputs "content_tw" do
      f.kindeditor :content_tw, :owner_id => current_admin_user.id, filterMode: false
    end
    f.input :admin_user_id, as: 'hidden', value: current_admin_user.id
    f.actions
  end

end
