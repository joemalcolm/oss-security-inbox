X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Wednesday" "23" "December" "2020" "17:58:28" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20201223175828.48163487@fabiankeil.de>" "49" "[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil "12" "2020122316:58:28" "[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" (number mark "U       freebsd-list Dec 23   49/1647  " thread-indent "\"[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)\"\n") "<20201129165312.64bd840f@fabiankeil.de>" ("<20201129165312.64bd840f@fabiankeil.de>") nil nil nil nil nil nil nil "[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3880 invoked by uid 550); 23 Dec 2020 17:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24036 invoked from network); 23 Dec 2020 17:04:20 -0000
Date: Wed, 23 Dec 2020 17:58:28 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20201223175828.48163487@fabiankeil.de>
In-Reply-To: <20201129165312.64bd840f@fabiankeil.de>
References: <20201129165312.64bd840f@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/SzzaBtEwoNc3gG.Uk.+Nr+j";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy
 3.0.29 stable)

--Sig_/SzzaBtEwoNc3gG.Uk.+Nr+j
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2020-11-29:

>                Announcing Privoxy 3.0.29 stable
[...]
> - Security/Reliability:
>   - Fixed memory leaks when a response is buffered and the buffer
>     limit is reached or Privoxy is running out of memory.
>     Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.

I tried to get a CVE for OVE-20201118-0001 by using the
"new" form at https://cveform.mitre.org/ on 2020-11-18 but
was told by MITRE that "the reported vulnerabilities would
fall in the scope of Red Hat for assignment" and that their
mail should be forwarded to secalert@redhat.com.

I did that on 2020-11-18 using the OpenPGP key recommended at:
https://access.redhat.com/security/team/contact

On 2020-11-23 I received a response from Red Hat claiming
that my e-mail had "no body".

The same day I replied with an unencrypted mail explaining
that the previous mail was OpenPGP-encrypted and asked whether
that was still supported.

As a result I was informed that "INC1525130" "has been resolved".

As of today I still haven't received a CVE and thus did
not bother to request CVEs for the other issues fixed in
Privoxy 3.0.29 ...

Fabian

--Sig_/SzzaBtEwoNc3gG.Uk.+Nr+j
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCX+N3NAAKCRAFiohV/3dU
nW7VAKC38IgfhuWVeuE5t7MtbXB/PRWz3wCgr/9D4PpZpsUotX9Dq1OydePCyAw=
=0rh5
-----END PGP SIGNATURE-----

--Sig_/SzzaBtEwoNc3gG.Uk.+Nr+j--
