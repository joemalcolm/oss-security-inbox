X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1028" "Wednesday" "22" "April" "2015" "03:39:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150422073946.3934E6C001B@smtpvmsrv1.mitre.org>" "28" "[oss-security] Re: CVE Request for ZFS on Linux" nil nil nil "4" "2015042207:39:46" "[oss-security] Re: CVE Request for ZFS on Linux" (number mark "        cve-assign@m Apr 22   28/1028  " thread-indent "\"[oss-security] Re: CVE Request for ZFS on Linux\"\n") "<55370039.7000607@tripleback.net>" ("<55370039.7000607@tripleback.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5656 invoked by uid 550); 22 Apr 2015 07:40:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5607 invoked from network); 22 Apr 2015 07:39:58 -0000
In-Reply-To: <55370039.7000607@tripleback.net>
Message-Id: <20150422073946.3934E6C001B@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 22 Apr 2015 03:39:46 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for ZFS on Linux
To: kash@tripleback.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/zfsonlinux/zfs/issues/3319

> Can we have a CVE

Use CVE-2015-3400 for the 'Since 0.6.4 sharenfs, when built with the
https://github.com/zfsonlinux/zfs/pull/2790/commits patches (such as
for "deb http://archive.zfsonlinux.org/debian jessie main"), always
gives read access to everyone' issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVN0/jAAoJEKllVAevmvmsN1oIAIrao/NraIfKK6zZwLi4Xj28
tDPPGfs1WQRwnWEKt44EYE4aQ43wvTopr2FcIqw6l6lyOJCgsJxHCJQnSBf7DeaC
Hbe41b/tbdKH3lG2XUyV/FA5BDPeJqhleEKOUZV88zLolDauAMTCMyAKI/wUW/t6
zyxhpHPsnmDcSTOnzlEMG/a8VlvWvDDvc48zeES9aDe/Bj4yaaEMrvuSj4ma48SL
uP68YliACF3hjQx8pgepa44qfp8UuB2T+EGAtGiL0DmwGURv1Ljo7GArVPhq6OVj
ZWq8jb7nh1wLkBW7orezZclKSCdlitFPsTPqD6xMnTtsJLwqgdh94VToBHVzwoM=
=Z38L
-----END PGP SIGNATURE-----
