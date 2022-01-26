require_relative "../lib/piggy_bank.rb"

# As a user,
# So that I can save money
# I can put coins in my piggy bank

describe PiggyBank do
  describe "#deposit" do
    it "should accept coins" do
      piggy_bank = PiggyBank.new #creating an instance of the PiggyBank class to use (deposit, shake, break)
      expect(piggy_bank).to respond_to(:deposit).with(1).argument #Can Piggybank class respond to deposit method with single argument?
    end
  end

# As a user,
# So that I know whether there are coins in my piggy bank
# I can shake it, and it will “cling” if there is money in it

describe "#shake" do
    it "should 'cling' when there are coins inside" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit(10)
      expect(piggy_bank.shake).to eq('cling')
    end

  it "should not 'cling' when there are no coins inside" do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.shake).to eq(nil)
  end
end 

# As a user,
# So I can enjoy my hard earned savings
# I can break my piggy bank and get back the number or coins that I had put in

describe "#break" do
  it "should return all coins" do
    piggy_bank = PiggyBank.new
    piggy_bank.deposit(10)
    expect(piggy_bank.break).to eq(10)
  end 
end

end
