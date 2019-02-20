module Api
  module V1
    class ProjectsController < ApplicationController

      def index
        @projects = Project.all
        render json: @projects
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
        params.require(:project).permit(:id, :name, :description, :tools)
      end

    end
  end
end
