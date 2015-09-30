# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/ph.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/ph'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module PH # :nodoc:
    def self.defined_regions
      [:ph]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year)-3 }, :function_id => "easter(year)-3", :name => "Maundy Thursday", :regions => [:ph]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Good Friday", :regions => [:ph]},
            {:function => lambda { |year| Holidays.easter(year)-1 }, :function_id => "easter(year)-1", :name => "Holy Saturday", :regions => [:ph]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Easter Sunday", :regions => [:ph]}],
      1 => [{:mday => 1, :name => "New Year’s Day", :regions => [:ph]}],
      2 => [{:mday => 25, :name => "People Power Anniversary", :regions => [:ph]}],
      4 => [{:mday => 9, :name => "The Day of Valor", :regions => [:ph]}],
      5 => [{:mday => 1, :name => "Labor Day", :regions => [:ph]}],
      6 => [{:mday => 12, :name => "Independence Day", :regions => [:ph]}],
      8 => [{:mday => 21, :name => "Ninoy Aquino Day", :regions => [:ph]},
            {:function => lambda { |year| Holidays.ph_heroes_day(year) }, :function_id => "ph_heroes_day(year)", :name => "National Heroes Day", :regions => [:ph]}],
      11 => [{:mday => 1, :name => "All Saints Day", :regions => [:ph]},
            {:mday => 30, :name => "Bonifacio Day", :regions => [:ph]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:ph]},
            {:mday => 30, :name => "Rizal Day", :regions => [:ph]},
            {:mday => 31, :name => "New Year's Eve", :regions => [:ph]}]
      }
    end
  end

# last Monday of August
def self.ph_heroes_day(year)
  date = Date.new(year, 8, -1)
  return date if date.wday == 1
  date -= date.wday - 1
end



end

Holidays.merge_defs(Holidays::PH.defined_regions, Holidays::PH.holidays_by_month)
