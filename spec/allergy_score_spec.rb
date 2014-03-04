require('rspec')
require('allergy_score')

describe('allergy_score') do
  it('returns eggs for a score of 1') do
    allergy_score(1).should(eq(["eggs"]))
  end
  it('returns eggs and peanuts for a score of 3') do
    allergy_score(3).should(eq(['peanuts', 'eggs']))
  end
  it('returns pollen, strawberries, and shellfish for a score of 76') do
    allergy_score(76).should(eq(['pollen', 'strawberries', 'shellfish']))
  end
end
