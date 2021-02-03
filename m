X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4740" "Wednesday" "3" "February" "2021" "15:04:55" "+0800" "????" "zhaowenjia@stu.xjtu.edu.cn" "<573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>" "82" "[oss-security] =?UTF-8?B?S0FTQU46IHVzZS1hZnRlci1mcmVlIGluIGNvbl9zY3JvbGzigIs=?=" nil nil nil "2" "2021020307:04:55" "[oss-security] =?UTF-8?B?S0FTQU46?= =?UTF-8?B?dXNlLWFmdGVyLWZyZWU=?= =?UTF-8?B?aW4=?= =?UTF-8?B?Y29uX3Njcm9sbOKAiw==?=" (number mark "U       zhaowenjia@s Feb  3   82/4740  " thread-indent "\"[oss-security] =?UTF-8?B?S0FTQU46?= =?UTF-8?B?dXNlLWFmdGVyLWZyZWU=?= =?UTF-8?B?aW4=?= =?UTF-8?B?Y29uX3Njcm9sbOKAiw==?=\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] =?UTF-8?B?S0FTQU46?= =?UTF-8?B?dXNlLWFmdGVyLWZyZWU=?= =?UTF-8?B?aW4=?= =?UTF-8?B?Y29uX3Njcm9sbOKAiw==?=" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32418 invoked by uid 550); 3 Feb 2021 07:28:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24023 invoked from network); 3 Feb 2021 07:05:13 -0000
X-Originating-IP: [134.84.145.89]
Date: Wed, 3 Feb 2021 15:04:55 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: ???? <zhaowenjia@stu.xjtu.edu.cn>
To: security@kernel.org, oss-security@lists.openwall.com, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, nico@fluxnic.net
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20200820(b2b8cba1)
 Copyright (c) 2002-2021 www.mailtech.cn stu.xjtu.edu.cn
Content-Type: multipart/alternative; 
	boundary="----=_Part_120758_1786016321.1612335895992"
MIME-Version: 1.0
Message-ID: <573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MwGowAB3ThUYSxpg4ayLAA--.4393W
X-CM-SenderInfo: 52kd045hqmxto6vw3hp0mw3hxhgxhubq/1tbiAQABCFo3JKmoUQAC
	sT
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
Subject: [oss-security] =?UTF-8?Q?KASAN:_use-after-free_in_con=5Fscroll=E2=80=8B?=

------=_Part_120758_1786016321.1612335895992
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

RGVhciBMaW51eCBrZXJuZWwgZGV2ZWxvcGVycywKCkkgZm91bmQgYSBjcmFz
aCAiS0FTQU46IHVzZS1hZnRlci1mcmVlIGluIGNvbl9zY3JvbGwrMHg0NWMv
MHg2MjAgZHJpdmVycy90dHkvdnQvdnQuYzo2NDEiICB3aGVuIHJ1bm5pbmcg
dGhlIHN5emthbGxlciwgIAoKSXQgaXMgY2FuIGJlIHJlcHJvZHVjZWQuIEkg
ZGlkIG5vdCBmaW5kIGEgcmVwb3J0IGFib3V0IHRoaXMgcHJvYmxlbS4gSG9w
ZSBpdCBpcyB1c2VmdWwuCgoKCgpMaW51eCB2ZXJzaW9uOiBMaW51eCB2NS45
LXJjOCAoNTQ5NzM4ZjE1KQoKClRoZSBmb2xsb3dpbmcgaXMgdGhlIGNyYXNo
IHJlcG9ydC4KCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKQlVHOiBLQVNBTjog
dXNlLWFmdGVyLWZyZWUgaW4gc2NyX21lbW1vdmV3IGluY2x1ZGUvbGludXgv
dnRfYnVmZmVyLmg6NjggW2lubGluZV0KQlVHOiBLQVNBTjogdXNlLWFmdGVy
LWZyZWUgaW4gY29uX3Njcm9sbCsweDQ1Yy8weDYyMCBkcml2ZXJzL3R0eS92
dC92dC5jOjY0MQpSZWFkIG9mIHNpemUgNjkzNzcwIGF0IGFkZHIgZmZmZjg4
ODAwMDBiODk0YyBieSB0YXNrIHN5ei1leGVjdXRvci4yLzc3NTUKCkNQVTog
MCBQSUQ6IDc3NTUgQ29tbTogc3l6LWV4ZWN1dG9yLjIgTm90IHRhaW50ZWQg
NS4xLjAgIzQKSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0
MEZYICsgUElJWCwgMTk5NiksIEJJT1MgVWJ1bnR1LTEuOC4yLTF1YnVudHUx
IDA0LzAxLzIwMTQKQ2FsbCBUcmFjZToKIF9fZHVtcF9zdGFjayBsaWIvZHVt
cF9zdGFjay5jOjc3IFtpbmxpbmVdCiBkdW1wX3N0YWNrKzB4NzUvMHhhZSBs
aWIvZHVtcF9zdGFjay5jOjExMwogcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlv
bisweDYwLzB4MjIzIG1tL2thc2FuL3JlcG9ydC5jOjE4Nwoga2FzYW5fcmVw
b3J0LmNvbGQrMHgxYS8weDMyIG1tL2thc2FuL3JlcG9ydC5jOjMxNwogbWVt
bW92ZSsweDIwLzB4NTAgbW0va2FzYW4vY29tbW9uLmM6MTIzCiBzY3JfbWVt
bW92ZXcgaW5jbHVkZS9saW51eC92dF9idWZmZXIuaDo2OCBbaW5saW5lXQog
Y29uX3Njcm9sbCsweDQ1Yy8weDYyMCBkcml2ZXJzL3R0eS92dC92dC5jOjY0
MQogY3NpX0wgZHJpdmVycy90dHkvdnQvdnQuYzoxOTY3IFtpbmxpbmVdCiBk
b19jb25fdHJvbCsweDRiYTQvMHg1ZDgwIGRyaXZlcnMvdHR5L3Z0L3Z0LmM6
MjM2NgogZG9fY29uX3dyaXRlLnBhcnQuMCsweGQzZC8weDFhYzAgZHJpdmVy
cy90dHkvdnQvdnQuYzoyNzkwCiBkb19jb25fd3JpdGUgZHJpdmVycy90dHkv
dnQvdnQuYzoyNTU4IFtpbmxpbmVdCiBjb25fd3JpdGUrMHgzMy8weGMwIGRy
aXZlcnMvdHR5L3Z0L3Z0LmM6MzEyNwogcHJvY2Vzc19vdXRwdXRfYmxvY2sg
ZHJpdmVycy90dHkvbl90dHkuYzo1OTUgW2lubGluZV0KIG5fdHR5X3dyaXRl
KzB4MzkxLzB4ZTUwIGRyaXZlcnMvdHR5L25fdHR5LmM6MjMzMwogZG9fdHR5
X3dyaXRlIGRyaXZlcnMvdHR5L3R0eV9pby5jOjk2MSBbaW5saW5lXQogdHR5
X3dyaXRlKzB4M2Q0LzB4NmUwIGRyaXZlcnMvdHR5L3R0eV9pby5jOjEwNDUK
IGRvX2xvb3BfcmVhZHZfd3JpdGV2IGZzL3JlYWRfd3JpdGUuYzo3MDQgW2lu
bGluZV0KIGRvX2xvb3BfcmVhZHZfd3JpdGV2IGZzL3JlYWRfd3JpdGUuYzo2
ODggW2lubGluZV0KIGRvX2l0ZXJfd3JpdGUgZnMvcmVhZF93cml0ZS5jOjk1
OSBbaW5saW5lXQogZG9faXRlcl93cml0ZSsweDNlYi8weDU2MCBmcy9yZWFk
X3dyaXRlLmM6OTM4CiB2ZnNfd3JpdGV2KzB4MTlhLzB4MmQwIGZzL3JlYWRf
d3JpdGUuYzoxMDAyCiBkb193cml0ZXYrMHgxMDYvMHgyZDAgZnMvcmVhZF93
cml0ZS5jOjEwMzcKIGRvX3N5c2NhbGxfNjQrMHg5YS8weDJiMCBhcmNoL3g4
Ni9lbnRyeS9jb21tb24uYzoyOTAKIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJf
aHdmcmFtZSsweDQ0LzB4YTkKUklQOiAwMDMzOjB4NDVkZTU5CkNvZGU6IDBk
IGI0IGZiIGZmIGMzIDY2IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIDY2
IDkwIDQ4IDg5IGY4IDQ4IDg5IGY3IDQ4IDg5IGQ2IDQ4IDg5IGNhIDRkIDg5
IGMyIDRkIDg5IGM4IDRjIDhiIDRjIDI0IDA4IDBmIDA1IDw0OD4gM2QgMDEg
ZjAgZmYgZmYgMGYgODMgZGIgYjMgZmIgZmYgYzMgNjYgMmUgMGYgMWYgODQg
MDAgMDAgMDAgMDAKUlNQOiAwMDJiOjAwMDA3ZmFlNmU1ODBjNzggRUZMQUdT
OiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxNApSQVg6IGZm
ZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDNiOTAwIFJDWDogMDAw
MDAwMDAwMDQ1ZGU1OQpSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAw
MDAwMDIwMDAxMDAwIFJESTogMDAwMDAwMDAwMDAwMDAwMwpSQlA6IDAwMDAw
MDAwMDExOGJmNjAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDAw
MDAwMDAwMDAwMApSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAw
MDAwMDAwMjQ2IFIxMjogMDAwMDAwMDAwMTE4YmYyYwpSMTM6IDAwMDA3ZmZm
ZDM5OGViY2YgUjE0OiAwMDAwN2ZhZTZlNTgxOWMwIFIxNTogMDAwMDAwMDAw
MTE4YmYyYwoKVGhlIGJ1Z2d5IGFkZHJlc3MgYmVsb25ncyB0byB0aGUgcGFn
ZToKcGFnZTpmZmZmZWEwMDAwMDAyZTAwIGNvdW50OjEgbWFwY291bnQ6MCBt
YXBwaW5nOjAwMDAwMDAwMDAwMDAwMDAgaW5kZXg6MHgwCmZsYWdzOiAweDEw
MDAocmVzZXJ2ZWQpCnJhdzogMDAwMDAwMDAwMDAwMTAwMCBmZmZmZWEwMDAw
MDAyZTA4IGZmZmZlYTAwMDAwMDJlMDggMDAwMDAwMDAwMDAwMDAwMApyYXc6
IDAwMDAwMDAwMDAwMDAwMDAgMDAwMDAwMDAwMDAwMDAwMCAwMDAwMDAwMWZm
ZmZmZmZmIDAwMDAwMDAwMDAwMDAwMDAKcGFnZSBkdW1wZWQgYmVjYXVzZTog
a2FzYW46IGJhZCBhY2Nlc3MgZGV0ZWN0ZWQKCk1lbW9yeSBzdGF0ZSBhcm91
bmQgdGhlIGJ1Z2d5IGFkZHJlc3M6CiBmZmZmODg4MDAwMGZmZjAwOiAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMAog
ZmZmZjg4ODAwMDBmZmY4MDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAKPmZmZmY4ODgwMDAxMDAwMDA6IGZmIGZm
IGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmCiAg
ICAgICAgICAgICAgICAgICBeCiBmZmZmODg4MDAwMTAwMDgwOiBmZiBmZiBm
ZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZgogZmZm
Zjg4ODAwMDEwMDEwMDogZmYgZmYgZmYgZmYgZmYgZmYgZmYgZmYgZmYgZmYg
ZmYgZmYgZmYgZmYgZmYgZmYKPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cg==

------=_Part_120758_1786016321.1612335895992--

