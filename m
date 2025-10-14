Received: (qmail 22076 invoked by uid 550); 14 Oct 2025 18:29:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17722 invoked from network); 14 Oct 2025 17:08:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760461724; x=1761066524; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t7ex3VlYbyw8tYJZvTMSZjOcLHYWEHvgcUPo+revirk=;
        b=n94ox4ecTNeJvg1SC6kEeISYXxjoJjBtULxY8fYNTO6AR90wZ+dVX/t8XuVYR9FqX3
         gIz8NmVEhBOOK1yhMTFSYn4b/+XxC0Hdz2OiM3jofmx4ANqwbBP/v7VrH5Vlt8WKSCgy
         MAV2WUuT+FOwjhPoe3OESi137U5Y30nhbLyPrp7kPfS5T15JiwvCgjedl8QvLog2SNIP
         QAx5nXwmggInDKsWFXksIKyZ3iVbX8DQg/wxyL4zWzL1gQfHWWjJyv60+rFG9CykoBem
         x1vRe/6uWLRvIPrZvp4hW2gIZvg4MxF3iEJFCR6iNaj2eMjnNqJIpOBuQVdsy9vGxEIC
         jGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760461724; x=1761066524;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7ex3VlYbyw8tYJZvTMSZjOcLHYWEHvgcUPo+revirk=;
        b=PO6V0n+LZfE2oI98Id8ZQD6EZ7lkWTwcA9PQIbUICQPYdtW2T4XfWhI2xGsaboP6s6
         0UBTC1fv6cEMo5iFofddgjNdLGgvFyvhrdW+s/2to6GVmVocdzxW4SaToskVh7Mr/IYd
         rQzQ6gL3JEKczMMUCKTMEF0wMF+Nh9djBTnlT30u32StaB8oITmZaAQa+Ep4U4GAyZyG
         RgxgIdgG/6hUinQq95m/IyQFsZZBxhlcy+3+Gtf9PKUNR02v0UcULNI3Ccpy5EvCCi2U
         fdsR5bR8WWm9Py4bObacnIoQ1IIEEY9l0AZn6c478nXeNjXHV2ej1/Klvox+b+cI7U3+
         J0Fg==
X-Gm-Message-State: AOJu0Yw1FLliOVGzS6dG+tC1V0zCZ8hky2uk+tRTpDGVDo5taaer5kKD
	yLh5pb4KoSfht2bj1GOP7EgrmaIYuOMC+8WdU6YJnpQZP49bqFIcRFtUavJbdH2Ko3RvGTP8Bl1
	qMwe9MBUX7CfbSaxR5J1IuG9DubTB4UGaUMRx0q9u4hLKbvvBlvOQ3mo=
X-Gm-Gg: ASbGncunOKaKfKlPdBTEZeB0K6qMEQQ3E36hC7PNEWV3Yvq24jVjIgXpJdnX7PuiFpe
	gQGnFOlpDm4r9o2NISHm8ozu84sgrou7CyEHBxfBmTU4UMU1peoLWqf+AvAL1NIpQjn8jvCo3Of
	A6yYgHMtxKNtFLCtIZvtpNLG4aVhhtv5ArpgGjhXiTHFe8Qxs702ga2x9bvz2x54/Fyki+4r22W
	i73SKNgg88g84GRXkBlPfE8vNXY6ssMOAfsREb+Jg==
X-Google-Smtp-Source: AGHT+IENVwUhOfnwYBx/ETHA+Kiu5cdvGgWEM0ry+rguA9FVyB7rQ7cC+hGYGaOwsIYHJDrS+LYte8BNg+khve2cZhI=
X-Received: by 2002:a05:6402:1941:b0:638:1599:6c29 with SMTP id
 4fb4d7f45d1cf-639d5c44870mr22702755a12.20.1760461723545; Tue, 14 Oct 2025
 10:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
In-Reply-To: <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
From: David Benjamin <davidben@google.com>
Date: Tue, 14 Oct 2025 13:08:26 -0400
X-Gm-Features: AS18NWAqO4ivD7U-Q13FiMsVgyJzPcgx7dPJzKA96tmoBUd5k6dpa5g_zN-nudY
Message-ID: <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000acf0820641216f68"
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

--000000000000acf0820641216f68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I don=E2=80=99t think BoringSSL has ever claimed *no* side channels. That=
=E2=80=99s quite a
tall order! We do try to mitigate cache and timing side channels w.r.t.
cryptographic secrets, under the so-called =E2=80=9Cconstant-time=E2=80=9D =
model. (BearSSL
has an excellent write-up of how that works at [0].) But, as the volume of
this list shows, I think *any* software project would have a hard time
claiming to have *no* bugs with respect to *whatever* correctness goals
they have!

Regardless, constant-time is certainly important to us, and reports of
side-channel leaks are quite welcome. If folks have something for us to
look at, email or a bug using the Chromium security bug process[1] (mention
that it=E2=80=99s for BoringSSL) are good ways to reach project members.

As for the report here, thanks to Billy for taking a look at our private
key parser! The minimum bit width of an EC scalar (as opposed to the width
of the group order), indeed should be confidential, and BoringSSL aims not
to leak it. But there=E2=80=99s a bit more to the story: This appears to be=
 a
misunderstanding of the ECPrivateKey format, not a leak in the parser. The
leaky inputs were actually not valid ECPrivateKeys and cannot, under the
constant-time model, be processed without leaking this information. It=E2=
=80=99s a
historical quirk that they=E2=80=99re accepted at all.

I=E2=80=99ll take a moment to give some details for any readers who (like m=
e!) find
these sorts of things interesting:

In an ECPrivateKey, the privateKey field is an OCTET STRING that is
supposed to have a fixed length relative to the EC group. Per RFC 5915[2]:

  o  privateKey is the private key.  It is an octet string of length
      ceiling (log2(n)/8) (where n is the order of the curve) obtained
      from the unsigned integer via the Integer-to-Octet-String-
      Primitive (I2OSP) defined in [RFC3447].

This means all private keys of, say, P-384 should have 48 bytes. The
encoding of a P-384 scalar with value 1 should be the 48-byte string {0, 0,
..., 0, 0, 1}, not the one-byte string {1}.

This is good, because it makes constant-time processing possible. Encoding
and decoding can convert to/from the fixed-width byte representation and
some fixed-width in-memory representation (e.g. six 64-bit words),
performing fixed-width, constant-time operations end-to-end from
generation, to encoding, to decoding, to signing. For these operations,
using this encoding, BoringSSL aims to be constant-time, and we=E2=80=99re =
not
aware of any leaks. (But reports of bugs are very welcome!)

Unfortunately, some old software did not quite get this right:

1. When decoding, they accepted all sizes of inputs
2. When encoding, they truncated leading zeros, thus leaking the magnitude
of the private key

We=E2=80=99re not aware of any current software doing this but, since there=
 may
still be malformed keys in the wild, BoringSSL still accepts these
truncated inputs. When importing in BoringSSL, we load it into our
fixed-width in-memory representation, effectively putting the missing zeros
back. (Fixed-with representations are necessary for ECDSA or ECDH itself to
be constant-time.)

With respect to the constant-time model, that import process indeed leaks
the byte length of the privateKey field, but this is actually unavoidable.
The encoding itself already leaked the length. The byte strings themselves
weren=E2=80=99t the same size and the constant-time model assumes the trace=
 of
memory accesses (often visible to cache-timing attacks) is leaked. That
means merely constructing a buffer to pass into the library leaks the
length of the buffer.

This means private key formats must have secret-independent lengths. The
privateKey field, by spec, achieves this, but these malformed, truncated
privateKey fields do not. If one passes a truncated privateKey field to any
decoder, leaking the byte length is unavoidable. Rather, it is up to the
encoder to follow the spec, which will give a fixed-width,
secret-independent byte length that can be safely leaked.

The inputs in the test harness use this leaky, truncated encoding. One can
see this in how the test cases have different sizes. The issue is that
=E2=80=9Crandme.py=E2=80=9D calls the Python hex() function on an integer, =
which returns
the minimal hex encoding. Something like theint.to_bytes(48, "big").hex()
would have constructed the correct, fixed-width private key representation
for P-384.

Ideally, decoders would all reject these invalid inputs, so it would be
immediately apparent when encoders get this wrong, but the environment of
existing private keys makes doing so a compatibility risk.

Nonetheless, the attention is much appreciated. Thanks again to Billy for
taking the time to look!

David

[0] https://www.bearssl.org/constanttime.html
[1] https://www.chromium.org/Home/chromium-security/reporting-security-bugs/
[2] https://www.rfc-editor.org/rfc/rfc5915.html#section-3

On Tue, Oct 14, 2025 at 10:26=E2=80=AFAM Alex Gaynor <alex.gaynor@gmail.com=
> wrote:

> I missed this talk at the OpenSSL Conference last week. And I don't
> know what _precise_ claims the BoringSSL folks have made.
>
> But it seems to me any claim like "there are no timing side-channels"
> has to have an implicit "relevant to a threat model". It's _surely_
> the case that many functions in any library exhibit timing
> variability, but if this can't be used to leak anything confidential,
> it's not really an attack of note. In this case, as I understand it,
> the only thing that's alleged to be leaked is the length of a key,
> which already wasn't confidential.
>
> Alex
>
> On Mon, Oct 13, 2025 at 11:07=E2=80=AFPM Peter Gutmann
> <pgut001@cs.auckland.ac.nz> wrote:
> >
> > Jeffrey Walton <noloader@gmail.com> writes:
> >
> > >What does the attacker learn besides the key length?  Isn't that mostly
> > >public information, like the TLS options used during cipher suite
> > >negotiation?
> >
> > It's a proof-of-concept from a very entertaining talk at the OpenSSL
> > conference, "Constant-Time BIGNUM Is Bollocks".  The BoringSSL folks had
> > claimed there were no timing side-channels in their code, this
> demonstrates a
> > timing side-channel.
> >
> > Admittedly not a terribly useful one :-).
> >
> > Peter.
>
>
>
> --
> All that is necessary for evil to succeed is for good people to do nothin=
g.
>

--000000000000acf0820641216f68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<br><br>I don=E2=80=99t think Bori=
ngSSL has ever claimed <i>no</i> side channels. That=E2=80=99s quite a tall=
 order! We do try to mitigate cache and timing side channels w.r.t. cryptog=
raphic secrets, under the so-called =E2=80=9Cconstant-time=E2=80=9D model. =
(BearSSL has an excellent write-up of how that works at [0].) But, as the v=
olume of this list shows, I think <i>any</i> software project would have a =
hard time claiming to have <i>no</i> bugs with respect to <i>whatever</i> c=
orrectness goals they have!<br><br>Regardless, constant-time is certainly i=
mportant to us, and reports of side-channel leaks are quite welcome. If fol=
ks have something for us to look at, email or a bug using the Chromium secu=
rity bug process[1] (mention that it=E2=80=99s for BoringSSL) are good ways=
 to reach project members.<br><br>As for the report here, thanks to Billy f=
or taking a look at our private key parser! The minimum bit width of an EC =
scalar (as opposed to the width of the group order), indeed should be confi=
dential, and BoringSSL aims not to leak it. But there=E2=80=99s a bit more =
to the story: This appears to be a misunderstanding of the ECPrivateKey for=
mat, not a leak in the parser. The leaky inputs were actually not valid ECP=
rivateKeys and cannot, under the constant-time model, be processed without =
leaking this information. It=E2=80=99s a historical quirk that they=E2=80=
=99re accepted at all.<br><br>I=E2=80=99ll take a moment to give some detai=
ls for any readers who (like me!) find these sorts of things interesting:<b=
r><br>In an ECPrivateKey, the privateKey field is an OCTET STRING that is s=
upposed to have a fixed length relative to the EC group. Per RFC 5915[2]:<b=
r><br>=C2=A0 o =C2=A0privateKey is the private key.=C2=A0 It is an octet st=
ring of length<br>=C2=A0 =C2=A0 =C2=A0 ceiling (log2(n)/8) (where n is the =
order of the curve) obtained<br>=C2=A0 =C2=A0 =C2=A0 from the unsigned inte=
ger via the Integer-to-Octet-String-<br>=C2=A0 =C2=A0 =C2=A0 Primitive (I2O=
SP) defined in [RFC3447].<br><br>This means all private keys of, say, P-384=
 should have 48 bytes. The encoding of a P-384 scalar with value 1 should b=
e the 48-byte string {0, 0, ..., 0, 0, 1}, not the one-byte string {1}.<br>=
<br>This is good, because it makes constant-time processing possible. Encod=
ing and decoding can convert to/from the fixed-width byte representation an=
d some fixed-width in-memory representation (e.g. six 64-bit words), perfor=
ming fixed-width, constant-time operations end-to-end from generation, to e=
ncoding, to decoding, to signing. For these operations, using this encoding=
, BoringSSL aims to be constant-time, and we=E2=80=99re not aware of any le=
aks. (But reports of bugs are very welcome!)<br><br>Unfortunately, some old=
 software did not quite get this right:<br><br>1. When decoding, they accep=
ted all sizes of inputs<br>2. When encoding, they truncated leading zeros, =
thus leaking the magnitude of the private key<br><br>We=E2=80=99re not awar=
e of any current software doing this but, since there may still be malforme=
d keys in the wild, BoringSSL still accepts these truncated inputs. When im=
porting in BoringSSL, we load it into our fixed-width in-memory representat=
ion, effectively putting the missing zeros back. (Fixed-with representation=
s are necessary for ECDSA or ECDH itself to be constant-time.)<br><br>With =
respect to the constant-time model, that import process indeed leaks the by=
te length of the privateKey field, but this is actually unavoidable. The en=
coding itself already leaked the length. The byte strings themselves weren=
=E2=80=99t the same size and the constant-time model assumes the trace of m=
emory accesses (often visible to cache-timing attacks) is leaked. That mean=
s merely constructing a buffer to pass into the library leaks the length of=
 the buffer.<br><br>This means private key formats must have secret-indepen=
dent lengths. The privateKey field, by spec, achieves this, but these malfo=
rmed, truncated privateKey fields do not. If one passes a truncated private=
Key field to any decoder, leaking the byte length is unavoidable. Rather, i=
t is up to the encoder to follow the spec, which will give a fixed-width, s=
ecret-independent byte length that can be safely leaked.<br><br>The inputs =
in the test harness use this leaky, truncated encoding. One can see this in=
 how the test cases have different sizes. The issue is that =E2=80=9Crandme=
.py=E2=80=9D calls the Python hex() function on an integer, which returns t=
he minimal hex encoding. Something like theint.to_bytes(48, &quot;big&quot;=
).hex() would have constructed the correct, fixed-width private key represe=
ntation for P-384.<br><br>Ideally, decoders would all reject these invalid =
inputs, so it would be immediately apparent when encoders get this wrong, b=
ut the environment of existing private keys makes doing so a compatibility =
risk.<br><br>Nonetheless, the attention is much appreciated. Thanks again t=
o Billy for taking the time to look!<br><br>David<br><br>[0] <a href=3D"htt=
ps://www.bearssl.org/constanttime.html">https://www.bearssl.org/constanttim=
e.html</a><br>[1] <a href=3D"https://www.chromium.org/Home/chromium-securit=
y/reporting-security-bugs/">https://www.chromium.org/Home/chromium-security=
/reporting-security-bugs/</a><br>[2] <a href=3D"https://www.rfc-editor.org/=
rfc/rfc5915.html#section-3">https://www.rfc-editor.org/rfc/rfc5915.html#sec=
tion-3</a><br></div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 14, 2025 at 10:26=E2=80=AFA=
M Alex Gaynor &lt;<a href=3D"mailto:alex.gaynor@gmail.com">alex.gaynor@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">I missed this talk at the OpenSSL Conference last week. And I don&#39;=
t<br>
know what _precise_ claims the BoringSSL folks have made.<br>
<br>
But it seems to me any claim like &quot;there are no timing side-channels&q=
uot;<br>
has to have an implicit &quot;relevant to a threat model&quot;. It&#39;s _s=
urely_<br>
the case that many functions in any library exhibit timing<br>
variability, but if this can&#39;t be used to leak anything confidential,<b=
r>
it&#39;s not really an attack of note. In this case, as I understand it,<br>
the only thing that&#39;s alleged to be leaked is the length of a key,<br>
which already wasn&#39;t confidential.<br>
<br>
Alex<br>
<br>
On Mon, Oct 13, 2025 at 11:07=E2=80=AFPM Peter Gutmann<br>
&lt;<a href=3D"mailto:pgut001@cs.auckland.ac.nz" target=3D"_blank">pgut001@=
cs.auckland.ac.nz</a>&gt; wrote:<br>
&gt;<br>
&gt; Jeffrey Walton &lt;<a href=3D"mailto:noloader@gmail.com" target=3D"_bl=
ank">noloader@gmail.com</a>&gt; writes:<br>
&gt;<br>
&gt; &gt;What does the attacker learn besides the key length?=C2=A0 Isn&#39=
;t that mostly<br>
&gt; &gt;public information, like the TLS options used during cipher suite<=
br>
&gt; &gt;negotiation?<br>
&gt;<br>
&gt; It&#39;s a proof-of-concept from a very entertaining talk at the OpenS=
SL<br>
&gt; conference, &quot;Constant-Time BIGNUM Is Bollocks&quot;.=C2=A0 The Bo=
ringSSL folks had<br>
&gt; claimed there were no timing side-channels in their code, this demonst=
rates a<br>
&gt; timing side-channel.<br>
&gt;<br>
&gt; Admittedly not a terribly useful one :-).<br>
&gt;<br>
&gt; Peter.<br>
<br>
<br>
<br>
-- <br>
All that is necessary for evil to succeed is for good people to do nothing.=
<br>
</blockquote></div></div>

--000000000000acf0820641216f68--
