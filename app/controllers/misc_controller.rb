class MiscController < ApplicationController
  respond_to :json
  def add_style
    if params[:name].blank?
      respond_with({error:"Name is required"}, status: :unprocessable_entity, location: "nil")
      return
    end
    style = Style.create name: params[:name], account_id: current_user.account.id
    if style.save
      respond_with style, status: :created, location: "nil"
    else
      respond_with style.errors, status: :unprocessable_entity, location: "nil"
    end

  end

  def add_medium
    if params[:name].blank?
      respond_with({error:"Name is required"}, status: :unprocessable_entity, location: "nil")
      return
    end
    medium = Medium.create name: params[:name], account_id: current_user.account.id
    if medium.save
      respond_with medium, status: :created, location: "nil"
    else
      respond_with medium.errors, status: :unprocessable_entity, location: "nil"
    end
  end
end