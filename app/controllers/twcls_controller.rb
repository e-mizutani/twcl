class TwclsController < ApplicationController
before_action :set_twcl, only: [:show, :edit, :update, :destroy] # destroyアクションを追加
  def index
    @twcls = Twcl.all
  end

  def new
    if params[:back]
      @twcl = Twcl.new(twcl_params)
    else
      @twcl = Twcl.new
    end
  end

  def confirm
    @twcl = Twcl.new(twcl_params)
    render :new if @twcl.invalid?
  end

  def destroy
    @twcl.destroy
    redirect_to twcls_path, notice:"ブログを削除しました！"
  end
  
  def create
    @twcl = Twcl.new(twcl_params)
    if @twcl.save
      redirect_to twcls_path, notice: "ブログを作成しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @twcl.update(twcl_params)
      redirect_to twcls_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  private
    def twcl_params
      params.require(:twcl).permit(:content)
    end

    # idをキーとして値を取得するメソッド
    def set_twcl
      @twcl = Twcl.find(params[:id])
    end
end