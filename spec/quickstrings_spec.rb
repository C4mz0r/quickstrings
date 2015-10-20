require 'spec_helper'

describe Quickstrings do
  it 'has a version number' do
    expect(Quickstrings::VERSION).not_to be nil
  end

  it 'generates a url' do
    expect(Quickstrings.url).to eq('http://www.google.com')
  end

  it 'generates a string from an array' do
    expect(Quickstrings.whitelist_string(['a'],1)).to eq('a')
  end

  it 'generates a string from a single character' do
    expect(Quickstrings.whitelist_string("m",3)).to eq('mmm')
  end

  it 'generates a string from a fixnum' do
    expect(Quickstrings.whitelist_string('123',4)).to match(/[1-3]{4}/)
  end

  it 'generates a string from a range' do
    expect(Quickstrings.whitelist_string(('a'..'z'),3)).to match(/[a-z]{3}/)
  end

  it 'generates a random string with a-z characters' do
    expect(Quickstrings.rstring(10)).to match(/[a-z]{10}/)
  end

  it 'generates a random string with delimiters' do
    expect(Quickstrings.rstring(10,'Q')).to match(/Q[a-z]{8}Q/)
  end

  #it 'generates a string containing UTF8 chars' do
  #  expect(Quickstrings.rutf8string(10)).to match ...
  #end

  it 'generates an image path' do 
    expect(Quickstrings.image).to match("http://www.gravatar.com/avatar/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
  end

  it 'generates an image of specified size' do
    expect(Quickstrings.image 250).to match("http://www.gravatar.com/avatar/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa?s=250")
  end

  it 'generates a persons first name' do
    expect(Quickstrings.fname).to match("Frank")
  end

  it 'generates a persons full name' do
    expect(Quickstrings.flname).to match("Frank Enstein")
  end

  it 'generates an email' do
    expect(Quickstrings.email).to match("somebody@example.com")
  end

end
