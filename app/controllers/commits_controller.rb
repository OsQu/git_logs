class CommitsController < ApplicationController
  def index
    render json: Commit.all
  end

  def show
    render json: Commit.find(params[:id])
  end

  def create
    author = Author.create_with(name: params[:author].try(:[], :name))
      .find_or_create_by(email: params[:author].try(:[], :email))

    commit = Commit.new(commit_params.merge(author: author))

    if author.valid? && commit.save
      render json: commit
    else
      render json: { message: { commit: commit.errors, author: author.errors }}, status: 400
    end
  end

  private

  def commit_params
    params.permit(:sha, :message, :commit_date)
  end
end
