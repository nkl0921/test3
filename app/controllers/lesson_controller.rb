#coding: utf-8

class LessonController < ApplicationController
  before_filter :do_before, only: :step7

  def step1
	render text: "Hello!!#{params[:name]}"
  end
  
  def step2
	render text: params[:contoroller] + "#" + params[:action] 
  end

  def step3
	redirect_to action: "step4"
  end

  def step4
	render text: "step4 移動"
  end

  def step5
	flash[:notice] = "step6に移動します"
	redirect_to action:"step6"
  end

  def step6
	render text: flash[:notice]
  end

  def step7
	render text: @message
  end

  def do_before
	@message = "こんにちは"
  end

  def step8
    @price = 1000
  end

  def step9
    @price = 2000
    render"step8"
  end

  def show
	render "top/about"
  end
end
