module Fastlane
  module Actions
    class GenerateXliffAction < Action
      def self.run(params)
        projectFile = params[:xcodeproj]
        export_language = params[:export_language]

        UI.message("Generating localization file for #{projectFile}")

        sh ("xcodebuild -exportLocalizations -localizationPath . -project #{projectFile} -exportLanguage #{export_language}")

        return "#{export_language}.xliff"
      end

      def self.description
        "Generates XLIFF file"
      end

      def self.authors
        ["Kostia Myts"]
      end

      def self.return_value
        "Returns xliff's path"
      end

      def self.details
        "Generates XLIFF file for the project"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :xcodeproj,
                                  env_name: "PROJECT_FILE",
                               description: "Project file",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :export_language,
                                  env_name: "EXPORT_LANGUAGE",
                               description: "Language to export",
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
