class PiggyBank

  def initialize
    @coins = []
  end 

  def deposit(coin)
    @coins.push(coin)
  end

  def shake
    if @coins.length > 0
      return 'cling'
    else
      return nil
    end
  end

  def break
    @coins.sum
  end 


end