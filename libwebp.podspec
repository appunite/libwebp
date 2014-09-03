Pod::Spec.new do |s|
  s.name            = 'libwebp'
  s.version         = '0.4.1.1'
  s.summary         = 'Library to encode and decode images in WebP format.'
  s.homepage        = 'https://developers.google.com/speed/webp/'
  s.author          = 'Google Inc.'
  s.license         = { :type => 'BSD', :file => 'COPYING' }
  s.source          = { :git => 'https://github.com/appunite/libwebp.git', :tag => '0.4.1.1' }

  s.compiler_flags  = '-D_THREAD_SAFE'
  s.requires_arc    = false
  
  # Subspecs
  s.subspec 'dsp' do |dsp|
    dsp.header_dir   = 'dsp'
    dsp.source_files = 'src/dsp/*.{h,c}'
    dsp.dependency 'libwebp/utils'
    dsp.dependency 'libwebp/enc'
    dsp.dependency 'libwebp/dec'
  end
  
  s.subspec 'utils' do |u|
    u.header_dir   = 'utils'
    u.source_files = 'src/utils/*.{h,c}'
    u.dependency 'libwebp/webp'
    u.dependency 'libwebp/dsp'
  end

  s.subspec 'dec' do |dec|
    dec.header_dir    = 'dec'
    dec.source_files = 'src/dec/*.{h,c}'
    dec.dependency 'libwebp/utils'
    dec.dependency 'libwebp/enc'
  end

  s.subspec 'demux' do |demux|
    demux.header_dir   = 'demux'
    demux.source_files = 'src/demux/*.{h,c}'
    demux.dependency 'libwebp/utils'
  end

  s.subspec 'enc' do |enc|
    enc.header_dir   = 'enc'
    enc.source_files = 'src/enc/*.{h,c}'
    enc.dependency 'libwebp/utils'
  end

  s.subspec 'mux' do |mux|
    mux.header_dir    = 'mux'
    mux.source_files = 'src/mux/*.{h,c}'
    mux.dependency 'libwebp/dec'
  end

  s.subspec 'webp' do |w|
    w.header_dir   = 'webp'
    w.source_files = 'src/webp/*.h'
  end
  
end

