require 'spec_helper'

describe Computers do
	before {@computers = Computers.new(userName: "don", browser: "Firefox",
					category: "Laptop", time: 345, userAgentString: "uaString")}
	subject { @computers }

	it {should respond_to :userName}
	it {should respond_to :browser}
	it {should respond_to :category }
	it {should respond_to :time }
	it {should respond_to :userAgentString }
	it {should respond_to :description }

	it {should be_valid}

	describe "when userName is not present" do
		before {@computers.userName = " "}
		it { should_not be_valid }
	end

	describe "when userName is too long" do
		before {@computers.userName = "a"*61}
		it {should_not be_valid }
	end

end
