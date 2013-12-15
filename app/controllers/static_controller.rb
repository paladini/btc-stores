class StaticController < ApplicationController
  def index
  	@render_header = true
    @items = Item.order('created_at desc').limit(10)
    @item = Item.new
  end

  def about
  	@render_header = false
  end

  def contact
  	@render_header = true
  end

  def resume
  	@render_header = false
  end
end
