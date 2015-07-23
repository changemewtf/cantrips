class ::Hash
  def recursive_merge other
    merger = proc do |key, v1, v2|
      Hash === v1 && Hash === v2 ? v1.merge(v2, &merger) : v2
    end
    self.merge other, &merger
  end
end
