require './classes/others/label'

describe Label do
  context 'It should create label and add publisher name and date of publication' do
    label = Label.new('the Dream', 'red')
    it 'creates new label with the given parameters' do
      expect(label).to be_an_instance_of Label
    end
  end
end
