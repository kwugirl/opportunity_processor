class Opportunity
  attr_reader :title, :org, :location, :min_pay, :max_pay

  def initialize(title:, org:, location:, min_pay:, max_pay:)
    @title = title
    @org = org
    @location = location
    @min_pay = min_pay
    @max_pay = max_pay
  end

  def to_s
    "Title: #{title}, Organization: #{org}, Location: #{location}, Pay: #{min_pay}-#{max_pay}"
  end

  def ==(other)
    self.title == other.title && self.org == other.org && self.location == other.location &&
      self.min_pay == other.min_pay && self.max_pay == other.max_pay
  end
end

class Processor
  class << self
    def parse_line(line)
      attributes = line.split(", ")
      Opportunity.new(title: attributes[0], org: attributes[1],
                      location: "#{attributes[2]}, #{attributes[3]}",
                      min_pay: attributes[4].to_i, max_pay: attributes[5].to_i)
    end
  end
end
