class Job < ActiveRecord::Base
	validates :title, presence: true
	validates :job_id, presence: true, uniqueness: true
	validates :description, presence: true
end