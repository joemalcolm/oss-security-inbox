X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/07/1
Message-ID: <20140607015352.GF179@oevtugenva.nrevsny.pk>
Date: Fri, 6 Jun 2014 21:53:52 -0400
From: Rich Felker <dalias@...c.org>
To: oss-security@...ts.openwall.com
Subject: Security advisory for musl libc - remote stack-based buffer overflow in DNS response parsing [CVE-2014-3484]
Content-Type: text/plain; charset=utf-8


Received: from mother.openwall.net ([195.42.179.200])
	by brightrain.aerifal.cx
Received: (qmail 13608 invoked by uid 550); 6 Jun 2014 22:57:26 -0000
Mailing-List: contact musl-help@...ts.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:musl@...ts.openwall.com>
List-Help: <mailto:musl-help@...ts.openwall.com>
List-Unsubscribe: <mailto:musl-unsubscribe@...ts.openwall.com>
List-Subscribe: <mailto:musl-subscribe@...ts.openwall.com>
Reply-To: musl@...ts.openwall.com
Delivered-To: mailing list musl@...ts.openwall.com
Received: (qmail 13600 invoked from network); 6 Jun 2014 22:57:25 -0000
Date: Fri, 6 Jun 2014 18:57:13 -0400
From: Rich Felker <dalias@...c.org>
To: musl@...ts.openwall.com
Message-ID: <20140606225713.GD179@...ghtrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="61jdw2sOBCFtR2d/"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@...ifal.cx>
Subject: [musl] Security advisory for musl libc - remote stack-based buffer overflow
 in DNS response parsing [CVE-2014-3484]


--61jdw2sOBCFtR2d/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A remote stack-based buffer overflow has been found in musl libc's dns
response parsing code.

The overflow can be triggered in programs linked against musl libc and
making dns queries via one of the standard interfaces (getaddrinfo,
getnameinfo, gethostbyname, gethostbyaddr, etc.) if one of the
configured nameservers in resolv.conf is controlled by an attacker, or
if an attacker can inject forged udp packets with control over their
contents. Denial of service is also possible via a related failure in
loop detection.

The difficulty of such an attack is likely moderate to high and is
most feasible if the attacker has already compromised network
infrastructure components (nameservers, routers, etc.). Using a local
caching nameserver may mitigate the issue but patching is preferred.

Software: musl libc (http://www.musl-libc.org)

Affected Versions: 0.9.13 - 1.0.2, 1.1.0, and 1.1.1.

Fixed Versions: 1.0.3 and 1.1.2

Bug introduced in commit:
http://git.musl-libc.org/cgit/musl/commit/?id=fcc522c92335783293ac19df318415cd97fbf66b

Bug fixed in commit:
http://git.musl-libc.org/cgit/musl/commit/?id=b3d9e0b94ea73c68ef4169ec82c898ce59a4e30a

Patch for all affected versions:
musl_dn_expand_overflow_fix_v2.diff (attached)

--61jdw2sOBCFtR2d/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="musl_dn_expand_overflow_fix_v2.diff"

commit b3d9e0b94ea73c68ef4169ec82c898ce59a4e30a
Author: Szabolcs Nagy <nsz@...t70.net>
Date:   Thu Jun 5 22:32:42 2014 +0200

    fix multiple validation issues in dns response label parsing
    
    Due to an error introduced in commit fcc522c92335783293ac19df318415cd97fbf66b,
    checking of the remaining output buffer space was not performed correctly,
    allowing malformed input to write past the end of the buffer.
    
    In addition, the loop detection logic failed to account for the possibility
    of infinite loops with no output, which would hang the function.
    
    The output size is now limited more strictly so only names with valid length
    are accepted.

diff --git a/src/network/dn_expand.c b/src/network/dn_expand.c
index 96adf37..849df19 100644
--- a/src/network/dn_expand.c
+++ b/src/network/dn_expand.c
@@ -4,10 +4,11 @@
 int __dn_expand(const unsigned char *base, const unsigned char *end, const unsigned char *src, char *dest, int space)
 {
 	const unsigned char *p = src;
-	int len = -1, j;
-	if (space > 256) space = 256;
+	char *dend = dest + (space > 254 ? 254 : space);
+	int len = -1, i, j;
 	if (p==end || !*p) return -1;
-	for (;;) {
+	/* detect reference loop using an iteration counter */
+	for (i=0; i < end-base; i+=2) {
 		if (*p & 0xc0) {
 			if (p+1==end) return -1;
 			j = ((p[0] & 0x3f) << 8) | p[1];
@@ -16,7 +17,7 @@ int __dn_expand(const unsigned char *base, const unsigned char *end, const unsig
 			p = base+j;
 		} else if (*p) {
 			j = *p+1;
-			if (j>=end-p || j>space) return -1;
+			if (j>=end-p || j>dend-dest) return -1;
 			while (--j) *dest++ = *++p;
 			*dest++ = *++p ? '.' : 0;
 		} else {
@@ -24,6 +25,7 @@ int __dn_expand(const unsigned char *base, const unsigned char *end, const unsig
 			return len;
 		}
 	}
+	return -1;
 }
 
 weak_alias(__dn_expand, dn_expand);

--61jdw2sOBCFtR2d/--

