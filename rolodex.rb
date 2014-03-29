#alternate method to edit attributes
# poop = %w( first_name last_name email notes)
# menu item n-1
# contact.send( poop[n-1] )

class Rolodex
	def initialize
		@contacts = []
	end

	def create_contact(name, address, phone, email)
		contact = Contact.new
		contact.name = name
		contact.address = address
		contact.phone = phone
		contact.email = email
		@contacts << contact
		print @contacts
	end

	def show_contacts
		@contacts.each do |contact| 
			puts contact.to_s
		end
	end

	def edit_name(id, new_name)
		@contacts.each do |contact|
			if contact.id == id
				contact.name = new_name
			end
		end
	end

	def edit_address(id, new_address)
		@contacts.each do |contact|
			if contact.id == id
				contact.address = new_address
			end
		end
	end

	def edit_phone(id, new_phone)
		@contacts.each do |contact|
			if contact.id = id
				contact.phone = new_phone
			end
		end
	end

	def edit_email(id, new_email)
		@contacts.each do |contact|
			if contact.id = id
				contact.email = new_email
			end
		end
	end

	def delete_contact(id)
    @contacts.delete_if {|x| x.id == id}
	end

	def create_note(id, note)
		@contacts.each do |contact|
			if contact.id == id
				contact.note = note
			end
		end
	end
end