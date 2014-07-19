class NotesController < ApplicationController
  def get
    note = Note.find(params[:id])
    render json: note
  end
  
end
