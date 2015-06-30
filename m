X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2455" "Tuesday" "30" "June" "2015" "10:04:11" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<5592A1DB.1000409@gmail.com>" "54" "Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063014:04:11" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        danielmicay@ Jun 30   54/2455  " thread-indent "\"Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") "<55929F2D.3020802@redhat.com>" ("<55923253.8020902@deusen.co.uk>" "<55929D7F.3050805@gmail.com>" "<55929F2D.3020802@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20456 invoked by uid 550); 30 Jun 2015 14:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20436 invoked from network); 30 Jun 2015 14:04:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=oVBkxXT1aWxIm7I/D0GM+D4bigJtssHyvlUQVoukuDc=;
        b=bQ2HZye5AshB1Hnpo4MpOUugFEkWARWHQyjbFad2D7xbRyooRB81eKxA5x8sMLzBuT
         7RCFqevoY3QBeZswAvQbIkVQNdgcTKiBVoaj09jUUn5Ozy5hHtrEPfIEnqRTgbAEbSEN
         c7PIncbzydRAUSSYBEcsWVJZp8gV/Q4ux+SOWXYuoDZl6we+a0sirj3aBjAXhYgdIKCH
         LvaU7cOWUEspa+xVsSNcIbu9D5jBY3y1ESMZ8CElLa0EkGM6cs67ZaEcARS1N8GEUXwy
         KaqbSovJGXqKOvy7PPxoz7rcwR1FMJ7LqGhioZaVKVOrzHlIu+6TdrXi0Qmr+WIxbVEe
         N+ZQ==
X-Received: by 10.107.130.101 with SMTP id e98mr30569129iod.38.1435673055711;
        Tue, 30 Jun 2015 07:04:15 -0700 (PDT)
References: <55923253.8020902@deusen.co.uk> <55929D7F.3050805@gmail.com>
 <55929F2D.3020802@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5592A1DB.1000409@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55929F2D.3020802@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2LepII9l1sV0EJ2TXECDtrgdXEJXhbWWD"
Date: Tue, 30 Jun 2015 10:04:11 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Google Chrome Address Spoofing (Request For
 Comment)
To: oss-security@lists.openwall.com

--2LepII9l1sV0EJ2TXECDtrgdXEJXhbWWD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 30/06/15 09:52 AM, Florian Weimer wrote:
> On 06/30/2015 03:45 PM, Daniel Micay wrote:
>> It does display a window with the oracle.com address, but I don't
>> understand why you've got an ever increasing number of setTimeout events
>> built in here. It's also unclear what you mean about click-to-verify. Is
>> this bypassing a warning prompt by breaking it with a flood of requests?
>=20
> I have not tried this, but here's some context:
>=20
> Most browsers have issues where they do not update the URL bar when
> content from a different is shown (i.e., the update happens to late), or
> they show the new URL while still displaying old content (update too
> late).  I've seen such discrepancies with Firefox, but I don't know if
> it's still present in current versions.
>=20
> If such bugs are present, freezing browsers while they are showing
> inconsistent content (hence the DoS attempt) could lead the user to
> attribute content to the incorrect site.

Ah, that makes sense. It seems to depend on a race condition so it makes
sense that it can't always be replicated. I've tried it a few times and
it fails about as often as it works. I have a feeling that the proof of
concept was the whole issue report and it just happened to fail for
whoever tested it.


--2LepII9l1sV0EJ2TXECDtrgdXEJXhbWWD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVkqHbAAoJEPnnEuWa9fIqPqkP/iuJgrcSLubts/mv6Am6fdZ4
GlMC/CJJtGwzicTsHrLeToGagHPzrVRdj7g7gBnDLmBeFyT79TTXcf8OgR+L0zdl
kWBHLswmCV6CdVFkI97GF9vQgoQwlWPQL4j7AwCHN4KEAAM4It4s7g3tZ1qvOb5y
X6Z01+LB7dD+q1bLXJy55z94U1O6Q86+Ywwm6p+UfYDJ+SDu6/tB90x8GfYjyPRc
q30u6GYnGgysGeS4T/gCyXrxE4QqqraMAHIeZVV1yIeo6/J07cwKNx6ZlXgP9W77
MUJ+PDdIOz4A1Y3P9kJF82bjLaq0j1ohLt5NJpDHRJVMOcNpgeDpEtIzTP+/ieDM
RPiLQCKVAEY9Les36oEii8gf2UHFR8op83TWJ3C5Dwkhl1coG3z1YK/fY9sEccTi
tQT2X+4nj/rQfVMKauOYbOgt49uEw8AiF/yU/0/pKREOCWiuMVaVWI3XJEs1AFfN
9LR0cySSiRhq/5FbkSpe0jbrETxSWJOLLjEPyJ00VLuTZzCBExvJ8c5EgMz+B0X4
NQifoNEH9AP3VmY+5X4Gv16OeA0zQmPltdANXE5/iUqWtYnuGU45620n450Um8c6
0k956Q7SXkLkCT6dYsi6vbdZszaYDW04USHEVpS/luNSb0z48q8All6dKo82gxY8
/XnpQkdpgu+YZPL0XqMR
=fqoi
-----END PGP SIGNATURE-----

--2LepII9l1sV0EJ2TXECDtrgdXEJXhbWWD--
