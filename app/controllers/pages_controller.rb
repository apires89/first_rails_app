class PagesController < ApplicationController

  def home

  end

  def about
  end

  def contact
    @members = ['fanny', 'andre', 'rahul']
    if params[:member]
      @members = @members.select {|member| member == params[:member]} unless params[:member] == ""
    end
  end

end
