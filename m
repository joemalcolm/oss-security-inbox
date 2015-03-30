X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Monday" "30" "March" "2015" "00:01:25" "-0400" "Rich Felker" "dalias@libc.org" "<20150330040125.GA9622@brightrain.aerifal.cx>" "51" "[oss-security] Security advisory for musl libc - stack-based buffer overflow in ipv6 literal parsing [CVE-2015-1817]" nil nil nil "3" "2015033004:01:25" "[oss-security] Security advisory for musl libc - stack-based buffer overflow in ipv6 literal parsing [CVE-2015-1817]" (number mark "        dalias@libc. Mar 30   51/1565  " thread-indent "\"[oss-security] Security advisory for musl libc - stack-based buffer overflow in ipv6 literal parsing [CVE-2015-1817]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24437 invoked by uid 550); 30 Mar 2015 04:01:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24351 invoked from network); 30 Mar 2015 04:01:38 -0000
Message-ID: <20150330040125.GA9622@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 30 Mar 2015 00:01:25 -0400
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] Security advisory for musl libc - stack-based buffer overflow in
 ipv6 literal parsing [CVE-2015-1817]
To: musl@lists.openwall.com, oss-security@lists.openwall.com

--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A stack-based buffer overflow has been found in musl libc's ipv6
address literal parsing code. Programs which call the inet_pton or
getaddrinfo function with AF_INET6 or AF_UNSPEC and untrusted address
strings are affected. Successful exploitation yields control of the
return address. Having enabled stack protector at the application
level does not mitigate the issue. All users should patch or upgrade.

Software: musl libc (http://www.musl-libc.org)

Severity: high

Affected Versions: 0.9.15 - 1.0.4, 1.1.0 - 1.1.7.

Bug introduced in commit: 78f889153167452de4cbced921f6428b3d4f663a

Bug fixed in commit: fc13acc3dcb5b1f215c007f583a63551f6a71363

Patch: musl_dn_expand_overflow_fix.diff (attached) (fix+hardening)

--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="musl_inet_pton_overflow_fix.diff"

diff --git a/src/network/inet_pton.c b/src/network/inet_pton.c
index 4496b47..d36c368 100644
--- a/src/network/inet_pton.c
+++ b/src/network/inet_pton.c
@@ -39,14 +39,15 @@ int inet_pton(int af, const char *restrict s, void *restrict a0)
 	for (i=0; ; i++) {
 		if (s[0]==':' && brk<0) {
 			brk=i;
-			ip[i]=0;
+			ip[i&7]=0;
 			if (!*++s) break;
+			if (i==7) return 0;
 			continue;
 		}
 		for (v=j=0; j<4 && (d=hexval(s[j]))>=0; j++)
 			v=16*v+d;
 		if (j==0) return 0;
-		ip[i] = v;
+		ip[i&7] = v;
 		if (!s[j] && (brk>=0 || i==7)) break;
 		if (i==7) return 0;
 		if (s[j]!=':') {

--zhXaljGHf11kAtnf--
