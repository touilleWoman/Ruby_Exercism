module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = 1..8
  FILES = 'A'..'H'
  def self.valid_square?(rank, file)
    RANKS.include?(rank) and FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    nick = first_name[..1] + last_name[-2..] 
    nick.upcase
  end

  def self.move_message(first_name, last_name, square)
    nick = self.nick_name(first_name, last_name)
    if self.valid_square?(square[1].to_i, square[0])
      "#{nick} moved to #{square}"
    else
      "#{nick} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
