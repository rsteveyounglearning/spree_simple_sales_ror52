module SpreeSimpleSalesRor52
  module Spree
    module HomecontrollerDecorator
      def sale
        @products = ::Spree::Product.joins(:variants_including_master).where('spree_variants.sale_price is not null').distinct
      end
    end
  end
end

Spree::HomeController.prepend SpreeSimpleSalesRor52::Spree::HomecontrollerDecorator