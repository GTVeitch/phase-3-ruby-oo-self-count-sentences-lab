require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    @exa = 0
    @sent = 0
    @que = 0
    @cheat = 0
    if(self.include?("! "))
      broken = self.split("! ")
      @exa = broken.count
    end
    if(self.include?(". "))
      broken = self.split(". ")
      @sent = broken.count
    end
    if(self.include?("? "))
      broken = self.split("? ")
      @que = broken.count
    end
    if(self.include?("..."))
      @cheat = -2
    end
    (@exa + @sent + @que + @cheat)
  end
end