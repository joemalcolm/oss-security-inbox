X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2538" "Tuesday" "24" "March" "2015" "00:41:30" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5511071A.4010105@redhat.com>" "73" "Re: [oss-security] CVE request: Two vulnerabilities in Tor" nil nil nil "3" "2015032406:41:30" "[oss-security] CVE request: Two vulnerabilities in Tor" (number mark "        kseifried@re Mar 24   73/2538  " thread-indent "\"Re: [oss-security] CVE request: Two vulnerabilities in Tor\"\n") "<20150324061559.GB16333@lorien.valinor.li>" ("<20150323181327.GA3943@pisco.westfalen.local>" "<20150324061559.GB16333@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5128 invoked by uid 550); 24 Mar 2015 06:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4076 invoked from network); 24 Mar 2015 06:41:54 -0000
Message-ID: <5511071A.4010105@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150323181327.GA3943@pisco.westfalen.local> <20150324061559.GB16333@lorien.valinor.li>
In-Reply-To: <20150324061559.GB16333@lorien.valinor.li>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="GkCARG40jDhUEacjKa2p4jUqD5J2brJ64"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
CC: cve-assign@mitre.org, weasel@debian.org
Date: Tue, 24 Mar 2015 00:41:30 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Two vulnerabilities in Tor
To: oss-security@lists.openwall.com

--GkCARG40jDhUEacjKa2p4jUqD5J2brJ64
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

With apologies, I thought they had been unlocked in BZ, did so now (they
are public now).

On 03/24/2015 12:15 AM, Salvatore Bonaccorso wrote:
> Hi all,
>=20
> On Mon, Mar 23, 2015 at 07:13:27PM +0100, Moritz Muehlenhoff wrote:
>> Hi,
>> please assign two CVE IDs for tor:
>>
>> The upstream announcement is here:
>> https://lists.torproject.org/pipermail/tor-talk/2015-March/037281.html
>>
>> 1.
>> | Fix a remote denial-of-service opportunity caused by a bug in
>> | OSX's _strlcat_chk() function. Fixes bug 15205; bug first
>> | appeared in OSX 10.9.
>>
>> https://trac.torproject.org/projects/tor/ticket/15205
>>
>> 2.
>> | A relay could crash with an assertion error if a buffer of
>> | exactly the wrong layout was passed to buf_pullup() at exactly the
>> | wrong  time.
>>
>> https://trac.torproject.org/projects/tor/ticket/15083
>>
>> The second issue has been addressed in DSA 3203:
>> https://lists.debian.org/debian-security-announce/2015/msg00088.html
>> (the first obviously not, since it's MacOS-specific)
>=20
> There is anothr one which was fixed in the same versions, and could
> potentially get a CVE:
>=20
> https://trac.torproject.org/projects/tor/ticket/14129
>=20
> Regards,
> Salvatore
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--GkCARG40jDhUEacjKa2p4jUqD5J2brJ64
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVEQcaAAoJEBYNRVNeJnmTweAQAILm9fAIMrK6jwAHK3gTXInk
ITC1X71Bhpa2K+wk1PPEzndPFdAhrw9O9tO/tdht7Kw1MzAyrz7FZbIwmdmKHooc
XpOHnY15rGmjfiqlIP0DcFuSEJv8oj99SCwz4NYmgUw6O8X28jcNJoH4NMebbioo
OOu+J1cUvy28omyS9TT3fJBJvHH3zXKMnu9fIsZk16kzksjxRQeKz76TJ0Vj42Mh
d2+dhHWy3K9x+/CBO+XXap6EdwVoCfH5rynv4gpuIYIiZpHQdQQlb1ySBqW7iHKs
JaDpvO7MeN9vM1r9IOay25sQVTncqQ2g5XX+zXeIUIBoQvs9cMHLblXVU2KPU0/9
ESPdWOOeR80jiWtWn3ZqSp9HfJnF/y7V58tmQuH5igTQ0gHXB8zY86aw+2PKziEh
eZOQvw1RdTqX4aWWRZyvzoOVj5mO07Fl38+cN1x0BBmvl5sDm0iTBXPGyGMfh3oI
ubtlXkQxAy2Irhsl+8JbQ47pVdxcFuPMmuHAkcqBEmsvayMjM6bN2rw3Mr9tIzdx
KFpcLSU8bPv8FQbwaA8fkMTVLuQjnhESbkHoLid/TZdeokoJFkFqWg8+dCWZECHL
RdTJISgatjL0HjUVByLnCg0Yp9v+noieoUqY64QUI+lDlJuNZGiXBaCDChEnKody
vbXa0Tor2yX9hNlahF5y
=L56a
-----END PGP SIGNATURE-----

--GkCARG40jDhUEacjKa2p4jUqD5J2brJ64--
