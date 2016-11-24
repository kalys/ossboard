module Admin::Controllers::Tasks
  class Show
    include Admin::Action
    expose :task

    def call(params)
      @task = TaskRepository.new.find(params[:id])
    end
  end
end
