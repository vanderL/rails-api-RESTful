class Categorie < ActiveRecord::Base
    validates :name, presence: true
    has_many :products, :dependent => :delete_all
    # has_many :products, :depedent => :delete_all
    ## para deixa nulo o valor ##
    # has_many :products, :depedent => :nullify
end
