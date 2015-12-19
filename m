X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6627" "Saturday" "19" "December" "2015" "21:45:01" "+0000" "Jo Shields" "directhex@apebox.org" "<5675CFDD.9050309@apebox.org>" "135" "[oss-security] CVE-2009-0689 discovered in Mono prior to 4.2" "^Date:" nil nil "12" "2015121921:45:01" "[oss-security] CVE-2009-0689 discovered in Mono prior to 4.2" (number mark "U       directhex@ap Dec 19  135/6627  " thread-indent "\"[oss-security] CVE-2009-0689 discovered in Mono prior to 4.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9607 invoked by uid 550); 19 Dec 2015 21:58:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32362 invoked from network); 19 Dec 2015 21:45:25 -0000
Message-ID: <5675CFDD.9050309@apebox.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------010609000508010609030807"
X-BlackCat-Spam-Score: -28
X-Mythic-Debug: Threshold =  On = 
Date: Sat, 19 Dec 2015 21:45:01 +0000
From: Jo Shields <directhex@apebox.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2009-0689 discovered in Mono prior to 4.2
To: oss-security@lists.openwall.com

--------------010609000508010609030807
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Dear all,

Security researchers at NCC Group have discovered that CVE-2009-0689, a
definite DOS (and possible arbitrary code execution) in various
applications' string-to-double parser implementations, also applies to
Mono versions prior to 4.2.

A fix is available
at https://gist.github.com/directhex/01e853567fd2cc74ed39 and should
apply cleanly to all versions of Mono you might care about.

This fix should be applied to all Mono packages prior to 4.2 (everything
except Debian Unstable, Ubuntu 16.04, and Arch, from a quick look)

Attached is the disclosure as-received by us, which includes a minimal
test case to demonstrate the vulnerability.

Thanks to Peter McLarnan <Peter.McLarnan@nccgroup.trust> and Andy
Schmitz <andy.schmitz@nccgroup.trust>

Apologies for the lateness in sending this, I sent it to the wrong
list & didn't notice until pointed out to me recently.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWdc/dAAoJEMkPnLkOH60MQ3kH/3hNr7Fx/XOc+ql1UJ9LwEP0
+oPLCTPOEfG6b448oISDvVhxJaKkCpmMSKHjrcY80ig+dKm7qLp9o3sWRSzBmjA/
lXVIiHeU11KTsAlgMamNminL+kqNm8H7FlEAoqJIudb2pzkfUrEwLya3+rSnZe54
FBt0uGuHx3eF7ms8BTo3vEtQlhMsiYJh78sKCGNUSqLZ5ObGqLXoKiZq/J1JtZ/w
G5kRRD2GpyoIMsaneejBzqH7XF1GTvbSlEiWRScslRAXpj9y59ssHDDHi4FhIrSS
vPn0s+biTS3bsH9/H33uwcDPh65UaNha+J+opKZd5MMUqtoBERs6vHyGpaCNNPI=
=uXMH
-----END PGP SIGNATURE-----

--------------010609000508010609030807
Content-Type: text/plain; charset=UTF-8;
 name="mono_disclosure.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="mono_disclosure.txt"

TW9ubyBgc3RydG9kYCBCb3VuZHMgQ2hlY2tpbmcgVnVsbmVyYWJpbGl0eQo9
PT09CgpTZXZlcml0eQotLS0tCkhpZ2gKCkltcGFjdAotLS0tCkFuIGF0dGFj
a2VyIHdobyBjYW4gY2F1c2UgYSBjYXJlZnVsbHktY2hvc2VuIHN0cmluZyB0
byBiZSBjb252ZXJ0ZWQgdG8gYSBmbG9hdGluZy1wb2ludCBudW1iZXIgY2Fu
IGNhdXNlIGEgY3Jhc2ggYW5kIHBvdGVudGlhbGx5IGluZHVjZSBhcmJpdHJh
cnkgY29kZSBleGVjdXRpb24uCgpEZXRhaWxzCi0tLS0KClRoZSBmbG9hdC1w
YXJzaW5nIGNvZGUgdXNlZCBpbiBNb25vIChiZWZvcmUgNC4yKSBpcyBkZXJp
dmVkIGZyb20gY2xhc3NpYyBjb2RlIHdyaXR0ZW4gYnkgRGF2aWQgTS4gR2F5
LCBhbmQgbGl2ZXMgaW4gYG1vbm8vdXRpbHMvc3RydG9kLmNgLgoKVGhpcyBj
b2RlIGhhcyBhIHZ1bG5lcmFiaWxpdHkgd2hpY2ggaGFzIGJlZW4gbm90ZWQg
YmVmb3JlLCBhbmQgZml4ZWQgaW4gdGhlIHVwc3RyZWFtIHZlcnNpb24sIGJ1
dCB0aGlzIGZpeCB3YXMgYXBwYXJlbnRseSBub3QgcHJvcGFnYXRlZCBpbnRv
IHRoZSBNb25vIGNvZGViYXNlLiBTZWUgWzFdLgoKVGhlIGlzc3VlIGNvbmNl
cm5zIHRoZSBgZnJlZWxpc3RgIGFycmF5LCB3aGljaCBpcyBhIGdsb2JhbCBh
cnJheSBvZiAxNiBwb2ludGVycyB0byBgQmlnaW50YC4gVGhpcyBhcnJheSBp
cyBwYXJ0IG9mIGEgbWVtb3J5IGFsbG9jYXRpb24gYW5kIHJldXNlIHN5c3Rl
bSB3aGljaCBhdHRlbXB0cyB0byByZWR1Y2UgdGhlIG51bWJlciBvZiBgbWFs
bG9jYCBhbmQgYGZyZWVgIGNhbGxzLiBUaGUgc3lzdGVtIGFsbG9jYXRlcyBi
bG9ja3MgaW4gcG93ZXItb2YtdHdvIHNpemVzLCBmcm9tIDJeMCB0aHJvdWdo
IDJeMTUsIGFuZCBzdG9yZXMgZnJlZWQgYmxvY2tzIG9mIGVhY2ggc2l6ZSBp
biBhIGxpbmtlZCBsaXN0IHJvb3RlZCBhdCB0aGUgY29ycmVzcG9uZGluZyBj
ZWxsIG9mIGBmcmVlbGlzdGAuIAoKVGhlIGBCYWxsb2NgIGFuZCBgQmZyZWVg
IGZ1bmN0aW9ucyB3aGljaCBvcGVyYXRlIHRoaXMgc3lzdGVtIGZhaWwgdG8g
Y2hlY2sgaWYgdGhlIHNpemUgcGFyYW1ldGVyIGBrYCBpcyB3aXRoaW4gdGhl
IGFsbG9jYXRlZCAwLi4xNSByYW5nZS4gQXMgYSByZXN1bHQsIGEgc3VmZmlj
aWVudGx5IGxhcmdlIGFsbG9jYXRpb24gd2lsbCBoYXZlIGs9MTYgYW5kIHRy
ZWF0IHRoZSB3b3JkIGltbWVkaWF0ZWx5IGFmdGVyIGBmcmVlbGlzdGAgYXMg
YSBwb2ludGVyIHRvIGEgcHJldmlvdXNseS1hbGxvY2F0ZWQgY2h1bmsuCgpU
aGUgc3BlY2lmaWMgcmVzdWx0cyBtYXkgdmFyeSBzaWduaWZpY2FudGx5IGJh
c2VkIG9uIHRoZSB2ZXJzaW9uLCBwbGF0Zm9ybSwgYW5kIGNvbXBpbGVyLCBz
aW5jZSB0aGV5IGRlcGVuZCBvbiB0aGUgbGF5b3V0IG9mIHZhcmlhYmxlcyBp
biBtZW1vcnkuIEhvd2V2ZXIsIHRoZSB3b3JzdC1jYXNlIHNjZW5hcmlvIG9m
IGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbiBzaG91bGQgYmUgYXNzdW1lZCB1
bnRpbCBpdCBjYW4gYmUgcnVsZWQgb3V0LgoKRm9yIGFuIGV4YW1wbGUsIGlu
IGEgdmVyc2lvbiBkaXN0cmlidXRlZCB3aXRoIFVidW50dSAxMi4wNCwgYGZy
ZWVsaXN0WzE2XWAgY29pbmNpZGVzIHdpdGggdGhlIHZhcmlhYmxlIGBwNXNg
LCB3aGljaCBzdG9yZXMgdGhlIG51bWJlciA2MjUgaW4gYEJpZ2ludGAgZm9y
bS4gSW1wb3J0YW50bHksIHRoaXMgYWxsb2NhdGlvbiBpcyBzbWFsbC4gV2hl
biB0aGUgY29kZSByZXVzZXMgdGhpcyBzdXBwb3NlZGx5LWZyZWUgc3BhY2Ug
YW5kIGF0dGVtcHRzIHRvIHdyaXRlIGEgbGFyZ2UgbnVtYmVyLCB0aGUgbnVt
ZXJpYyBkYXRhIG92ZXJmbG93cyB0aGUgYWxsb2NhdGlvbiBhbmQgY2FuIGFm
ZmVjdCBvdGhlciBwYXJ0cyBvZiB0aGUgcHJvZ3JhbS4gQnkgb3ZlcndyaXRp
bmcgYG1hbGxvY2AgaGVhcCBtZXRhZGF0YSwgaXQgaXMgbGlrZWx5IHBvc3Np
YmxlIHRvIGNhdXNlIGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbiwgYWx0aG91
Z2ggd2UgZG8gbm90IHlldCBoYXZlIGEgZnVsbCBkZW1vbnN0cmF0aW9uIG9m
IHRoaXMuCgpUaGUgdnVsbmVyYWJsZSBjb2RlIGRvZXMgbm90IGFwcGVhciBp
biB2ZXJzaW9uIDQuMiwgd2hpY2ggc2VlbXMgdG8gdXNlIGEgZGlmZmVyZW50
IGxpYnJhcnkuCgoKWzFdOiBodHRwczovL2N2ZS5taXRyZS5vcmcvY2dpLWJp
bi9jdmVuYW1lLmNnaT9uYW1lPUNWRS0yMDA5LTA2ODkKCgoKUmVwcm9kdWN0
aW9uCi0tLS0KClRoZSBmb2xsb3dpbmcgQyMgY29kZSBzdWZmaWNlcyB0byBk
ZW1vbnN0cmF0ZSB0aGUgaXNzdWUgb24gTWFjIE9TIFggd2l0aCBwYWNrYWdl
ZCBNb25vIHZlcnNpb25zIDMuMTIuMSBhbmQgNC4wLjQ6Cgp+fn4KdXNpbmcg
U3lzdGVtOwpjbGFzcyBUZXN0CnsKICAgIHN0YXRpYyB2b2lkIE1haW4oKQog
ICAgewogICAgICAgIHN0cmluZyBpbnB1dCA9ICIxLiIgKyBuZXcgc3RyaW5n
KCcxJywgMjk0OTEyKTsKICAgICAgICBEb3VibGUuUGFyc2UoaW5wdXQpOwog
ICAgfQp9Cn5+fgoKUnVubmluZyB0aGUgaW5wdXQgY2F1c2VzIGFuIGltbWVk
aWF0ZSBjcmFzaC4KCgoKUmVjb21tZW5kYXRpb24KLS0tLQoKSW1wbGVtZW50
IHRoZSBjaGVja3MgZm91bmQgaW4gdGhlIGN1cnJlbnQgdmVyc2lvbiBvZiB0
aGUgdXBzdHJlYW0gc29mdHdhcmUgKGh0dHA6Ly93d3cubmV0bGliLm9yZy9m
cC9kdG9hLmMpOgoKQmFsbG9jCn5+fgoJaWYgKGsgPD0gS21heCAmJiAocnYg
PSBmcmVlbGlzdFtrXSkpCgkJZnJlZWxpc3Rba10gPSBydi0+bmV4dDsKICAg
IGVsc2UgewouLi4Kfn5+CgpCZnJlZQp+fn4KCWlmICh2KSB7CgkJaWYgKHYt
PmsgPiBLbWF4KQojaWZkZWYgRlJFRQoJCQlGUkVFKCh2b2lkKil2KTsKI2Vs
c2UKCQkJZnJlZSgodm9pZCopdik7CiNlbmRpZgoJCWVsc2UgewoJCQlBQ1FV
SVJFX0RUT0FfTE9DSygwKTsKCQkJdi0+bmV4dCA9IGZyZWVsaXN0W3YtPmtd
OwoJCQlmcmVlbGlzdFt2LT5rXSA9IHY7CgkJCUZSRUVfRFRPQV9MT0NLKDAp
OwoJCQl9CgkJfQoJfQp+fn4KCkNvbnNpZGVyIGEgZnVsbCB1cGdyYWRlLCBh
cyB0aGVyZSBtYXkgYmUgb3RoZXIgcmVsZXZhbnQgYnVncyBpbiB0aGUgb3Jp
Z2luYWwgdmVyc2lvbi4gKFNlZSBodHRwOi8vd3d3Lm5ldGxpYi5vcmcvZnAv
Y2hhbmdlcyBmb3IgYSByb3VnaCBjaGFuZ2Vsb2cpCg==

--------------010609000508010609030807
Content-Type: application/pgp-signature;
 name="mono_disclosure.txt.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="mono_disclosure.txt.sig"

iQEcBAABCAAGBQJWdc/dAAoJEMkPnLkOH60MnhMH/2iHMmNn6G990QhTbWEq
quxpnainLO+dNfkfzgWYFOaWF+YFbDHLo3+P4rb1bCQ+80+4pQeG2CvlmLjj
FBdJuJcgqTctNeH+DZ+hdA69KhZKWvYag83HIB3SlnLW9BImUXYpkEE0qHc6
aIqiWtJG/Fht8pxn0HW0MyfdooiVKF03jSxiPiXY49bZSrrd0BlQaxpQo7of
TsA2BmQ2Hgf3hNPpLzwNnIOd82pqFcX1h0LLeyHFmZl9PTPN451a5h0tDNSO
JPVRf+9As4VE51X/rOxf/TwicSX+s9pOOdAKW+oRJYIhLLlTRfHH7tGLTh4N
MRR2pR7fRj4q2yZSyGCg2JA=

--------------010609000508010609030807--
