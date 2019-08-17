class AboutsController < ApplicationController
    def index
        @about = About.all 
    end

    def new 
        @about = About.new
    end

    def create
        About.create(about_params)
        redirect_to root_path
      end
    
      private
    
      def about_params
        params.require(:about).permit(:name,:year, :description)
      end
end
