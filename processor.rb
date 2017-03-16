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
end
