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
class Personnel

  def initialize(surname, code_employee, зрщту) 
      @surname = surname
      @passport_number = code_employee
      @phone = phone
  end
  
  def service_client
      puts "Обслуговування клієнта"
  end
  
  def service_db
      puts "Обслуговування БД"
  end
  
  def contract
      puts "Укладення договору"
  end
  
  def cancel
      puts "Розірвання договору"
  end
end

#Клас Запчастина
class Detail
  
   def initialize(appellation, code_detail, price, amount) 
      @appellation = appellation
      @code_detail = code_detail
      @price = price
      @amount = amount
  end
  
