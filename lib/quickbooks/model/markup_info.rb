module Quickbooks
  module Model
    class MarkupInfo < BaseModel
      xml_accessor :percent_based, :from => 'PercentBased'
      xml_accessor :value, :from => 'Value', :as => BigDecimal, :to_xml => Proc.new { |val| val.to_f }
      xml_accessor :percent, :from => 'Percent', :as => BigDecimal, :to_xml => Proc.new { |val| val.to_f }
      xml_accessor :price_level_ref, :from => 'PriceLevelRef', :as => BaseReference

      reference_setters :price_level_ref
    end
  end
end
