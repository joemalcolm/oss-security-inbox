X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4707" "Sunday" "22" "March" "2015" "11:55:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<550F01FF.1010208@redhat.com>" "100" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032217:55:11" "[oss-security] CVE for Kali Linux" (number mark "        kseifried@re Mar 22  100/4707  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322172300.GA21110@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6133 invoked by uid 550); 22 Mar 2015 17:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6112 invoked from network); 22 Mar 2015 17:55:24 -0000
Message-ID: <550F01FF.1010208@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com>
In-Reply-To: <20150322172300.GA21110@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="G1aE7TVhqoaFg6v4txmeEPi4NRqItkGuf"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Sun, 22 Mar 2015 11:55:11 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--G1aE7TVhqoaFg6v4txmeEPi4NRqItkGuf
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 03/22/2015 11:23 AM, Solar Designer wrote:
> On Sun, Mar 22, 2015 at 12:54:57PM -0400, David A. Wheeler wrote:
>> On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-mi=
ddle issue.
>> The Cygwin package manager (which downloaded all other packages) was unp=
rotected
>> and downloaded using http (as http://cygwin.com/setup-x86.exe or http://=
cygwin.com/setup-x86_64.exe).
>> They changed it to load with HTTPS, and later added HTTP Strict Transpor=
t Security (HSTS).
>=20
> IMO, http vs. https is a red herring.  We shouldn't be focusing on
> security of software downloads, but rather on authenticity of the
> software.  If the distribution web server gets compromised, https
> doesn't help.  Thus, GPG signatures and the like.

The problem is to do this you need some key/shared secret/verifiable
secret, e.g. a GPG key. How do I get the GPG key securely?

In reality most system, for better or worse, ship with a set of
certificate roots that can be used (in theory) to prove the validity of
a web site. Hence the HTTP vs HTTPS debate. Sadly, HTTPS is the best we
have for that initial bootstrap often.

My personal thought on this is the same reason I sign all my email. I
don't sign my email for security reasons, so much as to prove the
validity of the key, e.g. at this point either I truly am
keifried@redhat.com or someone has been impersonating me for so long and
getting away with it, they might as well be me.

So in the case of an ISO download that is GPG signed how do I verify the
key is correct? If this is all done over HTTP it is pretty trivial for
an attacker to run a Man in the Middle proxy that string replaces they
key/signature as needed. HTTPS significantly raises this bar, it goes
from "run off the shelf Squid/etc" to "convince a CA to give you a wonky
certificate".

> I don't care about CVEs much, but if CVEs start being assigned to
> anything like this, they should be for lack of signatures or lack of
> signature verification in the vendor's recommended software installation
> or update mechanism or lack of a way to verify the signing key or lack
> of key verification in the vendor's recommended procedures (where
> applicable).  (With key verification, it gets tricky.  So probably those
> issues are not CVE-worthy yet, except in extreme cases where e.g. new
> signing keys would be downloaded automatically with no verification.)

That is what we have done in past, however in this case my question is
still "if a vendor provides a download securely, but then advises people
to do something really insecure, does that win a CVE".

> They should not be for use of http, nor for https vulnerabilities.
>=20
> https does offer a security aspect that signatures don't: it hides from
> some observers which exact software is being downloaded (and maybe that
> it's a software download at all).  It doesn't do that perfectly because
> the target address and transfer timings and sizes may be revealing, but
> I do acknowledge there's some subtle improvement over http here.  I just
> think this is far less important than ensuring authenticity of the
> software.  So let's demand signatures and signature verification first,
> and let's not be distracted by http vs. https.

How do you propose we bootstrap secure key distribution and verification
then? This is a real world problem with no easy solution.

> Alexander
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--G1aE7TVhqoaFg6v4txmeEPi4NRqItkGuf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVDwH/AAoJEBYNRVNeJnmT3PwQAId4FGgCluSMHj7bR3D62cKF
HZwYWDEHfx5/1UVNTiCE3nC5uyu0lsbp505IYXwGVEpgjSeNfyDAwoe5wOFrqHku
e1Vu4whGaqMdOPnUNuQV0mVjyFDUCgS/QblpJmPlQSMkO3UbB7JmVq076nol+W66
QsbAtoQYAz33I0D426IjvkaEDIMT5N8jxe0d1Mk2SIWV1HPX/qBA8NE/o0q8eVTL
9E4AF6/ggc1F438XHG3am/GnDGFkzQzThKHlFGgvVm7K25Bpol2DaUhSrhn4/Ikx
HhoLfwB5wYG90uJQMVOMOR3U1mr/4WkW0KmCft2iP7CPxYpyPbIDbg9gIs/zEEc6
24wd1zbTW3yfTvRhHk2lN3bpxZufKAjR2B3cCys7yeedIH7OBG59g1ZdEFNUdjJw
/W01ZngeY7Eorh4jSos36vyiGC8Wvik2vyG6k5P3CI+sy3RXwSIwBPcwEqUlfIDO
0MRpH2eKmpBZnnGV17sjYtBzWzkkVHPKNpIYUydp2oanihW3vkFLcFK/fCvluzn5
7FmJHZCSH+fkmphs3LfekU/yI+roFgtsP6T7nj/cihhXtUykWNACUvuPxVLlWM9v
ywpid5bVZmDFWJ3lh5697OkqsmsaMogcIFpoe6EEtnFPaPvM42siuSqTTQ0FaHk8
x1/+8ruGtdMvlCsmXYyc
=8qdc
-----END PGP SIGNATURE-----

--G1aE7TVhqoaFg6v4txmeEPi4NRqItkGuf--
