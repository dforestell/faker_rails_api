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

      def create
        article = Article.new(article_params)
        if article.save
          render json: {status: 'SUCCESS', message: 'Article Saved', data: article}, status: 200
        else
          render json: {status: 'ERROR', message: 'Loaded Article', data: article.errors}, status: :unprocessable_entity
        end
      end

      private
      def article_params
        params.permit(:title, :body)
      end
    end
  end
end
