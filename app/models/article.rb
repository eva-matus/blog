class Article < ApplicationRecord
    validates :title, :image_url, :content, presence: true
    before_save :censore

def censore
    self.content = self.content.split.reduce([]) {|contenido, value| contenido.push(value) if value != "bueno"; contenido}.join ("")
    
end


end
