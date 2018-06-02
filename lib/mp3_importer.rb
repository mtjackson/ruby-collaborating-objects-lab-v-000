class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    all_files = []

    Dir.entries(@path).each do |file|
      if file.split(".").include?(".")
  end

  def import(files)
    files.each do |file|
      Song.new_by_filename(file)
      Dir.entries(@path) << file
    end
  end
end
