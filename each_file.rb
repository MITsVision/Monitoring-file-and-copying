require 'fileutils'
Dir.glob("C:/Users/mithilesh.singh/Desktop/Savan/python/Good_codes/**/*") do |fname|
  if(File.file?(fname))
  a = fname.dup
  a.slice! "C:/Users/mithilesh.singh/Desktop/Savan/python/Good_codes"
  b = File.dirname(a)
  fn = File.basename a  
  dest = "C:/Users/mithilesh.singh/Desktop/ruby/copy" + b
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