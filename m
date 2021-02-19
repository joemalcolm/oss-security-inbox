X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3068" "Friday" "19" "February" "2021" "11:27:27" "+0100" "=?utf-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@isc.org" nil "82" "Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination" nil nil nil "2" nil nil (number mark "U       ondrej@isc.o Feb 19   82/3068  " thread-indent "\"Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13651 invoked by uid 550); 19 Feb 2021 10:31:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11424 invoked from network); 19 Feb 2021 10:27:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1613730452; bh=9gYbDxrggZHlRp9QiDbbpVsuAEIOepjwzdnctVB9X2g=;
	h=From:Subject:Date:In-Reply-To:Cc:To:References;
	b=JGhCDS0QCEVm0dXLj3ZIFJGNFO2SpgfYtTIZ3Qa1qM7v8+VHQa3HL9+LHR1Vzh+H3
	 AYwcDwjOJtbOmsjdYY5P78yGso265lzjzBYxryUuJl8tzADdHLB8xrZrHtt7Fq2ROP
	 Z37oetX8Dhd0gvBUTm5PwXGVHOP1ZXtS8ekJ2O1w=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org A5C6316007B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1613730452;
	bh=4okwqJ0e9D1vpj+dfRJFbLePJyjMYW6021j97bHKP0E=;
	h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
	b=i9A9o3I4sHFfb3uVyRywiBZGFycL1RF51TEJ8+/2USVv0SumoGiL99Xdkt0UfM66R
	 BbZvziA7NcXw1b8nIK9/MfdRrmIkIFkWMBzslY8TP9yGg9NRxRLo+B71xMj8wpQ5rX
	 0CHKyr+LKv7igb2i6tnCBFmCZRjTiAKsoulSOcmg=
From: =?utf-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@isc.org>
Message-Id: <82FEB890-2BBE-4E1E-968B-3CC16744C784@isc.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_79760299-6ACA-4D98-B7EB-BD1C694D659A";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Date: Fri, 19 Feb 2021 11:27:27 +0100
In-Reply-To: <20210219091737.5582f481@computer>
Cc: ISC Security Officer <security-officer@isc.org>,
 oss-security@lists.openwall.com
To: =?utf-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
References: <4696a666-a284-041e-ae31-d2c6e844a88c@isc.org>
 <20210219091737.5582f481@computer>
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Subject: Re: [oss-security] BIND Operational Notification: Enabling the new
 BIND option "stale-answer-client-timeout" can result in unexpected server
 termination

--Apple-Mail=_79760299-6ACA-4D98-B7EB-BD1C694D659A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Hanno,

by the time Michael was writing the message, we were still reviewing
the fix for the issue.

The fix has been made public now:
https://gitlab.isc.org/isc-projects/bind9/-/merge_requests/4714

FTR we are not treating this as a security issue as this is a newly
introduced option and disabled by default. Same reason why not
make a new release in a haste. There=E2=80=99s a whole QA machinery
around the release which means that we would be able to speed
up the release only by a week or so, and that doesn=E2=80=99t make much
sense.

Cheers,
Ondrej
--
Ond=C5=99ej Sur=C3=BD (He/Him)
ondrej@isc.org

> On 19. 2. 2021, at 9:17, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>=20
> On Thu, 18 Feb 2021 20:09:47 -0900
> ISC Security Officer <security-officer@isc.org> wrote:
>=20
>> 2)  If you already have packages based on 9.16.12, we expect to have
>> a patch ready well before the next maintenance release.  A candidate
>> patch is under review now and can be delivered after review and
>> quality assurance testing.  If you wish to receive updates on the
>> progress of this patch, please e-mail your request to
>> security-officer@isc.org
>=20
> I am confused by your actions here.
>=20
> You warn people about a messed up release (can happen, no problem), you
> say you have a preliminary patch, but you make it extra complicated to
> get that patch? Why not just post the patch?
>=20
> Also I read into your words that you don't plan to publish a quick
> followup release, which would be the right thing to do ("we expect to
> have a patch ready well before the next maintenance release" - I read
> that as you don't plan to make a new maintenance release as soon as
> the patch is ready, which would be the right thing to do).
>=20
>=20
> --
> Hanno B=C3=B6ck
> https://hboeck.de/


--Apple-Mail=_79760299-6ACA-4D98-B7EB-BD1C694D659A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEw2Gx4wKVQ+vGJel9g3Kkd++uWcIFAmAvko8ACgkQg3Kkd++u
WcL9lQ/+KtrMhbhIhpQ0BaqDyO6zoUPo+ZlpkQ0OqfegM5R+3WgzH6UZ7TNq7vrF
FU0wfdCwbVzZiLTUk18OKFSRNu0ssFRavl1CkXu+fc4IPvBklYQ6Ln9X7RYt9i8r
3/RCNkfdOW8XiCjHN5qYjw+7U+fK0PZYHnJ2ZPh/JfmwrYPIsowUAcgovX6qoq8f
X0lFWV2tc+ak/jJ62rmJRYcjBR4yJh0NEC9f1e/QHK+p3x7Ts1HwSq1HPf1w+OuC
ArHAwc8SCKIZLH/sCq+OfV6r+CN3np1bf0s4LY7vjz5EGjmdCTyKfcw8v+IZGcnV
f/WKIUVZABbMgjWmtn1MeNv4cDgGOczKSkPaDJEnxRQaBQWvBdJGfoMD3+zvsyK7
t98L0+ZEWyGL10oeUlUZBo5zWmPT+vJ//t6wlsub1qh2iOBpvZvM7SNyC5GIR1Fh
io7JBMZwHHPjA/VNaV5H1EGSWHgO3ycISa3YhVcHvybHKFxNZdBpWij4yqO63Fnh
6fV/Dsr6NlDkdUpP6ZawLnDft3JhoHntaKmjGcf4bPzZfMXl4WoeA9rqJ9bOpqpZ
qMP2ojSd04InwMYpm8QXlid1PPeULJxHJsnerFpL0CVg7ufTzYKQTnljwIueKkMa
OjghNDyuuWqbGa5xlKbD7DTANxYxu0j96/8mXOUwHdBFHaGTwro=
=ub4Z
-----END PGP SIGNATURE-----

--Apple-Mail=_79760299-6ACA-4D98-B7EB-BD1C694D659A--
