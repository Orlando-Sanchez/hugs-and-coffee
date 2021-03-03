class MonetaryAccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.profile.present?
      @profile = current_user.profile
      @monetary_accounts = current_user.monetary_accounts.all 
    else
      redirect_to root_url
    end
  end

  def new
    if current_user.profile.present? 
      @profile = current_user.profile
      @monetary_account = MonetaryAccount.new
    else
      redirect_to root_url
    end
  end

  def create
    @monetary_account = current_user.monetary_accounts.build(monetary_account_params)
    if @monetary_account.save
      redirect_to root_url, notice: "La cuenta ha sido creada"
    else
      redirect_to new_monetary_account_url, alert2: "No se pudo crear la cuenta"
    end
  end

  def edit
    if current_user.monetary_accounts.where('id = ?', params[:id]).first.present?
      @profile = current_user.profile
      @monetary_account = current_user.monetary_accounts.where('id = ?', params[:id]).first
    else 
      redirect_to root_url
    end
  end

  def update
    @monetary_account = current_user.monetary_accounts.where('id = ?', params[:id]).first
    if @monetary_account.update(monetary_account_params)
      redirect_to monetary_accounts_url, notice: "Cuenta actualizada"
    else
      redirect_to edit_monetary_account_url, alert2: "No se pudo actualizar la cuenta"
    end
  end

  def destroy
    @monetary_account = MonetaryAccount.where('id = ?', params[:id]).first
    if @monetary_account.destroy
      redirect_to monetary_accounts_url, notice: "La cuenta ha sido eliminada"
    else
      redirect_to edit_monetary_account_url, error2: "No se pudo eliminar la cuenta"
    end
  end

  private

  def monetary_account_params
    params.require(:monetary_account).permit(:entity, :account_email, :identification, :account_kind, :account_number)
  end
end