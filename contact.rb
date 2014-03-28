class Contact
  @@counter = 0

	attr_accessor :name, :address, :phone, :email, :id, :note
  
  def initialize
  	@id = Contact.get_id
  end

	def to_s
		puts "ID: #{@id}"
		puts "Name: #{@name}"
		puts "Address: #{@address}"
		puts "Phone: #{@phone}"
		puts "Email: #{@email}"
		puts "Notes: #{@note}"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end
end