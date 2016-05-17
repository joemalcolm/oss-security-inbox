X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Tuesday" "17" "May" "2016" "15:48:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160517194818.E7D25B2E00E@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request for vulnerability in OpenStack Keystone" nil nil nil "5" "2016051719:48:18" "[oss-security] Re: CVE request for vulnerability in OpenStack Keystone" (number mark "U       cve-assign@m May 17   42/1642  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Keystone\"\n") "<573B6E50.1010806@gmail.com>" ("<573B6E50.1010806@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15595 invoked by uid 550); 17 May 2016 19:48:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15574 invoked from network); 17 May 2016 19:48:30 -0000
From: cve-assign@mitre.org
To: morgan.fainberg@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <573B6E50.1010806@gmail.com>
Message-Id: <20160517194818.E7D25B2E00E@smtpvbsrv1.mitre.org>
Date: Tue, 17 May 2016 15:48:18 -0400 (EDT)
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Keystone

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Incorrect Audit IDs in Keystone Fernet Tokens can result in
> revocation bypass
> 
> By rescoping a token a user will receive a new
> token without correct audit_ids, these incorrect audit_ids will prevent
> the entire chain of tokens from being revoked properly. This
> vulnerability does not impact revoking a token by its individual
> audit_id. Only deployments with Keystone configured to use Fernet tokens
> are impacted.
> 
> https://launchpad.net/bugs/1577558

>> caused token rescoping to not work because audit ids were never pulled
>> from the original token.

Use CVE-2016-4911.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXO3T9AAoJEHb/MwWLVhi2vmEP/iC2MvbKll1QM0MxSqXkfJTz
lr771a5N2oPmfxz35nTu38BjcTXVMp0e0VO/9ZmqD0eoXaG6p8K64IcDP/tJkL1f
kIyf8EQEj0g0T8RkcV1J/cGkzd5sRT3EvxH6BJe7UPnW2NXcqO6j+LRY7R5ZFb2y
0iRRQx9HgqijRA8J+WN1tgaRDKeC5zv84rrNi/h0u7669Ps4tAJuaEvRNCMbRahI
MHXTvreTs6UMr8iqL8K1wFfNSVaBoS9ep3t31dr/ZLH0piAxHVzINSNyiqAUbGps
L2mkxY9XoI7AcgZh3C2iw5VD1A86BGEv3vuuSNK8/VOSPoovNaTtcErV25ria6cd
qtH6HQH1S4ibMLI7PDYXf09DwOa6Kbc1IyEKus4S8XSXbUutV9j3l1UaH+3psQcO
jLH2dD2pvVHznFaIrryz0jl/oKb/mPOcgQAFYelOSpwBle3GQdrqO9oBMIji8LIg
B+rLWs5RbeUPYyucXkRrQTU3pn3e0Rt+zxZ8Wpd/P2Yjkp+wNtcacscgqVdk/Njn
e/NaGYYRq/ReD9ES7xkYXkElMP8EO4RDZJhgcvtNODIQYvhPAU1gk06riE5QWk3Y
tZI6Sseir0KpqH3VjAHdAx/nBoAQJh7JdCYv+Xp0ffAPOEWAixfjXsF0emkJvSzg
CMj8C4b8j1qylWAbaTQz
=9W3o
-----END PGP SIGNATURE-----
