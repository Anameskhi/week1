module Enumerable
    
  def my_each
    index = 0
    if block_given?
      while index < self.size
        yield(self[index])
        index += 1
      end
      self
    else
      enum_for(:my_each)
    end
  end

  def my_all?
    if block_given?
    my_each{|element| return false unless yield(element)}
    true
    else
      enum_for(:my_all?)
    end
  end

    def my_select
      if block_given?
        selected_items = []
        my_each{|element| selected_items << element if yield(element)}
        selected_items
      else
        enum_for(:my_select)
    end
  end

  def my_count
    if block_given?
      selected_items = []
      my_each{|element| selected_items << element if yield(element)}
      selected_items.length
    else
      size
    end
  end

  def my_any?
    if block_given?
      my_each{|element| return true if yield(element)}
      false
    else
      enum_for(:my_any?)
    end
  end

  def my_each_with_index
    index = 0
    if block_given?
      while index < self.size
        yield(self[index], index)
        index += 1
      end
      self
    else
      enum_for(:my_each_with_index)
  end
end

  def my_inject(start_value)
    if block_given?
      value = start_value
      my_each{|element| value = yield(value,element)}
      value
    else 
      enum_for(:my_inject)
    end
  end

  def my_map
    if block_given?
      selected_items = []
    my_each{|element| selected_items << yield(element) }
      selected_items
    else
      enum_for(:my_map)
    end
  end 

  def my_none?
    if block_given?
      selected_items = []
    my_each{|element| selected_items << element if yield(element)}
    selected_items.empty? ? true : false
    else
      enum_for(:my_none)
    end
  end

  def my_select
    if block_given?
      selected_items = []
    my_each{|element| selected_items << element if yield(element)}
      selected_items
    else
      enum_for(:my_select)
    end
  end
end


