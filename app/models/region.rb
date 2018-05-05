class Region < ApplicationRecord


has_many :municipios, :dependent => :destroy
end
