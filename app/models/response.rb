class Response < ActiveRecord::Base
	belongs_to :replies #from Shiovhan

serialize :intro,Array #SHiovhan doesn't have this?
serialize :line1,Array
serialize :line2,Array
serialize :line3,Array
serialize :line4,Array
serialize :line5,Array
serialize :line6,Array
serialize :close,Array

end
