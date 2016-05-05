X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3408" "Thursday" "5" "May" "2016" "08:36:29" "-0400" "Stanislav Datskovskiy" "stas@loper-os.org" "<CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>" "80" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050512:36:29" "[oss-security] broken RSA keys" (number mark "        stas@loper-o May  5   80/3408  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505081757.GA23172@openwall.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" "<20160505081757.GA23172@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9629 invoked by uid 550); 5 May 2016 12:39:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7505 invoked from network); 5 May 2016 12:36:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to;
        bh=CAfdB9k2W2ZJsJ5ILKAZLNcPj0pgtMRGdXNqVG2V1xo=;
        b=n0HAsTxACXP9LZsQUxFU2QVSTpjE/2Wfzx4yOXxCI+6zjY6y88Y7NHDUb1l7B5BfTn
         /EOoXONHj4yyws2UnyBPAOvTzJTpORFmiYu7C6BL3yNgXjuXenuSHAO2Z4gl1I9vX1am
         NEInrq6Z97+EVCCo+Ux0JgdJZmF6WRLlBIwIEtLcnU/nu4hNTV3XAXVyPR+DfIe0AlES
         v52DIPUTZueYlSp03CmP8FnMx9CUZVB8G8N+LnHJ5UZZYPhlos7C4JfrAHJp1JCtiFyE
         j0H1PwsXmcDETpUefobI7I3ztuD118Myz8f26xFGlW0uJ1S16wx2Bt8xF+1NyOgsPJMN
         AAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=CAfdB9k2W2ZJsJ5ILKAZLNcPj0pgtMRGdXNqVG2V1xo=;
        b=MZaPHz/1QZNiUm4erMvBjymiSBx3kO00X/pI+Vb5BF5r2OQXLXdF/Rl+PP5kiJZ+AR
         B0ulHCWpyEhmLALrlVeGMckxWJguNCntUU08rwWrRyKtH0DW5HM4U4jrtyXQj2Kqu6KK
         73/f0dYlxvQWp7jPuQjsuvJSPiKEZI9Jq5WZ+PzGRGqmm1EheBFJTXXpYzw/mMtZcNKN
         D66DUY5LzygA/BN1lT4wDT0kUtOfywjN7TC5C6HXUMa/hu2Pruj9hnTNLPgwah4m9QcR
         /0UHqw7I9EGqJtDZ1rpjlUqTS6E8Kiq+3cnNtofYmcD/ZTX74LqfJyDzfK/dy4z9VGH2
         AOLA==
X-Gm-Message-State: AOPr4FU7xRqklTUh7f8YDeVTUKsDkxi09BW46myj2Ng9RqjO9EPechYaO07gTmw08Spfi2w+e71WXPRcHh2nIQ==
MIME-Version: 1.0
X-Received: by 10.28.227.138 with SMTP id a132mr3089894wmh.35.1462451789416;
 Thu, 05 May 2016 05:36:29 -0700 (PDT)
In-Reply-To: <20160505081757.GA23172@openwall.com>
References: <20160504124248.GA15148@openwall.com>
	<20160504172803.GA19393@openwall.com>
	<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
	<20160505081757.GA23172@openwall.com>
X-Google-Sender-Auth: tOYtyISmY7jVfDMT3bbWqHOV_Z4
Message-ID: <CAP9m6YcPrs7yaOHAHeN9cr_EhOJKHu2tptVwTm=ngTZrN7VZfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 5 May 2016 08:36:29 -0400
From: Stanislav Datskovskiy <stas@loper-os.org>
Reply-To: oss-security@lists.openwall.com
Sender: datskovs@gmail.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512


On Thu, May 5, 2016 at 4:17 AM, Solar Designer <solar@openwall.com> wrote:
> When a modulus is (mangled?) such that each of its 64-bit limbs consists
> of two matching 32-bit limbs, it is necessarily a multiple of 2^32+1.
> That's because it can be represented as:
>
> N = {an an ... a1 a1 a0 a0} = (2^32+1) * {0 an ... 0 a1 0 a0}
>
> where the {...} notation means concatenated 32-bit limbs (or base 2^32
> digits, if you will).  From this, it follows that pairwise GCDs of such
> moduli will also have 2^32+1 as a factor, and this is what ultimately
> causes the 32-bit limb patterns in the GCDs.  As Alexander Cherepanov
> correctly pointed out, even the seemingly slightly more complex 32-bit
> limb patterns in the GCDs are merely indication of them being multiples
> of 2^32+1.  There's probably nothing else to see here.

Mircea Popescu (trilema.com) and I figured this out last May.
But the conclusion 'nothing to see here, move along' does not follow.

>> 1) We presently know of 165 keys containing 'mirrored' moduli.
>
> This is similar but not the same as the number Alexander Cherepanov
> posted after analyzing your data:

The 165, as described in the linked piece on Mircea's site, were obtained
by filtering an SKS dump specifically for the mirrored-32 pattern. Last May.
Said dump is about 95% of the way through Phuctor at the moment, so it
stands to reason that all of them will appear in it soon.

> Is your definition of "mirrored" different from "divisible by 2**32+1",
> or does something else (what?) cause the 165 vs. 152 discrepancy?

See above.

> Are all of the "politically interesting" targets' keys (at least those
> you explicitly listed in 2 above) "mirrored" (and don't have valid
> self-signatures, as you say)?

DISA's key appears to be well-formed.

> Makes sense, but why would they similarly mangle the exponent as well?
> As Alexander Cherepanov wrote, if I understand him correctly, there's
> 100% overlap between keys with such moduli and with such exponents.

Presently I do not know why the perpetrator found it necessary to mangle
the exponent.

> As I understand it, the description at evil32.com in particular is about
> generating valid (and not necessarily weak) keypairs that would happen
> to have the intended 32-bit key id.  This is more computationally
> intensive than the "mirroring", but it is fast enough, is an
> older-known(?) and more obvious attack, and it doesn't expose the
> encrypted data to other/unintended attackers (OK, the "evil guys" might
> not care either way).  So it is a little bit surprising (but just a
> little) that someone would go for the "mirroring" instead.
>
> Alexander

I haven't any notion of why this particular mutilation was chosen.
But the particular list of victims is sufficient to rule out 'software bug'
in my mind as an intellectually-honest explanation.


Yours,
- -S

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQEcBAEBCgAGBQJXKz47AAoJELmCKKABq//HLToH/Re+2x5wXZp/RpJBP4Ca5juU
OeXzto0GIVYgC4bO+IWchpyBM9I2O5SAZvv1+oDyCs/H3dZV/SG5uCTEow/Xtseu
rMbfBrObxZSQiysfR9c3/xlLdpaY/Djj43TpSmzIJZhUDVf1CPO8PSOLiQEAVctQ
omysFkfHHpT/FWBtGOq7Ew3xA9Jj4qcQVgST+4cKXuNfpMQCd6+6wJoQGvn8WInJ
b0Ut5V0v88DzsvSlRe4BxHvZxi/0zHr4L/7sLeSdJ6z2WOG3tEKS7Fpe5qh5PVXc
Jkd/+K//ShVOMd8yw3Ha45/3F5LFVO6sN0WM50qQAUoTguQA6GCiiFtP9pORKgU=
=tFtl
-----END PGP SIGNATURE-----
