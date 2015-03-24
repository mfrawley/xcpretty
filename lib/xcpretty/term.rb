module XCPretty
  class Term

    COLOR_DETECTION_COMMAND = 'tput colors'
    LOCALE_DETECTION_COMMAND = 'locale charmap'
    UNICODE_LOCALE = 'UTF-8'
    MINIMUM_COLORS = 8

    def self.unicode?
      `#{LOCALE_DETECTION_COMMAND}`.strip == UNICODE_LOCALE
    rescue
      false
    end

    def self.color?
      `#{COLOR_DETECTION_COMMAND}`.to_i >= MINIMUM_COLORS
    rescue
      false
    end
  end
end
