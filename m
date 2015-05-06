X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1887" "Wednesday" "6" "May" "2015" "11:43:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150506154303.682FD52E067@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: Local privileges escalation in rubygem open-uri-cached" nil nil nil "5" "2015050615:43:03" "[oss-security] Re: Local privileges escalation in rubygem open-uri-cached" (number mark "        cve-assign@m May  6   41/1887  " thread-indent "\"[oss-security] Re: Local privileges escalation in rubygem open-uri-cached\"\n") "<20150505172741.GE17491@sisay.ephaone.org>" ("<20150505172741.GE17491@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26193 invoked by uid 550); 6 May 2015 15:43:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26150 invoked from network); 6 May 2015 15:43:15 -0000
In-Reply-To: <20150505172741.GE17491@sisay.ephaone.org>
Message-Id: <20150506154303.682FD52E067@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  6 May 2015 11:43:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Local privileges escalation in rubygem open-uri-cached
To: misc@zarb.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> open-uri-cached, a rubygem that will cache downloaded data when using
> open-uri, is susceptible to a local attack

It appears that the critical issue you've identified is execution of
code found in an untrusted location under /tmp. Use CVE-2015-3649.

In most cases, this specific class of /tmp misuse issues is unrelated
to Symlink Following. However, when such an issue exists, it is
conceivable that a Symlink Following vulnerability also exists, could
be fixed independently, and would be of interest to an attacker who
has a goal of overwriting a file rather than directly executing code.
The MITRE CVE team has not done any original research to check for a
Symlink Following vulnerability. If a Symlink Following vulnerability
were to exist, it would not be within the scope of CVE-2015-3649.

Also, the message refers to "usage of YAML in a insecure way." We have
not done any original research to determine whether, in a scenario
where the "untrusted location under /tmp" were no longer used, a
YAML-related vulnerability would still be exploitable. If an
independent "YAML misuse" vulnerability were to exist, it would not be
within the scope of CVE-2015-3649.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVSjYYAAoJEKllVAevmvmsBc0H/1rb5MtLd0UXcNc1Ez6dL3dC
tLUB6CrujIs3yp5ynaNsg6b2cmBoF6GxGRTB4ea4Lg9n4Bv/Ovr6u1aRhtx1gz1f
XtlPnlO4nOzC1Kh9aOa33SvxiRqUw+Ch7G4Vi9tAHYxaxBFH9DGhEvYCC3KWQ4Za
dSMirU3CfkNIywwp3xzAAltXy/tg4VXq4tM0x6j9KK2URhaPJuNVcZDsp12OSpDO
umhE3JJY0FL5eY1QD6YjbyrZbDe7HxjxjhpdpPV8Jh1qcdsttiY1vYq/CQWSwmDu
v/4GfZjw7pR3Bh0uBfVgZ2CmmnWNFCgX2ECWH8D6Nyfy2Im5vG16eFE45ANtRkY=
=NJDF
-----END PGP SIGNATURE-----
