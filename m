X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2071" "Thursday" "30" "July" "2015" "01:40:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150730054056.03E9DB2E116@smtpvbsrv1.mitre.org>" "59" "[oss-security] Re: CVE request: mktexlsr/texlive: insecure use of /tmp" nil nil nil "7" "2015073005:40:56" "[oss-security] Re: CVE request: mktexlsr/texlive: insecure use of /tmp" (number mark "U       cve-assign@m Jul 30   59/2071  " thread-indent "\"[oss-security] Re: CVE request: mktexlsr/texlive: insecure use of /tmp\"\n") "<20150728145801.GE26980@mail.corp.redhat.com>" ("<20150728145801.GE26980@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27799 invoked by uid 550); 30 Jul 2015 05:41:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27781 invoked from network); 30 Jul 2015 05:41:08 -0000
From: cve-assign@mitre.org
To: vkaigoro@redhat.com
Cc: cve-assign@mitre.org, 775139@bugs.debian.org, oss-security@lists.openwall.com
In-Reply-To: <20150728145801.GE26980@mail.corp.redhat.com>
Message-Id: <20150730054056.03E9DB2E116@smtpvbsrv1.mitre.org>
Date: Thu, 30 Jul 2015 01:40:56 -0400 (EDT)
Subject: [oss-security] Re: CVE request: mktexlsr/texlive: insecure use of /tmp

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=775139
> https://bugzilla.redhat.com/show_bug.cgi?id=1181167

> treefile="${TMPDIR-/tmp}/mktexlsrtrees$$.tmp"
> 
> echo "$1" >>"$treefile"

This seems to be a very unusual case in which an upstream vendor
intentionally reverted the complete security patch because of
compatibility problems, and still has not (months later) added a
replacement patch:

  http://tug.org/svn/texlive/trunk/Build/source/texk/kpathsea/mktexlsr?view=log

We feel that having two CVE IDs is best. This may, for example, help
with a future situation where someone decides to ship an updated
texlive package based on the latest code.

Use CVE-2015-5700 for the vulnerability originally introduced in
Revision 22885.

Use CVE-2015-5701 for the vulnerability later introduced in Revision
36855.

Also, exploitation might be relatively easy because the comment at the
beginning of the script suggests running it as root from cron at zero
minutes past each hour.

Finally, it's somewhat likely that there was a third issue:

  http://tug.org/svn/texlive/trunk/Build/source/texk/kpathsea/ChangeLog?revision=37788&view=markup

  2000-01-31

  mktexlsr: Fix possible symlink exploit.

Unless someone wants to find a diff from 2000 and show that that
"possible" symlink exploit was a "real" symlink exploit, we are not
assigning a CVE-2000-#### ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVubhxAAoJEKllVAevmvmsnScH/jCoQFIvU3GVcsxz071iFkpI
Z18G8klqFYQDYgF0BDL0T90rh/TjvlUH1abl8SnORWN949GeDwxNYupZLyJvgvki
Fv4cysoMSmb6ZjEKDEJywjw+RAuETpqm/p+Kn2W3LxCb/3sjxMZedo8WPxFQZ9Xg
iKNjKpNkcQuqTbwZPooWhNhHaBcE8ZOXneGeH42cVpcjIaXOackSIcsu8f1tABBN
GA0rgUfRH44LE4s2JGWBpqldCoGmbaRRCrfnfDo0j2hX6Y9Pzy/cS6dtOzY2VicX
h6wL9Sficg0URNRdpRHNdo6YctN6ltp09tIqqpOJEyNAXimSOr5iNnPmWEGQGro=
=8UNr
-----END PGP SIGNATURE-----
