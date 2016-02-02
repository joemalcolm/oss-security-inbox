X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2391" "Tuesday" "2" "February" "2016" "14:36:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" "^Cc:" nil nil "2" "2016020219:36:06" "[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" (number mark "        cve-assign@m Feb  2   48/2391  " thread-indent "\"[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus\"\n") "<56AF7AA7.7080609@dest-unreach.org>" ("<56AF7AA7.7080609@dest-unreach.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7285 invoked by uid 550); 2 Feb 2016 19:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7234 invoked from network); 2 Feb 2016 19:36:18 -0000
In-Reply-To: <56AF7AA7.7080609@dest-unreach.org>
Message-Id: <20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Tue,  2 Feb 2016 14:36:06 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>   In the OpenSSL address implementation the hard coded 1024 bit DH p
>   parameter was not prime. The effective cryptographic strength of a key
>   exchange using these parameters was weaker than the one one could get by
>   using a prime p. Moreover, since there is no indication of how these
>   parameters were chosen, the existence of a trapdoor that makes possible
>   for an eavesdropper to recover the shared secret from a key exchange that
>   uses them cannot be ruled out.

This was sent to the oss-security list as a published advisory, not as
a CVE ID request. We would expect that one or more parties (e.g.,
Linux distributions) are planning to re-announce this to a different
audience in a way that would make at least one CVE ID especially
useful. Our question is about whether anyone needs two CVE IDs.

A CVE ID must be for a specific vulnerability (although we realize
that the CVE ID may often be used to track the update). Here, there
can be a CVE ID for the "was not prime" finding in the sense that p is
supposed to be prime, and a non-prime value is an implementation error
regardless of any other details of the situation. With the currently
published information, we do not see a way to generate a second CVE ID
for something related to "no indication of how these parameters were
chosen" or "cannot be ruled out."

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWsQPKAAoJEL54rhJi8gl57rMQAJdoD4DfUlHFbSupu548iP0N
3c7E8nb497rmUP6cpA/TiTECHvgglIINK/xQ8a5Eb3dBVU9rLoZewwZYyDAnItmp
cfM8F58criX0vycjv8RBh01+ZlZg8pLFNmj5O3Xew/D6qJp/mJfm80P4UE4roThh
Xh/4GgwNpHCMsUyerCmNGVSEkMS/Gf3ixoGWLGWLyquw/mZywM4EdD8qjP1SlLKA
S3nCh+1PO+CtCBNtHzWMpXtc+QD+mUTf/i5MZj9TIMEc4un0lhPLOsVQxOLM2JxG
Bz3xat0oJRyB8wqvIpAiQGYsWFewLhIaB7Fulc4SsLbc//8I4GcX0bb+/rY4/phf
5am4s0WgaXuTAkxQvhOat/scfNxwAjo5D5qkXvDozJmatYDgRN/bj8Q/PI+i6H1E
mahB5IzRwwFkLpFYn5XnzgH8BzHN0mi6iX5b4dbCGBtqa5nRJj2h0R9uxDoosTaV
8qJPzIwduwSQ0C8r5VueUdIRLhDaCoIOo/GpKAzeP/XUPNs1GMwku7WMtp3ihkPK
v7hAIDJkxEX9KNG60ZPX/NpTteuSYLfmQaDWAxAZbW2hG962kbKnUdhwBv7rZD3p
OHsBa6eUZ++f5LO7B/PWRPdt0o00menBizMV2YH8lQL2pPZf4UfoaalgsBaYidxu
Bq/DO1TXK4HnST0rpcSj
=P0EG
-----END PGP SIGNATURE-----
