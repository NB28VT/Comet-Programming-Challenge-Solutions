def valid_email?(email)
  regex = /\w*[@]\w*[.]\w*/
  regex.match(email)  ? true : false
end

def valid_phone_number?(input)
  regex = /\d{10}|[(]\d{3}[)]\d{3}[-]\d{4}|[(]\d{3}[)][-]\d{3}[-]\d{4}|\d{3}[-]\d{3}[-]\d{4}/
  regex.match(input)  ? true : false
end

def valid_password?(input)
  regex = /[\.{8,}\d+]/
  regex.match(input)  ? true : false
end

def valid_username?(input)
  regex = /^[a-zA-Z]+\w*$/
  regex.match(input)  ? true : false
end

def valid_credit_card_number?(input)
  regex = /^[3-6](\d{12}|\d{14}|\d{15})$/
  regex.match(input)  ? true : false
end

def only_numbers?(input)
  regex = /^\d*$/
  regex.match(input)  ? true : false
end

def only_letters?(input)
  regex = /^[a-zA-Z]+$/
  regex.match(input)  ? true : false
end

def valid_social_security?(input)
  regex = /^\d{3}[-]\d{2}[-]\d{4}|\d{9}$/
  regex.match(input)  ? true : false
end

def valid_zip_code?(input)
  regex = /^\d{5}|\d{5}[-]\d{4}$/
  regex.match(input)  ? true : false
end
