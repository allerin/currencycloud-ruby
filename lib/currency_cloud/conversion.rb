module CurrencyCloud
  class Conversion
    include CurrencyCloud::Resource
    include CurrencyCloud::CustomerRate
    
    resource :conversions
    actions :create, :retrieve, :find
    
    alias_attribute :client_sell_currency, :sell_currency
    alias_attribute :client_buy_currency, :buy_currency
  end
end
