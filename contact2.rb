class Contact
	@@counter = 0
  
  attr_accessor :first_name, :last_name, :email, :note

	def initialize
		@id = Contact.get_id
	end 
	
	def self.get_id
		@@counter += 1
		@@counter
  end
end