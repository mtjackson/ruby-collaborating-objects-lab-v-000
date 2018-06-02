class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(@path)
  end

  def import(files)
    files.each do |file|
      Song.new_by_filename(file)
      Dir.entries(@path) << file
    end
  end
end
