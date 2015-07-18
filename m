X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1533" "Saturday" "18" "July" "2015" "14:13:26" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87615hoe8p.fsf@mid.deneb.enyo.de>" "36" "[oss-security] CVE-2014-8873 was fixed in DSA-3235-1" nil nil nil "7" "2015071812:13:26" "[oss-security] CVE-2014-8873 was fixed in DSA-3235-1" (number mark "U       fw@deneb.eny Jul 18   36/1533  " thread-indent "\"[oss-security] CVE-2014-8873 was fixed in DSA-3235-1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8151 invoked by uid 550); 18 Jul 2015 12:13:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8086 invoked from network); 18 Jul 2015 12:13:38 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 18 Jul 2015 14:13:26 +0200
Message-ID: <87615hoe8p.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2014-8873 was fixed in DSA-3235-1

We failed to mention in the original Debian security advisory that the
openjdk-7 update in DSA-3235-1 also fixed the following
Debian-specific vulnerability:

Some web browsers in Debian jessie would automatically execute
downloaded JAR files, without any kind of sandbox.  Presumably, that
affects email clients as well.

We have tracked this down to the /etc/mailcap entry generated from the
openjdk-7 .desktop file, after this change in mime-support (which is
specific to Debian and its downstreams):

mime-support (3.53) unstable; urgency=low

  801bd8b Parse Desktop entries to generate mailcap entries.
          Patch from Brian M. Carlson. (Closes: #497779)

 -- Charles Plessy <plessy@debian.org>  Sun, 05 May 2013 17:24:50 +0900

This change is part of Debian jessie, previous releases are not
affected.

After consultation with the mime-support maintainers, the resolution
in DSA-3235-1 removes the MIME type registration from the openjdk-7
package.  Auto-generation of /etc/mailcap from .desktop files remains
the intended behavior of the mime-support package.

The unintended code execution was reported initially to MITRE by
Alexander Neumann, and MITRE assigned CVE-2014-8873 to this issue,
without a full root cause analysis, incorrectly assuming it was a w3m
(and not Debian) vulnerability.

For other packages with .desktop files affected in the same way, we
will assign separate CVE IDs from Debian's pool.  We do not believe
any of the affected packages are in the supported package set of any
Debian downstream.
