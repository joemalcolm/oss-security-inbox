X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2046" "Friday" "23" "October" "2015" "12:06:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" nil nil nil "10" "2015102316:06:08" "[oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" (number mark "        cve-assign@m Oct 23   49/2046  " thread-indent "\"[oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP\"\n") "<874mhidqhp.fsf@redhat.com>" ("<874mhidqhp.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5216 invoked by uid 550); 23 Oct 2015 16:06:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5195 invoked from network); 23 Oct 2015 16:06:20 -0000
In-Reply-To: <874mhidqhp.fsf@redhat.com>
Message-Id: <20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 23 Oct 2015 12:06:08 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP
To: mprpic@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> It seems that NTP upstream has also requested a CVE (and had one
> assigned) for this issue:
> 
> Bug 2902 : CVE-2015-7703 configuration directives "pidfile" and "driftfile" should only be allowed locally. (RedHat)
> [http://support.ntp.org/bin/view/Main/SecurityNotice#October_2015_NTP_Security_Vulner]
> 
> However, Red Hat assigned CVE-2015-5196 to this issue when it was first
> discovered:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-5196
> 
> Can CVE-2015-7703 please be rejected?

Actually, we have rejected CVE-2015-5196 and are keeping CVE-2015-7703.

This is a case where we have a long-standing published policy (see the
http://cve.mitre.org/cve/editorial_policies/duplicates.html page) and
our implementation of step 1 chose CVE-2015-7703.

We will update our internal documentation for CVE assignments to
further emphasize the possibility that a CVE ID may have already been
assigned outside of MITRE, to try to avoid this type of unfortunate
situation in the future.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWKlnzAAoJEL54rhJi8gl5wPUP/3Z0jDlPeOOx3sTuUXk0k7n3
xJeBo1uW/RnNihE4T7AB3FtOpvxmxK/Ez0mxJC4Cj9os/U/3WgTp6/ULKx97osMk
e7vEfjNKeW7Ff2nEF6MhjJn6pWNNNPg9j2wKlI+NpvfTO+tu0ZJ/ICE6DmlCqPuv
yN0CdwecNJu8APTuJk4F0pylJTQyifWhwWkVfR4I61Ut0/f315QFDG3I8GMG3jwO
bYS3d8i3WORouuHBE675pRhh4555WGFZRLWLJLHq9x2GXFulp6PGic3vIi/tnkz+
rI6EE+RA+GX1KOaFu8KBmvbUpbNY5TmsvVem6gsE648UUB7H/dVWYH7khhb9jPpU
mZrXYLPEQrmqWfQxdT5TTho9EczkjXQwjzMAytwKN5VFBRT8IBTTiJwgRgn5WVZK
dTSIRrc8gTe2Zf62H+xJVf/kWukp4hhwHbOvPZqMi/Il059D7PXTFuUemDAvtAFE
OTX77he6yQnllVFqrRULs2MRERa2RTt3vM99PynUxVzhTn3JPRfPFqjyW53V+39g
9/hIzLIO2YxyFHfabo8IPrY3bNFL67QGMQjLZCundeJlb8dtO7z882qr2Ov8bQcV
LbSCB4Re/aJzzSkSehjWVVPdt7rA3LI/WdwSKBTHntVWU6KS2aiIxMqDysf3VWuh
BK8TOA2xpcPodbmoi639
=kojJ
-----END PGP SIGNATURE-----
