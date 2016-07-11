X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Monday" "11" "July" "2016" "14:52:53" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<5783F915.1010104@canonical.com>" "72" "Re: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" nil nil nil "7" "2016071119:52:53" "[oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" (number mark "U       tyhicks@cano Jul 11   72/2445  " thread-indent "\"Re: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()\"\n") "<CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>" ("<57809C8C.6070902@canonical.com>" "<CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17757 invoked by uid 550); 11 Jul 2016 19:53:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17739 invoked from network); 11 Jul 2016 19:53:14 -0000
To: oss-security@lists.openwall.com
References: <57809C8C.6070902@canonical.com>
 <CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>
Cc: John Johansen <john.johansen@canonical.com>
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <5783F915.1010104@canonical.com>
Date: Mon, 11 Jul 2016 14:52:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SO8KWTpOvW1KpkwDxFdplwD5BURfQd43W"
Subject: Re: [oss-security] CVE request: apparmor: oops in
 apparmor_setprocattr()

--SO8KWTpOvW1KpkwDxFdplwD5BURfQd43W
Content-Type: multipart/mixed; boundary="1EFle27OMIHbBjpfo5O6C6ohd8KDxdVgu"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: John Johansen <john.johansen@canonical.com>
Message-ID: <5783F915.1010104@canonical.com>
Subject: Re: [oss-security] CVE request: apparmor: oops in
 apparmor_setprocattr()
References: <57809C8C.6070902@canonical.com>
 <CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>
In-Reply-To: <CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>

--1EFle27OMIHbBjpfo5O6C6ohd8KDxdVgu
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/11/2016 10:08 AM, Ben Laurie wrote:
> On 9 July 2016 at 07:41, John Johansen <john.johansen@canonical.com> wrot=
e:
>> There is a potential privilege escalation in apparmor's setprocattr() in=
terface.
>>
>> https://lkml.org/lkml/2016/7/7/906
>>
>> introduced by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca
>> fixed by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca
>=20
> I assume its not actually introduced and fix by the same commit. :-)

The correct hashes are:

introduced by: bb646cdb12e75d82258c2f2e7746d5952d3e321a
fixed by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca

Tyler

>=20
>>
>> Could you assign a CVE for this issue?
>>
>> thanks
>> John
>>



--1EFle27OMIHbBjpfo5O6C6ohd8KDxdVgu--

--SO8KWTpOvW1KpkwDxFdplwD5BURfQd43W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXg/kcAAoJENaSAD2qAscK0TIP/1dLcRXCetCRkwBbCgFsZGYt
DayAZBXtHWUHF7cxHYQhdsYdMRnb3NHO14rv9A81SWZNedUr35NxtmEBW91P76gX
IZeThvqfj32wKdoP1xVmV0zQJ9sCjrp34e40WiXJVtdniAEa7+rt33s1cJ8f13nw
s+JqO7N4jVFOEileOJemDmbLHOO+ouzz8zQk13IRhB6v/mSvnl143s/ylZl4j8bA
qmWQZYetqCq0r1fuW8co8caeIaXev3P1gyNUmBIn4lpyZ2OGhNgX7DhUOtaBe4cr
5N6ofxAcc1wXTPxLZwQK9XxBIs0zhZirb85fAefi5TwIWhJfV7rH2bPotc+TBVgo
bomb+4JearaS4a7K9U7lavdTo7HMzl+wddXaRXwvCLL6H23qjxinu/0HIbTQPuAm
KHCwuPnNcwxHHV+ppdSZWAoLRwzmkpBkcpzkFDJ/Ml56yU8LHvnhqdaOIKzx5zxO
qD/emM5wRACt8dGdblA92z6pbX0/rmZn7H/IBpKGIljByKv4/uTv+3a4yDPmz+L4
aAWY+mu8HN/GdQjY9YYIYCiidVYW+UUILPE4rxb0F2iOTUo1xdhaHnWtLG0sbvKW
U/AgGHW0ETOM0/p6/4Iqm4wvpXkJGVLONNZFG2zyhmdr3eslRC9HUYTNmbm0Oi2A
yQb0dRXPZXkPwjP0Uinz
=fKv3
-----END PGP SIGNATURE-----

--SO8KWTpOvW1KpkwDxFdplwD5BURfQd43W--
