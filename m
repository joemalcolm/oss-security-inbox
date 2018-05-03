X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3253" "Thursday" "3" "May" "2018" "21:03:48" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20180503180348.GA3185@gremlin.ru>" "81" "Re: [oss-security] Singularity's Linux kernel vulnerability claim" nil nil nil "5" "2018050318:03:48" "[oss-security] Singularity's Linux kernel vulnerability claim" (number mark "U       gremlin@grem May  3   81/3253  " thread-indent "\"Re: [oss-security] Singularity's Linux kernel vulnerability claim\"\n") "<3BED38C7-C42A-41C1-B397-E43DCB7D8079@lanl.gov>" ("<3BED38C7-C42A-41C1-B397-E43DCB7D8079@lanl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18255 invoked by uid 550); 3 May 2018 18:10:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7542 invoked from network); 3 May 2018 18:04:09 -0000
Date: Thu, 3 May 2018 21:03:48 +0300
From: gremlin@gremlin.ru
To: oss-security@lists.openwall.com
Message-ID: <20180503180348.GA3185@gremlin.ru>
References: <3BED38C7-C42A-41C1-B397-E43DCB7D8079@lanl.gov>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <3BED38C7-C42A-41C1-B397-E43DCB7D8079@lanl.gov>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Subject: Re: [oss-security] Singularity's Linux kernel vulnerability claim

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2018-05-03 17:12:06 +0000, Priedhorsky, Reid wrote:

 > Singularity is a container runtime targeting the high-performance
 > computing market. It appears to be the sole product of Sylabs,
 > Inc. [1] and has both 'community' (open source) and
 > 'pro' (closed source) versions.
 > Recently, the Singularity team announced on their blog [2],
 > following up an earlier mailing list post [3], that they've
 > found:
 >> an exploit vector to all container runtimes, that allows a
 >> malicious user to gain additional privileges within a container on
 >> hosts running kernels that do not support the PR_SET_NO_NEW_PRIVS
 >> feature

That's normal: the container runtimes (except OpenVZ VPSes) are
designed to be just a resource-limiting solution. Even the (quite
trivial) "undock" exploit (developed for Docker, works everywhere
except OpenVZ) allows escaping the container and getting into the
host system once you have got root access inside of the container.

 > No technical details are publically available:
 >> Sylabs has not provided details about this exploit because there
 >> is no workaround short of upgrading the kernel or uninstalling
 >> Singularity. So giving more information will only help malicious
 >> parties.
 > We understand that details have been offered by Sylabs to at
 > least one third party under NDA. This third party declined,
 > but others may have accepted.

That's their right. However, publishing the zero-day exploit could
be much more funny...

 > Sylabs does not plan to request a CVE (link in original):
 >> As of now, Sylabs will not request a CVE for this issue
 >> because it only affects old kernels and CVE's associated with
 >> PR_SET_NO_NEW_PRIVS have already been provided and resolved [4].
 > My questions:
 > 1. Does anyone know what is going on with this alleged
 > vulnerability?

That's not actually a vulnerability, but just a misuse of kernel
containerization features. Or would you put an elephant in a car
instead of getting a truck?

 > 2. Has anything been independently corroborated?
 > 3. Would a CVE request be appropriate?

My guess: unlikely.


--=20
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJa608EAAoJEJCdrEXvOx+ovN8P/2JySFL8ZjwjA+7jTO164G4K
h79aTOdEG80kRtaZSw9+r+f9qA8op0vZ6ypA6Hu8B5Fj+Is5oFOxorzJ/7dxo5RV
ZIGs2dEW+iS5mqvZBpb1Evm0aBcwzHZ6DVllvIsrSFqMGV9NLv33WBgdUHoNg/E0
TaxryEUEHmPWixi7PtF2aqEa08nIHyUAYVDbgEOyxJrTfWf9cGiEEiXx6+YySb20
D2rx5GulFUNvrWAjbvMcoAye3ilM8QH8jb/H5r3Iu5jBvDlkxe3FvE/lNCr3xfmC
ZvvAYswr3B7J0knMvcyBgLN/ZGMKhuGYZVG8ubj530lyTC25qD6DD9n3vryNqnRI
RyuYjHpwtA2UlaShw0fBDRv46CRdLhHn91Sw43di6058y/dsSJJOnCLUi72WdQ9n
Er1iEzwhW+ZxvkgpE5iIENN3YanzUNWJPYu+x9/9yTDXiwdtXlr5I8KyTavxm55w
FXdc5x63tqvRf091lyER2Np208PSSS2/YJFWMUz3Gxnaz8P1WJ3Nqlfb6NMYE6Fd
HC42T+sQLU7rIBk8zJFRTw3LyiZPQ6NmvE+nEUg7h4t7UyA77DLs+l7p8neOtOmo
nSnPYGbbw/AGV8pMnx6HYbNLtfPb13529+F5n5k+OYm8DeY7yuxclDsOkY/uApSN
sUzZK7vYbBUVzUQsHLND
=5EVx
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
