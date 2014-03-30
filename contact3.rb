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

  def to_s
  	"ID: #{@id}\nName: #{@name}\nAddress: #{@address}\nPhone: #{@phone}\nEmail: #{@email}\nNotes: #{@note}"
  end

  #def contacts
  #	@contacts
  #end
end