module Fastlane
  module Actions
    class RemoveXliffArtifactsAction < Action
      def self.run(params)
        file = params[:language_file_path]

        FileUtils.rm file, :force => true
        UI.message("Removing #{file}")
      end

      def self.description
        "Generates XLIFF file"
      end

      def self.authors
        ["Kostia Myts"]
      end

      def self.return_value

      end

      def self.details
        "Removes file"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :language_file_path,
                                  env_name: "LANGUAGE_FILE_PATH",
                               description: "Langage file to upload in POEditor",
                                  optional: false,
                                      type: String),
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
