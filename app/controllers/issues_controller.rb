class IssuesController < ApplicationController
  before_action :set_issue, only: [:edit, :update, :destroy, :resolve]
  before_action :set_about_page, only: :index

  def index
    @issues = Issue.all.order(created_at: :desc)
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = current_pudding.issues.build(issue_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to issues_path, notice: 'Issue it was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to issues_path(@issue), notice: 'Issue was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue it was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def resolve
    @issue.resolved = !@issue.resolved
    @issue.save
    respond_to do |format|
      @issue.resolved ? flash.now[:notice] = "Nice! You have resolved an issue." : flash.now[:notice] = "Issue is reopened."
      format.js
    end
  end

  private
    def set_issue
      @issue = Issue.find(params[:id])
    end

    def issue_params
      params.require(:issue).permit(:text)
    end

    def set_about_page
      @about_page = "<p>Here you can report problems that you encountered in our application.</p>
                      <p>... but not the problems you are having with your boyfriend.</p>
                      <p>If you really want it, i can make that too xD</p>"
    end
end