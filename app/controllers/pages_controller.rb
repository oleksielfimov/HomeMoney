class PagesController < ApplicationController
   
  def buy
	@title='Покупка'
  end

  def account
   @title='Управление счетами'
  end

  def report
	@title='Отчеты'
  end
  
  def home
   @title='Копилка'
  end
  
end

