X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2082" "Tuesday" "23" "February" "2016" "22:38:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160224033848.CA26C72E028@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE Request: Linux kernel USB hub invalid memory access in hub_activate()" nil nil nil "2" "2016022403:38:48" "[oss-security] Re: CVE Request: Linux kernel USB hub invalid memory access in hub_activate()" (number mark "U       cve-assign@m Feb 23   47/2082  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel USB hub invalid memory access in hub_activate()\"\n") "<66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>" ("<66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20208 invoked by uid 550); 24 Feb 2016 03:39:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20190 invoked from network); 24 Feb 2016 03:39:00 -0000
From: cve-assign@mitre.org
To: alexandru.cornea@intel.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, costel.maxim@intel.com, stern@rowland.harvard.edu
In-Reply-To: <66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>
Message-Id: <20160224033848.CA26C72E028@smtpvbsrv1.mitre.org>
Date: Tue, 23 Feb 2016 22:38:48 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Linux kernel USB hub invalid memory access in hub_activate()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quickly plugging in and unplugging a USB hub can lead to a null
> pointer dereference in kernel (local denial of service) or the USB
> port to which the hub is connected becomes unusable, for kernel
> versions 2.6.32 < 4.4. The issue occurs when the USB hub gets
> disconnected before or while the routine for USB hub activation is
> running - hub_activate() function.
> 
> Bug reported on the kernel USB mailing list:
> http://www.spinics.net/lists/linux-usb/msg132311.html
> 
> Issue is fixed in kernel 4.4, by commit:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=e50293ef9775c5f1cf3fcc093037dd6a8c5684ea

>> This patch fixes the problem by taking a reference to the usb_hub at
>> the start of hub_activate() and releasing it at the end (when the work
>> is finished), and by locking the hub interface while the work routine
>> is running. It also adds a check at the start of the routine to see if
>> the hub has already been disconnected, in which nothing should be
>> done.

Use CVE-2015-8816.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzSUDAAoJEL54rhJi8gl5mokQAJjfrH2LsZTYKCaO4JWi60x9
l+CQdmkmlwGwr+jc+ijq6IuXroeNCJ9qKoGx+0u6Rl6XjRU9pTnga1NhIuRuO4SB
8vUcoZa4upHCtPzgHDZ0xKjR890UlUzIzi5WCqbZsqR3DzU9KK62qAh54C5idoLw
JBs3Jm6sf+LSRMwJs9nlSsTE+OlbgqaPOmzUcEs1vuxROffYLeh8FL4On3iEbL7G
LPEO/yIkqOAltYAoBGlMHnFXcaeXr9UNRKTJ5KkxCV+rR68Nvu5/lQDdNB7xEdZn
iL1Zg81+uJj6A7xHq21SRj4HtOEgsqGvSp1yxRmi6M1LeTEt95HL7Y1vc0NWKOza
N4D9AeHneUz+/DwzBTBWFoSF3qrkcQU9BjN9VZes+DH4PFlSRERdT31gDmiEzmv3
ohh3dc0AT0P7WL2mR3fA2RvtbC0B4I6BgKjSGoQ4em25dk6CJkamIZnZvkXKVAiK
9TOWbOJcFX5YwBKhwMF8Sjrt8VXnyLXaP7k3R1QiLcvLZEnuIrp+9FTyoVghCdcx
UaYeC6XQ10Fsj7DP06YYpTjAyzyY9T6I1sWYgYWUz/I1G2hUUvalDdkNqDaP0qgw
15BnBjNFqywSDIf2ecsMviDbPfbauHrXWG72SgsvHTiCmlMu9PxPbDLvCGcsZbEA
RYaRhm3fjTEoCcb/0Qb7
=gSr5
-----END PGP SIGNATURE-----
