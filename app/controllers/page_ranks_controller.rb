class PageRanksController < ApplicationController
  before_action :set_page_rank, only: %i[show edit update destroy]

  # GET /page_ranks or /page_ranks.json
  def index
    @page_ranks = PageRank.all
  end

  # GET /page_ranks/1 or /page_ranks/1.json
  def show; end

  # GET /page_ranks/new
  def new
    @page_rank = PageRank.new
  end

  # GET /page_ranks/1/edit
  def edit; end

  # POST /page_ranks or /page_ranks.json
  def create
    @page_rank = PageRank.new(page_rank_params)

    respond_to do |format|
      if @page_rank.save
        format.html { redirect_to @page_rank, notice: 'Page rank was successfully created.' }
        format.json { render :show, status: :created, location: @page_rank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_ranks/1 or /page_ranks/1.json
  def update
    respond_to do |format|
      if @page_rank.update(page_rank_params)
        format.html { redirect_to @page_rank, notice: 'Page rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_rank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_ranks/1 or /page_ranks/1.json
  def destroy
    @page_rank.destroy
    respond_to do |format|
      format.html { redirect_to page_ranks_url, notice: 'Page rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_page_rank
    @page_rank = PageRank.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def page_rank_params
    params.require(:page_rank).permit(:rank, :link_id)
  end
end
