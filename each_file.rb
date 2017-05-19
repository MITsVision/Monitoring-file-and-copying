require 'fileutils'
Dir.glob("source folderlocation/**/*") do |fname|
  if(File.file?(fname))
  a = fname.dup
  a.slice! "source folderlocation"
  b = File.dirname(a)
  fn = File.basename a  
  dest = "Destination folderlocation" + b
  unless File.directory?(dest)
	  FileUtils.mkdir_p(dest)
  end
  puts File.size(fname)
  if(File.exist?(dest+"/"+fn))
    if(File.size(fname) != File.size(dest+"/"+fn))
      FileUtils.cp(fname, dest)
	end
  else
   FileUtils.cp(fname, dest)
  end
  end
end
