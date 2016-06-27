class Student < ActiveRecord::Base
	has_one :student_mark, dependent: :destroy
	validates :roll, presence: true
	validates :sname, presence: true 


	has_attached_file :image,:storage => :s3, :s3_region=> 'us-east-1',
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

	validates_attachment :image
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)


	def s3_credentials
  	end
end
