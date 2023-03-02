class ArticlesController < ApplicationController
  def index
    @categories = Article.categories.reject { |category| category == 'Uncategorized' }
    @articles = if params[:category].present? && Article.categories.keys.include?(params[:category])
                  Article.send(params[:category])
                else
                  Article.all
                end
  end

  def show
    @article = Article.find(params[:id])
  end
end
