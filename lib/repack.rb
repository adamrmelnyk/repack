require "repack/version"

module Repack
  FLAT_MARKUP = 0.05
  PER_WORKER_MARKUP = 0.012
  FOOD_MARKUP = 0.13
  ELEC_MARKUP = 0.02
  PHARM_MARKUP = 0.075

  def self.package(base_price, workers, category)
    @base_price, @workers, @category = base_price, workers, category

    @base_price *= (1 + FLAT_MARKUP)
    @base_price += (worker_markup + product_category_markup)
    @base_price.round(2)
  end

private

  def self.worker_markup
    @base_price * @workers * PER_WORKER_MARKUP
  end

  def self.product_category_markup
    if @category == "food"
      @base_price * FOOD_MARKUP
    elsif @category == "electronics"
      @base_price * ELEC_MARKUP
    elsif @category == "drugs"
      @base_price * PHARM_MARKUP
    else
      0
    end
  end
end
