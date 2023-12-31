class BlogPestsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_blog_pest, except: [:index, :new, :create]

    def index
        @blog_pests = user_signed_in? ? BlogPest.all.sorted : BlogPest.published.sorted
    end

    def show
    end

    def new
        @blog_pest = BlogPest.new
    end

    def create
        @blog_pest = BlogPest.new(blog_pest_params)
        if @blog_pest.save
            redirect_to @blog_pest
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @blog_pest.update(blog_pest_params)
            redirect_to @blog_pest
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @blog_pest.destroy
        redirect_to root_path
    end

    private
        def blog_pest_params
            params.require(:blog_pest).permit(:title, :content, :published_at)
        end

        def set_blog_pest
            @blog_pest = user_signed_in? ? BlogPest.find(params[:id]) : BlogPest.published.find(params[:id])
            rescue ActiveRecord::RecordNotFound
            redirect_to root_path
        end

end