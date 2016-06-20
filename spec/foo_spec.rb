require 'rspec'
require_relative '../model/foo'

describe 'Foo' do
  it 'deberia retornar foo cuando hago do_foo' do
    foo = Foo.new
    expect(foo.do_foo).to eq "foo"
  end
end