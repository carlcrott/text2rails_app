class EmailListenerController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def recieve_email
		@params = params
		
		#make sure request is a post
		@inbound_email = InboundEmail.new(:test => params["text"],
													:html => params["html"],
													:to => clean_field(params["to"]),
													:from => clean_field(params["from"]),
													:subject => clean_field(params["subject"]),
													)

		respond_to do |format|
			if @inbound_email.save && request.post?
				@inbound_email.process_incoming_email
				flash[:notice] = 'Item sucessfully created.'
				format.xml  {render :xml => @inbound_email.errors, :status  => :created }
			else
				flash[:notice] = "Oops, we had an error saving the item."
				format.xml { render :xml => @inbound_email.errors, :status => :unprocessable_entitiy }
			end
		end
	end

	private
		def clean_field(input_string)
			input.string.gsub(/\n/,'') if input_string
		end

end
