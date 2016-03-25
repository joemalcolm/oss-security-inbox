X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1860" "Friday" "25" "March" "2016" "12:01:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160325160148.285AE3AE004@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request: PHP last release security issues" "^Cc:" nil nil "3" "2016032516:01:48" "[oss-security] Re: CVE Request: PHP last release security issues" (number mark "        cve-assign@m Mar 25   46/1860  " thread-indent "\"[oss-security] Re: CVE Request: PHP last release security issues\"\n") "<20160322220554.GA4736@boyd>" ("<20160322220554.GA4736@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15433 invoked by uid 550); 25 Mar 2016 16:02:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15410 invoked from network); 25 Mar 2016 16:02:00 -0000
In-Reply-To: <20160322220554.GA4736@boyd>
Message-Id: <20160325160148.285AE3AE004@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Fri, 25 Mar 2016 12:01:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PHP last release security issues
To: tyhicks@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I see a similar bug and fix in the PHP 5.x branch:
> 
>   https://bugs.php.net/bug.php?id=70081
>   https://git.php.net/?p=php-src.git;a=commitdiff;h=c96d08b27226193dd51f2b50e84272235c6aaa69
> 
> Note that the bug was filed in 2015. It was fixed in 5.6.12

Bug 70081 is divided into two parts: "The first problem lies how
zend_hash_get_current_key is called" and "Second problem is a few
lines later."

> Does CVE-2016-3185 cover the issue in 5.x, as well?

The CVE ID for the 5.x issue that was addressed by the
https://git.php.net/?p=php-src.git;a=commit;h=eaf4e77190d402ea014207e9a7d5da1a4f3727ba
code change is CVE-2016-3185. (Ideally, this would've had a
CVE-2015-#### number but we're not changing that now.)

We have assigned a new ID, CVE-2015-8835, for the "The first problem"
section of Bug 70081.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW9WAMAAoJEL54rhJi8gl5qaUQAIxfKaCFTJc+dKpEi5rE5HKL
WI3ZrnboUrMbauC2jj4lfXtSLYf2efuVip3ztYzhqwTuoTJrP5+csl4ZcQ1I3ryu
zZNhlnAPTYz16x1nX/j+SMlABoXTpt5Om8py3pzXTpjFKK4+Suy200ilHkGEJKp+
SKr76jUkhk9tkjuVSJaLzZKPvCnLK26uLspqgDeEsnRA08NfP37MeXVtxuUMazG3
s+agZdoGBVNmBi0UwpNRYOqnD8mF7YmFkjDP2Rn6HstacgbbmeLQceb2nDPNzNqC
okPsxq3UM0mmiOzK7g/I7CmqaYauRG/jHK7Gh53JY1vpDs+PND6qvy/T5omnpB7X
Av7cFzHOjmgy0Exl1ByqrSLgXz7jPZv3tNhtb2xaR3+HMF7ZPWXaNVKMl5bNdkDM
WEgZv1DAU8jXfJVvx9tmp9qrRHH3Aole2+ezmz3gRHSVbdXZ+YqO+UMwNoe0GDSE
w0kka5auFBrBfpljgVBkNmH84+6e+cjQbcxlMasfwo7SE70bgQd+Ro/y0QH0fGbY
OrlrHbd/QJ1RlrRUCEShnrcCgMXn/hcK8UGFiFmXC3YIobDwvCjS23ITEHEJN2c1
VcKoZMCcTd7PrpAhwfHc9gCJ5E1pEAcF/XtqLR9xKQSLoUgH23IeV9zr0kYbOQbe
veMxkk/NH3vUm6PS15VK
=AhMF
-----END PGP SIGNATURE-----
