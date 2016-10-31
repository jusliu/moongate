class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :destroy, :close, :open]
  
  def index
    @tickets = Ticket.all
  end
  
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      flash[:success] = "Ticket was successfully created."
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end
  
  def show
    @status = 'off'
    if @ticket.resolved
      @status = 'on'
    end
  end
  
  def destroy
    @ticket.destroy
    flash[:danger] = "Ticket was successfully deleted."
    redirect_to tickets_path
  end

  def close
    @ticket.update_attribute(:resolved, true)
    flash[:success] = "Ticket was successfully closed."
    redirect_to ticket_path
  end

  def open
    @ticket.update_attribute(:resolved, false)
    flash[:success] = "Ticket was successfully opened."
    redirect_to ticket_path
  end

  private
  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
  def ticket_params    
    params.require(:ticket).permit(:user_id, :category_id, :subject, :message)
  end
  
end
