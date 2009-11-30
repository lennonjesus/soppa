class PopulateUnits < ActiveRecord::Migration
  def self.up

    Unit.create :name => "dose",:description => ""
    Unit.create :name => "parte",:description => ""
    Unit.create :name => "caixa",:description => ""
    Unit.create :name => "colher de café",:description => ""
    Unit.create :name => "colher de chá",:description => ""
    Unit.create :name => "colher de sobremesa",:description => ""
    Unit.create :name => "colher de sopa",:description => ""
    Unit.create :name => "copo",:description => ""
    Unit.create :name => "dente",:description => ""
    Unit.create :name => "fatia",:description => ""
    Unit.create :name => "fio",:description => ""
    Unit.create :name => "folha",:description => ""
    Unit.create :name => "grama",:description => ""
    Unit.create :name => "kg",:description => ""
    Unit.create :name => "lata",:description => ""
    Unit.create :name => "litro",:description => ""
    Unit.create :name => "maço",:description => ""
    Unit.create :name => "ml",:description => ""
    Unit.create :name => "pacote",:description => ""
    Unit.create :name => "pitada",:description => ""
    Unit.create :name => "punhado",:description => ""
    Unit.create :name => "unidade",:description => ""
    Unit.create :name => "xícara de chá",:description => ""


  end
  def self.down
    Unit.delete_all
  end

end
