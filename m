X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3437" "Thursday" "3" "January" "2019" "17:44:17" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=Tt2UDmkoQE0GwjZbvhGjePf=S38Ke=GLDfbt8JtMp=Q@mail.gmail.com>" "83" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010322:44:17" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  3   83/3437  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<868t01ct3p.fsf@shell.gmplib.org>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>" "<CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>" "<868t01ct3p.fsf@shell.gmplib.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1060 invoked by uid 550); 3 Jan 2019 22:55:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24340 invoked from network); 3 Jan 2019 22:45:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=djBPEJ4Fv8emkkAk/08AtAA/7sCRZbEBkIyFUq4M4C0=;
        b=gTNrytM6Kwb1V5wuAbjfTw7NwzRBXRUhaHcNPgLR3pMTEXMj9LiJhjm5DIpZytf1DM
         yyDIdSVh8vKtT1DkVgtct62OKn5oPLwwyrDo8OYNdYFKEIfmC78MZawveEQt+Vzhpozd
         pWgxIrThCSc3duYxruILAbrI2WChiJRUxxbZtqLXwl69Dsi7f2FdOuJxmjNLuUxJCr5M
         1cmuYdARt1gQNK75gZye9PHXOyiXpnrUGqpMmOWOviKhBbxQGhU9v91lE4RVfbMi8WAV
         EsRnKofjcFvt9CxQczk3aAhIKhy8Vm12Hdse/S6dYn0pvOAhECTxeikEtTOm7Y93cteP
         OOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=djBPEJ4Fv8emkkAk/08AtAA/7sCRZbEBkIyFUq4M4C0=;
        b=P47/3lLvBpOuLKwHGck52C/rqPz6jcdPmkkmyy4iPw3E0JLJnZIO8+J9G+fTrIXN8p
         NdlqpgyKkAZBnum1QocT+/c95q1i2chfqdJKDls/6EJ7X4iBhaPhZonc//vWBsM0Llyx
         50/J2xgT6DBfT04MXXmy2IQym7gyjfM8amb+ah4tDx4jYNH128mrM7lEQHrv7NqYWlq7
         5PDdudfhCs3y2Dh70oX3qAEWo6CsQpXgSL59si59axMi4AzGnuU8WEVJNyufcy0llhc/
         9zMLeIbI9UCTUGjP0omM9v1WUkal3dkBdG/dGhltVEbr3t9INq745ij09VF18Zj7eoTF
         fEdA==
X-Gm-Message-State: AA+aEWZhXaLk5cxoWxkwHrqpyhbU/a8CwhfkVuOcn9soh8gkSQSMDiwL
	0QY6OKTS4y3Gh7pqta4TI0OCs7o8THD/Jx382JhjJNM/
X-Google-Smtp-Source: AFSGD/UomiZngV681FobnkdXlDTz5v72FWf6USBFlZoE3cJpS+v/P7P9o5eKEOEDwfrLA/EpmxA4kiM8+926A2UwVFA=
X-Received: by 2002:a24:710:: with SMTP id f16mr28028665itf.121.1546555498465;
 Thu, 03 Jan 2019 14:44:58 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>
 <CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com> <868t01ct3p.fsf@shell.gmplib.org>
In-Reply-To: <868t01ct3p.fsf@shell.gmplib.org>
Message-ID: <CAH8yC8=Tt2UDmkoQE0GwjZbvhGjePf=S38Ke=GLDfbt8JtMp=Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Thu, 3 Jan 2019 17:44:17 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: =?UTF-8?Q?Torbj=C3=B6rn_Granlund?= <tg@gmplib.org>

On Thu, Jan 3, 2019 at 4:46 PM Torbj=C3=B6rn Granlund <tg@gmplib.org> wrote:
>
> Jeffrey Walton <noloader@gmail.com> writes:
>
>   Here's what I witness on a BananaPi and a couple of other boards. Can
>   you provide info on the ARM boards you are using? I have about 8 of
>   them for testing, and I may be able to duplicate your [successful]
>   result.
>
> Marco and others have told you to read the GMP manual.  People have
> explained what you do wrong and it is clear that you know very well why
> your CFLAGS messing breaks things.  Yet, you insist on spreading the lie
> that GMP "does not build".

You have the build script. It is called test-gmp.sh. There's nothing
special about it. It's a straight configure; make; make install. It
bears witness to the errors GMP's configuration produces.

I'm not sure how that is spreading lies.

When I said, "ARM A-32 does not work at the moment due to GMP build
errors", it was a statement of fact to explain why ARM A-32 was not
tested. It may speak to a broken configuration script, but a broken
configure script does not leak sensitive information. It is really not
worth discussing here.

>   Returning a failure from mpn_sec_powm would be a most welcomed
>   improvement.
>
> You have repeated this several times already.

Actually, that was the first time I suggested it.

> The GMP API is what it is.  If you don't like it, well, we're so sorry.

Yes, it certainly is. It is the cause of the troubles for some software.

Some software probably does not care and can get along fine with
crashing. For example, I don't really care much if Notepad or Paint
crashes because it is not handling sensitive information.

Vincent and Halfdog talked about complimentary security controls to
remediate the information leak. However, their discussions apply to
some enterprises and take a considerable amount of knowledge beyond
"disable coredumps".

What their discussion has not touched upon is:

1. not all enterprises have knowledgeable engineers
2. not all applications are enterprise
3. not all security controls are available

Item (1) is self explanatory. Sometimes there are A players, and
sometimes there are B and C team players.

For item (2), there are other non-enterprise users, like folks using
Android, iOS and Windows devices. iOS devices don't allow you to
control crash dumps. They are written and retrievable. About all you
can do is decline sending them. I also believe they are sync'd so a
dump gets transferred to a Mac or MacBook. Yet more egress...

For item (3), there are often missing complimentary security controls.
For example, a TPM is available on low-end netbooks. A Windows machine
could encrypt the filesystem so the crash dump is also encrypted.
However, a user running Windows 10 Home does not have Bitlocker
available. It is an upsell item.

>    <other nonsense removed>

> We've had enough of your nagging and aggressiveness and your threats in
> private email.  Your messages to the GMP lists will henceforth be
> automatically discarded.

Hugh? As a courtesy gmp-bugs was CC'd on messages to the list. And as
a courtesy I emailed you offlist letting you know I was going to
discuss this in other forums.

Claiming a discussion of insecure use of assert is aggressive or
nagging is a bit tenuous. So is claiming a courtesy email is
threatening. But I understand GMP is your baby and criticism is
probably not welcomed. My apologies for that.

Jeff
