X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1545" "Tuesday" "1" "January" "2019" "11:45:39" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>" "50" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010116:45:39" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  1   50/1545  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<86o990wdu4.fsf@shell.gmplib.org>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>" "<nnwonoob4v.fsf@armitage.lysator.liu.se>" "<86o990wdu4.fsf@shell.gmplib.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7929 invoked by uid 550); 1 Jan 2019 17:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25988 invoked from network); 1 Jan 2019 16:46:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=OSSZxFOdIuMf8S6Sx50xX09/RhpQoRJBaP89kC4GX7Q=;
        b=u2xqLBtJDwCYFAAN8wv1/PToiAuEMu8U2oNSpzeW4aJ+er5MhDeNbQfUjr1MF+XgLh
         fRHV6YShzJtOZ+YJ6tl8Y3RbaCyTslBpSrDprr2cWfx5rAK03zwxML5OsJUWuLiHFJiU
         wlXetLmmVT4dxIrSrTXf5kNUkLfXoGPgu1J7sf7Ym7tO2qZpYYzu6mjKk2wxlDlbG3Aa
         dLH2IOkzo/mIe/v5B0CETNpCFPByWYFSfKL6HBLN9ryqyLAyq9a1jDk4gwBmRKf5vAY6
         xs8ekucdw9YBB5NabhH6q2AvqiNUxU845sKuebniYQUuoyvbtgg3TwpC9n3l48ZTC0wC
         32Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=OSSZxFOdIuMf8S6Sx50xX09/RhpQoRJBaP89kC4GX7Q=;
        b=lvhs3/z4/387FV1EX+Barr9XE8YS5SzO6vwuCni0RBOr8HkwgyCG0Y1+LSgascDjfT
         Y1TFqqzkW1sGhoWoeYmKDKQGif9cKQz3K/tcx0Kcg+X5X+7cQxqHQOugBIJiPaQtpEAY
         NgElZ1nnPrC6FedhUlu6/TeOp5GGka9uWtiiRpJWYEGjoD4XQxdOVHYWdVkxhtT64OkC
         A9pRwCQjuqRXo/Bcp/vpPVvKxssQhH/GgNBk0VFprIYY37XsALm1hTeQshiHqHKPdboM
         QCrxCT6uyP67hqk+vucgB/ky+PQkfolrij7GbzvDbvZhaGbpsf2U1VWRmwVWwgHJF2sc
         tC7g==
X-Gm-Message-State: AA+aEWboUqjjc2p4hU17TV8QJdPu7rEf882XwhB2Ek6O9SUfcRizCV9m
	x5mwUoouthdhrhc1HML6aFgCjszrcEPM8MSCpTA=
X-Google-Smtp-Source: AFSGD/WxBUA5Z7ut4G9VHt0bDTitjG3+TwwPDArueQr4pRdfD/wki4oxW/BkbIQiYGGn04Njwu4lipfbTBLLqEZoW+k=
X-Received: by 2002:a24:e44:: with SMTP id 65mr23465353ite.154.1546361172568;
 Tue, 01 Jan 2019 08:46:12 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org> <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
 <20190101112042.GE7238@zira.vinc17.org> <nnwonoob4v.fsf@armitage.lysator.liu.se>
 <86o990wdu4.fsf@shell.gmplib.org>
In-Reply-To: <86o990wdu4.fsf@shell.gmplib.org>
Message-ID: <CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: =?UTF-8?Q?Niels_M=C3=B6ller?= <nisse@lysator.liu.se>, 
	oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Tue, 1 Jan 2019 11:45:39 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: =?UTF-8?Q?Torbj=C3=B6rn_Granlund?= <tg@gmplib.org>

On Tue, Jan 1, 2019 at 11:19 AM Torbj=C3=B6rn Granlund <tg@gmplib.org> wrot=
e:
>
>   The assert that Jeffrey has hit is in sec_powm.c,
>
>     ASSERT_ALWAYS (enb >=3D windowsize);
>
>   As far as I can see, "enb" is the input argument to the win_size functi=
on,
>   and "windowsize" is the return value. I'm waiting for more information,
>   since it works fine in my build. Possible explanations I see are
>
> A reasonable assumption is that this user has modified the sources to
> cause this bug.  The motive would be to support his auxesis about how
> insecure GMP is.

My bad, I did not mean to imply this was a problem with GMP only. GMP
has a lot of company, like GnuPG and OpenSSL.

I believe the assumption  is incorrect. The sources were not modified,
and a standard (?) 'configure; make; make check' was used. The
reproducer script is available at
https://www.openwall.com/lists/oss-security/2018/12/31/1; see
test-gmp.sh.txt.

For completeness here's a quick audit of some security libraries.
Botan, Crypto++ and OpenSSL use -DNDEBUG to remove asserts from
production/release builds. They use asserts as a debugging/diagnostic
aide. They don't depend on crashing the program and risk egressing
sensitive information outside the app's security boundary.

gmp-6.1.2$ grep -iIR assert | wc -l
4867

openssl-1.0.2$ grep -iIR assert | wc -l
436

libgcrypt-1.8.4$ grep -iIR assert | wc -l
245

gnupg-2.2.12$ grep -iIR assert | wc -l
1337

cryptopp-8.0$ grep -iIR assert | wc -l
1123

botan-2.8$ grep -iIR assert | wc -l
746

Cheers, Jeff
