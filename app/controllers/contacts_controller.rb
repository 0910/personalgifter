class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Gracias por contactarnos. Nos pondremos en contacto a la brevedad!'
      render :new
    else
      flash.now[:error] = 'Error al enviar el mensaje.'
      render :new
    end
  end
end