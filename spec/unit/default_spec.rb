require 'spec_helper'

describe 'phploc::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
end
