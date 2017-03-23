class TodolistController < ApplicationController
  def index
    @projects = Project.all
    @todohash = {}
    @projects.each  do |project|
        tasks = Task.where(project: project)
      @todohash[project] = tasks
    end
  end
end
