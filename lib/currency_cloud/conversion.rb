module CurrencyCloud
  class Conversion
    include CurrencyCloud::Resource
    include CurrencyCloud::CustomerRate
    
    resource :conversions
    actions :create, :retrieve, :find
    
    def client_sell_currency
      sell_currency
    end
    
    def client_buy_currency
      buy_currency
    end
  end
end
