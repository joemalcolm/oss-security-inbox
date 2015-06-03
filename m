X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1130" "Wednesday" "3" "June" "2015" "14:00:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603180012.08D136C0110@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE request Linux kernel: fs: udf kernel oops" nil nil nil "6" "2015060318:00:12" "[oss-security] Re: CVE request Linux kernel: fs: udf kernel oops" (number mark "        cve-assign@m Jun  3   32/1130  " thread-indent "\"[oss-security] Re: CVE request Linux kernel: fs: udf kernel oops\"\n") "<alpine.LFD.2.11.1506022313530.14742@wniryva>" ("<alpine.LFD.2.11.1506022313530.14742@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5523 invoked by uid 550); 3 Jun 2015 18:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5503 invoked from network); 3 Jun 2015 18:00:23 -0000
In-Reply-To: <alpine.LFD.2.11.1506022313530.14742@wniryva>
Message-Id: <20150603180012.08D136C0110@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 14:00:12 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: fs: udf kernel oops
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel built with the UDF file system(CONFIG_UDF_FS) support is
> vulnerable to a crash. It could occur while fetching inode information from a
> corrupted/malicious udf file system image.
> 
> An unprivileged user could use this flaw to crash the kernel resulting in
> DoS.
> 
> Upstream fix:
> -------------
>    -> https://git.kernel.org/linus/23b133bdc452aa441fcb9b82cbf6dd05cfd342d0

Use CVE-2015-4167.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVb0ADAAoJEKllVAevmvmsCSsH/2ZYDG3UthdGtOXwzVL4Uzbf
g+jL3ZhDq0qtH8SmsPEVH2nnls70vsc9DBuUbcz1ubNUchHubu/oqO4NNEavRdu8
ODzC5/ghXaoR5PLVKdxw+32klhBUJZoTi/ALtnl4J3Z78ZQVks01ibI3q47+zjbh
RbPo4wrE3iDvvR42qTJL4yi5U3Z4SIXOetbpv3i/4/onO5ePKjnnUhlVPNd9s2ll
GSkO3CmHJT+3KuNMpKRNYoTfsFrHO2tCFdACrktkYQT+RYU/XBmVRXljX8j//+cs
h+HEyGJ8pwOgm0UMSzoRam9SyeerYAn65ELSAD7w2ATjlknNiwEyAa4DufLRSQs=
=b1Lv
-----END PGP SIGNATURE-----
