Received: (qmail 10122 invoked by uid 550); 13 Feb 2025 17:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10046 invoked from network); 13 Feb 2025 17:16:03 -0000
Date: Thu, 13 Feb 2025 12:15:54 -0500
From: Rich Felker <dalias@libc.org>
To: musl@lists.openwall.com
Cc: oss-security@lists.openwall.com
Message-ID: <20250213171546.GA3976@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] CVE-2025-26519: musl libc: input-controlled out-of-bounds write
 primitive in iconv()

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Vulnerability description:

A vulnerability has been identified in musl libc's implementation of
iconv that can result in out-of-bounds memory writes in applications
which process untrusted input using iconv and where the input charset
for the conversion is input-controlled.

In order for the vulnerability to be exposed, an application must call
iconv_open with an output encoding of UTF-8 and and input encoding of
EUC-KR, and must subsequently process untrusted input using the
resulting conversion descriptor. The most common scenario in which
this occurs is using the declared MIME charset of untrusted input (for
example, in XML, HTML, or MIME-encoded email) as input to iconv_open
for converting arbitrary-encoding input to UTF-8.

This issue was discovered and reported by Nick Wellnhofer. It arose as
a combination of incorrect input byte validation in the EUC-KR
decoder, and the fact that the UTF-8 output encoder assumed an
invariant that the input decoder never produces character codes which
are not valid Unicode Scalar Values.



Affected versions:

The vulnerable code has been present since EUC-KR support was added to
iconv in musl 0.9.13. All versions in the range 0.9.13 through 1.2.5
are affected.

Future releases beginning with 1.2.6 will ship with the bug fixed.



Mitigation:

All users should apply the source patches included/attached below. The
first fixes the bug (incorrect input byte validation) responsible for
the vulnerability, and the second closes off the vector by which this
class of bug escalated to an out-of-bounds write. These patches should
apply cleanly to all versions affected by the bug.

Users of musl libc based distributions should obtain an updated
package with the patch applied through their distributon's update
channels.

Static-linked binaries that cannot easily be relinked may be patched
to inhibit the vulnerability, at the cost of disabling support for
decoding EUC-KR text, by searching the binary, using a
binary-clean/hex editor, for the byte sequence:

	"euckr\0ksc5601\0ksx1001\0cp949\0"

and replacing it with:

	"-----\0-------\0-------\0-----\0"

Since non-alphanumeric-ASCII characters are stripped from the charset
name by iconv_open, this change will render EUC-KR and all aliases for
it unmatchable, thereby making the vulnerable code unreachable.



--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="0001-iconv-fix-erroneous-input-validation-in-EUC-KR-decod.patch"

From e5adcd97b5196e29991b524237381a0202a60659 Mon Sep 17 00:00:00 2001
From: Rich Felker <dalias@aerifal.cx>
Date: Sun, 9 Feb 2025 10:07:19 -0500
Subject: [PATCH] iconv: fix erroneous input validation in EUC-KR decoder

as a result of incorrect bounds checking on the lead byte being
decoded, certain invalid inputs which should produce an encoding
error, such as "\xc8\x41", instead produced out-of-bounds loads from
the ksc table.

in a worst case, the loaded value may not be a valid unicode scalar
value, in which case, if the output encoding was UTF-8, wctomb would
return (size_t)-1, causing an overflow in the output pointer and
remaining buffer size which could clobber memory outside of the output
buffer.

bug report was submitted in private by Nick Wellnhofer on account of
potential security implications.
---
 src/locale/iconv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/locale/iconv.c b/src/locale/iconv.c
index 9605c8e9..008c93f0 100644
--- a/src/locale/iconv.c
+++ b/src/locale/iconv.c
@@ -502,7 +502,7 @@ size_t iconv(iconv_t cd, char **restrict in, size_t *restrict inb, char **restri
 			if (c >= 93 || d >= 94) {
 				c += (0xa1-0x81);
 				d += 0xa1;
-				if (c >= 93 || c>=0xc6-0x81 && d>0x52)
+				if (c > 0xc6-0x81 || c==0xc6-0x81 && d>0x52)
 					goto ilseq;
 				if (d-'A'<26) d = d-'A';
 				else if (d-'a'<26) d = d-'a'+26;
-- 
2.21.0


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="0002-iconv-harden-UTF-8-output-code-path-against-input-de.patch"

From c47ad25ea3b484e10326f933e927c0bc8cded3da Mon Sep 17 00:00:00 2001
From: Rich Felker <dalias@aerifal.cx>
Date: Wed, 12 Feb 2025 17:06:30 -0500
Subject: [PATCH] iconv: harden UTF-8 output code path against input decoder
 bugs

the UTF-8 output code was written assuming an invariant that iconv's
decoders only emit valid Unicode Scalar Values which wctomb can encode
successfully, thereby always returning a value between 1 and 4.

if this invariant is not satisfied, wctomb returns (size_t)-1, and the
subsequent adjustments to the output buffer pointer and remaining
output byte count overflow, moving the output position backwards,
potentially past the beginning of the buffer, without storing any
bytes.
---
 src/locale/iconv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/src/locale/iconv.c b/src/locale/iconv.c
index 008c93f0..52178950 100644
--- a/src/locale/iconv.c
+++ b/src/locale/iconv.c
@@ -545,6 +545,10 @@ size_t iconv(iconv_t cd, char **restrict in, size_t *restrict inb, char **restri
 				if (*outb < k) goto toobig;
 				memcpy(*out, tmp, k);
 			} else k = wctomb_utf8(*out, c);
+			/* This failure condition should be unreachable, but
+			 * is included to prevent decoder bugs from translating
+			 * into advancement outside the output buffer range. */
+			if (k>4) goto ilseq;
 			*out += k;
 			*outb -= k;
 			break;
-- 
2.21.0


--r5Pyd7+fXNt84Ff3--
