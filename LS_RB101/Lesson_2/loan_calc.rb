# ask user for information to calculate monthly payment
def prompt(message)
  puts("=> #{message}")
end

# makes sure user inputs are valid
def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

loop do # main loop
  prompt("Enter loan amount?")
  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt("Enter annual percentage rate?")
  apr = ''
  loop do
    apr = gets.chomp

    if valid_number?(apr)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt("Enter loan_duration in years?")
  duration = ''
  loop do
    duration = gets.chomp

    if valid_number?(duration)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  annual_interest_rate = apr.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = duration.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate) /
                    (1 - (1 + monthly_interest_rate)**(-months))

  prompt "$#{format('%.2f', monthly_payment)}"
  break
end
