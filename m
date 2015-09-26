X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3348" "Saturday" "26" "September" "2015" "19:01:59" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<560723E7.2050107@gmail.com>" "76" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092623:01:59" "[oss-security] s/party/hack like it's 1999" (number mark "        danielmicay@ Sep 26   76/3348  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150926222609.GB11060@netbsd.org>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>" "<20150920032631.GA2301@openwall.com>" "<20150921164346.GA11060@netbsd.org>" "<20150921165337.GA17627@kroah.com>" "<87oagvppdo.fsf@mid.deneb.enyo.de>" "<20150926222609.GB11060@netbsd.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2011 invoked by uid 550); 26 Sep 2015 23:02:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1993 invoked from network); 26 Sep 2015 23:02:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=IoYlFbZXKlS9HN4u7IY67m7DICJXlHuqCya1Bi5UQFE=;
        b=ibDgEM31sC2uRpZp3NCc33LBvm2vrup/B3HKafjBf7U5OrmeLHMBTnu1Er9EL7eF7A
         hcKCqOmaIp1WR0OLQThtKf7V4cOhWM3rDetJwrf2b84bw5h1jRYJJX4QmJW0K9e7ewyG
         2yAjQzALOcVe5fClIx5qv69za4O+0pG+yfQBDGnTE+mJRWQ9lJzDDuqnvYsNZW31cF6g
         LnIfvjjUoSfDDj7KZk5IygqrIQFb1d33CO/uUgdmZ0zIpBrvPqxF9iB8PUGz7Wx63OvP
         9Qkt1RK2+HACcn36g804naSBh3/1fYUck8grES/nihURHnVsYDp6xDdq+iFrbAt3fjwZ
         Fu/g==
X-Received: by 10.107.9.194 with SMTP id 63mr15060061ioj.122.1443308541918;
        Sat, 26 Sep 2015 16:02:21 -0700 (PDT)
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
 <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
 <20150919233415.GA31305@openwall.com>
 <20150920022811.GJ17773@brightrain.aerifal.cx>
 <20150920032631.GA2301@openwall.com> <20150921164346.GA11060@netbsd.org>
 <20150921165337.GA17627@kroah.com> <87oagvppdo.fsf@mid.deneb.enyo.de>
 <20150926222609.GB11060@netbsd.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <560723E7.2050107@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20150926222609.GB11060@netbsd.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="u3OIMUjnCt5FXfQPKt2KGW8Cg3qrEGico"
Date: Sat, 26 Sep 2015 19:01:59 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

--u3OIMUjnCt5FXfQPKt2KGW8Cg3qrEGico
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 26/09/15 06:26 PM, David Holland wrote:
> On Mon, Sep 21, 2015 at 09:02:27PM +0200, Florian Weimer wrote:
>  > >> I have been arguing for years (but without success) that vt bomb
>  > >> injection needs to be blocked in the tty driver. This problem
>  > >> (corruption of concurrent UTF-8 streams) needs to be too, as a matt=
er
>  > >> of correctness and not even security.
>  > >
>  > > How exactly would a tty driver "block" anything like this?
>  >=20
>  > Avoiding in-band signaling in the first place. :-/
>=20
> Yes, that.
>=20
>  > > A tty driver never looks at the data stream in the kernel, as that
>  > > way lies madness...
>  >=20
>  > Surely there is a way to prevent two writes from interleaving?  For
>  > writes to files in O_APPEND mode, this already happens, doesn't it?
>=20
> Theoretically each write() call is supposed to be atomic; there are
> presumably some limits to that in practice, especially on ptys (like
> PIPE_BUF is the limit for pipes) but this doesn't help if programs
> emit partial characters, as is (in general) likely. Programs that use
> stdio to write to stdout are ok because stdio line-buffers stdout when
> it's a tty; but that doesn't help with stderr, or with programs that
> ship text around in arbitrary-sized blocks, or programs in cbreak
> mode, or if you're logged in across a network that hiccups
> occasionally. (Or can be made to hiccup on purpose.)
>=20
> ISTM that for safety the tty driver is going to have to know about
> multibyte encodings and not let through partial characters; this is an
> enormous can of worms.
>=20
> (but, let's not overreact; it's always been possible to blat out
> sequences beginning with [ and hope that they'll be inserted right
> after someone else's ESC.)

AFAICT, POSIX only has atomicity requirements for a FIFO or pipe and I
don't think Linux or other OSes offer much more in practice. Some file
systems have unofficial guarantees related to the block size...

http://pubs.opengroup.org/onlinepubs/9699919799/functions/write.html

Am I missing something? Of course, Linux might offer the guarantee in
practice for a tty, but terminals are generally portable.


--u3OIMUjnCt5FXfQPKt2KGW8Cg3qrEGico
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWByPrAAoJEPnnEuWa9fIqR0kP/1kSefCWU2MUBydwwm6xjxpM
SvxmYJIgl9TvRcRk3VhWkswQrP/8F0xWWo1Q+VWgAVaCDNWlCUF8UxHDvTweLpyg
FEo7G/Adjj1WJSYB7BaRSIHNrVe4S2eljCuZTYOLVXyF2/8+IOhNwA5J7Gk0+cix
LkBEC6Jfu1hDUYb7uQE7CTnMPx2QFa+oQma8xfyRQ+gZidELS3m/BCAQ3/WxMf9x
qflu6RglpOjjfRAJIQhxooJ5PTDyyqNNtdzIcI1j4hgRD1JWOK+c1Jj0gs9z0c6r
wNHEAW6OVCkqFbyenYP2D88yHgrZbxDdBdfRc+XPVLIBSqm5wmfnlbGMXtlDqVNe
X4UB2Tvry2U7unHzwNxHarp//OAGbMLMeAHHhj1jvH58grrraRi5moy2Q/eieZUX
Bi1KY1XycZq/V16sn5b/rthnfr9wtlbcCVXRaxrOR2jjM35RP+/Szg5u0oBW4f04
yTOpDwRxdd1LxtXpbmljcjJO542P7L3oyg/h224N5kM3fsumd7iMfJDqu2geJO0x
59kTSUsm8FRo0jrR0OpSmshGb5acxBgMOkUfZJ/B+Kjt0zc9DDIb2FOecYGFNc7J
yzowUL2xLJL6gqOmjsgCpPPsOs9K58kj3qJihDu7y/Q6inbO15btGRN4WgrVDZxt
bF8FQX4ie0atMJaq2xOG
=5skR
-----END PGP SIGNATURE-----

--u3OIMUjnCt5FXfQPKt2KGW8Cg3qrEGico--
