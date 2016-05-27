X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1296" "Friday" "27" "May" "2016" "13:19:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160527171903.64AA8332023@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request: VLC - crash and potential code execution when processing QuickTime IMA files" "^Cc:" nil nil "5" "2016052717:19:03" "[oss-security] Re: CVE request: VLC - crash and potential code execution when processing QuickTime IMA files" (number mark "U       cve-assign@m May 27   33/1296  " thread-indent "\"[oss-security] Re: CVE request: VLC - crash and potential code execution when processing QuickTime IMA files\"\n") "<3a4fbbc4-be6e-e410-21f0-0f32d12bafd9@gmail.com>" ("<3a4fbbc4-be6e-e410-21f0-0f32d12bafd9@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30346 invoked by uid 550); 27 May 2016 17:19:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30326 invoked from network); 27 May 2016 17:19:15 -0000
In-Reply-To: <3a4fbbc4-be6e-e410-21f0-0f32d12bafd9@gmail.com>
Message-Id: <20160527171903.64AA8332023@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 27 May 2016 13:19:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: VLC - crash and potential code execution when processing QuickTime IMA files
To: blinken@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> it does not check
> that the number of channels in the input stream is less than or equal
> to the size of the buffer, resulting in an out-of-bounds write
> 
> potential for remote code execution via a malicious media file.

Use CVE-2016-5108.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXSIEeAAoJEHb/MwWLVhi2ER4QAK5kLAexK+KFPLs35LdTwYvu
YCcFcWZylzAhEXB8ukMGCrEikoXgZe5frYun/wRwmkKOauwyzGfH7kqzTEMq9cgs
ky43QVe7iSyVcsmi+jr+B2KUOq7vtTBaEhe2RR5PYG8vvseUYRO1rXiwMy7BTsSM
SwskbnIQ8IHg6RdIQ+XTnI0zOWqXmU+YT3H0P3QyqXa/2katuUAADN5/orDQSvfn
gmoh82VJc1tIJKckbEl2ivURfVPdVzb86Ng7ReJChR+YDx+MfZ9kcLZYH3982+9s
OrpGCR0NJlMurP7FWBwekrd/bgnYXXZJpiEg6Ygg39X+8TSbRNHrycfSnHj5D2At
GBcm6wdHWPROYHlQeeFng/wyxZC8qEP9LKIEQr8ypcEQT4UhJ9rQej0TTSHfXNiG
UXG3jhIHCJJEBhQQX92XrR9CYwbn3MCmrT4CE4OCKO+088w3uHPxiVMUc6T6U2Pq
ZElZ9kOLQposZe6ItuhHmPa9hOVzWpReeBZduPOdzW1PMDhfanUah7AEvp1eKn2d
waA9CBhNH/4cxwMSlZUYGjx6SB9jaTkmYYk8HmcEW40nlDlfn8RrPiSrsMZfQZHT
kO1ohrVDquQhoMycRu3GVaB9nGs+RGGfYD/XzsFSC+jb0PPuFKozdlHHonT5CP66
vq0r06z1IrJDK0Nye6Re
=ky5Z
-----END PGP SIGNATURE-----
