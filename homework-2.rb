# Опис об'єктів предметної області з використанням класів

#Клас Клієнт 
class Client
  
  def initialize(surname, passport_number, address, phone) 
      @surname = surname
      @passport_number = passport_number
      @address = address
      @phone = phone
  end
  
  def implemention
      puts "Здійснення замовлення"
  end
  
  def abolition
      puts "Відміна замовлення"
  end
end

#Клас Персонал
class Client
