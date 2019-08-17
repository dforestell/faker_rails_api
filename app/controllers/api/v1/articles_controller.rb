module Api
  module V1
    class ArticlesController < ApplicationController

      def index
        articles = Article.order('created_at DESC')
        render json: {status: 'SUCCESS', message: 'Loaded Articles', data: articles}, status: 200
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded Article', data: article}, status: 200
      end

    end
  end
end
