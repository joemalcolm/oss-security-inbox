X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2605" "Friday" "20" "March" "2015" "12:28:28" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550C4AAC.9040606@gmail.com>" "58" "Re: [oss-security] membership request to the closed linux-distros security mailing list" nil nil nil "3" "2015032016:28:28" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        danielmicay@ Mar 20   58/2605  " thread-indent "\"Re: [oss-security] membership request to the closed linux-distros security mailing list\"\n") "<CA+aC4ksvOSSjAqMsXbzG__vpUbHoy3LyyLtdRnGmsjoDwWs=sg@mail.gmail.com>" ("<550C19ED.9030901@enea.com>" "<20150320145413.GA10416@openwall.com>" "<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>" "<20150320155026.GF3718@symphytum.spacehopper.org>" "<CA+aC4ktANtitip_dsvtwkuU6UEikdLzdH=prrhuXrcfL4LzQvA@mail.gmail.com>" "<20150320155553.GN15408@suse.de>" "<CA+aC4ksvOSSjAqMsXbzG__vpUbHoy3LyyLtdRnGmsjoDwWs=sg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12037 invoked by uid 550); 20 Mar 2015 16:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12008 invoked from network); 20 Mar 2015 16:28:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=hKEXdIJ7dB9n3LUYxEpdYuh9dWxR1sRYr8+x1PWV5w4=;
        b=OjdgdTgL9Uijk4wxWCFPb1+qlIPNjtmmvb3+zqS5XhrfZ2ZDUVrdzSjC5fMmK49r0e
         9D6QCLFO7o27whPR74q1x+bhCWN2nMcYfeF4i5r4u3lnGogJy4KAkD5Ph+CcFA28oTlR
         +pdfgCVk7rH3FWGf/9z+EOCShGX3PvAaEGfeKU1xO7ScGtTwE4AaPBpkq5qm2e5V9G7r
         In0wpKoXOtIDfbuT0QC3G5yUBzoNLklUakt138wePvjr5F3Z5wkJlbs+dp0cmmaAaTqE
         GtXC1KLQ6YpzkO+AGll9TtorO/oOB/mpPkDU6ddj3cbwBc21SO0MpH8me9zurj4iilO5
         +llg==
X-Received: by 10.107.136.105 with SMTP id k102mr63753300iod.20.1426868919429;
        Fri, 20 Mar 2015 09:28:39 -0700 (PDT)
Message-ID: <550C4AAC.9040606@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550C19ED.9030901@enea.com>	<20150320145413.GA10416@openwall.com>	<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>	<20150320155026.GF3718@symphytum.spacehopper.org>	<CA+aC4ktANtitip_dsvtwkuU6UEikdLzdH=prrhuXrcfL4LzQvA@mail.gmail.com>	<20150320155553.GN15408@suse.de> <CA+aC4ksvOSSjAqMsXbzG__vpUbHoy3LyyLtdRnGmsjoDwWs=sg@mail.gmail.com>
In-Reply-To: <CA+aC4ksvOSSjAqMsXbzG__vpUbHoy3LyyLtdRnGmsjoDwWs=sg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="hPfnT3WWH3J21MHl67TR8wamFevhdDpCu"
Date: Fri, 20 Mar 2015 12:28:28 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

--hPfnT3WWH3J21MHl67TR8wamFevhdDpCu
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 20/03/15 12:05 PM, Anthony Liguori wrote:
>=20
> Upstreams are already free to do this, no?  If an upstream reporter
> sends to distros@ or another forum, they have already made that
> risk/reward trade-off.

I would expect that people are reporting vulnerabilities to the list
because they see it as the most responsible form of disclosure. I don't
think they're in the position to make an accurate risk/reward trade-off
though. There's little information on how the distributions are making
use of this information. I don't think many people would be reporting
bugs to it if they knew the answer to that question...

The distros subscribed to the list are in the position to state whether
it's helping them minimize the delay between disclosure and shipping a
patch or whether it's simply tying their hands for more time. I'm sure
it's a mix of both, but I'd like to hear from them.

For most vulnerabilities, I doubt that having early notice is at all
helpful. The important factor is that there's a working patch out of the
gate from upstream and ideally new point releases for any of the
supported versions.

It's just a artificial delay before shipping a patch can happen. IMO,
only distributions with ancient versions where the patches don't apply
cleanly are going to benefit. There's also the possibility of related
issues, but upstream and the discover of the issues are in the best
position to find those.


--hPfnT3WWH3J21MHl67TR8wamFevhdDpCu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDEq2AAoJEPnnEuWa9fIqCR0P/jyOwGFeNylQDOJbQRh7O8C1
wWB2+Hxeit4KGrLAwBLxwrK+VLD2VjVQO+vKfWZYNDghpQx6FQe0H6kt7mWTasnb
CRjXisQumjbP2AG/mgYAnwnwTyl/vU8uOBsw0lxgJL7HB5DjHvJByMT9Mya3OGxM
9yQ+GKBwaQemXQua+LVRSfQR2O/ytsqslYR3/6PoIvP/Jl6HTj9JhCtTKMoExech
jh/KVqRHdhmDVwr0PUvfaDNO55Xs+450D8/2P6zW8PSWmM+I9QzQdv1n1v94yCnQ
+u3V1FXHAEgcSzPswRWfmOVSHcheqEa8CwwqNNknf7xJYwl7kp7Q0dYAwdhb+Tk1
eDJGtFpWEg+9lYPZgisaCejhQoFMUriAWjqaqRQnIzujv37DqayPldtWzajS+q1A
k3MxQrc+AjC3EYT96Sp842wokIJpwGybwZDLCt28w3PUi85J75lZ9650N4+kcqfr
On4WOKLrFjV5bUOBrTbCSNx9P267u13ZJO2vCE7Hddjupp53SB32tGpWGystb8Yw
M/y8TO0tuKlCFUNqxwNC4aYrOMiOm9tqC12REfIMzOIUoHJNwXG7RjZP/o1tOIyK
+6fn6dgLnLUK4OD4ParOr5tXiMbavuIxbIEY7Hul3cy2i5FKYz3MM2Ogpqdhf4Uq
0eZRU+SDc8EjoVos4OSj
=2ds5
-----END PGP SIGNATURE-----

--hPfnT3WWH3J21MHl67TR8wamFevhdDpCu--
