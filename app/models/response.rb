class Response < ActiveRecord::Base

serialize :intro,Array
serialize :line1,Array
serialize :line2,Array
serialize :line3,Array
serialize :line4,Array
serialize :line5,Array
serialize :line6,Array
serialize :close,Array

end

