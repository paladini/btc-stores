class StaticController < ApplicationController
  def index
  	@render_header = true
  end

  def about
  	@render_header = true
  end

  def contact
  	@render_header = true
  end

  def resume
  	@render_header = false
  end
end
