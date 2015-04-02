class BonusDrink
  DEVIDE_BY = 3

  def self.total_count_for(amount)
    return amount if amount < DEVIDE_BY
    answer = amount / DEVIDE_BY
    remainder = amount % DEVIDE_BY
	(amount - remainder) + self.total_count_for(answer + remainder)
  end
end
