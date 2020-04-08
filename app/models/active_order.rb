class ActiveOrder < ApplicationRecord
  def readonly?
    true
  end
end
