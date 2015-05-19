X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1585" "Tuesday" "19" "May" "2015" "15:36:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150519193654.29FC1B2E0CC@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: coreutils sort heap overflow" nil nil nil "5" "2015051919:36:54" "[oss-security] Re: coreutils sort heap overflow" (number mark "        cve-assign@m May 19   41/1585  " thread-indent "\"[oss-security] Re: coreutils sort heap overflow\"\n") "<5555403F.3060502@draigBrady.com>" ("<5555403F.3060502@draigBrady.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15408 invoked by uid 550); 19 May 2015 19:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15364 invoked from network); 19 May 2015 19:37:05 -0000
In-Reply-To: <5555403F.3060502@draigBrady.com>
Message-Id: <20150519193654.29FC1B2E0CC@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 19 May 2015 15:36:54 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: coreutils sort heap overflow
To: P@draigBrady.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> a heap overflow can be triggered in sort(1) as per:
> https://bugzilla.suse.com/show_bug.cgi?id=928749
> https://github.com/pixelb/coreutils/commit/bea5e36cc876ed627bb5e0eca36fdfaa6465e940

> src/sort.c (keycompare_mb) ... The current implementation is character
> based, so we allocate the worst case size for the conversion buffer,
> which is MB_CUR_MAX for each input byte.

This appears to be caused by performing a size calculation without
properly considering the number of bytes occupied by multibyte
characters. Use CVE-2015-4041.


> https://github.com/pixelb/coreutils/commit/bea5e36cc876ed627bb5e0eca36fdfaa6465e940

> There is also a theoretical buffer overflow with data around
> SIZE_MAX/2.

This appears to be related to the new "SIZE_MAX - lenb - 2 < lena"
test, which is not specifically associated with use of multibyte
characters. Use CVE-2015-4042.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVW5B2AAoJEKllVAevmvmsTCYIALr2h2N45b4ENpHrfUechDFZ
q2cJqpoDUJ3B4PSendkoh9BeH7fwwVVgSwXJpVtU0vaJOh0SXsioNahkuCpp0eA1
1v39Lki0eW5/ZDxDzqDcv7m9oLGmI4LjrShqUG11UJhsNQ+6lEJAtz7+VJllW/V4
NV1ixrRW/pCOpwX1Lp57KO1VSihbb+Iol+gWSTAFaJjn8DqrWrbWBVkVVk1rv3dW
skkco5SKFUWJBdzPb/PkmEQ71kxXrlsEKBG5wrHHOKjIdQEj9fjnJ/HXo7AoEg1+
SLq0CV2nVZltIQXvPvxIBvO8a1tM9g+bLoDuCDhyfYG+rCDMkOEBN4nvXyc1+Mw=
=BJHX
-----END PGP SIGNATURE-----
