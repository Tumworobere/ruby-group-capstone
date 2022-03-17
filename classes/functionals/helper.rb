class Helper
  def self.create_file_if_not_exist(file_name)
    return unless File.exist?('./db/'+file_name) == false

    File.open('./db/'+file_name, 'w')
    File.write('./db/'+file_name, '[]')
  end
end
