require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it("Translates number in numerical form to written form") do
    expect(5.numbers_to_words()).to(eq("five"))
  end
  it("Translates a two digit number blah") do
    expect(25.numbers_to_words()).to(eq("twentyfive"))
  end
end
