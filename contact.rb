class Contact
  @@counter = 0

	attr_accessor :name, :address, :phone, :id, :note
  
  def initialize
  	@id = Contact.get_id
  end

	def to_s
		"ID: #{@id}\nName: #{@name}\nAddress: #{@address}\nPhone: #{@phone}\nNotes: #{@nNotes}\n"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end
end