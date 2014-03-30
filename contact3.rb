class Contact
	@@counter = 0
  
  attr_accessor :first_name, :last_name, :email, :note, :id

	def initialize
		@id = Contact.get_id
	end 
	
	def self.get_id
		@@counter += 1
		@@counter
  end

  def to_s
  	"ID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nAddress: #{@address}\nNotes: #{@note}"
  end

  def display_id_name
  end

  #def contacts
  #	@contacts
  #end
end