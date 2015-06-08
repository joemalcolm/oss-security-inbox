X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1842" "Monday" "8" "June" "2015" "15:44:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE request for polkit" nil nil nil "6" "2015060819:44:05" "[oss-security] Re: CVE request for polkit" (number mark "        cve-assign@m Jun  8   43/1842  " thread-indent "\"[oss-security] Re: CVE request for polkit\"\n") "<1433766290.956011.289650937.2219DE8D@webmail.messagingengine.com>" ("<1433766290.956011.289650937.2219DE8D@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15814 invoked by uid 550); 8 Jun 2015 19:44:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15784 invoked from network); 8 Jun 2015 19:44:17 -0000
In-Reply-To: <1433766290.956011.289650937.2219DE8D@webmail.messagingengine.com>
Message-Id: <20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  8 Jun 2015 15:44:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for polkit
To: walters@verbum.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Your message seems to be about various security analysis posted to a
mailing-list thread with about 10 messages, accompanied by at least
two bug reports:

  https://bugs.freedesktop.org/show_bug.cgi?id=90837
  https://bugs.freedesktop.org/show_bug.cgi?id=90832

with a total of about 15 comments. In this situation, we're not sure
that there's any practical way for us to distill that into a consensus
statement of what the CVE or CVEs would be for.

The original 2015-05-29 message seems to be about clients whereas the
first 2015-06-03 message seems to be about users or uids. Is there any
polkit documentation that suggests that two clients are allowed to
interfere with each other as long as they have the same uid? (This is
in the general case where at least one of the two clients is executing
with substantial restrictions.)

For purposes of CVE, we may be able to model this as a situation in
which the (realistically exploitable) counter wraparound is a clear
implementation error and can have a CVE ID, but the concept of uid
matching is a design change that is essentially outside the scope of
CVE. Would that be OK?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVdfACAAoJEKllVAevmvmsm30H/2mgnbGvu8dH39DeFuAGHNZz
UB7F680kDYPQr8onOQU9vBvLqxmEUFg9JA08EtnMeuKomcvH6UD8w9cQEv8TVtFw
b9vDEYkrMKlY8V8sWvhebpnqOURUa9oy8wockAwq/ZAUlz1P9leaQ1N4w9emMvhj
l4PheYuFb1OuIz8kUzhkq1adPeLKMFnjd8abVckHNFtSFhch8A/Lrl56qmJ26MGw
0Rgng4e3gziN1QDT4WsEqm0haehPitJefa61sEuWMcDh+aJjOKzBYScdGCk9A01d
91EFwwZMDq9QPYM1y3UlbvBuypSSafpgZEsJDIyBUeCSVBIAnWqJeJSYQvupyiM=
=+9Uv
-----END PGP SIGNATURE-----
