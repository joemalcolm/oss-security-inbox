X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6316" "Sunday" "27" "March" "2022" "15:10:41" "+0300" "ariel.byd@gmail.com" "ariel.byd@gmail.com" nil "153" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        ariel.byd@gm Mar 27  153/6316  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1052 invoked by uid 550); 27 Mar 2022 12:13:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32264 invoked from network); 27 Mar 2022 12:10:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to;
        bh=1D5IzKL9l4Upj0NiKO/uIHEgOaYbPuJVBS7ZZlUPP5s=;
        b=OiXoyBmVJrw82/+peGVjX2wN1iXbgUBKn3o9zYPnouBjrJ43tvOhecMl0wcZNvVTKa
         GjATpqaPKb9qLQFp0UbE7ddXYtDK+Lnd0wlveo/2uBsLXhyqDeEhmovGqdaOzp6JaWcM
         96/ghyJDXE7Lz4+CU57D8A619qFxEGeFJbdfT5npUAVW12QMeLwffuilqh5HX74AoS7X
         3eOXtVJu47qkU61K7lm6y0BkFclM3CzXj8sK0hpQV4XAo7dyMLc5uXOhscvI2FkQoCit
         LO3t/cqFSNlwC/xBmGoGvOpsr9V7Ap6ODjvDmESMr9XkNLT6zDvg4acFwv6lSubTONeZ
         Yf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:in-reply-to:to;
        bh=1D5IzKL9l4Upj0NiKO/uIHEgOaYbPuJVBS7ZZlUPP5s=;
        b=yFbyXBqKu1vZs8z/qR4D7gDjTfK3miaUoCULAtU1Ec2vRPlTCTfAq5C86p3s3pYjJF
         +bsgXoGTmDMbuXyVrKs6+76r/llQz235enOFCOsbuRM+oHfLbwZv+jEBKckwrl4S8hhi
         HdcopgJadC+7HfYUg721V6gkSEMWsI5YtouZZHwNq9DyKKLfBzPCTqBSbCbhntWJScH+
         z1cXNrJIWHC1NmxWrs+wSozJKVyfnqPtDSYmq043G4Pw87Vik5gBnk1R4MJvgnkV9qU4
         rv+B7/OwDddQG7NrCYF1oIV++HryiGZ/XmRvPXX0rEHrrgxowUy8Ap1LhYYBRqb3uMh2
         N5DQ==
X-Gm-Message-State: AOAM532Ye2dofSjg9tw2eEku6BDEzgE7Ss5b77PeHIOkzSDAHo/sw3Tx
	J6s/+sjJsvAs8YT92I9lSuJk+4WIvSg=
X-Google-Smtp-Source: ABdhPJx3LQ/dSS526zMBaSX3OO9sPH4NEGO2Oo6siq6nsDofRN7sJLUlv2HhjgYxp7UAsGvh3U9gcw==
X-Received: by 2002:a5d:64c4:0:b0:205:8280:73f6 with SMTP id f4-20020a5d64c4000000b00205828073f6mr17007110wri.358.1648383043556;
        Sun, 27 Mar 2022 05:10:43 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <FC8967CA-B0AE-4315-92C8-16CB941FDF1B@gmail.com>
References: <Yj/HK64AGxncpsFp@sol.localdomain>
In-Reply-To: <Yj/HK64AGxncpsFp@sol.localdomain>
X-Mailer: iPhone Mail (19D52)
Date: Sun, 27 Mar 2022 15:10:41 +0300
From: ariel.byd@gmail.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

If the match lengths are uniformly distributed between 3 and 258, you=E2=80=
=99ll get exactly 8 bits per length - not less due to entropy consideration=
s, not more since N-3 is a valid Huffman encoding with 8 bits per character.

Actually, maybe not. I think 258 can be encoded as either =E2=80=9C284 31=
=E2=80=9D or =E2=80=9C285=E2=80=9D, and if the encoder always chooses the =
=E2=80=9C285=E2=80=9D encoding (leaving =E2=80=9C284 31=E2=80=9D useless) y=
ou might have 257 characters, you might need some 9-bit characters. I think=
 it=E2=80=99s possible to bound that by 1/64 bit per character but I have n=
ot proven it.

Similarly for distances uniformly distributed between 1 and 32768.

That=E2=80=99s a total of 23 bits per code.


> On 27 Mar 2022, at 12:31, Eric Biggers <ebiggers@kernel.org> wrote:
>=20
> =EF=BB=BFOn Sat, Mar 26, 2022 at 09:52:17AM -0700, Tavis Ormandy wrote:
>> One question remains - does this *only* affect Z_FIXED, or also
>> Z_DEFAULT_STRATEGY? It seems plausible this also affects
>> Z_DEFAULT_STRATEGY, because of this condition:
>>=20
>> https://github.com/madler/zlib/blob/master/trees.c#L976
>>=20
>>    } else if (s->strategy =3D=3D Z_FIXED || static_lenb =3D=3D opt_lenb)=
 {
>>=20
>> That is, if the optimal and static trees are the same size, then zlib
>> *chooses* the Z_FIXED strategy anyway. I don't know if this is
>> practically possible yet, I'm investigating but if someone smarter than
>> me already knows the answer please let me know!
>>=20
>> IMHO, this is a pretty bad bug - but if it is impossible to reach with
>> Z_DEFAULT_STRATEGY, then at least there's no need to panic, as Z_FIXED
>> is usually only used in special circumstances...
>>=20
>> If it possible, well... uh-oh.
>>=20
>=20
> I think it's not possible, at least with the default memLevel (which is o=
ne of
> the parameters to deflateInit2()), though it gets uncomfortably close.
>=20
> Let's assume that given a sequence of "items" (matches and literals), it's
> possible to craft an input that makes the compressor choose those items f=
or one
> of its blocks.  It may require getting creative with de Bruijn sequences,=
 etc.,
> like Tavis did in his reproducer, but generally speaking I'd consider it =
to be
> possible.  Then, I'd phrase the question of reachability of this bug as:
>=20
> "Does there exist a sequence of items with length at most 1<<(memLevel+6)
> [i.e.  16384 by default] that, when encoded into a block, takes up more t=
han
> 3*(1<<(memLevel+6)) bytes [i.e. 49152 by default]?"
>=20
> Using less than the maximum allowed number of items isn't going to help. =
 Also,
> the block header won't take up significant space compared to 16384 items.=
  So
> this is basically asking "do items ever cost more than 24 bits on average=
"?
>=20
> This can "obviously" happen when the use of the static Huffman codes is f=
orced
> with Z_FIXED, as items can cost up to 31 bits with the static codes, and =
all
> items can have this worst-case cost.  That's what Tavis's reproducer does.
>=20
> But with Z_DEFAULT_STRATEGY, zlib uses the cheaper of the static and dyna=
mic
> codes.  For the bug to happen then, both the static and dynamic codes wou=
ld have
> to use more than 24 bits per item on average, for the same sequence of it=
ems.
>=20
> So can the dynamic codes ever use more than 24 bits per item on average?
>=20
> It gets pretty close, but I don't think it's possible.
>=20
> The worst case must involve all matches and zero literals, unless every s=
ingle
> length symbol is used which seems unlikely to help (see later analysis). =
 And
> all else being equal, the most costly matches will be the ones with the m=
ost
> extra length and extra offset bits.
>=20
> However, the more often a symbol is used, the shorter its Huffman codewor=
d gets.
> If we use only matches that have the most extra bits, we end up using the=
 same
> length and offset symbols a lot.  There are only 4 length symbols with the
> maximum extra bits of 5, so if we use those evenly we get 2-bit length
> codewords, for 7 bits per length.  Likewise, there are only 2 offset symb=
ols
> with the maximum extra bits of 13, so if we use those evenly we get 1-bit=
 offset
> codewords, for 14 bits per offset.  That's 7 + 14 =3D 21 bits per match.
>=20
> Roughly speaking, to add 1 bit to a Huffman codeword length, we need to h=
alve
> the symbol's frequency.  So roughly speaking, to add one bit to the length
> codewords we'd need to add 4, 8, 16, ..., length symbols, using each one =
roughly
> equally often.  However, the number of extra bits decreases by 1 for each=
 4
> length symbols.  Therefore we gain roughly 0.5 bits by adding the 4 length
> symbols with 4 extra bits, resulting in 7.5 bits per length on average.  =
But if
> we go further, the average cost per length starts getting cheaper.
>=20
> Similarly, the number of extra bits decreases by 1 for each 2 offset symb=
ols.
> So offsets get about 0.5 bits more expensive if we also use the 2 offset =
symbols
> with 12 extra bits, resulting in 14.5 bits per offset on average.  But an=
ything
> further decreases the cost.
>=20
> That's 7.5+14.5 =3D 22.0 bits per match on average.
>=20
> We can do a bit "better" by considering that Huffman codewords can only b=
e a
> whole number of bits.  E.g., if we're using four offset symbols, we can u=
se the
> ones with num_extra_bits=3D13 'n' times each and the ones with num_extra_=
bits=3D12
> n/2+1 times each, and still get 2-bit codewords for all four symbols.  Ho=
wever,
> it doesn't seem that we can gain more than 1 bit on average per match fro=
m this.
>=20
> So it looks like the worst case is somewhere around 22.5 bits per item.  =
That's
> less than the required 24.  It's definitely getting uncomfortably close t=
hough,
> so this could use a more formal treatment.
>=20
> Also, memLevel can be as low as 1; it's a parameter to deflateInit2().  W=
ith
> memLevel=3D1, zlib will flush blocks after just 128 items.  The block hea=
der
> containing the Huffman codeword lengths would be more significant in that=
 case.
> Though, the block header would still be pretty short, given that there wo=
uldn't
> be too many codewords in the codes, given the 128 item limit as well the
> constraints of having to generate one of these worst-case sequences.
>=20
> - Eric
