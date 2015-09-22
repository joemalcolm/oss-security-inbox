X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1593" "Tuesday" "22" "September" "2015" "16:51:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150922205117.F1154B2E1BC@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" nil nil nil "9" "2015092220:51:17" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" (number mark "        cve-assign@m Sep 22   41/1593  " thread-indent "\"[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch\"\n") "<1441913190.17007.15.camel@decadent.org.uk>" ("<1441913190.17007.15.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4039 invoked by uid 550); 22 Sep 2015 20:51:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4014 invoked from network); 22 Sep 2015 20:51:30 -0000
In-Reply-To: <1441913190.17007.15.camel@decadent.org.uk>
Message-Id: <20150922205117.F1154B2E1BC@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, sfjro@users.sourceforge.net
Date: Tue, 22 Sep 2015 16:51:17 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch
To: ben@decadent.org.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The aufs (Advanced Union Filesystem) project provides an optional patch
> for the Linux kernel

> introduces later uses of the vma, resulting
> in a potential use-after-free.  This is certainly exploitable for a
> minor denial of service (BUG in process context, so the task can't be
> cleaned up properly but the system does not panic) but might also be
> usable for privilege escalation.

>> Date: Sat, 19 Sep 2015 07:08:18 +0900
>> From: sfjro@users.sourceforge.net

>> I confirmed that Ben Hutchings' patch is correct

Use CVE-2015-7312.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWAbyjAAoJEL54rhJi8gl5Rj8P/0rVG/qRVeS8kTjUUz7YtuFM
d8CAJzjsPPXSnIUNpITumwrRaqjWcVRx00AZyUfOIY2aalEz1O9tvbsaMj3+vsw1
ON3pi/JbYUYVoBfEpCIJvhvYVY2496xyk7Tk2ZlWdoVcinuT30i5DHtWzNMQn8ck
xdjuq2FCBvYmWnso2oPV9t0JeqSYZ88w1/3D0v0bq1ZnTQlxr25Q7zEGMcfYjwWk
AhUMSB4lOCdrD3Y0BLgcADAPmvw9EP0dhk/EIDs0OROtcyLsDZ0ExWLqea+saNGo
AOIGadh51YKMZtiYDl3KEuYFeU2RcLLKwe0MwKT4KB2pFsndMZUOqYdMsYB+nVXU
/T9LBmWc8+gKdi7IU9zwBvs1LkSfSPfFdEAUwSLqOZhENldFLzUOU3Nqa6eL/SsV
BllfhNMLUJ9wKH0EJtZW13Pg1So0ErjzNGj6MXqtpb4KGnIG/JzzLdebKMd/hmLT
Wm/fk4ZBM3PG1n6Fu2tY0gcwqErFiun/9jS3LbzsqWscXJpIpqREFM9mogjWoPL1
BK6ZtqP3AGscRcj2qz0wPgH402THtssmnxAU07qrp7be9NnYXFVAmIacWo9wXaP+
Pqrre2J7SWGhkQ3bpss+/rCSMlZ+QT0goQ2JeHZwpJfr7MV3tQhjA+euzZejH1R8
eArssm9Y7c1hXOKtVGgZ
=fSPy
-----END PGP SIGNATURE-----
