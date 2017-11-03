describe Fastlane::Actions::GenerateXliffAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The generate_xliff plugin is working!")

      Fastlane::Actions::GenerateXliffAction.run(nil)
    end
  end
end
