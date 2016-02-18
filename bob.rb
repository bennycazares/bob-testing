# Bob is a lackadaisical teenager. In conversation, his responses are very limited.
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He says 'Fine. Be that way!' if you address him without actually saying anything.
# He answers 'Whatever.' to anything else.

class Bob

  def hey(remark)
      if empty?(remark)
        'Fine. Be that way!'
      elsif upcase(remark) && no_downcase(remark)
        'Whoa, chill out!'
      elsif last_question_mark?(remark)
        'Sure.'
      else
        'Whatever.'
      end
    end

    def empty?(remark)
      remark.strip.empty?
    end

    def upcase(remark)
      remark == remark.upcase
    end

    def no_downcase(remark)
      remark.downcase != remark
    end

    def last_question_mark?(remark)
      remark[-1] == ('?')
    end
  end
