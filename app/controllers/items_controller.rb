class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    
    # Getting the shortened url for Item
    shortened = get_shortened_url(item_params[:url_original])

    # Creating a new Item
    @item = Item.new(
      :name => item_params[:name], 
      :description => item_params[:description],
      :url_original => item_params[:url_original],
      :url_shortned => shortened,
      :isActive => 1, 
      :country_id => item_params[:country_id],
      :category_id => item_params[:category_id]
      ) #mudar o isActive de 1 para 0 futuramente

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params[:item]
    end

    # Get the shortened URL
    def get_shortened_url(url)

      # My ID of CoinURL
      uuid = "5295ff66f2b7d971159514";

      # Making the GET request for CoinURL
      response = Unirest.get("https://coinurl.com/api.php?uuid=#{uuid}&url=#{url}", headers: {}, parameters: nil, auth:nil)

      if(response.body == 'error')
        return false;
      else
        return response.body;
      end

    end
end
