X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3030" "Friday" "23" "June" "2017" "07:56:30" "-0600" "Jeff Law" "law@redhat.com" "<90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>" "68" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062313:56:30" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        law@redhat.c Jun 23   68/3030  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621212742.GA28766@grsecurity.net>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>" "<20170621212742.GA28766@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12038 invoked by uid 550); 23 Jun 2017 13:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12017 invoked from network); 23 Jun 2017 13:56:52 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 710EB19CBD1
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 710EB19CBD1
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net>
 <20170621135727.GA12852@openwall.com> <20170621212742.GA28766@grsecurity.net>
Message-ID: <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170621212742.GA28766@grsecurity.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Cr2GQk8kK36QtgA3gCfgdLTq9ScEeFIWa"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 23 Jun 2017 13:56:40 +0000 (UTC)
Date: Fri, 23 Jun 2017 07:56:30 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Brad Spengler <spender@grsecurity.net>

--Cr2GQk8kK36QtgA3gCfgdLTq9ScEeFIWa
Content-Type: multipart/mixed; boundary="xi3KRS0r2ae43PpOSOpl2jD6pg7UWhgdK";
 protected-headers="v1"
From: Jeff Law <law@redhat.com>
To: oss-security@lists.openwall.com, Brad Spengler <spender@grsecurity.net>
Message-ID: <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net>
 <20170621135727.GA12852@openwall.com> <20170621212742.GA28766@grsecurity.net>
In-Reply-To: <20170621212742.GA28766@grsecurity.net>

--xi3KRS0r2ae43PpOSOpl2jD6pg7UWhgdK
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 06/21/2017 03:27 PM, Brad Spengler wrote:
>> OpenBSD isn't a member of the distros list - they were notified by
>> Qualys separately.  This matter was discussed, and some folks were
>> unhappy about OpenBSD's action, but in the end it was decided that
>> since, as you correctly say, the underlying issue was already publicly
>> known, OpenBSD's commits don't change things much.  Sure this draws
>> renewed attention to the problem, but probably not to the extent and in
>> the many specific ways the Qualys findings cover.  So it was decided to
>> keep the embargo on the detail.
>=20
> Thank you for clarifying that, my assumption was indeed wrong then.
>=20
> Still, if OpenBSD was able to resolve the issues necessary after=20
> notification without leaking full details to the public, shouldn't=20
> this have been possible for the other projects without an embargo,=20
> let alone an extended one?=20=20
I  really doubt it for GCC for a variety of reasons.  Hell, I doubt I
could have gotten even a good discussion going about the problems with
-fstack-check without the details of the embargo'd CVE.

Even if I was able to get interest from other key GCC contributors, the
level of detail I'd have to disclose to those key contributors to make
progress would likely have violated the embargo.

Perhaps part of the difference is OpenBSD can move fairly independently
while something like GCC requires larger scale coordination and public
discussion.

Jeff


--xi3KRS0r2ae43PpOSOpl2jD6pg7UWhgdK--

--Cr2GQk8kK36QtgA3gCfgdLTq9ScEeFIWa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEfp4ho7Zz+T//D6UavHz+vNqYM1sFAllNHhcACgkQvHz+vNqY
M1s1ZQf/YCWs/2DwSnkQwcSqo7jg/vKxMc3TFUmUxdPjuuFw6zS733RGhVgA9PpZ
TH/F6VU80HwuvuLWpwK1ulYFHV22WZJmYvQeQKtFmajum3gHstJOhgoY7aMMCmsm
Ha2SUCwUrpc1aEigARR/jPMhHkMNkYg7h6aNY57QryZ72P9t7qO8DhHnS/Svc3WA
ARZico9PjYVc91W/H9BFCZIDMpu8IW5S+mrGRcOhnFFzhf3Ecpy1X6R+pUnXHco5
s512rS+AhgPhvKVgPdXUj+jt/sh52VRdZegMXw1rZ+04Hd324xHd3vLvlFj4IS1p
cdB+SpyAomggMhzu+/b0QZ8NmNt23w==
=ZveT
-----END PGP SIGNATURE-----

--Cr2GQk8kK36QtgA3gCfgdLTq9ScEeFIWa--
