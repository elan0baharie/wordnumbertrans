require('rspec')
require('word_numbers')

describe('word_numbers#number_trans') do
  it("replace a literal number one with its corresponding string") do
    expect(1.number_trans()).to(eq("one"))
  end
  it("replace a literal number ninety with its corresponding string") do
    expect(90.number_trans()).to(eq("ninety"))
  end
  it("replace a literal number ten with its corresponding string") do
    expect(10.number_trans()).to(eq("ten"))
  end
  it("replace seventeen with its corresponding string") do
    expect(17.number_trans()).to(eq("seventeen"))
  end
  it("replace a eighty seven with its corresponding string") do
    expect(80.number_trans()).to(eq("eighty"))
  end
  it("replace a eighty seven with its corresponding string") do
    expect(87.number_trans()).to(eq("eighty-seven"))
  end
  it("replace any even hundred number with its corresponding string") do
    expect(400.number_trans()).to(eq("four-hundred "))
  end
  it("replace any hundred number which contains the teen mods with its corresponding string") do
    expect(411.number_trans()).to(eq("four-hundred eleven"))
  end
  it("replace any hundred number which contains which has a 0 through 9 corresponding string") do
    expect(401.number_trans()).to(eq("four-hundred one"))
  end
  it("replace any hundred number which contains which has a 0 through 9 corresponding string") do
    expect(420.number_trans()).to(eq("four-hundred twenty"))
  end
end
