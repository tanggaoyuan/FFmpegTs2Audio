Pod::Spec.new do |s|
  s.name             = "FFmpegTS2Audio"
  s.version          = "1.0.0"
  s.summary          = "FFmpeg lib for pod"
  s.description      = "ffmpeg ts 提取音频"
  s.homepage         = "https://github.com/tanggaoyuan/FFmpegTs2Audio.git"
  s.license          = { :type => "MIT" }
  s.author           = { "tanggaoyuan" => "tanggaoyuan" }
  s.platform         = :ios, "12.0"
  s.source           = { :git => "https://github.com/tanggaoyuan/FFmpegTs2Audio.git", :tag => "1.0.0" }
  
  # Adjust the source files paths to include your FFmpeg source and headers correctly
  s.source_files     = "ffmpeg/include/**/*.h"
  s.public_header_files = "ffmpeg/include/**/*.h"
  s.header_mappings_dir = "ffmpeg/include"

  # Add the location of static libraries
  s.vendored_libraries = "ffmpeg/lib/*.a"

  # Specify the libraries to link with
  s.libraries = 'avcodec', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'

  # Static framework setting
  s.static_framework = true

  # Optional: Include any other necessary settings
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-l"c++"'
  }
end
