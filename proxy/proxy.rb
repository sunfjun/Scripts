#!/usr/bin/env ruby
proxy = 'SOCKS5 127.0.0.1:8888'
gfucked_sites = %w[
  youtube.com
  ytimg.com
  googlevideo.com
  tinyurl.com
  bit.ly
  blogspot.com
  twitter.com
  plurk.com
  torproject.org
  wikipedia.org
  tumblr.com
  soup.io
  pandora.com
  adobe.com
  last.fm
  photoshop.com
  google.com
  googlecode.com
  appspot.com
  acer.com
  demonoid.com
  alexa.com
  wikimedia.org
  yahoo.com
  zend.com
  aptana.com
  uncyclopedia.tw
  uncyc.org
  webarchive.org
  pornhub.com
  yourporn.com
  facebook.com
  mail-archive.com
  versionapp.com
  friendfeed.com
  ff.im
  chinagfw.org
  bullogger.com
  mulhollanddrive.com
  iphone-dev.org
  plurk.com
  imageshack.us
  zendesk.com
  feedburner.com
  akamaitechnologies.com
]


pro = "function FindProxyForURL(url, host) {\n"
pro += "  var socks5=\"#{proxy}\"\;\n"
gfucked_sites.each do |site|
  pro += "  if (shExpMatch(url, \"*://*.#{site}/*\")) { return socks5; }\n"
  pro += "  if (shExpMatch(url, \"*://#{site}/*\")) { return socks5; }\n"
end
pro += "  return \"DIRECT\"\n"
pro += "}"

puts pro


