require 'spec_helper'

describe Repack do
  it 'has a version number' do
    expect(Repack::VERSION).not_to be nil
  end

  describe '#self.package' do
    it 'adds the pharmaceuticals markup' do
      total = Repack.package(5432.00, 1, "drugs")
      expect(total).to eq 6199.81
    end

    it 'adds the food markup' do
      total = Repack.package(1299.99, 3, "food")
      expect(total).to eq 1591.58
    end

    it 'adds the electronics markup' do
      total = Repack.package(1000, 1, "electronics")
      expect(total).to eq 1083.60
    end

    it 'adds no extra category markup' do
      total = Repack.package(12456.95, 4, "books")
      expect(total).to eq 13707.63
    end

    it 'adds markup for workers' do
      total = Repack.package(155555.99, 15, "robots")
      expect(total).to eq 192733.87
    end
  end
end
