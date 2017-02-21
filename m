X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3885" "Tuesday" "21" "February" "2017" "17:30:02" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702211647360.13950@wniryva>" "78" "[oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo" nil nil nil "2" "2017022112:00:02" "[oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo" (number mark "U       ppandit@redh Feb 21   78/3885  " thread-indent "\"[oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28420 invoked by uid 550); 21 Feb 2017 12:00:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28399 invoked from network); 21 Feb 2017 12:00:20 -0000
Date: Tue, 21 Feb 2017 17:30:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Stefano Stabellini <sstabellini@kernel.org>,
        Gerd Hoffmann <ghoffman@redhat.com>
Message-ID: <alpine.LFD.2.20.1702211647360.13950@wniryva>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-1315349869-1487676035=:13950"
Content-ID: <alpine.LFD.2.20.1702211650410.13950@wniryva>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 21 Feb 2017 12:00:09 +0000 (UTC)
Subject: [oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue
 while in cirrus_bitblt_cputovideo

--0-1315349869-1487676035=:13950
Content-Type: text/plain; FORMAT=flowed; CHARSET=US-ASCII
Content-ID: <alpine.LFD.2.20.1702211650411.13950@wniryva>

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds access issue. It could occur while copying VGA 
data in cirrus_bitblt_cputovideo.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially execute arbitrary code on the host with 
privileges of Qemu process on the host.

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1420460

* 'CVE-2017-2620' has been assigned to this issue by Red Hat Inc.
* Attached herein is a proposed patch to fix this issue.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
--0-1315349869-1487676035=:13950
Content-Type: text/plain; CHARSET=US-ASCII; NAME=cirrus-add-blit-is-unsafe-to-cirrus-bitblt-cputovideo.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LFD.2.20.1702211650350.13950@wniryva>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME=cirrus-add-blit-is-unsafe-to-cirrus-bitblt-cputovideo.patch

RGF0ZTogV2VkLCAgOCBGZWIgMjAxNyAxMjo1Mzo1MiArMDEwMA0KRnJvbTog
R2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQpTdWJqZWN0OiBb
RU1CQVJHT0VEIFBBVENIIDMvM10gY2lycnVzOiBhZGQgYmxpdF9pc191bnNh
ZmUgY2FsbCB0byBjaXJydXNfYml0Ymx0X2NwdXRvdmlkZW8NCg0KQ0lSUlVT
X0JMVE1PREVfTUVNU1lTU1JDIGJsaXRzIGRvIE5PVCBjaGVjayBibGl0IGRl
c3RpbmF0aW9uDQphbmQgYmxpdCB3aWR0aCwgYXQgYWxsLiAgT29wcy4gIEZp
eCBpdC4NCg0KU2VjdXJpdHkgaW1wYWN0OiBoaWdoLg0KDQpUaGUgbWlzc2lu
ZyBibGl0IGRlc3RpbmF0aW9uIGNoZWNrIGFsbG93cyB0byB3cml0ZSB0byBo
b3N0IG1lbW9yeS4NCkJhc2ljYWxseSBzYW1lIGFzIENWRS0yMDE0LTgxMDYg
Zm9yIHRoZSBvdGhlciBibGl0IHZhcmlhbnRzLg0KDQpUaGUgbWlzc2luZyBi
bGl0IHdpZHRoIGNoZWNrIGFsbG93cyB0byBvdmVyZmxvdyBjaXJydXNfYmx0
YnVmLA0Kd2l0aCB0aGUgYXR0cmFjdGl2ZSB0YXJnZXQgY2lycnVzX3NyY3B0
ciAoY3VycmVudCBjaXJydXNfYmx0YnVmIHdyaXRlDQpwb3NpdGlvbikgYmVp
bmcgbG9jYXRlZCByaWdodCBhZnRlciBjaXJydXNfYmx0YnVmIGluIENpcnJ1
c1ZHQVN0YXRlLg0KDQpEdWUgdG8gY2lycnVzIGVtdWxhdGlvbiB3cml0aW5n
IGNpcnJ1c19ibHRidWYgYnl0ZXdpc2UgdGhlIGF0dGFja2VyDQpoYXNuJ3Qg
ZnVsbCBjb250cm9sIG92ZXIgY2lycnVzX3NyY3B0ciB0aG91Z2gsIG9ubHkg
b25lIGJ5dGUgY2FuIGJlDQpjaGFuZ2VkLiAgT25jZSB0aGUgZmlyc3QgYnl0
ZSBoYXMgYmVlbiBtb2RpZmllZCBmdXJ0aGVyIHdyaXRlcyBsYW5kDQplbHNl
d2hlcmUuDQoNClNpZ25lZC1vZmYtYnk6IEdlcmQgSG9mZm1hbm4gPGtyYXhl
bEByZWRoYXQuY29tPg0KLS0tDQogaHcvZGlzcGxheS9jaXJydXNfdmdhLmMg
fCA4ICsrKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KQ0KDQpkaWZmIC0tZ2l0IGEvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMgYi9o
dy9kaXNwbGF5L2NpcnJ1c192Z2EuYw0KaW5kZXggMGU0N2NmOC4uYTA5M2Rj
OCAxMDA2NDQNCi0tLSBhL2h3L2Rpc3BsYXkvY2lycnVzX3ZnYS5jDQorKysg
Yi9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYw0KQEAgLTg5OSw2ICs4OTksMTAg
QEAgc3RhdGljIGludCBjaXJydXNfYml0Ymx0X2NwdXRvdmlkZW8oQ2lycnVz
VkdBU3RhdGUgKiBzKQ0KIHsNCiAgICAgaW50IHc7DQogDQorICAgIGlmIChi
bGl0X2lzX3Vuc2FmZShzLCB0cnVlKSkgew0KKyAgICAgICAgcmV0dXJuIDA7
DQorICAgIH0NCisNCiAgICAgcy0+Y2lycnVzX2JsdF9tb2RlICY9IH5DSVJS
VVNfQkxUTU9ERV9NRU1TWVNTUkM7DQogICAgIHMtPmNpcnJ1c19zcmNwdHIg
PSAmcy0+Y2lycnVzX2JsdGJ1ZlswXTsNCiAgICAgcy0+Y2lycnVzX3NyY3B0
cl9lbmQgPSAmcy0+Y2lycnVzX2JsdGJ1ZlswXTsNCkBAIC05MjQsNiArOTI4
LDEwIEBAIHN0YXRpYyBpbnQgY2lycnVzX2JpdGJsdF9jcHV0b3ZpZGVvKENp
cnJ1c1ZHQVN0YXRlICogcykNCiAJfQ0KICAgICAgICAgcy0+Y2lycnVzX3Ny
Y2NvdW50ZXIgPSBzLT5jaXJydXNfYmx0X3NyY3BpdGNoICogcy0+Y2lycnVz
X2JsdF9oZWlnaHQ7DQogICAgIH0NCisNCisgICAgLyogdGhlIGJsaXRfaXNf
dW5zYWZlIGNhbGwgYWJvdmUgc2hvdWxkIGNhdGNoIHRoaXMgKi8NCisgICAg
YXNzZXJ0KHMtPmNpcnJ1c19ibHRfc3JjcGl0Y2ggPD0gQ0lSUlVTX0JMVEJV
RlNJWkUpOw0KKw0KICAgICBzLT5jaXJydXNfc3JjcHRyID0gcy0+Y2lycnVz
X2JsdGJ1ZjsNCiAgICAgcy0+Y2lycnVzX3NyY3B0cl9lbmQgPSBzLT5jaXJy
dXNfYmx0YnVmICsgcy0+Y2lycnVzX2JsdF9zcmNwaXRjaDsNCiAgICAgY2ly
cnVzX3VwZGF0ZV9tZW1vcnlfYWNjZXNzKHMpOw0KLS0gDQoxLjguMy4xDQoN
Cg==

--0-1315349869-1487676035=:13950--
