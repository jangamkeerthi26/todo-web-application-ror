class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    tasks = case params[:filter]
            when "pending"
              current_user.tasks.where(completed: false)
            when "completed"
              current_user.tasks.where(completed: true)
            else
              current_user.tasks
            end

    tasks = tasks.order(created_at: :desc)

    @grouped_tasks = tasks.group_by do |task|
      if task.created_at.month == Time.zone.now.month && task.created_at.year == Time.zone.now.year
        task.created_at.strftime("%d %B %Y")
      else
        task.created_at.strftime("%B %Y")
      end
    end
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = current_user.tasks.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = current_user.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy!

    respond_to do |format|
      format.html { redirect_to tasks_path, status: :see_other, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Load only the current user's task to prevent unauthorized access
  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  # Strong params
  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
