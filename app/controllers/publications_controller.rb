class PublicationsController < ApplicationController
  def create
    @memo = Memo.find(params[:memo_id])
    # raise @memo.inspect
  end
end
