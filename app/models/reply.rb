class Reply < ActiveRecord::Base

serialize :greeting,Array
serialize :line_one,Array
serialize :line_two,Array
serialize :line_three,Array
serialize :line_four,Array
serialize :closing,Array
serialize :salutation,Array

end
