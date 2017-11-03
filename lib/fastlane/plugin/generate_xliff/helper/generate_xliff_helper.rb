module Fastlane
  module Helper
    class GenerateXliffHelper
      # class methods that you define here become available in your action
      # as `Helper::GenerateXliffHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the generate_xliff plugin helper!")
      end
    end
  end
end
