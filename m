Received: (qmail 20100 invoked by uid 550); 5 Jan 2026 22:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32188 invoked from network); 5 Jan 2026 21:41:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm3;
	 t=1767649257; x=1767735657; bh=2PhMUb1yl7FkzX+gcOu5bn2HWEScNtFH
	PBhEGNgdWew=; b=YJlb+HgY4RlqbGqESKwOsHmJ3sMuO0TP8oI7aRKXFYU5k0UP
	C3/ccHmQ40SOZ3DdmiF2lVd/J2yLEwfRpl7cYucaeNlwhaVZe4O5sFzM7YOMderM
	eTFc4AR2V32LGgLXrBHN8grCW7nZlU7Gnz8dBJQKo/7LnVxFYdks6vQklwwbLYIZ
	XOG6QT+qeRsYZlTbSXHOLkkw7Z+QuNMZuEDtVmLbo1VdyPVRVxbKr3CSvTr5w838
	7cXWe112v+2KHoDdTrZhYm9tid3T+BtqXHyaTcApkfzsf3hLDun2tS3oRM6J+jhR
	VPwdNxUUSSEC84Rcutm1XyVERmvc+Ge2RANp/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1767649257; x=
	1767735657; bh=2PhMUb1yl7FkzX+gcOu5bn2HWEScNtFHPBhEGNgdWew=; b=Y
	WAhVcRu6Q/ChSCqn+ahCWl6h19MhKIGzFnA+L62ZbBMqoK4N5uGPmdK7SkBa3jE3
	eJxJEttiKJN3KbUYOAvnXAd1XfUJOl3QF09MjB2hRJXjCeLo+ipSwQ8q2ykpZD+V
	2iw+e1fjtvGDJTzHhZaX1OdsJVbHPT0HcB04WQ3bsFy7NasIir4RVvJGmgWzkohe
	Ym/JRaeW5j0zJmhpfARWArOl7Hb7dXevQdJx1SwPnpNhXbDXsbTewa9wQ3J3L0uU
	K0xBQLNDxoShGWvFJTIeI2Ia2VRUBmdzVpKD0VfYxvtC5b3WM/DH70eJ+Wiq7/jm
	z+VCot2j8Ah4yEYefHsXA==
X-ME-Sender: <xms:6C9caTMsn0AJ1h5e8wzuSBu_jWxFoe9Jt1IXvU3eg5D4yyBi3ypC3w>
    <xme:6C9caU64HyX8IsdvSKzA5S72u-zttMTAglKb2ERRMusShyfIM93UHyW8aErkMHZyD
    mjFWclg_qesR1YWpEEBkd2IUkrV9jkKsCJoRbP3YT590zdQSA>
X-ME-Received: <xmr:6C9caX74IVY5olgUcdz6cLMRAuqUWYABZytRngLzeusOCDKhfyW1jOA93yoG957iexty6sGqKx_fSiHZ2lxb9x6mHXPfxeXLYdvv>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdelkeegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkffuhffvffgtfgggsehgtderredtreejne
    cuhfhrohhmpefurghmuceuuhhllhcuoeelmhduleelihesshgrmhgsuhhllhdrohhrgheq
    necuggftrfgrthhtvghrnhepffejgfejhefgveetgeefvdevkeegfeeiheetvdffveevje
    euhfevfffghfekvedvnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeelmhduleelihesshgrmh
    gsuhhllhdrohhrghdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtg
    homh
X-ME-Proxy: <xmx:6C9cac2CVfIHVdMxd7f1jhonf7_ShHVoL8L5spa7imtdVuYD4bmPWg>
    <xmx:6C9cabXUDf6HziSAStCUIY_0XNF7ApnsoFttKgbTs699KqdoZ8C4Nw>
    <xmx:6C9caf4bhWfC03GhP8tS-X73PjoqRJAYhQdg8c9l5Xq1nZzOGVsnzQ>
    <xmx:6C9caaIo-svSfaJIFnMr20yRZnaLZzEv0R12iO_GudcOFCdHpcbHrg>
    <xmx:6S9caSOWNvq8fYp3MROglVZ2yQ3rQF3JEmeQdCjn4EXr4Cb-t5dgxfxi>
Feedback-ID: ie6294588:Fastmail
Message-ID: <401a17361111759bd1c222bb5e43f4f11815735e.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Mon, 05 Jan 2026 21:40:47 +0000
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-svlf4zgFpPgbsvYWrvOr"
User-Agent: Evolution 3.38.3-1+deb11u3 
MIME-Version: 1.0
Subject: [oss-security] Multiple vulnerabilities in aiohttp

--=-svlf4zgFpPgbsvYWrvOr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

aiohttp is an async Python library providing both an HTTP client and a web =
framework.
These advisories primarily apply to users of the web framework.

We'd first like to thank Radically Open Security (particularly Thomas Rinsm=
a) for
conducting a security audit. We'd also like to thank the NLnet foundation f=
or funding the
audit and development work spent on fixing these issues. Also thanks to oth=
er reporters
and our regular sponsors.

All of the below issues have been fixed in version 3.13.3.


## (Severity: High) CVE-2025-69223 - aiohttp HTTP Parser auto_decompress fe=
ature
susceptible to zip bomb
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-6mq8-rvhq-8wgg

### Summary
A zip bomb can be used to execute a DoS against the aiohttp server.

### Impact
An attacker may be able to send a compressed request that when decompressed=
 by aiohttp
could exhaust the host's memory.

Patch: https://github.com/aio-libs/aiohttp/commit/2b920c39002cee0ec5b402581=
779bbaaf7c9138a


## (Severity: High) CVE-2025-69228 - Denial of service through large payloa=
ds
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-6jhg-hg63-jvvf

### Summary
A request can be crafted in such a way that an aiohttp server's memory fill=
s up
uncontrollably during processing.

### Impact
If an application includes a handler that uses the `Request.post()` method,=
 an attacker
may be able to freeze the server by exhausting the memory.

Patch: https://github.com/aio-libs/aiohttp/commit/b7dbd35375aedbcd712cbae8a=
d513d56d11cce60


## (Severity: High) CVE-2025-69227 - DoS when bypassing asserts
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-jj3x-wxrx-4x23

### Summary
When assert statements are bypassed, an infinite loop can occur, resulting =
in a DoS attack
when processing a POST body.

### Impact
If optimisations are enabled (`-O` or `PYTHONOPTIMIZE=3D1`), and the applic=
ation includes a
handler that uses the `Request.post()` method, then an attacker may be able=
 to execute a
DoS attack with a specially crafted message.

Patch: https://github.com/aio-libs/aiohttp/commit/bc1319ec3cbff9438a758951a=
30907b072561259


## (Severity: Medium) CVE-2025-69229 - DoS through chunked messages
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-g84x-mcqj-x9qq

### Summary

Handling of chunked messages can result in excessive blocking CPU usage whe=
n receiving a
large number of chunks.

### Impact

If an application makes use of the `request.read()` method in an endpoint, =
it may be
possible for an attacker to cause the server to spend a moderate amount of =
blocking CPU
time (e.g. 1 second) while processing the request. This could potentially l=
ead to DoS as
the server would be unable to handle other requests during that time.

Patch: https://github.com/aio-libs/aiohttp/commit/dc3170b56904bdf814228fae7=
0a5501a42a6c712
Patch: https://github.com/aio-libs/aiohttp/commit/4ed97a4e46eaf61bd0f050632=
45f613469700229


## (Severity: Low) CVE-2025-69230 - Cookie Parser Warning Storm

https://github.com/aio-libs/aiohttp/security/advisories/GHSA-fh55-r93g-j68g

### Summary
Reading multiple invalid cookies can lead to a logging storm.

### Impact
If the ``cookies`` attribute is accessed in an application, then an attacke=
r may be able
to trigger a storm of warning-level logs using a specially crafted Cookie h=
eader.

Patch: https://github.com/aio-libs/aiohttp/commit/64629a0834f94e46d9881f4e9=
9c41a137e1f3326


## (Severity: Low) CVE-2025-69226 - Brute-force leak of internal static =EF=
=AC=81le path
components
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-54jq-c3m8-4m76

### Summary
Path normalization for static files prevents path traversal, but opens up t=
he ability for
an attacker to ascertain the existence of absolute path components.

### Impact
If an application uses `web.static()` (not recommended for production deplo=
yments), it may
be possible for an attacker to ascertain the existence of path components.

Patch: https://github.com/aio-libs/aiohttp/commit/f2a86fd5ac0383000d1715afd=
dfa704413f0711e


## (Severity: Low) CVE-2025-69224 - Unicode processing of header values cou=
ld cause
parsing discrepancies
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-69f9-5gxw-wvc2

### Summary
The Python HTTP parser may allow a request smuggling attack with the presen=
ce of non-ASCII
characters.

### Impact
If a pure Python version of aiohttp is installed (i.e. without the usual C =
extensions) or
AIOHTTP_NO_EXTENSIONS is enabled, then an attacker may be able to execute a=
 request
smuggling attack to bypass certain firewalls or proxy protections.

Patch: https://github.com/aio-libs/aiohttp/commit/32677f2adfd907420c078dda6=
b79225c6f4ebce0



## (Severity: Low) CVE-2025-69225 - Unicode match groups in regexes for ASC=
II protocol
elements
https://github.com/aio-libs/aiohttp/security/advisories/GHSA-mqqc-3gqh-h2x8

### Summary

The parser allows non-ASCII decimals to be present in the Range header.

### Impact

There is no known impact, but there is the possibility that there's a metho=
d to exploit a
request smuggling vulnerability.

Patch: https://github.com/aio-libs/aiohttp/commit/c7b7a044f88c71cefda95ec75=
cdcfaa4792b3b96

--=-svlf4zgFpPgbsvYWrvOr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCaVwv3wAKCRBf6SjNlibO
K4UcAKCwhXkB3+Hp0560ymjGjj/WYTqTFwCdHUpMta/5plbkwK5y6NmA0B37JIU=
=i9GO
-----END PGP SIGNATURE-----

--=-svlf4zgFpPgbsvYWrvOr--

