#coding: utf-8

class ArticlesController < ApplicationController
  #記事
  def index
    @articles = Article.order("released_at DESC")
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "記事を登録しました。"
    else
      render "new"
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.assign_attributes(params[:article])
    if @article.save
      redirect_to @article, notice:"記事を更新しました"
    else
      render "edit"
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to :articles, notice: "記事を削除しました"
  end
end
