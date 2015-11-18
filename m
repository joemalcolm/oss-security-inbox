X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2599" "Wednesday" "18" "November" "2015" "20:54:45" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<564CE595.70209@redhat.com>" "64" "Re: [oss-security] Re: CVE request for vulnerability in OpenStack Glance" "^Cc:" nil nil "11" "2015111820:54:45" "[oss-security] Re: CVE request for vulnerability in OpenStack Glance" (number mark "        tdecacqu@red Nov 18   64/2599  " thread-indent "\"Re: [oss-security] Re: CVE request for vulnerability in OpenStack Glance\"\n") "<20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>" ("<20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29802 invoked by uid 550); 18 Nov 2015 20:54:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29784 invoked from network); 18 Nov 2015 20:54:26 -0000
References: <20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <564CE595.70209@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118141120.ABCDC6C09AF@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="jTVSp2WGWbIUl30e4WWApUQgfM0L5VlM5"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: cve-assign@mitre.org
Date: Wed, 18 Nov 2015 20:54:45 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for vulnerability in OpenStack
 Glance
To: oss-security@lists.openwall.com

--jTVSp2WGWbIUl30e4WWApUQgfM0L5VlM5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 11/18/2015 02:11 PM, cve-assign@mitre.org wrote:
>> Glance computes cryptographic signature using MD5 hash of the
>> image. By crafting a malicious image that produces a MD5 collision, a
>> Glance backend operator may subvert the signature verification process,
>> resulting in a corrupted image.
>=20
>> https://launchpad.net/bugs/1516031
>=20
> Use CVE-2015-8234.
>=20
Thank you.

> We're willing to let the OpenStack VMT have CVEs for mostly arbitrary
> types of issues that they want OpenStack customers to treat as
> vulnerabilities.
> http://specs.openstack.org/openstack/glance-specs/specs/liberty/image-sig=
ning-and-verification-support.html
> possibly suggests that the behavior represents an intended
> intermediate step of feature development: "An alternative to using the
> existing MD5 hash algorithm is to create a separate configurable hash
> for use with verifying/creating the signature. However, creating a
> separate hash negatively affects the performance, without providing
> much benefit. Note that since there are preferable hash algorithms to
> MD5 that are more secure, a separate change is being proposed to allow
> for the configuring of this hash algorithm. This will not be included
> as a part of this change, in the interest of having a straightforward
> initial implementation." If so, then we think vendors typically
> wouldn't want CVEs in these types of situations, unless the
> intermediate step actually made something worse than before the
> feature development started.
>=20
This is indeed a corner case, though since glance 11.0.0 is shipping a
broken image verification procedure, it seemed appropriate to assign
this bug a CVE number.

Regards,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--jTVSp2WGWbIUl30e4WWApUQgfM0L5VlM5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWTOWcAAoJECK5oFySXMXY6AEH/AyxnJj/xcMwz/PGG5BYrDFU
TKyfZv20W9DhJfmI/1GPqXmaJg9XwQZfswJslkDPPg9Fcg5jMD+re0iVEpH8//nd
J23nC/0A2FqNWn3JymE3I0Q7hhAAyNFe2yZpV4LMV9CjVBaH2FvyITqtBVhDiTuj
rN+avOEcxyez+wC7ttZblsxqXWzq4VNNAtXxGL3LJfcA8uq7PW0x9nZIeSmpep1z
xPugrpl9llVCKX7Dt3IipqIz6KTeE0X037+WMbqbfSi8aipG8hU5Mc4k0LmhvfKx
FAB9sQje0v8CFX4TcjEYRYWlyBMupHEtpaMckbOefBzpZl6JxZJmKHfhPa25Eos=
=Z1xD
-----END PGP SIGNATURE-----

--jTVSp2WGWbIUl30e4WWApUQgfM0L5VlM5--
