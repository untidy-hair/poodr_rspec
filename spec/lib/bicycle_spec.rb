require_relative '../spec_helper'
require_relative '../../lib/bicycle'

describe Bicycle do
  let!(:bicycle) { @object = Bicycle.new(tire_size: 0) }

  it_has "Bicycle interface"

  it 'forces subclasses to implement default_tire_size' do
    expect { bicycle.default_tire_size }.to raise_error(NotImplementedError)
  end

  its '#spares include local specific local_spare key&value' do
    class StubbedBike < Bicycle
      def default_tire_size
        0
      end
      def local_spares
        {saddle: 'painful'}
      end
    end
    stub_bike = StubbedBike.new
    expect(stub_bike.spares).to have_key :saddle
    expect(stub_bike.spares[:saddle]).to eq 'painful'
  end

end