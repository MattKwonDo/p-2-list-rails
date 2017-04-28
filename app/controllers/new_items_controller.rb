# frozen_string_literal: true

class NewItemsController < ApplicationController
  before_action :set_new_item, only: [:show, :update, :destroy]

  # GET /new_items
  def index
    # @new_items = NewItem.all
    @new_items = current_user.new_items

    render json: @new_items
  end

  # GET /new_items/1
  def show
    render json: @new_item
  end

  # POST /new_items
  def create
    # get 400 error with this
    # @new_item = NewItem.new(new_item_params)
    # get 500 error with this
    @new_item = current_user.new_items.build(new_item_params)

    if @new_item.save
      render json: @new_item, status: :created, location: @new_item
    else
      render json: @new_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /new_items/1
  def update
    if @new_item.update(new_item_params)
      render json: @new_item
    else
      render json: @new_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /new_items/1
  def destroy
    @new_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_item
      # @new_item = NewItem.find(params[:id])
      @new_item = current_user.new_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def new_item_params
      params.require(:new_item).permit(:name, :user_id)
    end
end
