# ask for inputs of loan amount, annual percentage rate (APR), and loan duration (in years)
# convert APR to monthly interest rate
# convert loan duration / 12 into months
# calculate monthly payment with formula listed
# output monthly interest rate, loan duration in months, and monthly payment

# START
# SET loan_amount, annual_percentage_rate, loan_duration variables
# SET monthly_interest_rate, loan_duration_months, monthly_payment variables
# GET loan_amount, annual_percentage_rate, loan_duration from user
# calculate loan_duration_months = loan_duration * 12
# calculate monthly_interest_rate = annual_percentage_rate/12 then convert to true percentage (/100)
# calculate monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

loan_amount = ''
annual_percentage_rate = ''
loan_duration = ''

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("-------------------------------")
  
  prompt("Please enter the loan amount:")
  loop do
    loan_amount = Kernel.gets().chomp()   #.to_f()
    if loan_amount.empty?() || loan_amount.to_f() < 0
        prompt("Please enter a positive number.")
    else
        break
    end
  end

  prompt("Please enter the Annual Percentage Rate:")
  annual_percentage_rate = Kernel.gets().chomp().to_f()

  prompt("Please enter the loan duration in years:")
  loan_duration = Kernel.gets().chomp().to_i()

  loan_duration_months = loan_duration * 12
  monthly_interest_rate = (annual_percentage_rate / 12) / 100
  monthly_payment = (loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))).truncate(2)

  prompt("Your monthly payment is: $#{monthly_payment}")
  prompt("Your monthly interest rate is: #{monthly_interest_rate}%")
  prompt("Your loan duration in months is: #{loan_duration_months} months")

  prompt("Would you like another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Mortgage Calculator!")
