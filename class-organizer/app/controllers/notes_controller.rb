class NotesController < ApplicationController
  before_action :require_login
  
  def get
    note = Note.find(params[:id])
    render json: note
  end
  
  def update
    note = Note.find(params[:id])
    note.body = params[:body]
    note.save
    render json: {}
  end
  
  def create
    course = Course.find(params[:course_id])
    new_note = course.notes.create(title: params[:title], body: "")
    render json: {id: new_note.id}
  end
  
end
