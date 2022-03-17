require_relative '../author'
require_relative '../item'

describe 'Author' do
  before :each do
    @author = Author.new('Tumworobere', 'Annah')
  end

  context 'an instance of' do
    it 'the Author class' do
      expect(@author).to be_instance_of Author
    end
  end

  context 'have access to first_name' do
    it 'the first_name should be accessible' do
      expect(@author.first_name).to eq 'Tumworobere'
    end

    it 'should be able to write author first_name' do
      @author.first_name = 'Azeem'
      expect(@author.first_name).to eq 'Azeem'
    end
  end

  context 'have access to last_name' do
    it 'the last_name should be accessible' do
      expect(@author.last_name).to eq 'Annah'
    end

    it 'should be able to write author last_name' do
      @author.last_name = 'Olatunji'
      expect(@author.last_name).to eq 'Olatunji'
    end
  end

  context 'private instances' do
    it 'musnt access to id' do
      expect { @author.id }.to raise_exception(NoMethodError)
    end

    it 'should access to items instance variable' do
      expect(@author.items).to eq []
    end

    it 'musnt write to items instance variable' do
      @author.items << '2022/2/2'
      expect { @author.id }.to raise_exception(NoMethodError)
    end
  end

  context 'methods' do
    it 'add_item method shouldnt return anything' do
      expect(@author.add_item('2022/2/2')[0]).to be_instance_of Item
    end
  end
end
