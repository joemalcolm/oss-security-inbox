X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3797" "Wednesday" "7" "November" "2018" "09:42:46" "+0200" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>" "94" "Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" "^Date:" nil nil "11" "2018110707:42:46" "[oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" (number mark "        bbrumley@gma Nov  7   94/3797  " thread-indent "\"Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures\"\n") "<20181106192131.GA14967@openwall.com>" ("<CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>" "<20181102114655.GA2758@openwall.com>" "<CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>" "<20181106192131.GA14967@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1932 invoked by uid 550); 7 Nov 2018 07:43:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1914 invoked from network); 7 Nov 2018 07:43:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RYJU7Sz2PpWBVs647tyLhgLEIgD+eK4fYlPDh32uujs=;
        b=obCYTh/qRIFmCFfHHLzorDvCbCHNxMMXEBbzlso9lYpv1A+S89/pHXwZGyu7nbqptN
         DxVxNLcc4cfQjrDC4SqJoCzDyzLoKi9CW1Me3L9zsaeX4BajFz/xREa/6kM8VuxxcmAn
         5EWTcb+PCVvrIuKzoVkoLms3lSinWPcwTWfNSDUfi7sUr0D5WWScgsnTepptv0/LB2J4
         kNyejvnIvwfM2g/6O0YduavhzoZSueoo4DMgurANoHw7secq4Fc+jCrRvKcW9vkRCxTt
         m3qsLVOzaY9c0YBVZxL138O/HH6jFwb6swU9GKNkzpDbhTtpaJkhQ948MTzuktn85jr2
         HQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RYJU7Sz2PpWBVs647tyLhgLEIgD+eK4fYlPDh32uujs=;
        b=CvbXCYb+Cj0qjPuJiIvBNSdlIlf0KPb62IPSN9H6Sx3SQRJXPHv8/3kL1NKr1l3dId
         RnZoxJtd3U9a1BCVq0nrZ51wCbCkZVwA/MQigSlYIdy0RJ6R8KYy/sAvPo4LRbaaplz6
         VeZO6PdhL8R25XlpxxsHYGk82EhLURHshvsuPLZbtZJjlBtAzZPq/SZwPLIk14E195jn
         t8XNdKsNMwyNKLQ97e18vc/0P6l2hKXbZsyGb1NDdmUYPaTcddXKMSlvN0Btw8ML1fTv
         uUyD+Fmw5BqNHSAGOBsLqiLUpsVCqu9Hes9dcEGc+Lz/FO8cijb18P1Msk9YYO1dsAx0
         uclg==
X-Gm-Message-State: AGRZ1gIqB6V43nzliTivXlDBjfdlfWRJHjaUJGCQUJXCO5GN7wmfLY7L
	xhBmvQlKZI7mqAEygXQ57R6NDjqtEBiW+nGM5axj5vw=
X-Google-Smtp-Source: AJdET5dl9PkECKcQy+hclyEexWQQdHtqKZVYsehQjoP3WjufgdRsgXFYsmya6ooAopsbiPacqg24Xjy+bEKnE4Rwwqc=
X-Received: by 2002:adf:9403:: with SMTP id 3-v6mr801343wrq.54.1541576577781;
 Tue, 06 Nov 2018 23:42:57 -0800 (PST)
MIME-Version: 1.0
References: <CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>
 <20181102114655.GA2758@openwall.com> <CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>
 <20181106192131.GA14967@openwall.com>
In-Reply-To: <20181106192131.GA14967@openwall.com>
Message-ID: <CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 7 Nov 2018 09:42:46 +0200
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on
 SMT/Hyper-Threading architectures
To: oss-security@lists.openwall.com

> > For the 1.1.0 branch, at
> >
> > https://github.com/openssl/openssl/commits/OpenSSL_1_1_0-stable/crypto/ec/ec_mult.c
> >
> > everything starting from aab7c770353b1dc4ba045938c8fb446dd1c4531e

This was not very responsible of me, since the changes are across
several files. I reckon the best source is checking the diff between
1.1.0h and 1.1.0i releases.

If you are a package maintainer, and are putting together a patch set
for this, please reach out to me. My team can help test.

> I assume ec_GFp_simple_dbl and ec_GFp_simple_add are in fact called via
> EC_POINT_dbl and EC_POINT_add (via function pointer indirection inside
> them, which I didn't follow), respectively.  This code skips the call to
> EC_POINT_add when digit is 0, and the setting and handling of is_neg is
> also potentially leaky:

The skipping when digit is 0: yea that's basically it, and what
researchers have been targeting since 2009 (Section 3.2):

https://www.iacr.org/archive/asiacrypt2009/59120664/59120664.pdf

The setting and handling of is_neg: yea that leaks too (Section 6.4):

https://eprint.iacr.org/2015/1141

> Also, while the newly introduced implementation is still called
> ec_mul_consttime in OpenSSL_1_1_0-stable, it's renamed to
> ec_scalar_mul_ladder in OpenSSL_1_1_1-stable and has this comment on it:
>
>  * NB: This says nothing about the constant-timeness of the ladder step
>  * implementation (i.e., the default implementation is based on EC_POINT_add and
>  * EC_POINT_dbl, which of course are not constant time themselves) or the
>  * underlying multiprecision arithmetic.
>
> Is this still an issue needing fixing, or is it e.g. believed to be
> sufficiently mitigated by blinding?

Does it still leak? Yes. For example, browse this PR:

https://github.com/openssl/openssl/pull/6116

Where David Benjamin (BoringSSL) states: "Note BN_mod_mul is itself
not constant-time ..."

So if a library's basic arithmetic function that takes two numbers,
multiplies them, and returns the remainder after division is not
constant time, that potentially affects quite a lot of public key
cryptography across the board

In the context of OpenSSL ECC, should people worry about it? Not
immediately. But don't take my word -- look at the data:

https://eprint.iacr.org/2018/651

(You can safely ignore the crazy Chinese crypto stuff -- that was just
a way to academically sell the ECC improvements in OpenSSL.)

That paper shows a concrete, measurable improvement in side-channel
security with the changes that went into 1.1.1 and 1.1.0i.

openssl-security reached out to me recently for some disclosure
assistance -- here is a quote from me in that discussion:

"In the future, you're going to see more and more SCA attacks drilling
down into the BN module (where it's harder to exploit). It's a good
trend, as lower hanging fruit is drying up!"

OpenSSL knows that constant time crypto is important. At the same
time, there is no quick fix because the set of crypto that OpenSSL
must support is significantly larger than you'll find in other
libraries that lack flexibility (and market share).

For OpenSSL, it's windy at the top! You will see steady improvements
in OpenSSL side-channel security moving forward.

> P.S. Congrats on receiving the grant for "SCARE: Side-Channel Aware
> Engineering", and I hope we'll see more excellent research from your
> team in the next 5 years:
>
> https://pervasive.cs.tut.fi/?p=2747

Thanks :) If you're still reading, here at the end a call to action
for researchers.

If you are a side-channel researcher: Don't just approach
openssl-security pointing at a line of code that you think might leak.
At a bare minimum, accompany that with patches. Even better, bring
them empirical data. They are not side-channel experts, and you are --
so act like it.

BBB
