class Bird < ActiveRecord::Base
  def self.find_sti_class(type_name)
    type_name.classify.constantize
  end

  def self.sti_name
    name.downcase
  end
end
