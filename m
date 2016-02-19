X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4687" "Thursday" "18" "February" "2016" "21:54:34" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1455850474.924.9.camel@gmail.com>" "105" "Re: [oss-security] Address Sanitizer local root" nil nil nil "2" "2016021902:54:34" "[oss-security] Address Sanitizer local root" (number mark "U       danielmicay@ Feb 18  105/4687  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160218110831.17429da5@pc1>" ("<20160217221921.GB24130@port70.net>" "<20160218110831.17429da5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22461 invoked by uid 550); 19 Feb 2016 02:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22443 invoked from network); 19 Feb 2016 02:54:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=ymfU0Xs1qqK1Zx4fyxzJTXel57pMMUJX1l2KFv1hkjw=;
        b=iDsafU9OU/S4W3OeYmvHKKzRRVFHAsZhHJuu7/ygkZafL4gYlCc/Syi+jLkxNYBUd7
         thwGAXwJCp4X0KXybmFyLQzcIyiM0nRREdHJTyalEEKfbxfy+fNdK2Gc3nUsa0hV8lX0
         W4YCsjNzGzmWBHOIXmVwbteLGl2gcOOXvDgiL9KiYHut9l+hvbRhynXePJUse+iIYOJx
         w0Q/a8EoDFkMnfzT00AZqv+6AiwyqwfuAVLF+E9ab5on6oSvjvdWENswNqAD5rzLbRO3
         f1NYoFu3I/aepG/Zgj5ZAQK2cUiTZZltvHaNQddq6jQFl3cCU9miwFWX38ilzatjiL+8
         Kx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=ymfU0Xs1qqK1Zx4fyxzJTXel57pMMUJX1l2KFv1hkjw=;
        b=jlNuStkrivZzfe0WWKx/TVtvgSXKvq17Ccms6dwwxBHOvkNAjGROTzvkCBfisFh6nJ
         0T7rK9fc5tbXh6WEX2J7h18IJtrgQ2AqlxEP3nVP50qBYj7ZQ0Ahbt3jQRYL5my+h8Mr
         KRV4MZ96AedXZUp6PGxN/TUnTLwXfdN3NkqV82mpPq5rc3dpupUcQ3GJ8mqq5fWN+eyj
         lHxtHD9M3IdJvhAEpHsRv+PftJHL5dXsc65mu+FRU5tBwZiWGH+Wn7497YrgBlAbkfzl
         01StPBYq3b5MBBAy49A1VC8rG8Qb7AVr1VyLF+en3oD3HqQdEpmn5UL+Uf0WOhWRhyOg
         WQfw==
X-Gm-Message-State: AG10YOQi9oY0KufD0gtvHsiiYNlCDufxUPrWXQ4NNyFNLR0pkMdpoUodvfmtZWJEWDtI2g==
X-Received: by 10.140.160.130 with SMTP id g124mr13641548qhg.88.1455850485888;
        Thu, 18 Feb 2016 18:54:45 -0800 (PST)
Message-ID: <1455850474.924.9.camel@gmail.com>
From: Daniel Micay <danielmicay@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 18 Feb 2016 21:54:34 -0500
In-Reply-To: <20160218110831.17429da5@pc1>
References: <20160217221921.GB24130@port70.net>
	 <20160218110831.17429da5@pc1>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jcPSg9dEY0PQPjQ9rlDv"
X-Mailer: Evolution 3.18.5 
Mime-Version: 1.0
Subject: Re: [oss-security] Address Sanitizer local root

--=-jcPSg9dEY0PQPjQ9rlDv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-02-18 at 11:08 +0100, Hanno B=C3=B6ck wrote:
> Hi,
>=20
> Thanks a lot for your analysis.
>=20
> On Wed, 17 Feb 2016 23:19:21 +0100
> Szabolcs Nagy <nsz@port70.net> wrote:
>=20
> >=20
> > https://blog.hboeck.de/archives/879-Safer-use-of-C-code-running-Gent
> > oo-with-Address-Sanitizer.html
> > (the later was presented at FOSDEM 2016:
> > https://fosdem.org/2016/schedule/event/csafecode/ )
> >=20
> > While these are interesting projects, ASan should not be
> > used for hardening in production systems in its current form,
> > so at least the language ("hardening", "protection", "safe")
> > should be fixed.
> Given that this is my work (I did the asanized Gentoo and the FOSDEM
> talk) I think I should answer.
>=20
> I hope I have made it clear that whether using asan for production
> purposes makes any sense was an open question to me. I have placed
> warnings that this is experimental and I didn't recommend any
> production
> use right now.
>=20
> I was aware about the performance and memory costs of asan, and I was
> aware that there are risks involved, but it appeared to me that
> balancing issues out it would still be a security win and might
> therefore be an option for some highly security sensitive
> environments.
> Your mail makes it clear to me that I was in error and at least in its
> current form asan is probably not suitable for secure use at all.
> I will add a note to my blogpost and the Gentoo wiki with a link to
> your mail to make this clear.
>=20
>=20
> Appart from that I wonder whether this should have any consequences
> for
> asan and which ones. Would it be desirable to:
> a) Try to fix security issues like the one you presented with suid
> binaries? (not sure what the best fix would be, maybe detect suid
> binaries and drop privileges back to user [not sure if that's even
> possible]).
> b) Leave issues unfixed and declare that asan is just not good for
> production use. In this case I agree that the asan documentation
> should
> probably include some more obvious warnings / explanations of the
> risks involved.
> c) Some other variant, like splitting asan into two different
> variants.
> One could imagine having a new cflag that would enable asan, but
> disable some of the ASAN_OPTIONS things like logging (however thinking
> about this I don't like it - if I imagine running asan on some kind of
> server I would want to be able to log issues).

Since it's not providing full bounds checking but rather approximate
bounds checking catching most common cases it's not clear how well the
design would work for hardening even with a security-oriented runtime
for ASan. It's also still going to significantly weaken ASLR even with a
hardened runtime. Security features need a clear threat model and ASan
doesn't have a threat model, since it's a debugging feature. It doesn't
provide memory safety but rather detection of common cases of memory
corruption. An approach to memory safety in C without mass rewrites of
code into an annotated subset would need to be drastically different
than the ASan design.

A large part of the quarantine-based hardening for lifetime issues (use-
after-free, double-free) can be provided by a hardened malloc without
the same drawbacks so that part is less interesting from a hardening
perspective. Bounds checking is obviously important, but people aren't
getting what they think they are when they're using ASan as that kind of
mitigation. It can be bypassed in general. It's not simply a matter of
hardening it. You want something else.=

--=-jcPSg9dEY0PQPjQ9rlDv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxoPqAAoJEPnnEuWa9fIqu1cP/jJ33TzipNBO5NtIn0hep8vJ
lFFkKybI64usX1TVRvkjbMmW9PKYUzy4XaUyw8boPYtYHBD5J2qCgrO2i/3Txplk
N6/wuUI6cADWRj02YUoNxVPmoxKcUipypjC7sW0crjVDfCOujRy3W7fwFZyPeJHw
Qn+oMKx/6wU8nAZe8663oRTNcPraKJvfzTU/w7xGZwsCtcCLT5zkHNbH2ewOyUP7
1XR2V9Z8lU7Q7Bt4vkuxqWBYYOO4uS3SvAgmqxxV7tQ8WulWdbBb2zSCmQ7vNlLd
LyltJY5xd2pnQwNUnwsRfHTZYMRmzz/Sr16L5BiGKOXal+QsmVRslgmjIm1STeGw
4J5o3PqB2YNkHxpXdAmT1bFtJZpKtcSIXLkZgNc8/HLQ2sKzqxUucUBS9mTIRnsO
OAu2PLe6fW1NDSWKsYKYKUEf1NHAx6ShpQnR54Lfr0Lp/yEyuHMQjWJmn6UB1m8a
sUqtM/DN5rDNyNEEga5+Z4E5a8L0XEpHnFPLllUufFsn4TJ8vnciLf3F1ihuwNTe
kdLBlZLg0Z2OpqfFMNoxogh6exGrhPFuHFEXySdGo3oqEfmhK6mgeCBncvrE3iSm
2/idtSReocJHi4lfOAhzf/V8TnqjEEUZj5y97ZWzN0OkRtHBzBaKWayAMIBn2HSc
2WNKLDSHZ/u5OOB/aYTT
=PazJ
-----END PGP SIGNATURE-----

--=-jcPSg9dEY0PQPjQ9rlDv--

