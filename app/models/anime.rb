class Anime < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews

	 has_attached_file :image, styles: { medium: "400x600#"},
	 :default_url => "missing.png"
  	 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  	 has_attached_file :capture, styles: { medium: "400x600#"},
		 :default_url => "missing.png"
  	 validates_attachment_content_type :capture, content_type: /\Aimage\/.*\z/

		   	 has_attached_file :background, styles: { large: "1500x969#"},
				 :default_url => "portada2.jpg"
		   	 validates_attachment_content_type :capture, content_type: /\Aimage\/.*\z/




end
