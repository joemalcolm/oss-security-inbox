X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2692" "Tuesday" "24" "March" "2015" "07:40:14" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5511693E.4070608@redhat.com>" "77" "Re: [oss-security] CVE request: Two vulnerabilities in Tor" nil nil nil "3" "2015032413:40:14" "[oss-security] CVE request: Two vulnerabilities in Tor" (number mark "        kseifried@re Mar 24   77/2692  " thread-indent "\"Re: [oss-security] CVE request: Two vulnerabilities in Tor\"\n") "<5511071A.4010105@redhat.com>" ("<20150323181327.GA3943@pisco.westfalen.local>" "<20150324061559.GB16333@lorien.valinor.li>" "<5511071A.4010105@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24546 invoked by uid 550); 24 Mar 2015 13:40:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24516 invoked from network); 24 Mar 2015 13:40:28 -0000
Message-ID: <5511693E.4070608@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150323181327.GA3943@pisco.westfalen.local> <20150324061559.GB16333@lorien.valinor.li> <5511071A.4010105@redhat.com>
In-Reply-To: <5511071A.4010105@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="rtPD9usgSF7DuqwWTFmHfS5uFqRlxWEQv"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Tue, 24 Mar 2015 07:40:14 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Two vulnerabilities in Tor
To: oss-security@lists.openwall.com

--rtPD9usgSF7DuqwWTFmHfS5uFqRlxWEQv
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sorry replied to the wrong email, was very late and wanted to go to bed.

On 03/24/2015 12:41 AM, Kurt Seifried wrote:
> With apologies, I thought they had been unlocked in BZ, did so now (they
> are public now).
>=20
> On 03/24/2015 12:15 AM, Salvatore Bonaccorso wrote:
>> Hi all,
>>
>> On Mon, Mar 23, 2015 at 07:13:27PM +0100, Moritz Muehlenhoff wrote:
>>> Hi,
>>> please assign two CVE IDs for tor:
>>>
>>> The upstream announcement is here:
>>> https://lists.torproject.org/pipermail/tor-talk/2015-March/037281.html
>>>
>>> 1.
>>> | Fix a remote denial-of-service opportunity caused by a bug in
>>> | OSX's _strlcat_chk() function. Fixes bug 15205; bug first
>>> | appeared in OSX 10.9.
>>>
>>> https://trac.torproject.org/projects/tor/ticket/15205
>>>
>>> 2.
>>> | A relay could crash with an assertion error if a buffer of
>>> | exactly the wrong layout was passed to buf_pullup() at exactly the
>>> | wrong  time.
>>>
>>> https://trac.torproject.org/projects/tor/ticket/15083
>>>
>>> The second issue has been addressed in DSA 3203:
>>> https://lists.debian.org/debian-security-announce/2015/msg00088.html
>>> (the first obviously not, since it's MacOS-specific)
>>
>> There is anothr one which was fixed in the same versions, and could
>> potentially get a CVE:
>>
>> https://trac.torproject.org/projects/tor/ticket/14129
>>
>> Regards,
>> Salvatore
>>
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--rtPD9usgSF7DuqwWTFmHfS5uFqRlxWEQv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVEWk+AAoJEBYNRVNeJnmTYCUP/jZ3hMJW+h0DpWgQOQqYfsvI
NzWX0Sx7aSWz0JvciCFT08jgi2Gybe/9BL/X5EdM0sABdaEXVeEW4NuIO6yZMebs
xGqnqu0fD+4fQHI7yxewx1/2b1EJ/Dk8dwR8v9/nhcLa31ht+kK+wBNAvvP4Wqdq
LGOVAG5GNWyG/+WF1a7Sr0qSdslqZet10VHlI5mBg2o2x43Am7njS/tcZdHFtIJb
KQsd54q0hxwJXrF9cGaYbUBdu8NWP2Ug3LeoxBc6eHPj5efA47y8N+32U91gO8WU
oDz+4Ucc4qm+hsB0FMeK+vBfLF07A9y40uN0VI73d3cXVTmIbRKDr0FrJJVY7shO
Md5EsGomhBvah4JNr6ks6H8lNh6MoZbhRWArhSxmdCxV3njhmoQm4Kasfy6Oqn9Y
sWGlupD3Kg0TJuEF255CPR9vkojd6YHn2JzA5lJk8zyK4SDW7Wiio3tgYDeWZZWQ
ctrlGmt3K2+A7KiwAe8E2ZjzSnz5+tOBDFtWtS3VNKA6m58ojI4etNIQpz/PudB7
CPATa1ljEdxCq97t0S1Q6L8ctij6wbzHPkoVP/uddnX1YyR2+MKpleeGJ7036Jmv
BXVn8UVPjAvPTtUySvGOwqaFqnujWXqiJucmRHVKFoQoxPoK75VXAB+iXJQXdMXW
ozK2EbiWlBi8Nkeg5s+I
=cSBB
-----END PGP SIGNATURE-----

--rtPD9usgSF7DuqwWTFmHfS5uFqRlxWEQv--
