class ::String
  def smart_deindent
    first_line_indent = self.match(/^\s*/).to_s.size
    self.gsub /^\s{#{first_line_indent}}/, ''
  end
end
