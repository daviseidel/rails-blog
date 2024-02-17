class Artigo < ApplicationRecord
    validates :titulo, presence: true
    validates :corpo, presence: true, length: {minimum: 10}
end
