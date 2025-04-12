Pod::Spec.new do |s|
  s.name         = "FFmpegTS2Audio"
  s.version      = "1.0.0"
  s.summary      = "ffmpeg lib for pod"
  s.description  = "ffmpeg ts 提取音频"
  s.homepage     = "https://github.com/tanggaoyuan/FFmpegTs2Audio.git"
  s.license      = { :type => "NONE" } #, :file => "FILE_LICENSE" }
  s.author       = { "wang.xu_1106" => "wang.xu_1106@immomo.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/tanggaoyuan/FFmpegTs2Audio.git", :tag => "1.0.0" }
  s.source_files  = "ffmpeg/include/**/*.h"
  s.public_header_files = "ffmpeg/include/**/*.h"
  s.header_mappings_dir = "ffmpeg/include"
  s.vendored_libraries = "ffmpeg/lib/*.a"
  s.libraries = 'avcodec', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  s.static_framework = true
end