X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2679" "Thursday" "19" "March" "2015" "14:01:04" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<550B2B00.6020302@redhat.com>" "64" "Re: [oss-security] cve-assign delays" nil nil nil "3" "2015031920:01:04" "[oss-security] cve-assign delays" (number mark "        kseifried@re Mar 19   64/2679  " thread-indent "\"Re: [oss-security] cve-assign delays\"\n") "<Pine.LNX.4.64.1503191517340.4141@beijing.mitre.org>" ("<Pine.LNX.4.64.1503191517340.4141@beijing.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7816 invoked by uid 550); 19 Mar 2015 20:01:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7795 invoked from network); 19 Mar 2015 20:01:19 -0000
Message-ID: <550B2B00.6020302@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <Pine.LNX.4.64.1503191517340.4141@beijing.mitre.org>
In-Reply-To: <Pine.LNX.4.64.1503191517340.4141@beijing.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="tcuxs1pxJl6B52ORp7uvp4PRim0S5oAhO"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
CC: cve-assign@mitre.org
Date: Thu, 19 Mar 2015 14:01:04 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve-assign delays
To: oss-security@lists.openwall.com

--tcuxs1pxJl6B52ORp7uvp4PRim0S5oAhO
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 03/19/2015 01:18 PM, Steven M. Christey wrote:
>=20
> We recognize that some requesters have experienced delays, and
> sometimes lengthy delays, in getting CVE IDs assigned. We apologize
> for those delays.
>=20
> The number of cve-assign requests has been growing dramatically, as
> has the number of unique and new requesters. Our goal is always to
> provide reasonable response times, and we were caught by the spike in
> requests.

Volume is definitely a problem, and only going to get worse.

> We are working to improve our responsiveness through a combination of
> process changes, improved communications, and staffing shifts.
>=20
> We appreciate your understanding and expect that you will see positive
> changes in the cve-assign response times over the coming weeks.
>=20
> Best regards,
> Steve Christey Coley

Has any consideration been given to maybe going with "Second class"
CVEs? For example in a case where a security issue is obvious (a PHP app
with XSS due to missing htmlspecialchars for example) and well
documented (link to a github commit or similar) could Mitre just assigns
the CVE, link it to the gihub commit or whatever the original source is
and it never give it a "real" description? Most of these types of issues
just need CVEs and an entry in the database with the source, I don't
think anyone cares much beyond that.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--tcuxs1pxJl6B52ORp7uvp4PRim0S5oAhO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVCysAAAoJEBYNRVNeJnmTOVsQAMEcdPisODb1BLcUugRjgwnL
3uiVVcVqw+yA5P3DjGZLSrokba75+3gnP48vS9CSx0zm7KdCK8B3BkkbMQ82IgG9
7esKa0Da9JWddrNS+KIKP9Fl9UIV5TGyA38w0snYzGZ8uiAfyvFhGGOUpdhb/XXh
QUTOh4FLPdeROmLkWOL0ckYHNvhANUH3dj/+Yz9TRTUbuU3i1CjhpB8w3Og/CjBu
hxuNHLl+zUeRKTe7oea0vcP5VNdPigCYNddLcGYNCgcruoDfyyp32XCad734AJYB
o8qehhhD3YjxVI82GnXMXN0sdDaIjFXnFOf2QU09SjVyC3yXeAZLuGsMx3uT4dUy
bEeFQDCY8RXM1PLye42pw1wmBz5CdyJ4u3358R9FjtK+slZxCvlxRMQqfPtuRkv0
c3FJWVKLGr0lEcintbiwvaSxKwJfe87UGBDkBCYhOt8BYQEtrPOhPU8OoPfFMyu9
u2eDg6M0RjXDsYmgMm9769BAFeOfPrtGKmMYE2u6mV13EY07hnoNq9ontSy5ph7P
35mCvYA9uUldPlP8t0X72tHLbIPGmO8loAOH4HQ4NmvZGvQ2iumAX/Eq/XAyK3Bj
kaQ0F8SCbhnND2xj9rW0ZD2wfq9rBbmL3m7MJSOyjhaYKYKTr+kRb1eRHhboJRF2
74fwuOIOcAxncx8R2NZu
=xcTa
-----END PGP SIGNATURE-----

--tcuxs1pxJl6B52ORp7uvp4PRim0S5oAhO--
