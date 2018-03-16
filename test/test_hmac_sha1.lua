local codec = require('codec')
local src, key = '123456', '112233'
local dst = codec.hmac_sha1_encode(src,key)
print(dst)
assert('06285a0e4a99a56f7f9d1e239acad4de7c79ebe9' == dst)
