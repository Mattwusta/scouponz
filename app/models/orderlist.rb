class Orderlist < ActiveRecord::Base
  attr_accessible :pickupdates, :pickuplocation, :week, :month, :description, :dish1, :gift, :re, :ship, :discount, :paylater, :detail, :reciever, :account, :wireamount, :dish2, :dish3, :dish4, :dish5, :dish6, :dishsum, :time, :phone, :address
 

  belongs_to :user

  validates :dish1, presence: true
  validates :dish2, presence: true
  validates :dish3, presence: true  
  validates :dish4, presence: true
  validates :dish5, presence: true
  validates :dish6, presence: true  
  validates :week, presence: true
  validates :month, presence: true 
  
end 
 