class User < ActiveRecord::Base
  INTERESSES = ['futebol', 'voley',	'basketball',	'ciclismo', 'rpg/mmo', 'jogos de tabuleiro']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :data, :interesses        
end
