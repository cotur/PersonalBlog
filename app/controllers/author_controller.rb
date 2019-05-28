class AuthorController < ApplicationController
  before_action :set_author, only: [:show]
  def index
    @authors = User.order('id ASC').all.to_a
  end

  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = User.find(params[:id])
    end
end
