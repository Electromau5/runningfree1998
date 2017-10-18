class Listing < ActiveRecord::Base

belongs_to :seller

has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], 
                     square: ["200x200>", :jpg, :quality => 70], thumb: 
                    ["100x100>", :jpg, :quality => 70],  large:  
                    ['1000>', :jpg, :quality => 70] }

has_attached_file :image2, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
                    ["100x100>", :jpg, :quality => 70],  large:  
                    ['1000>', :jpg, :quality => 70] }

has_attached_file :image3, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
                    ["100x100>", :jpg, :quality => 70],  large:  
                    ['1000>', :jpg, :quality => 70] }

validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
validates_attachment_content_type :image3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end