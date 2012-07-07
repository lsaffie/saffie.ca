require 'spec_helper'

describe Post do
  it { should be_accessible :title}
  it { should be_accessible :body}

  it { should_not be_accessible :id}
end
