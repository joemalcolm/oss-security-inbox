X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1027" "Sunday" "2" "October" "2016" "22:06:15" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<8737ke7byg.fsf@mid.deneb.enyo.de>" "25" "[oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure" nil nil nil "10" "2016100220:06:15" "[oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure" (number mark "U       fw@deneb.eny Oct  2   25/1027  " thread-indent "\"[oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32049 invoked by uid 550); 2 Oct 2016 20:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32023 invoked from network); 2 Oct 2016 20:06:28 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
Date: Sun, 02 Oct 2016 22:06:15 +0200
Message-ID: <8737ke7byg.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure

It seems this was never disclosed properly; there are still a couple
of hidden Mozilla bugs about this.

The NSS 3.22.1 announcement

  <https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_3.22.1_release_notes>

mentions one:

  bug 1194680: NSS has been changed to use the PR_GetEnvSecure
    function that was made available in NSPR 4.12

The story behind this is that NSS uses environment variables to
configure lots of things, some of which refer to file system
locations.  Others can be degrade the operation of NSS in various
ways, forcing compatibility modes and so on.

Previously, these environment variables were not ignored SUID
binaries.  NSPR 4.12 and NSS 3.22.1 introduce a new API,
PR_GetEnVSecure, to address this.  It's a very thin wrapper around
glibc's secure_getenv and similar functions on other systems.

Both NSPR and NSS need to be upgraded to address this; even if you run
s/PR_GetEnvSecure/secure_getenv/ on the NSS sources, some unprotected
environment variable lookups remain in NSPR.
