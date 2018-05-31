class ClickbaitValidator < ActiveModel::EachValidator
  # clickbait_regex = /\b(Won't Believe|Guess|Secret|Top \d*)\b/

  def validate_each(record, attribute, value)
    if value.match(/\b(Won't Believe|Guess|Secret|Top \d*)\b/).blank?
      record.errors.add(attribute, 'not clickbait-y enough')
    end
  end
end
