module Api
  module V1
    class ProjectsController < ApplicationController

      # /api/v1/projects
      def index
        @projects = Project.all
        @all = @projects.map do |project|
          {id: project.id, name: project.name, description: project.description, tools: project.tools, gif: project.gif, summary: project.summary, photos: project.photos}
        end
          
        render json: @all
      end

      def show
        @project = Project.find(params[:id])
        render json: @project
      end

      def create
        @project = Project.create(params[:id])
        render json: @project
      end

      def update
        @project = Project.find(params[:id])

        if @project.update(project_params)
          render json: @project, status: :ok
        else
          render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
        end
      end

      def destroy
        @project = Project.find(params[:id])
        @project.destroy
      end

      private

      def project_params
        params.require(:project).permit(:id, :name, :description, :tools, :gif, :summary)
      end

    end
  end
end
