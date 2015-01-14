# Tutorial from
# http://tutorials.jumpstartlab.com/topics/internal_testing/rspec_practices.html

describe Client do

  before(:all) do
    @client = Client.new
  end

  it { @client.should respond_to :connect }
  it { @client.should respond_to :disconnect }
  it { @client.should respond_to :server_name }

end

# ---------------
# Above generates a client for each execution, and has instance variables
# cluttering up the code
# ---------------

describe Client do

  before(:all) do
    @client = Client.new
  end

  subject { @client }

  it { should respond_to :connect }
  it { should respond_to :disconnect }
  it { should respond_to :server_name }

end

# ---------------
# Better, and cleared instance variables. But can be even shorter
# using implicit subject
# ---------------

describe Client do

  it { should respond_to :connect }
  it { should respond_to :disconnect }
  it { should respond_to :server_name }

end

# ---------------
# Or, super duper succiently
# ---------------

descrive Client do

  [ :connect, :disconnect, :server_name].each do |attribute|
    it { should respond_to attribute }
  end

end
