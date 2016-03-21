module CurrencyCloud
  module CustomerRate

    def customer_rate
      if core_rate.present?
        if inverse_currency_pair?
          1/(core_rate).to_f
        else
          core_rate.to_f
        end.round(4)
      end
    end

    private

    def inverse_currency_pair?
      "#{client_sell_currency}#{client_buy_currency}" != currency_pair
    end

  end
end
