X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3425" "Tuesday" "24" "March" "2015" "03:36:10" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>" "79" "[oss-security] Re: CVE request for OpenStack Compute (nova)" nil nil nil "3" "2015032407:36:10" "[oss-security] Re: CVE request for OpenStack Compute (nova)" (number mark "        cve-assign@m Mar 24   79/3425  " thread-indent "\"[oss-security] Re: CVE request for OpenStack Compute (nova)\"\n") "<5510E3BE.8030204@redhat.com>" ("<5510E3BE.8030204@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13921 invoked by uid 550); 24 Mar 2015 07:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13902 invoked from network); 24 Mar 2015 07:36:22 -0000
In-Reply-To: <5510E3BE.8030204@redhat.com>
Message-Id: <20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 24 Mar 2015 03:36:10 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for OpenStack Compute (nova)
To: gmollett@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://bugs.launchpad.net/nova/+bug/1419577

Use CVE-2015-2687 for this issue with an unintended loss of access
control after a failed live migration.

For purposes of CVE, we typically don't think of vulnerabilities in
the way expressed in
https://bugs.launchpad.net/nova/+bug/1419577/comments/4 "without a way
to make the migration process fail, this is a bug with security
consequence, but not a vulnerability." In other words, for a CVE, the
attacker can be a person who wishes to have an unauthorized volume
attachment after the bug is triggered. The attacker does not need to
be a person who has determined a reproducible way to trigger the bug.

> if live-migration is executed while process keep using big size of
> memory by benchmark tool or something like that in VM instance and
> then the waiting status of live-migration could be persisted,
> eventually live-migration will be failed.

We think that nobody commented on whether this is a feasible way to
actively trigger the bug.

> you're suggesting potential exploits involving
> 
> 1. disconnecting physical network interfaces

We think the intended security property of this OpenStack product is:
"if network connectivity is disrupted by anyone (authorized or not)
during a live migration, then access control for volumes still must
match users' expectations afterward."

It is conceivable that the intended security property of this
OpenStack product is instead "if network connectivity is disrupted
during a live migration, then access control for volumes afterward is
undefined." In this case, maybe you mean that the CVE should apply
only to Havana, because the only relevant root cause is a Havana bug.
The reasoning in that scenario would be:

   1 - a Havana bug (e.g., 1362916 or possibly the combination of
       1362916 and a second bug) makes it possible to force a failure
       of a live migration

   2 - this was not previously considered a vulnerability

   3 - however, the relevant OpenStack product has a required security
       property of "There must not be any software bugs that allow
       live-migration failure attacks, because these attacks are
       equivalent to attacks against volume access control."

   4 - therefore, the bug in item 1 is promoted to a vulnerability,
       and is the bug directly associated with CVE-2015-2687

   5 - consequently, CVE-2015-2687 would not be used in an advisory
       because Havana is unsupported by the OpenStack VMT

So, does the OpenStack VMT have a position on whether to choose this
latter scenario? In other words, if live migration fails because of a
disconnected physical network interface, is access control for volumes
intentionally undefined afterward?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVERM0AAoJEKllVAevmvmsbBgIAMGBnjBiFxT9hfdSED6p/WD1
2kh8GJq8sfECGAS7p7vLcjmqQXKIwJWRD9z974OtRuFSrMcS59Lon/3wVOMO8SGI
RC/RtM2sG41WyhcM3Io5rlFIQ4ligNTwhd88+1wPRH5CGAJfK9X2HrCew95WR2m+
bx4bSaNvoolbZMvX11YaQHqX/5HdX1qispLdduKjTEI506YLLP8IAyR8gX1o0cOG
cU5gMkd0zbVvh67ZdCkIvsIkRIO1ZJC8kStzPJVTDm1+A8GxvBs7/M6nmHG6T4ji
IFD2w350UT2iZWBWrt6KRfvTDeqAmik9+3u424oFiHtWaMyz+FPMTIO9J8PIBHg=
=YcdN
-----END PGP SIGNATURE-----
