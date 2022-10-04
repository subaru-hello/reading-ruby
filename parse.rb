require 'base64'
s = "%E9%85%92%2"
sa = "酒"
p Base64.decode64(s)
p Base64.encode64(sa)
p s.encode("EUC-JP")
p s.encode(Encoding::UTF_8)