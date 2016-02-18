X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5292" "Thursday" "18" "February" "2016" "14:39:47" "+0100" "Balint Reczey" "balint@balintreczey.hu" "<56C5C9A3.6090800@balintreczey.hu>" "124" "Re: [oss-security] Address Sanitizer local root" nil nil nil "2" "2016021813:39:47" "[oss-security] Address Sanitizer local root" (number mark "U       balint@balin Feb 18  124/5292  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160218110831.17429da5@pc1>" ("<20160217221921.GB24130@port70.net>" "<20160218110831.17429da5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11341 invoked by uid 550); 18 Feb 2016 13:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28147 invoked from network); 18 Feb 2016 13:40:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=GHgHkgdZy/5w9TtRM9FxRGFGJ+8V2rHpvxZ75B9dK0o=;
        b=cEeEhbQ3LqCAzUhRbt6lzRKlWgsWGVn84sXvGYZ5TaJeEGGTmnKhRIg+C9cwj9V2ML
         yIvzxQrwa5WkimbOCLpENKQD8xfwhpLRhEtOy89rdcXUNBuUUXttktJoPZptvcC7I1ws
         hThyKJLMbjd5/BlmIsLXisxCSh6Wc3uWG5XCUAXyzfb3IlyyynSEnUgUQTKHJy3E56Rp
         v0/DXMGbjw7+NfcQXbrJK7TxeJPscZko8ZLfVTHFVgEzeiZK04+RSpmPYBYoQum8iVIP
         ncDUPPXiixxQvqBcGMkyL0vFiwAHjkgdw7hRxVIaZWDVS7qTGCj7iI3xpsqo/05QrnVh
         g0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=GHgHkgdZy/5w9TtRM9FxRGFGJ+8V2rHpvxZ75B9dK0o=;
        b=EiNv6N05TIFWGKHPjPfuhlqsThpGiI6dbLFbKm+gTvjVSFUhUPY3qu5p0XCK+iDJsr
         AheI3QCsg7L7XhTGDZH/Oq/NxCkkCAzbDqek8wbL3tDvz3rVhp3Z607emdG0ltON4YIB
         WK4xvUrNrvUnZ848Sp+W2m5b1BqrLuDXy4wdR4ugGlBYOszx06dz8O2xHNIJA5x2IlpS
         LVG8DYlGS6RflAO+rmzkrwD+smQglgKWaBnibPuFQJIbmyAEl3BL6vDZSmn/bRX3jHTH
         qNAKBa0zFjLQgE9byrcF1BVezuptkhcVtH7BsSJgn9WHvi7rnhjqzfQwzy+UG6GgfwZH
         rdUA==
X-Gm-Message-State: AG10YOQnbuaEtS6zYy9DG5b+sTxWU551/biCyfZetmlPEJOGGQBumwcyMkvPWw6KKdB2Tw==
X-Received: by 10.28.96.85 with SMTP id u82mr3328001wmb.81.1455802801121;
        Thu, 18 Feb 2016 05:40:01 -0800 (PST)
Sender: =?UTF-8?B?UsOpY3pleSBCw6FsaW50?= <rbalint@gmail.com>
To: oss-security@lists.openwall.com
References: <20160217221921.GB24130@port70.net> <20160218110831.17429da5@pc1>
From: Balint Reczey <balint@balintreczey.hu>
Message-ID: <56C5C9A3.6090800@balintreczey.hu>
Date: Thu, 18 Feb 2016 14:39:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160218110831.17429da5@pc1>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0FQtvamoN32praTi2KvnGEAnNIsKvbV9o"
Subject: Re: [oss-security] Address Sanitizer local root

--0FQtvamoN32praTi2KvnGEAnNIsKvbV9o
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 02/18/2016 11:08 AM, Hanno B=C3=B6ck wrote:
> Hi,
>=20
> Thanks a lot for your analysis.
I would like to thank you for your analysis, too.

>=20
> On Wed, 17 Feb 2016 23:19:21 +0100
> Szabolcs Nagy <nsz@port70.net> wrote:
>=20
>> https://blog.hboeck.de/archives/879-Safer-use-of-C-code-running-Gentoo-w=
ith-Address-Sanitizer.html
>> (the later was presented at FOSDEM 2016:
>> https://fosdem.org/2016/schedule/event/csafecode/ )
>>
>> While these are interesting projects, ASan should not be
>> used for hardening in production systems in its current form,
>> so at least the language ("hardening", "protection", "safe")
>> should be fixed.
>=20
> Given that this is my work (I did the asanized Gentoo and the FOSDEM
> talk) I think I should answer.
I'm the other guy, working on the special Debian port:
http://balintreczey.hu/blog/progress-report-on-hardened1-linux-amd64-a-pote=
ntial-debian-port-with-pie-asan-ubsan-and-more/

>=20
> I hope I have made it clear that whether using asan for production
> purposes makes any sense was an open question to me. I have placed
> warnings that this is experimental and I didn't recommend any production
> use right now.
>=20
> I was aware about the performance and memory costs of asan, and I was
> aware that there are risks involved, but it appeared to me that
> balancing issues out it would still be a security win and might
> therefore be an option for some highly security sensitive environments.
> Your mail makes it clear to me that I was in error and at least in its
> current form asan is probably not suitable for secure use at all.
> I will add a note to my blogpost and the Gentoo wiki with a link to
> your mail to make this clear.
I was in a situation similar to Hanno's and I added notes about the
potential risks and limitations linking to this thread.

>=20
>=20
> Appart from that I wonder whether this should have any consequences for
> asan and which ones. Would it be desirable to:
> a) Try to fix security issues like the one you presented with suid
> binaries? (not sure what the best fix would be, maybe detect suid
> binaries and drop privileges back to user [not sure if that's even
> possible]).
> b) Leave issues unfixed and declare that asan is just not good for
> production use. In this case I agree that the asan documentation should
> probably include some more obvious warnings / explanations of the
> risks involved.
> c) Some other variant, like splitting asan into two different variants.
> One could imagine having a new cflag that would enable asan, but
> disable some of the ASAN_OPTIONS things like logging (however thinking
> about this I don't like it - if I imagine running asan on some kind of
> server I would want to be able to log issues).
>=20
ASAN and UBSAN were excellent for finding and fixing bugs in the
Debian toolchain and now I'm thinking about splitting the effort
into a QA focused version with ASAN and full UBSAN to find as many
bugs as possible and a hardening-focused one with trap-only UBSAN,
PIE, and other security-related features which are safe to use on
production systems but speed-wise are still tolerable.
The hardening-focused one should be able to run on
Grsecurity-enabled kernel.

I would also be interested in experimenting with a hardening-focused
version based on musl if it integrates ASAN features to libc.
Creating such new ports became much easier thanks to the fixes to
Debian's tools.

The hardened1-linux-amd64 port is not officially accepted to Debian
and the exact features it would provide can be changed. Ideally
it would ship a libc with an ABI enforcing safety measures (making
it ABI-incompatible with standard libc) and compiler defaults to
help writing secure programs. At the moment don't see such a libc
variant but musl + ASAN parts could be a good candidate or
SoftBoundCETS was also suggested to be used. I would like choose
a technology which runs on all CPU architectures, but if it can
be sped up by for example intel's MPX then it is a plus.

Comments are welcome!

Cheers,
Balint


[1] https://lists.debian.org/debian-devel/2014/04/msg00400.html


--0FQtvamoN32praTi2KvnGEAnNIsKvbV9o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWxcmsAAoJEPZk0la0aRp9Ub4P/0RV4dE5ak39+9RoPFgiwfyx
Xthsas58/INvysW0Wl7ZwBqOB3ROsTzC+aN5Bv7S+qkECijqhzlDEf6HsyKn5gy+
P3TRsJwPDerRm+oXLTPdQShRCF95V3FgK5E4PlD7kZVItCoY5heuEW0NRAqUD4RH
kC54WC4NLpPijQ1jH84uLkU/Gux+JhZxGFhgP6kBL6M+hrhREDnAQLuw8KtqI8Ha
lxaG/njU9T7EdIAINBeLp4uYrVutfCDS/sgl3TkAOOapyOuaeTd9IE86oXoyV+0D
RRgvElo8Wd5/Zgs9vtbP35trVE92pynWdRUr1v8jBZtzxS8qDHNt21EOk8pt/emW
Jlg7T2ab1lNr8LynxMQe8leOWM5+B49o0A5Yp7M5fa76m5xfiivR1hH4cVLG9fbC
TKWTVBOAedd9ghvhPWalJA+ad/yj3HNtJraJ0K6HFfObtKaWLDTpyg/AesAnNmKB
1rDAiLXuAUyThftGozJAhS4gVHdY0ETZzcIkd0CO5RtjNSpKV3UGNSPO+dGJaY8b
xYrVJU4b2UuxRhUu02yQKx5V8WUHQ40RDnEtSKwU0zKCQFTrAenxUejmX3TBVlC4
vranYrywXWHrHAde7QQRIAI+QfzvXvAboD/b9KUVemrlqj4xJgFWVjEYlIA2Nedp
eW4vVYtuoOfrEjT/Okqb
=WsB7
-----END PGP SIGNATURE-----

--0FQtvamoN32praTi2KvnGEAnNIsKvbV9o--
