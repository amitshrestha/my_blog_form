class Api::GreContentsController < ApplicationController
  skip_before_filter :protect_from_forgery
  def index
    @gre_contents = GreContent.all
    render json: @gre_contents
  end

end