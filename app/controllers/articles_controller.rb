class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # when we visit http://localhost:3000/articles/new, the GET request
    # is mapped to the new action. The new action does not attempt to save @article
    # validations are not checked and there are no error messages.
    @article = Article.new
  end

  def create
    # when we submit the form the POST request is mapped to
    # the create action
    @article = Article.new(article_params)

    # the create action does attempt to save @article. Therefore, validations are checked.
    if @article.save
      redirect_to @article
    else
    # if any validation fails, @article will no be saved, and app/views/articles/new.html.erb
    # will be rendered with error messages
      render :new, status: :unprocessable_entity
    end
  end
  # Above is Create and Read methods for the app.
  # Here is the U below in two methods. The first is the edit
  # to be able to edit your article and the next is update
  # to be able to save the update to your database.
  def edit
    # fetches the article from the database to show to edit
    @article = Article.find(params[:id])
  end

  def update
    # fetches again but saves the update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy 
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end


