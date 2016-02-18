X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2624" "Wednesday" "17" "February" "2016" "22:54:44" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160218035444.2ED678BC081@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE request - OkHttp Certificate Pining Bypass" nil nil nil "2" "2016021803:54:44" "[oss-security] Re: CVE request - OkHttp Certificate Pining Bypass" (number mark "U       cve-assign@m Feb 17   55/2624  " thread-indent "\"[oss-security] Re: CVE request - OkHttp Certificate Pining Bypass\"\n") "<CAGKXR4sFSLHEf0Eb2tRxLUMsZQbB6b77WJrEuJ_HKqnF4HmA6g@mail.gmail.com>" ("<CAGKXR4sFSLHEf0Eb2tRxLUMsZQbB6b77WJrEuJ_HKqnF4HmA6g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5588 invoked by uid 550); 18 Feb 2016 03:54:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5570 invoked from network); 18 Feb 2016 03:54:56 -0000
From: cve-assign@mitre.org
To: mmc@squareup.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAGKXR4sFSLHEf0Eb2tRxLUMsZQbB6b77WJrEuJ_HKqnF4HmA6g@mail.gmail.com>
Message-Id: <20160218035444.2ED678BC081@smtpvmsrv1.mitre.org>
Date: Wed, 17 Feb 2016 22:54:44 -0500 (EST)
Subject: [oss-security] Re: CVE request - OkHttp Certificate Pining Bypass

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A vulnerability was discovered in OkHttp that allows an attacker to bypass
> certificate pinning. OkHttp did not validate that the pinned certificate
> was in the chain to a trusted certificate authority.
> 
> This resulted in an attacker being able to present a certificate chain with
> a certificate issued by one trusted certificate authority, and additionally
> including the pinned certificate authority. Because the pinned certificate
> was present, and the certificate was issued by a trusted certificate
> authority, the server's certificate was accepted. However, it should not
> have been accepted as the pinned certificate was not in the trust chain.
> 
> This allows an attacker to obtain a certificate from a non-pinned but
> trusted CA, then have OkHttp connect to that server, bypassing certificate
> pinning.

We found this wording to be somewhat confusing, but we believe we
understand what was meant, so the CVE ID is included below.

Essentially, we think "attacker being able to present a certificate
chain with a certificate issued by one trusted certificate authority,
and additionally including the pinned certificate authority" was
intended to state "attacker being able to present a certificate chain
with a certificate issued by one trusted certificate authority, and
additionally include the pinned certificate." The use of "including"
instead of "include" in that sentence seemed to imply that "including
the pinned certificate authority" was a phrase describing the server
end-entity certificate: that would not make sense.

Use CVE-2016-2402.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWxUAUAAoJEL54rhJi8gl5GcEP/iubChgKfa8SqskoVdCi9+P1
yBMrAZRqU2vfyiq+ZtLyr9K+0WbgliFot1RSxP/wXzvAt1zZo0dZyYsxdH6LhDi+
B6ACYVorpRxEsZ4U35wf1E892LRoeSXMDsjm//7vRvMkCssLanFtgcCO3sJ68uxe
URLFX+CsoJ82BsyqA4tm3HMQsfbSk6WN2pnf5ZkMy366FslbAkyR0PYM/kFfNBtm
Hd/J+M6lKzi5ZchxeeEX+h91iGkVg9HUcrvHyMwwR4nxnI0xCMscLoYrqbuacbe1
BCLW5+UYI1011soo5UBsbRXCRNAyL9JeMXmonpqPkXP41PlpOmFfwX7y+hCAzGnn
mW22iXY/YERYTKnote8VGaWxV0h6gthagyZWaY03AA/T4371aD+37xMzqKAAjWrO
3FuFo9B1ppYTjCmRRPHaQD5ccFJZmap1IWTsaHcJxEyNlHZ3YiyB5V2Nn8aZpSgC
1OoNodfBsC2fb+SkjXpEIpN8Aodw71ZQByFDjE65q20ZPYqbmUiOZgFlQ2mEYamO
EBv/LXxPKMRGC2vHSqkVu9qfh71s48bCKqhyz42HU0WnQyhsdgi0A2KdaVBBkDVz
81HTJUssP5UGoThf1xN5/y0nsHK0/VLhCV8oeEXd0WHiwrfzLARDiOrwhIDML0cD
o2JbErxSMlMhZSdwjTuU
=VVYc
-----END PGP SIGNATURE-----
