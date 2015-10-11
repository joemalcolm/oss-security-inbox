X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Sunday" "11" "October" "2015" "14:04:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151011180457.0EFED332338@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication" nil nil nil "10" "2015101118:04:57" "[oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication" (number mark "        cve-assign@m Oct 11   46/1880  " thread-indent "\"[oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication\"\n") "<560C98E1.10503@redhat.com>" ("<560C98E1.10503@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11567 invoked by uid 550); 11 Oct 2015 18:05:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11549 invoked from network); 11 Oct 2015 18:05:08 -0000
In-Reply-To: <560C98E1.10503@redhat.com>
Message-Id: <20151011180457.0EFED332338@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 11 Oct 2015 14:04:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication
To: huzaifas@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Upstream fixed a security issue in digest_authentication
> 
> allow disabled user or users with changed password to access the squid
> service with old credentials.
> 
> http://bazaar.launchpad.net/~squid/squid/3.4/revision/13211
> http://bazaar.launchpad.net/~squid/squid/3.5/revision/13735
> http://bugs.squid-cache.org/show_bug.cgi?id=4066

As far as we can tell, there is only one vulnerability -- it is
associated with http://bugs.squid-cache.org/show_bug.cgi?id=4066#c3

Use CVE-2014-9749.

We aren't currently providing any statement about the
affected versions for this vulnerability. It is possible that
http://bugs.squid-cache.org/show_bug.cgi?id=4066#c7 implies
that 3.5.x wasn't ever vulnerable, but that the 3.5.x code was replaced
anyway because it had used too slow of an approach to
preventing the vulnerability.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWGqM8AAoJEL54rhJi8gl56YIQAKJDgc+1QONtR6ZCRQ2A2ggw
HAGFBHlouBm0EQjjqegGvrzDvgaYI3T6sjGIpP+raH1vv4sV04oVr+hL9t4D6r9j
injVtZoS6dT2BstB7aaTNusBA3FBQv972x7r89bIxLN3tZluZYIYH8BSUA7LN4om
7w69gFkuPArOC4dT4iSTmKKOBpLBOrgQNdxk3vPGYQ0GSmpPuGLD/kdBu8+y4zJZ
KadGePTQcnk7zk4oXLyAfHSxAhKKAMQzpqdxbqxGTWYGl0q42t/iRwwdC5KJ9zaH
3ZuYz7eRRJSa/VXZ44oE69HxnXvnvgEcN+z+AaR+pZHQKI5keXNEG/gL1+WfVlCO
RgOMU/Fee8ZNaLcuFJzJPLGwASN4IVr0aJ9d0E9KxkO0OwfQf/XBsj8I3h0M9ByL
8zRIf5JR48pOC2v2Ucw9gt8jLG1hPkU1NxRorMsHI0HiaDHMwoZ3Jt7XaQ4NdPob
BJA3KQgGmn+AL2xGNKwY+F5lyKgT63KtF0nBnlk1qellOz7KmGnfO7ZzZ3cNPpl8
YIUfUE2cT259ZiPeciPmmrHdGmmgUKisnBPSDH/0g0KP3m6TQaQDjY+aTMDsasDo
ZGvyxOkwBMd4eio03DILBFc6Wfazh4fH2vRofAO55TTWxWErA6vMuLOCF2PXfKer
YXFt+CdXo1f72pKmM54K
=BHmq
-----END PGP SIGNATURE-----
