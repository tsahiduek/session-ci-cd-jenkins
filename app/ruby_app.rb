class PhoneBook
  attr_accessor :phone_list

  def initialize()
    @phone_list = []
  end

  def add_contact(contact)
    self.phone_list.push(contact)
  end

  def list_contact()
    self.phone_list.each do |item|
      puts item.inspect
    end
  end

  def get_pb()
    self.phone_list
  end
end


class Contact
  attr_accessor :first_name, :last_name, :address, :phone_number

  def initialize(first_name, last_name, address, phone_number)
    @first_name = first_name
    @last_name = last_name
    @address = address
    @phone_number = phone_number
  end

  def inspect
    "#{self.first_name} #{self.last_name} - #{self.phone_number}"
  end

  def get_contact()
    {first_name: self.first_name, last_name: self.last_name, address: self.address, phone_number: self.phone_number}
  end
end

# contact_1 = Contact.new("Arie", "Belenky", "Givataim", "054-6504656")
# contact_2 = Contact.new("Gil", "Cohen", "Tel Aviv", "054-6666666")
# contact_3 = Contact.new("Ohad", "Basan", "Tel Aviv", "052-6666666")
#
# pb = PhoneBook.new
#
# pb.add_contact(contact_1)
# pb.add_contact(contact_2)
# pb.add_contact(contact_3)
#
# pb.list_contact
# puts pb.get_pb


