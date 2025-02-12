Pod::Spec.new do |s|
  s.name             = 'UIKit-iOS'
  s.version          = '1.0.2'
  s.summary          = 'UI Library for design and layout process simplification.'

  s.description      = 'Library contains views and controls that simplifies design and layout implementation manually in code or utilizing interface build.'

  s.homepage         = 'https://github.com/novasamatech/UIKit-iOS'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Ruslan Rezin' => 'ruslan@novawallet.io' }
  s.source           = { :git => 'https://github.com/novasamatech/UIKit-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  
  s.swift_version = '5.0'

  s.subspec 'AdaptiveDesign' do |as|
      as.source_files = 'UIKit-iOS/Classes/AdaptiveDesign/**/*'
  end

  s.subspec 'Controls' do |cs|
      cs.dependency 'UIKit-iOS/Animator'
      cs.source_files = 'UIKit-iOS/Classes/Controls/**/*'
  end

  s.subspec 'LoadingView' do |ls|
      ls.dependency 'UIKit-iOS/Controls'
      ls.source_files = 'UIKit-iOS/Classes/LoadingView/**/*'
  end

  s.subspec 'PinView' do |ps|
      ps.dependency 'UIKit-iOS/Controls'
      ps.source_files = 'UIKit-iOS/Classes/PinView/**/*'
  end

  s.subspec 'Animator' do |anims|
    anims.source_files = 'UIKit-iOS/Classes/Animator/**/*'
  end

  s.subspec 'DetailsView' do |details|
    details.dependency 'UIKit-iOS/Controls'
    details.source_files = 'UIKit-iOS/Classes/DetailsView/**/*'
  end

  s.subspec 'EmptyState' do |emptystate|
    emptystate.dependency 'UIKit-iOS/Animator'
    emptystate.source_files = 'UIKit-iOS/Classes/EmptyState/**/*'
  end

  s.subspec 'PageLoader' do |pageloader|
    pageloader.source_files = 'UIKit-iOS/Classes/PageLoader/**/*'
  end

  s.subspec 'Camera' do |camera|
    camera.source_files = 'UIKit-iOS/Classes/Camera/**/*'
  end

  s.subspec 'ModalPresentation' do |mp|
    mp.dependency 'UIKit-iOS/Animator'
    mp.dependency 'UIKit-iOS/Controls'
    mp.source_files = 'UIKit-iOS/Classes/ModalPresentation/**/*'
  end

  s.subspec 'Skrull' do |skl|
    skl.source_files = 'UIKit-iOS/Classes/Skrull/**/*'
  end

  s.subspec 'Helpers' do |views|
    views.source_files = 'UIKit-iOS/Classes/Helpers/**/*'
  end

  s.test_spec do |ts|
      ts.source_files = 'Tests/**/*.swift'
  end
end
