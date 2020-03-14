# frozen_string_literal: true

class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show edit update destroy]
  before_action :authenticate_tutor!, only: %i[new edit create update destroy]

  def index
    @lessons = Lesson.all.includes(:language, :tutor)
  end

  def show; end

  def new
    @lesson = Lesson.new
  end

  def edit; end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.tutor_id = current_tutor.id

    if @lesson.save
      redirect_to @lesson, notice: t('.success')
    else
      render :new
    end
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson, notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_url, notice: t('.success')
  end

  private

  def set_lesson
    @lesson = Lesson.includes(:language, :tutor).find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :url, :date_from, :date_to, :tutor_id, :image, :language_id)
  end
end
