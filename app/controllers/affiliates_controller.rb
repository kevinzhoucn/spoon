class AffiliatesController < ApplicationController
  before_action :set_affiliate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # @affiliates = Affiliate.all
    @affiliate = Affiliate.new
    @affiliate_advantage = SiteConfig.affiliate_advantage
    @affiliate_policy = SiteConfig.affiliate_policy
    respond_with(@affiliates)
  end

  def show
    respond_with(@affiliate)
  end

  def new
    @affiliate = Affiliate.new
    respond_with(@affiliate)
  end

  def edit
  end

  def create
    @affiliate = Affiliate.new(affiliate_params)
    Notifier.affiliate_received(@affiliate).deliver if @affiliate.save
    respond_with(@affiliate)
  end

  def update
    @affiliate.update(affiliate_params)
    respond_with(@affiliate)
  end

  def destroy
    @affiliate.destroy
    respond_with(@affiliate)
  end

  private
    def set_affiliate
      @affiliate = Affiliate.find(params[:id])
    end

    def affiliate_params
      params.require(:affiliate).permit(:title, :content)
    end
end
