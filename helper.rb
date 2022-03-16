class Helper
  def self.create_file_if_not_exist(file_name)
    return unless File.exist?(file_name) == false

    File.open(file_name, 'w')
    File.write(file_name, '[]')
  end
end
