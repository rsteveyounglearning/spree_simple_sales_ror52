module SpreeSimpleSalesRor52
  module Spree
    module VariantDecorator
      def price_in(currency)
        return super unless sale_price.present?
        ::Spree::Price.new(variant_id: self.id, amount: self.sale_price, currency: currency)
      end
    end
  end
end

Spree::Variant.prepend SpreeSimpleSalesRor52::Spree::VariantDecorator