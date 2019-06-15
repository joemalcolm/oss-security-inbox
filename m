X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2713" "Saturday" "15" "June" "2019" "15:17:22" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906151501090.1813@freddy.simplesystems.org>" "56" "[oss-security] GraphicsMagick 1.3.32 security fixes, plus one of special mention" nil nil nil "6" "2019061520:17:22" "[oss-security] GraphicsMagick 1.3.32 security fixes, plus one of special mention" (number mark "U       bfriesen@sim Jun 15   56/2713  " thread-indent "\"[oss-security] GraphicsMagick 1.3.32 security fixes, plus one of special mention\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] GraphicsMagick 1.3.32 security fixes, plus one of special mention" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24469 invoked by uid 550); 15 Jun 2019 20:17:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24437 invoked from network); 15 Jun 2019 20:17:35 -0000
Date: Sat, 15 Jun 2019 15:17:22 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
Message-ID: <alpine.GSO.2.20.1906151501090.1813@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-1567571678-1560629843=:1813"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sat, 15 Jun 2019 15:17:23 -0500 (CDT)
Subject: [oss-security] GraphicsMagick 1.3.32 security fixes, plus one of special mention

---559023410-1567571678-1560629843=:1813
Content-Type: text/plain; format=flowed; charset=US-ASCII

GraphicsMagick 1.3.32 is now released, fixing another 52 additional 
issues detected by oss-fuzz.

Of special mention is a bug reported to us by "Battle Furry" via our 
security mail alias.  This bug (was considered to be a "feature") 
allows including file text as rendered text on a graphic image, or as 
text hidden in metadata, by using a file refered to with '@filename' 
syntax where text to be rendered normally appears.  This issue was 
inherited from ImageMagick 5.5.2 and it even appears in ImageMagick 
4.2.9.

It has been determined that the SVG and WMF formats may be used to 
supply this '@filename' syntax, resulting in rendered text on a 
graphic image, or as text hidden in metadata (e.g. the image comment). 
Furthermore, it may be that other applications and web sites accept 
text to be rendered on behalf of users and that this issue could allow 
untrusted users to receive content considered to be secure and private 
(e.g. private keys or passwords).

A small patch to fix this issue is attached.  Any distribution of 
GraphicsMagick needs this patch if it is not possible to upgrade to 
the latest release.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
---559023410-1567571678-1560629843=:1813
Content-Type: text/plain; charset=US-ASCII; name=16037.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.GSO.2.20.1906151517220.1813@freddy.simplesystems.org>
Content-Description: 
Content-Disposition: attachment; filename=16037.patch

ZGlmZiAtciAxMzIxY2UyOTU3YWIgLXIgZjc4MGMyOTBiNGFiIG1hZ2ljay91
dGlsaXR5LmMNCi0tLSBhL21hZ2ljay91dGlsaXR5LmMJTW9uIEp1biAwMyAw
ODoyNDo1OSAyMDE5IC0wNTAwDQorKysgYi9tYWdpY2svdXRpbGl0eS5jCVRo
dSBKdW4gMDYgMDg6NDE6MDAgMjAxOSAtMDUwMA0KQEAgLTU5MzQsMTYgKzU5
MzQsNiBAQA0KICAgICByZXR1cm4oKGNoYXIgKikgTlVMTCk7DQogICB0ZXh0
PShjaGFyICopIGZvcm1hdHRlZF90ZXh0Ow0KICAgLyoNCi0gICAgSWYgdGV4
dCBzdGFydHMgd2l0aCAnQCcgdGhlbiB0cnkgdG8gcmVwbGFjZSBpdCB3aXRo
IHRoZSBjb250ZW50IG9mDQotICAgIHRoZSBmaWxlIG5hbWUgd2hpY2ggZm9s
bG93cy4NCi0gICovDQotICBpZiAoKCp0ZXh0ID09ICdAJykgJiYgSXNBY2Nl
c3NpYmxlKHRleHQrMSkpDQotICAgIHsNCi0gICAgICB0ZXh0PShjaGFyICop
IEZpbGVUb0Jsb2IodGV4dCsxLCZsZW5ndGgsJmltYWdlLT5leGNlcHRpb24p
Ow0KLSAgICAgIGlmICh0ZXh0ID09IChjaGFyICopIE5VTEwpDQotICAgICAg
ICByZXR1cm4oKGNoYXIgKikgTlVMTCk7DQotICAgIH0NCi0gIC8qDQogICAg
IFRyYW5zbGF0ZSBhbnkgZW1iZWRkZWQgZm9ybWF0IGNoYXJhY3RlcnMuDQog
ICAqLw0KICAgbGVuZ3RoPXN0cmxlbih0ZXh0KStNYXhUZXh0RXh0ZW50Ow0K

---559023410-1567571678-1560629843=:1813--
