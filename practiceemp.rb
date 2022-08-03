def set_incremental_id
  (ALL_ITEMS.last&.id || 0) + 1
end

# def destroy
#   ALL_ITEMS.delete(self)
# end

class << self
  def create(name, price, quantity)
    new(name, price, quantity)
  end

  def find_by(name)
    all.select {|item| item.name == name}
  end

  def all
    ALL_ITEMS
  end

  def clear
    print "\e[2J\e[f"
  end
end
end