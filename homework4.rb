require 'json'
module PersonYears
  def	adult?(data)
    if data["personal_data"]["age"] < 18
      p "To young"
    elsif data["personal_data"]["age"] > 65
      p "To old"
    else
      p "Age is #{data["personal_data"]["age"]}, everything is all right"
    end
  end
end

module PersonGender
  def gender?(data)
    if data["personal_data"]["gender"] == 'male'
      p "User is man"
    else
      p "User is woman"
    end
  end
end

module MagicWords
  module ClassMethods
    def magic_methods(pets)
      pets.each do |key, value|
        define_method("pets_#{key}") do
          "pets #{key} - #{value}"
        end
      end
    end
  end
  def self.included(base)
    base.extend(ClassMethods)
  end
end
RESPONSE='{"person":{
"personal_data":{"name": "John Smith", "gender":"male", "age":56},
"social_profiles":["http://facebook.com/john","http://twitter.com/john","http://smith.ru"],
"additional_info":{"hobby":["pubsurfing","drinking","hiking"],
"pets":[{"name":"Mittens","species":"Felis silvestris catus"}]}
}
}'
response = JSON.parse(RESPONSE)
Person = Struct.new(*response["person"].keys.collect(&:to_sym)) do
  def have_hobbies?(additional_info)
    !additional_info["hobby"].empty?
  end
end
Person.class_eval do
  include PersonGender
  include PersonYears
  include MagicWords
  magic_methods(response["person"]["additional_info"] ["pets"][0])
end
person = Person.new(*response["person"].values)
person.instance_eval do
  def facebook_account?
    result = false
    social_profiles.each do |social_profile|
      if !social_profile.downcase.scan(/facebook/).empty?
        result = true
      end
    end
    result
  end
end

p "adult?"
p person.adult?(person)
p person.gender?(person)
p "facebook_account?"
p person.facebook_account?
p "have_hobbies?"
p person.have_hobbies?(person.additional_info)
p person.pets_name
p person.pets_species

