X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1592" "Sunday" "29" "May" "2016" "15:53:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160529195359.7CDC6332014@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request: OpenNTPD not verifying CN during HTTPS constraints request" "^Cc:" nil nil "5" "2016052919:53:59" "[oss-security] Re: CVE request: OpenNTPD not verifying CN during HTTPS constraints request" (number mark "        cve-assign@m May 29   38/1592  " thread-indent "\"[oss-security] Re: CVE request: OpenNTPD not verifying CN during HTTPS constraints request\"\n") "<CABjOGM5oLVXRFhKCYf=0pRNn377m8Ahw4z-H-k8zgiN_ckQUoA@mail.gmail.com>" ("<CABjOGM5oLVXRFhKCYf=0pRNn377m8Ahw4z-H-k8zgiN_ckQUoA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24461 invoked by uid 550); 29 May 2016 19:54:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24443 invoked from network); 29 May 2016 19:54:11 -0000
In-Reply-To: <CABjOGM5oLVXRFhKCYf=0pRNn377m8Ahw4z-H-k8zgiN_ckQUoA@mail.gmail.com>
Message-Id: <20160529195359.7CDC6332014@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 29 May 2016 15:53:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: OpenNTPD not verifying CN during HTTPS constraints request
To: luismiguelmerino@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Common Name verification was disabled while configuring the HTTPS request,
> allowing upstream network attackers to intercept and forward the request to
> a malicious server that could provide forged timestamp
> constraints presenting valid certificates without the server noticing it.
> 
> http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.sbin/ntpd/constraint.c.diff?r1=1.27&r2=1.28

>> http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.sbin/ntpd/constraint.c
>> Revision 1.28
>> stop disabling server name verification

Use CVE-2016-5117.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXS0fJAAoJEHb/MwWLVhi2bmAP/RU7Ksh8OPSWaen7I9Rof/fB
ckApEVEEeLVs52LSO/re3hmIqB+TiM9N6nMUYVT/EZajaFTZb2KALJcLU2sn7jWd
soEusAUwGTv6hiDKUrgK64suJIogNNAwuzkCozabvn8j0B4NT5SmxR7oMdaF2qZH
6h9jdmxCW1A2c9oyRpyWIpdcf241ir7DGqeEhS3aWir5211UHCysAmX4sxHtlG6Q
dzUsoJWOamlWEDTA5NP85dmJGhThiIN4eliJm9Ui1tQ+SqKzFzDEcpUf/TbF4CGc
MOWm4GQzG0omH48kGJ75KzMYE5Af26b8OsmCk1YZKCt8s+PSvnFRe2aZLI1QQ4IL
53kp+64P4XRPAemHeCDI7Zzf6GjczivYks46zRX42tHwEGwSx10MZxW0U+NdUWmT
ru3HyniFjRyLJ3X+jPnP+iftk5N2KsFrXUhVaSIQgTxST8CNAO/iiZUUs4YEnBJT
BDqTKr21CTWi7QgCl5vTrw2/LMIRhYu0nhHuI6X41RvdR2dgDizeYFEsliVrNw8g
6pw9CoF7qhBDi+A3X8FvOI94wE8u7OHRqNL80NjP26/gNI5JNmEcxN7wbOXFrN4W
SUfvSQk5TV63Cxq52veTLHebHxzjevW9feyQYsu0QMJWM5q3d8/r5AQDKnzOj6dg
nKZvo7u8C1L7lbNmWrVs
=4Wi8
-----END PGP SIGNATURE-----
