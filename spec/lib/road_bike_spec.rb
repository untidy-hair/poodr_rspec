require_relative '../spec_helper'
require_relative '../../lib/road_bike'

describe RoadBike do

  let!(:bike){ @object = RoadBike.new(tape_color: 'red') }

  it_has 'Bicycle interface'
  it_behaves_like 'a Bicycle'

  its "#local_spares[:tape_color] is the color passed" do
    expect(bike.local_spares[:tape_color]).to eq 'red'
  end

  its "#spares includes local spares" do
    expect(bike.spares).to have_key :tape_color
  end

end