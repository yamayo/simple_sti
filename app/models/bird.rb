class Bird < ActiveRecord::Base
  class << self
    def find_sti_class(type_name)
      type_name.classify.constantize
    end

    def sti_name
      name.downcase
    end
  end
end
