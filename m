Received: (qmail 1785 invoked by uid 550); 7 Aug 2024 14:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25898 invoked from network); 7 Aug 2024 14:02:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1723039334; x=1723706000; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=WRlI71G5wY50mzHPLvpTFi5VPw4pcCLOhhHMi3W0VE0=;
 b=FJDaI7Em8iDPK2en85aehj302+AFnxffCZnf5KWT1NXhpA+buYI0Yi2tad84oliF/DAFQ8gQ
  v+JbPMRHCjcTm/JVfgOpWXIJ2y5VSL5qgIMFuP3ew19XshLnu7HWoIO7uL2yv/zbJSnZrjemLA
  /pXW51XXHqYmmqIejNdMpWCS50TjEzW/IEgxENsY5+uvxcp7kJSsG2sfBTNOh9PjjqGJ4P3b3R
  q9LQw9K6w5vnZnd2g9NV+WiOlhoFCNVLkEdVd9n2AtMXkIDx1Y9n6pK/oKRcNjC/5C/T37MyRV
  RVUOnkez1eSR24L/H1XRlXFBL9zE659YbJ8wHIe4918Z2Q2w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1723039334; x=1723706000; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=WRlI71G5wY50mzHPLvpTFi5VPw4pcCLOhhHMi3W0VE0=;
 b=5IY2Um0OXujsdjYrtfsaVHyNTNrvR+vE6Wg9A/3AQqoZfNHm5+0kz4Om/SlSrd6i04sGzGU0
  YSMmTF28NLOqDQ==
Date: Wed, 07 Aug 2024 16:02:12 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240807140212.ls_NX9bg@steffen%sdaoden.eu>
In-Reply-To: <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
 <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation
 of TLS 1.0/1.1

Bob Friesenhahn wrote in
 <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>:
 |On 8/6/24 11:34, Stuart Henderson wrote:
 |> On 2024/08/06 17:12, Marco Moock wrote:
 |>> As a user, this is acceptable for me, but I know there are still
 |>> machines outside that only offer such old versions.
 |>> Some of them can't be upgraded easily because the vendor doesn't
 |>> provide any new versions.
 |> BTW, mainstream web browsers disabled pre-1.2 TLS by default around 202=
0.

 |FYI, I have old networking equipment for which there is no way to update=
=20
 |the firmware, but the hardware is still in use.=C2=A0 I find it necessary=
 to=20
 |enable pre-1.2 TLS support in the browser in order to administer the=20
 |equipment.
 |
 |It seems important to consider the use cases before disabling old protoc\
 |ols.

Agreed (i had such a necessity in the past, myself).
Given that most sensitive software supports easy configuration, for
example by passing through "MinProtocol" configuration settings to
*SSL (and i so much like the possibility of a "global central
OpenSSL configuration file" that bundles all relevant settings,
yet so few programs support that possibility), topics like these
always strike me as hysteria.  And before the ears ring, i quickly
say "as defaults are safe".

Then again it must be said that LibreSSL disabled TLSv1.0 and v1.1
already, with v3.8.2, and labelled it "Security fixes".  They had
to iterate their ports tree to make this happen, with program
specific patches, at times.  Lots of work, and such.

In general it seems to me there is a lot of sweeping going on,
must be fashionable, maybe.  Ie newer C++ variants become
mandatory because of some for() loop syntax use cases, whatever.
Then again getting rid of cruft is a good thing, especially if it
is non-functional.  (Like some lynx compile time option that uses
libraries which no search engine can find, while a modern
(current) variant is built-in default, and things like that.)
For my own stuff i hope i can someday truly backport it to things
from around Y2K.  (Some things have sneaked in, because they are
so tremendous improvements in security or usability, especially
the *at() series has to be named here.)

Yes, in general i do not know, you know.  Whereas it is
understandable to cut maintenance burden and such, especially so
in release engineering, say, FreeBSD, they reduce -- and that is *so*
much understandable (and that AlpineLinux *can*!) -- the number of
supported branches.  Then again love is missing, say, they link
only via ftp:// to the old-archives thing, even though it is
available via http, too; yet not https, no real info there,
nothing.  Luckily in earlier times some basic packages where
bundled on the CDs already.  But i mean, hey, some things you do
once, and then .. that is it.  Whatever..  Anyway, i feel that
respect is due for what has been achieved with the possibilities
of that time.  At least clothes and shoes where long lasting and
of great craftsmanship, a century ago.  Hm.

 --End of <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
| Only during dog days:
| On the 81st anniversary of the Goebbel's Sportpalast speech
| von der Leyen gave an overlong hypocritical inauguration one.
| The brew's essence of our civilizing advancement seems o be:
|   Total war - shortest war -> Permanent war - everlasting war
