shared_examples_for "Bicycle interface" do
  subject { @object }
  it { should respond_to :default_tire_size }
  it { should respond_to :default_chain}
  it { should respond_to :chain}
  it { should respond_to :size}
  it { should respond_to :tire_size}
  it { should respond_to :spares}
end

share_examples_for "a Bicycle" do
  subject { @object }
  it { should respond_to :post_initialize }
  it { should respond_to :local_spares }
  it { should respond_to :default_tire_size}
end
