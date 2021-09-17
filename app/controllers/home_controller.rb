class HomeController < ApplicationController




  # GET /homes/1
  # GET /homes/1.json
  def show
  end






  private

    # Only allow a list of trusted parameters through.
    def home_params
      params.fetch(:home, {})
    end
end
