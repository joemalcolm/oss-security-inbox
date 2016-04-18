X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1926" "Monday" "18" "April" "2016" "12:01:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160418160131.5831A3320BD@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" nil nil nil "4" "2016041816:01:31" "[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL" (number mark "U       cve-assign@m Apr 18   45/1926  " thread-indent "\"[oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL\"\n") "<CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>" ("<CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9922 invoked by uid 550); 18 Apr 2016 16:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9901 invoked from network); 18 Apr 2016 16:01:42 -0000
From: cve-assign@mitre.org
To: regis.leroy@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CABEc15Xut2gOVj1_Luzu-y7gwESwT5Q0n+dCtK6R+HOcR9cDDw@mail.gmail.com>
Message-Id: <20160418160131.5831A3320BD@smtpvbsrv1.mitre.org>
Date: Mon, 18 Apr 2016 12:01:31 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Varnish 3 before 3.0.7 was vulnerable to HTTP Smuggling issues: Double Content Length and bad EOL

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Changelog is:
>  * Requests with multiple Content-Length headers will now fail.
>  * Stop recognizing a single CR (r) as a HTTP line separator. This
> opened up a possible cache poisoning attack in stacked installations
> where sslterminator/varnish/backend had different CR handling.
> 
> https://github.com/varnish/Varnish-Cache/commit/29870c8fe95e4e8a672f6f28c5fbe692bea09e9c
> https://github.com/varnish/Varnish-Cache/commit/85e8468bec9416bd7e16b0d80cb820ecd2b330c3
> 
> Combinations of theses two flaws in HTTP protocol handling allows for
> "HTTP Response Splitting" attacks
> when another actor in front of Varnish3 can transmit headers in this
> form (for example):
> 
>     Dummy: header\rContent-Length: 0\r\n

Use CVE-2015-8852. As far as we can tell,
29870c8fe95e4e8a672f6f28c5fbe692bea09e9c is not independently
exploitable and thus only a single ID is needed.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFQRTAAoJEHb/MwWLVhi2JWQP/1KyFQ29uDWigwCEnW1lY/CX
cyYnYNbRpsoXBIpkA6nCXJxD4IT3d5QXiWmtpelZy7A0CkdWLFa5dRJCC3wchn/J
FE4xjsEFpvaiH5GJXwMpETfQ3dPxhXqpFCk8CFt9grirRZNSwziClSc3QF4nZXL5
XfQMKWkgPE5e1kKbLGncqRyRsT9SY8PURfD6f1BPTZ9AhOUKrSXAIVrANRKhkbSV
L5TIYxKKegFX/dn+c7lu+ur9TkvdOKHJ4NUPJE2G4UkbajPM9+YhYGJXa7z45+6D
WJrPNUesSvxbaXQcmhxpbwWmcrnHCec7ONnp8GU047PqD/f2cRiudH0/qjmA3Lla
t3tZwcRbCMIGEMzMDV82k6H+lh8KUxD+ZAyLpaWa/M+A8qCM7rTt06N0Sk+2bOD5
LShXWIuWsfXqLhUmwI5irXdwoCPO8qqjawLpPSDxRSTmF0FJp5o3dMAZ9Bod0a4r
wrC9eoClGb9yYy6Rp6Cu2S3SOLTgIrfNcWqiYKu4TzrlkrtuippLlrsmANeaFnVl
j1E9hK2+UQI3+l77BufqIUyyOajksb8LMRfIpmH/YFfyXfP1SGcoXVdb8UcForxO
Wu6muPmPTPrMpocn/sL5M6eGgcqFJ+X99BVzMSq4dn0V/Tn+EWR5kdjGxozkRn0O
Y+bA2XlK2SlcdBVOOEi6
=Y81M
-----END PGP SIGNATURE-----
