X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3570" "Friday" "20" "April" "2018" "09:07:45" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5Z6wFXBDeQPyOrpiVwFARQLvpyEYkg1TS7rSaEpCJo=jw@mail.gmail.com>" "109" "[oss-security] Re: CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" nil nil nil "4" "2018042006:07:45" "[oss-security] Re: CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" (number mark "U       bbrumley@gma Apr 20  109/3570  " thread-indent "\"[oss-security] Re: CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths\"\n") "<CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>" ("<CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25759 invoked by uid 550); 20 Apr 2018 06:07:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25705 invoked from network); 20 Apr 2018 06:07:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=g4khNJIUgIgCyKynNScYQFjDkJH2O9PAGhfollyINrY=;
        b=qZ/ZsUCv8leokd5MCvDZMYf9CLpYydhv/7jMzk7nEusR0pIlUgaFaxCIf/kLugFUhM
         HzNBiZ69Uz7JNhqY0nXk+ecdSQHVIN5GbCJWMaNTirsNzWXxKyLMmrS9U1sQzC0mQ5DE
         pxL+0qJ/beTqGcMpIa12xuBrF85nJ4ljIvuX8FX3Jnm6/qtHDTYSzLA2t0xxb4uCj9+E
         sfvoKslGI2J6BL6rrRJjDq5GYBqJbwB8F4c0hsv2PDcT3EcHKHxYHTJnOj8qz4Hi99YY
         Um1qdzh6GEf9GJNnLAwlS/TPtEyVMB6Vx6E9KuDgmioTy15ZwxM6ytP5ylzFbWBFA356
         u4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=g4khNJIUgIgCyKynNScYQFjDkJH2O9PAGhfollyINrY=;
        b=EgE6cs3wi9LkSrBwjtqebv58j3Vdy51JIkf8xMG6glL32oLNQSohnDmnwQkcfV5iFf
         Ck9WoT34DKO/KHT/WHx+oCmLGJRk/x1TJpfnErsfiQx7QIs/zb0KgYMmyS0a+I3zVGVy
         S1yD8h2GxGHECefgECwaQx7HkuTqf+FkLg1P+xkDQ3tNIhZCfQzQFyKcrWDbStnlIiBs
         FsdEXQnvAxfztr9SzlnUhZYyJOX66jfBJ3HyU6D+lUZe264rmT6eTtXkE+r84jjmu2gX
         JDD6aN4TqB3CfWqHE1NLF4QWQ6086bC97HXWo6C2jbxboaMFWVuGcxAg/3mT6/sRnQtA
         iwOQ==
X-Gm-Message-State: ALQs6tBTuUcNuMpNcYfY8rZruHG5FRE5t1YZXjKhyxbXjM/VcT4ZNxZ+
	kHdjbq8eU3LEBh2rXuYabVtaBZQzqpFy3xtr3be/VnE=
X-Google-Smtp-Source: AIpwx4/VWZI6IVeTKO8zaACWlDWPnWv48pb3h+Vl5UR+weiHTwNmukNGULduL0vSFPgXiAZVhEecLV+6qpldewXNydg=
X-Received: by 2002:ac8:415e:: with SMTP id e30-v6mr9706378qtm.178.1524204466190;
 Thu, 19 Apr 2018 23:07:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>
References: <CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>
From: Billy Brumley <bbrumley@gmail.com>
Date: Fri, 20 Apr 2018 09:07:45 +0300
Message-ID: <CAFeDd5Z6wFXBDeQPyOrpiVwFARQLvpyEYkg1TS7rSaEpCJo=jw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: CVE-2018-0737 OpenSSL: RSA key generation follows several non
 constant time code paths

This note is mostly for package maintainers.

One might interpret this security advisory

https://www.openssl.org/news/secadv/20180416.txt

as suggesting the one referenced commit solves this issue. But it doesn't.

Please note our original recommendation points at four commits. (To
distros list on 11 Apr, it was 3 commits and attached patches for both
1.1.0 and 1.0.2.)

Preprint describing our work is already in IACR eprint moderation
queue, so it'll show up soon and when it does I'll follow up as
promised with the URL.

BBB

On Mon, Apr 16, 2018 at 7:46 PM, Billy Brumley <bbrumley@gmail.com> wrote:
> Hey Folks,
>
> We discovered 3 vulnerabilities in OpenSSL that allow cache-timing
> enabled attackers to recover RSA private keys during key generation.
>
> 1. BN_gcd gets called to check that _e_ and _p-1_ are relatively
> prime. This function is not constant time, and leaks critical GCD
> state leading to information on _p_.
>
> 2. During primality testing, BN_mod_inverse gets called without the
> BN_FLG_CONSTTIME set during Montgomery arithmetic setup. The resulting
> code path is not constant time, and leaks critical GCD state leading
> to information on _p_.
>
> 3. During primality testing, BN_mod_exp_mont gets called without the
> BN_FLG_CONSTTIME set during modular exponentiation, with an exponent
> _x_ satisfying _p - 1 = 2**k * x_ hence recovering _x_ gives you most
> of _p_. The resulting code path is not constant time, and leaks
> critical exponentiation state leading to information on _x_ and hence
> _p_.
>
> OpenSSL issued CVE-2018-0737 to track this issue.
>
> # Affected software
>
> LibreSSL fixed these issues (nice!) way back when this was reported in
> Jan 2017. Looks like commits
>
> 5a1bc054398ec4d2c33e5bdc3a16eece01c8901d
> 952c1252f58f5f57227f5efaeec0169759c77d72
>
> We verified that with a debugger.
>
> OTOH, OpenSSL wanted concrete evidence of exploitability. That's what
> we did over the past year and a half or so.We ran with bug (1) and
> recover RSA keys with cache-timings, achieving roughly 30% success
> rate in over 10K trials on a cluster.
>
> Affects 1.1.0, 1.0.2, and presumably all the EOL lines.
>
> ## Fixes
>
> Recently, it looks like (1) was independently discovered, and some
> code changes happened. Nothing for (2) and (3).
>
> ### 1.0.2-stable
>
> Part of the fix (1) is in commits
>
> 0d6710289307d277ebc3354105c965b6e8ba8eb0
> 64eb614ccc7ccf30cc412b736f509f1d82bbf897
> 0b199a883e9170cdfe8e61c150bbaf8d8951f3e7
>
> In combination with our contributed patch in
>
> 349a41da1ad88ad87825414752a8ff5fdd6a6c3f
>
> we verified with a debugger they cumulatively solve (1) (2) and (3).
>
> ### 1.1.0-stable
>
> Part of the fix (1) is in commits
>
> 7150a4720af7913cae16f2e4eaf768b578c0b298
> 011f82e66f4bf131c733fd41a8390039859aafb2
> 9db724cfede4ba7a3668bff533973ee70145ec07
>
> In combination with our contributed patch in
>
> 6939eab03a6e23d2bd2c3f5e34fe1d48e542e787
>
> we verified with a debugger they cumulatively solve (1) (2) and (3).
>
> Look for our preprint on http://eprint.iacr.org/ soon -- working title
> is "One Shot, One Trace, One Key: Cache-Timing Attacks on RSA Key
> Generation". We'll update the list with the full URL once it's posted.
>
> # Timeline
>
> Jan 2017: Notified OpenSSL, LibreSSL, BoringSSL
> 4 Apr 2018: Notified OpenSSL again, with PoC and 16 Apr, 15:00 UTC embargo
> 11 Apr 2018: Notified distros list
> 16 Apr 2018: Notified oss-security list
>
> Thanks for reading!
>
> Alejandro Cabrera Aldaya
> Cesar Pereida Garcia
> Luis Manuel Alvarez Tapia
> Billy Brumley
