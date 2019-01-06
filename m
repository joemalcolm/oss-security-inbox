X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1486" "Sunday" "6" "January" "2019" "10:39:50" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=v1ivKBDtO13Qy9vA3xs2kQya1nvOvKfv=wTDHdZAhXw@mail.gmail.com>" "43" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010615:39:50" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  6   43/1486  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<nn4lamm60w.fsf@armitage.lysator.liu.se>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>" "<nnwonoob4v.fsf@armitage.lysator.liu.se>" "<86o990wdu4.fsf@shell.gmplib.org>" "<nn4lamm60w.fsf@armitage.lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14320 invoked by uid 550); 6 Jan 2019 15:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3979 invoked from network); 6 Jan 2019 15:40:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=yfc3VRK3PzWywmc3m62MfymhlR6ch67UUr/kN6SGcRY=;
        b=gxrR2qiUQQZerRJHsI56bgzPBrlqQhK3X5Df4ZEQrsL0zE/QZtr08ZOK2bRDw57QCU
         urELMm735YfT9sD0p+EagaihSPWgC8PEgFEdv3PtakXDKDYPvHB4toZdU6aQJXLkAl0q
         Wnw4D1MSboT0hq7dWchQNthLlT+M+0TfRPg+vUmSJ/YIrMAfE5djoXaAxWrujLW0/L2c
         Eg3xFIhFDMd+WsY6K60XYUenqb8B09A0tM9mpTpXy8VJAbuX6KeDA/7oXHFNu54VHGA+
         Ckf9+MKs+EzN4FEA0V2S/0ErMLruob6y0XhoxscRsn4GGXiRGaP3d4TMx4mNmD9U6s5t
         /mkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=yfc3VRK3PzWywmc3m62MfymhlR6ch67UUr/kN6SGcRY=;
        b=jL1qeuSlCeNGGC/2YT8wX1gXJFoXp48K+GsvbmOJaO5uHLF1153ZiFkP8N2szaOny3
         fORjf+rhmTVZnnRFcVhTRyOvEs9g5PhL+hVwr+VvKia4HV0215RevYFfN9eZutdUB3VN
         XZZr9rdIor73vIWMyrr+ua2abN2qJeyUgtCfTOckZ6mcdKiZUkA6J3cTOTgzvO9+7u0a
         Kya0QFdDj4ht6apJ2fqhje1rUlQS8qmqAVc16QpAGD75dbKtUzAjKrz5QaU3QdI3tU34
         KlR+mpDJPy4bgLDxAnSBfIpQYLpgwsL5H4gOFmZSSVrvzOnEqUN+VIrhuFKEkVrBEV3E
         s59g==
X-Gm-Message-State: AJcUukfkkU9SphU71bU4PFuyUWHSidWHBuXhOL4nL5aMVY62SgqQukwn
	AAxbsKZdy/YkdEWODRQqriV4UmNgItGhZAFnExQ=
X-Google-Smtp-Source: ALg8bN4FX/wqxBipUX9enMNkvsEVjnL2i2b629eDujGkdpr3/1MW1sCNNpNNh6oc9suMMYJUNdWcDZMtE0pYzsgdTjg=
X-Received: by 2002:a24:1f0d:: with SMTP id d13mr5113555itd.140.1546789238990;
 Sun, 06 Jan 2019 07:40:38 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org> <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
 <20190101112042.GE7238@zira.vinc17.org> <nnwonoob4v.fsf@armitage.lysator.liu.se>
 <86o990wdu4.fsf@shell.gmplib.org> <nn4lamm60w.fsf@armitage.lysator.liu.se>
In-Reply-To: <nn4lamm60w.fsf@armitage.lysator.liu.se>
Message-ID: <CAH8yC8=v1ivKBDtO13Qy9vA3xs2kQya1nvOvKfv=wTDHdZAhXw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Sun, 6 Jan 2019 10:39:50 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: =?UTF-8?Q?Niels_M=C3=B6ller?= <nisse@lysator.liu.se>

On Sun, Jan 6, 2019 at 5:31 AM Niels M=C3=B6ller <nisse@lysator.liu.se> wro=
te:
>
> tg@gmplib.org (Torbj=C3=B6rn Granlund) writes:
>
> > Let's move on.  No bug to be found here.
>
> Just FYI: There was a bug in Nettle's test code, a line
>
>   assert (mpz_invert(key->d, pub->e, phi));
>
> Obviously not working with -DNDEBUG. Fix in commit
> https://git.lysator.liu.se/nettle/nettle/commit/73d3c6d5586cc0fd81eab0810=
78144d621de07b4

A small suggestion to remove the sharp edge. If using -DNDEBUG is not
supported, then fail configure when it is present. Something like the
following in configure.ac should work well:

    BAD_OPT=3D`echo $CFLAGS | $EGREP -c '\-DNDEBUG`
    if test "$BAD_OPT" !=3D "0"; then
        AC_MSG_ERROR (...)
    fi

And as a safety net, maybe something in the source code like:

    #if defined(NDEBUG) || defined(_NDEBUG)
    # error NDEBUG is not supported
    #endif

There are two reasons for the suggestion. First, RTFM does not work.
If it was going to work, then it should have happened in the last 50
years or so. Gutmann provides the user psychology behind it in his
Security Engineering book,
https://www.cs.auckland.ac.nz/~pgut001/pubs/book.pdf .

Second, folks who have a Windows programming background use -NDEBUG.
It is a standard practice and not a one-off problem. The issue should
surface again for two use cases. First, Windows programmers working on
Unix and Linux. Second, Windows programmers who are porting projects
to Windows.

Jeff
