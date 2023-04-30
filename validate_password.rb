class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    length_validation = (6..24).include?(@password.length)
    uppercase_letter_validation = !!(@password =~ /[A-Z]/)
    lowercase_letter_validation = !!(@password =~ /[a-z]/)
    digit_validation = !!(@password =~ /\d/)
    special_character_validation = !!(@password =~ /[!@#$%&*+=:;?<>]/)
    repeated_symbols_validation = !(@password =~ /(\w|\W)\1{2,}/)

    conditions = [length_validation, 
      uppercase_letter_validation, 
      lowercase_letter_validation, 
      digit_validation, 
      special_character_validation, 
      repeated_symbols_validation]
    
    conditions.all?
  end
end
