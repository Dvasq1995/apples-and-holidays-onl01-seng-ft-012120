require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |attributes, values|
    if attributes == :winter
      values.each do |innerAttributes, innerValues|
      innerValues << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |attributes, values|
    if attributes == :spring
      values.each do |innerAttributes, innerValues|
      innerValues << supply
      end
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
@@ -53,13 +55,27 @@ def all_supplies_in_holidays(holiday_hash)
  # Summer:	  # Summer:
  #   Fourth Of July: Fireworks, BBQ	  #   Fourth Of July: Fireworks, BBQ
  # etc.	  # etc.

  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
      puts "  #{holiday.to_s.split('_').map {|spaced| spaced.capitalize}.join(' ')}: #{supply.join(", ")}"
    end
  end
end	end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  
end

def all_holidays_with_bbq(holiday_hash)
  
end







