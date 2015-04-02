require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  specify { expect(BonusDrink.total_count_for(101)).to eq 151 }

  # wrong case
  specify { expect(BonusDrink.total_count_for(2)).not_to eq 3 }
  specify { expect(BonusDrink.total_count_for(5)).not_to eq 6 }
  specify { expect(BonusDrink.total_count_for(10)).not_to eq 15 }
  specify { expect(BonusDrink.total_count_for(99)).not_to eq 149 }
  specify { expect(BonusDrink.total_count_for(102)).not_to eq 150 }
end
