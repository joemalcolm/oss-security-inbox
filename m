X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2304" "Thursday" "16" "July" "2015" "18:34:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150716223411.647856C0769@smtpvmsrv1.mitre.org>" "51" "[oss-security] Re: CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected" nil nil nil "7" "2015071622:34:11" "[oss-security] Re: CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected" (number mark "        cve-assign@m Jul 16   51/2304  " thread-indent "\"[oss-security] Re: CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected\"\n") "<20150715152055.GA13935@eldamar.local>" ("<20150715152055.GA13935@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28570 invoked by uid 550); 16 Jul 2015 22:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28546 invoked from network); 16 Jul 2015 22:34:23 -0000
In-Reply-To: <20150715152055.GA13935@eldamar.local>
Message-Id: <20150716223411.647856C0769@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Jul 2015 18:34:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: kmail: Attachments are not encrypted when "automatic encryption" is selected
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> It was reported a while ago to the KDE Bugtracking System, that
> attachments are not encrypted when "automatic encryption" is selected.
> 
> Upstream bugreport: https://bugs.kde.org/show_bug.cgi?id=340312
> Fix: http://quickgit.kde.org/?p=kdepim.git&a=commit&h=626c857eb30c0533a4de7836ee843caaa8c00a26
> Debian Bug: https://bugs.debian.org/791800

Use CVE-2014-8878.

Other comments (probably irrelevant):

This general type of issue has been included in CVE before: see
CVE-2014-5369.

We feel that it is conceivable that this kmail behavior had been
intentional. Encrypting attachments to arbitrary recipients, simply
because a PGP key is known, has a usability problem. Some mail systems
automatically and silently remove attachments that can't be scanned
for malware (e.g., when the pre-encryption content type of the
attachment is one that can have malware). This has, in some sense, a
risk of "data corruption" because the meaning of a message can be
vastly different if the attachment doesn't arrive. If the sender
explicitly selects the "encrypt message" option, then that's a very
strong signal that encryption is required, and kmail did encrypt
attachments in that case. The "automatic encryption" implementation
might have made a different tradeoff between security and usability.
But, probably not. We decided to assign a CVE ID anyway because the
commit refers to the change as a bug fix, because there was apparently
no documentation of an intentional tradeoff, and because we're unaware
of any widespread acceptance of a need to avoid encrypted attachments
in some cases.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVqDDjAAoJEKllVAevmvmsgzsH/iMc5jgnkEvcCUgwObvTm7eP
2NQS+e7XW/SW15wGSU0erqJIDH0T1rrB1X9iHARuaEHGu3ck1Rth2tu+BhofopCr
eCmmNY+6fWYDGxFpKq+RsCOtzA0+2BaiKbXsANZBz9kTr3ZJuCkEf+5RHMtBeulH
KlaOG7eODpatUSwMDTjlRmBsN2JLsQfJtxViHWGeBapAU/MSVzsfbC0QIJ7Srinu
lk21yICJGj0wL4+EqLympWbn+r/m4XPcDqoEh/giJLKG4Q+fxulJPLG9Ze9wMF42
/0NTs0pRsaQtTwhiKMmi5hl6QxBHhAhD8hZZNeJC7LaddrWA/iIi2ouvVcDcRw0=
=/PrR
-----END PGP SIGNATURE-----
