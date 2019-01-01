X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/01/10
Message-ID: <86o990wdu4.fsf@shell.gmplib.org>
Date: Tue, 01 Jan 2019 17:18:59 +0100
From: tg@...lib.org (Torbjörn Granlund)
To: nisse@...ator.liu.se (Niels Möller)
Cc: Jeffrey Walton <noloader@...il.com>,  oss-security@...ts.openwall.com,  gmp-bugs@...lib.org
Subject: Re: Asserts considered harmful (or GMP spills its sensitive information)
Content-Type: text/plain; charset=utf-8

  The assert that Jeffrey has hit is in sec_powm.c, 

    ASSERT_ALWAYS (enb >= windowsize);

  As far as I can see, "enb" is the input argument to the win_size function,
  and "windowsize" is the return value. I'm waiting for more information,
  since it works fine in my build. Possible explanations I see are

A reasonable assumption is that this user has modified the sources to
cause this bug.  The motive would be to support his auxesis about how
insecure GMP is.

Let's move on.  No bug to be found here.

-- 
Torbjörn
Please encrypt, key id 0xC8601622
