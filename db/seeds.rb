# coding: utf-8

# 默认配置项
# 如需新增设置项，请在这里初始化默认值，然后到后台修改
SiteConfig.delete_all
# 首页
# SiteConfig.index_html

# About Title HTML
SiteConfig.save_default("about_title", "美丽资讯")

SiteConfig.save_default("about_content_html", <<-eos
<div class="box" style="text-align:center;">
  <p>美丽资讯</p>
</div>
eos
)

SiteConfig.save_default("about_image_url", 
  "http://static.freepik.com/free-photo/vintage-perfume-bottle_61-2214.jpg"
)


SiteConfig.save_default("affiliate_advantage", <<-eos
<div class="box" style="text-align:center;">
  <p>加盟优势</p>
</div>
eos
)

SiteConfig.save_default("affiliate_policy", <<-eos
<div class="box" style="text-align:center;">
  <p>加盟政策</p>
</div>
eos
)

SiteConfig.save_default("contact_address", "北京朝阳")
SiteConfig.save_default("contact_phone", "1234567")
SiteConfig.save_default("contact_email", "123@example.com")
SiteConfig.save_default("contact_qq", "1234567")
SiteConfig.save_default("contact_webchat", "1234567")

SiteConfig.save_default("position_image_manager", "/img/manager.jpg")
SiteConfig.save_default("position_image_employee", "/img/staff.jpg")

User.delete_all
admin = User.create!(email: "admin@brivates.com", password: "password")
admin.add_role :admin
puts 'admin: ' << admin.email
