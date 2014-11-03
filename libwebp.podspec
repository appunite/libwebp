Pod::Spec.new do |s|
  s.name            = 'libwebp'
  s.version         = '0.4.1.2'
  s.summary         = 'Library to encode and decode images in WebP format.'
  s.homepage        = 'https://developers.google.com/speed/webp/'
  s.author          = 'Google Inc.'
  s.license         = { :type => 'BSD', :file => 'COPYING' }
  s.source          = { :git => 'https://github.com/appunite/libwebp.git', :tag => '0.4.1.1' }

  s.compiler_flags  = '-D_THREAD_SAFE'
  s.requires_arc    = false
  
  s.source_files = 'src/**/*.{h,c}'
  
end

