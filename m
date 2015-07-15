X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2297" "Tuesday" "14" "July" "2015" "18:13:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55A5A594.9040100@redhat.com>" "57" "Re: [oss-security] CVE Request: AWS s2n" nil nil nil "7" "2015071500:13:08" "[oss-security] CVE Request: AWS s2n" (number mark "        kseifried@re Jul 14   57/2297  " thread-indent "\"Re: [oss-security] CVE Request: AWS s2n\"\n") "<55A58720.6020105@lsexperts.de>" ("<55A525D8.5060303@lsexperts.de>" "<55A52F41.8070702@redhat.com>" "<55A58720.6020105@lsexperts.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13641 invoked by uid 550); 15 Jul 2015 00:13:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13623 invoked from network); 15 Jul 2015 00:13:21 -0000
Message-ID: <55A5A594.9040100@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <55A525D8.5060303@lsexperts.de> <55A52F41.8070702@redhat.com> <55A58720.6020105@lsexperts.de>
In-Reply-To: <55A58720.6020105@lsexperts.de>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="oxuuE05aKO1hTF2uBXQXFB7iaTfr0axXn"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 14 Jul 2015 18:13:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: AWS s2n
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

--oxuuE05aKO1hTF2uBXQXFB7iaTfr0axXn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/14/2015 04:03 PM, Markus Vervier wrote:
>=20
> On 14.07.2015 17:48, Kurt Seifried wrote:
>> Reminder: Client mode is disabled and won't be enabled until X509 valida=
tion is ready. But we
> can still make improvements and fixes in the meantime.
>> so I'm not sure this needs a CVE as the code is not yet enabled.
> Hi Kurt,
>=20
> that is a valid point from you and not for me to decide.
> Yet with default settings a binary is compiled (bin/s2nc) which will
> work in client mode when environment variable S2N_ENABLE_CLIENT_MODE=3D1
> is set (as documented). So it is possible several people were tempted to
> use s2n in client mode already as the client mode code is actually
> compiled into the lib and useable by default.
> I guess it depends on your definition of "enabled".
>=20
> Markus

Ah, I didn't know that, Mitre I'm leaving this one up to you (way to
much of a gray area for me to even poke with a stick).


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--oxuuE05aKO1hTF2uBXQXFB7iaTfr0axXn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVpaWUAAoJEBYNRVNeJnmTSxkP/jRW2S7/gC2S3ckCqu4fFj8H
HBLIi9OTALxdjxmdhT35Kf3ffyf4/w7ZtgmsXDjKLBesaE5atPT8iz/Uoi40KX38
pU1MIe3DZY49JlOAfQv8uTVh7BQSagptrrua21aIXZ8DJpLNuKeY+ZCWc2obuWXX
HGKuNS2FH+Og2fUxZicOpP8WzYsOSN4lyiNvVMcvc1Rd9HAPSKqFSeDjys354bQg
JB2XiFgd+mF/8noijlkj7oGsLe2M3xBEWL9Pn5MLs2Bm+W93LiJcY8/icBNX1lx7
cZeDjCQoPPLA0QbUwB6rCzXVYmYyGlrPyLN4tv51S+VDS/YVXQnca44/aQ6YhkCM
dHwzNLNcTySxkm1JqKW6DEFA6of457cssPQLMBCCcOkc2dGSd9iL/lMc7G7da0el
QjUPLD5uzUyzbXJ5DDvWGUuRnbs98yVoRb8wd6VU463rlpvZkhOaAPq1ReeX5ufP
m3fd7ZtDZFrn+iGoQkT/nNIVB5Zl1dF+OkBDBhB6gR4WnbNYds1RHERK6yft9X+d
M2hdtKOkht0891CdmyG9e9myLbwNwBbz9+Bsc5GH+k5kJyPjpkqwxiplxt5oEE9L
X8R12sWRq5iBids1gjmeeY94rcYcvvfRdBboiFd3YvCinOdFM/+cl4dg7ap0/y/u
pHZgQYePNN7EldbAUdjs
=LmoU
-----END PGP SIGNATURE-----

--oxuuE05aKO1hTF2uBXQXFB7iaTfr0axXn--
