class Rolodex
	  @@id = 0
	def initialize
		@contacts = []
	end

  def contacts
  	@contacts
  end

	def add_contacts(contact)
		@contact.id = @@id
		@contacts << contact
    @@id += 1
	end
end