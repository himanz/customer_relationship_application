class Contact
  @@counter = 0

	attr_accessor :name, :id, :note
  
  def initialize
  	@id = Contact.get_id
  end

	def to_s
		"ID: #{@id}\nName: #{@name}\nNotes: #{@note}"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end
end