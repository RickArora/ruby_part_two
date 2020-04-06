class PolyTreeNode
  def initialize(value)
    @value = value
    @children = []
    @parent = nil
  end

  def parent
    return @parent 
  end

  def parent=(parent)
    if !parent.nil?
      @parent = parent
      @parent.children.push(self)
      @children = @parent.children.uniq!
    else 
      @parent = nil
    end
  end

  def children
    return @children
  end

  def value
    return @value 
  end

end