describe Fastlane::Actions::RemoveXliffArtifacts do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The remove_xliff_artifacts plugin is working!")

      Fastlane::Actions::RemoveXliffArtifacts.run(nil)
    end
  end
end
