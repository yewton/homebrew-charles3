cask 'charles3' do
  version '3.12.3'
  sha256 '72107204fb16918ed590b93c009b3b5421bdaf425381f1a5c554242320ea0ca7'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
