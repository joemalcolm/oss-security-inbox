X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2456" "Thursday" "28" "September" "2017" "17:37:21" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170928213721.GA5119@grsecurity.net>" "57" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092821:37:21" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        spender@grse Sep 28   57/2456  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20170928143420.GB6123@kroah.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170928073533.mlntvkfnzl6sann7@eldamar.local>" "<20170928143420.GB6123@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7283 invoked by uid 550); 28 Sep 2017 21:43:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1385 invoked from network); 28 Sep 2017 21:37:34 -0000
Message-ID: <20170928213721.GA5119@grsecurity.net>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
 <20170927130424.GA19695@kroah.com>
 <20170928073533.mlntvkfnzl6sann7@eldamar.local>
 <20170928143420.GB6123@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
In-Reply-To: <20170928143420.GB6123@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 28 Sep 2017 17:37:21 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > CVE-2017-0605:
> > --------------
> > https://security-tracker.debian.org/tracker/CVE-2017-0605
> > upstream: (4.12-rc1) [e09e28671cda63e6308b31798b997639120e2a21]
> >=20
> > is e.g. includedin 3.16.44 (a1141b19b23a0605d46f3fab63fd2d76207096c4),
> > 3.2.89 (e39e64193a8a611d11d4c62579a7246c1af70d1c) but not in 4.9.
> >=20
> > (afaics not Cc'ed to stable).
>=20
> Ouch, thanks for letting me know, that's not good, we don't want to get
> the trees out of sync for obvious reasons.

The above CVE shouldn't exist; the patch doesn't fix any vulnerability
as the upstream commit message itself notes, and didn't need to be
backported to any of the kernels it was backported to.  Not only that, the
above advisory marked it as a remote vulnerability with critical severity.
It looks like Debian and Ubuntu released updated kernels, while Red Hat and
SuSE marked it as WONTFIX and unaffected, respectively.  I am not sure why
neither simply rejected the CVE.

The MSM fix not only is wrong (truncates too early) but seemed to involve a
naive strcpy -> strlcpy conversion and assumed it was somehow fixing some
exploitable vulnerability (perhaps the cause of the CVE).  All methods of
setting task->comm ensure nul termination since forever.  If nul termination
wasn't guaranteed, there would be much bigger problems all over the tree.

-Brad

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZzWuKAAoJEETRwPglJf5J/KIP/RosYPVl/qJG9Kc8wYb0/kv+
+/NrsyasoUDYtnMh2G0CeS5SRImRaEYcDD/b6Ab5wY5/ZUuYRIeLHeD7pAMrnhAF
fK6TGcS3fqeWVhfqAWy8D5oCe62r2gYzmll6ghPEJO54P04p8eD5ZYpfdyKmaB0l
gB/PrV3WopoqXoLqTNWC21C0C6AS8FifZtkpTWOdxo+xNKMpi0+WTiuApcheG13N
VD2Ajk9apx9x6qkEIhJ6rMFAvMVzgMpGYGHbfEv2OSc0AVuRJnvZ6ol/Z8bXp1BO
cIrqdsxvfcZKT9Cmdce7nupDa18i7IHmKOFOdAI/WTHfEGhUH3es/Zb+EcpIsOKx
FA/bmVjBqk5QTq+0RdBSHiZ9qyqDpUXnvbAb9eEbl4FLIQirEh/0vt6MOX4SFpgR
LvWBBFBLVD8Bjydsu4b4MrKmEgesJ74H41AVNG1GJh9fAZWECmlGWsPnZ7S0PxSb
c5DRhRkrr+F7dgrOs+5tlEqgXZ6bq8a+9g8nAj1jANaR2MP2ST8HW0c+sQkaf9N0
fmAJMWaev7WL+y1BwnmLjvtSqiq7p2vC/zPwpsHipR2FK7TEXbOK1UT+kIyF6mfj
9Xxif2/r2/dSB/dQwZ4hR7xe/a2XU1CX35t3nlna5va7FtHGEwJYCbjIY9d6V8SD
sKExWHpRg/T2L71kdjsa
=vvFV
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
