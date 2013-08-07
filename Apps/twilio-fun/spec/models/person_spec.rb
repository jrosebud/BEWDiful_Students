require 'spec_helper'

describe Person do
  it 'formatted_phone_number returns with the international code' do
    person = Person.new(phone_number: '3029830657')
    expect(person.formatted_phone_number).to eq('+13029830657')
  end
end