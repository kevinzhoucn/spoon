class Cpanel::SiteConfigsController < Cpanel::ApplicationController
  before_action :set_cpanel_site_config, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cpanel_site_configs = SiteConfig.all

    @cpanel_about_title = SiteConfig.where( key: 'about_title' ).first
    @cpanel_about_content_html = SiteConfig.where( key: 'about_content_html').first
    @cpanel_about_image_url = SiteConfig.where( key: 'about_image_url').first
    
    @cpanel_affiliate_advantage = SiteConfig.where( key: 'affiliate_advantage').first
    @cpanel_affiliate_policy = SiteConfig.where( key: 'affiliate_policy').first

    @cpanel_contact_address = SiteConfig.where( key: 'contact_address').first
    @cpanel_contact_phone = SiteConfig.where( key: 'contact_phone').first
    @cpanel_contact_email = SiteConfig.where( key: 'contact_email').first
    @cpanel_contact_qq = SiteConfig.where( key: 'contact_qq').first
    @cpanel_contact_webchat = SiteConfig.where( key: 'contact_webchat').first

    # @cpanel_about_title = SiteConfig.about_title
    # @cpanel_about_content_html = SiteConfig.about_content_html
    # @cpanel_about_image_url = SiteConfig.about_image_url

    # @cpanel_affiliate_advantage = SiteConfig.affiliate_advantage
    # @cpanel_affiliate_policy = SiteConfig.affiliate_policy

    # @cpanel_contact_address = SiteConfig.contact_address
    # @cpanel_contact_phone = SiteConfig.contact_phone
    # @cpanel_contact_email = SiteConfig.contact_email
    # @cpanel_contact_qq = SiteConfig.contact_qq
    # @cpanel_contact_webchat = SiteConfig.contact_webchat

    # @cpanel_contact_qq = SiteConfig.contact_qq
    # @cpanel_contact_qq = SiteConfig.contact_qq    

    respond_with(@cpanel_site_configs)
  end

  def show
    respond_with(@cpanel_site_config)
  end

  def new
    @cpanel_site_config = SiteConfig.new
    respond_with(@cpanel_site_config)
  end

  def edit
  end

  def create
    @cpanel_site_config = SiteConfig.new(cpanel_site_config_params)
    # redirect_to cpanel_site_configs_path if @cpanel_site_config.save
    if @cpanel_site_config.save
      redirect_to cpanel_site_configs_url
    end
    # respond_with(@cpanel_site_config)

  end

  def update
    @cpanel_site_config.update(cpanel_site_config_params)
    # albert注释掉了 respond_with(@cpanel_site_config, location: cpanel_site_config_path)
    if @cpanel_site_config.save
      redirect_to cpanel_site_configs_url
    end
  end

  def destroy
    @cpanel_site_config.destroy
    respond_with(@cpanel_site_config)
  end

  private
    def set_cpanel_site_config
      @cpanel_site_config = SiteConfig.find(params[:id])
    end

    def cpanel_site_config_params
      params.require(:site_config).permit(:key, :value)
    end
end
