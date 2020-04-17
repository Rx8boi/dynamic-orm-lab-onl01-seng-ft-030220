require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name

  end

  def self.column_names
    DB[:conn].results_as_hash = true

    sql = "PRAGMA table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []

    table_info.each do |col|
      column_names << col["name"]
    end
    column_names.compact
  end


#Instance methods to insert data into db

  def table_name_for_insert

  end

  def col_names_for_insert
  end

  def save
  end

  #More class methods

  def self.find_by_name

  end

  def self.find_by_name

  end

end
