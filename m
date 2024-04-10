Received: (qmail 11323 invoked by uid 550); 10 Apr 2024 20:44:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14062 invoked from network); 10 Apr 2024 20:36:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1712781364; x=1713448030; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=z+zC/tZP4vA0a+TXZg3IEPBK5+KjQHBJMvJh/BjN1aM=;
 b=h0gXvtBnIVTIKY5TMTaKzxBFvhJDENdhHEBfe3lS+ndCQH7pglcCzpyOxV5MjSoNtBQwho40
  MD60wSexJCFEcRu/2wolwew/7CwoTo8PggjhOhx4540cn4T8EEwTciR0+WclmqfoaLFKUhRJeZ
  3XH0bF5FlPUvllB7LGu9NEsRK+4gGYt3aDcK/2/uG0/95GaYOHWpDSHe7tzm6yc7+CSHiArNaZ
  64jNmlLEdB1pPX39LBLoByGsn/aD+fvqqQ/akW/ybHpADnKEH88WhYxpsEHpiELUKeWkylI8TN
  J7GS2F7LQIK5Pmm4vQCc327qYASfLbfCYAaJen6Yo7JHvl5g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1712781364; x=1713448030; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=z+zC/tZP4vA0a+TXZg3IEPBK5+KjQHBJMvJh/BjN1aM=;
 b=XXznC7V4xsJGwz/FBBfLlCY+zfKX9j/CEHojiTcFeeihq0S8tBb3KPdGBEig4CDvfI5Z5dVz
  g5hkrKKtw/4vDg==
Date: Wed, 10 Apr 2024 22:36:02 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240410203602.7d11csyn@steffen%sdaoden.eu>
In-Reply-To: <20215e9a-c05f-4897-8e4c-ae617ebd0cd4@oracle.com>
References: <20215e9a-c05f-4897-8e4c-ae617ebd0cd4@oracle.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-612-g7e3bfac540
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] CERT VU#123335: Multiple Programming
 Languages Fail to Escape Arguments Properly in Microsoft Windows

I want to thank Mr. Coopersmith for all his efforts.

I think this list was detoriated by some parties in the last
years, possibly due to the (management or whatever imposed)
requirement for more "formalized professionalism", instead of
trusting the main drivers of this list, but it seems that,
effectively, the situation detoriated to the absolute opposite.

Alan Coopersmith wrote in
 <20215e9a-c05f-4897-8e4c-ae617ebd0cd4@oracle.com>:
 |https://www.kb.cert.org/vuls/id/123335 announces:
 |
 |> Vulnerability Note VU#123335
 |> Original Release Date: 2024-04-10 | Last Revised: 2024-04-10
 ...
 |> Various programming languages lack proper validation mechanisms for
 |> commands and in some cases also fail to escape arguments correctly
 |> when invoking commands within a Microsoft Windows environment. The
 ...
 |> <https://learn.microsoft.com/en-us/archive/blogs/twistylittlepassagesall\
 |> alike/everyone-quotes-command-line-arguments-the-wrong-way>.
 ...

Searching around the internet all Microsoft document( translation)s
contain big warning boxes on that.

What i do not understand is why Microsoft does not fix its
_spawn*() function series to convert the char**argv array to
a properly quoted command line argument (or whatever way they
could also take *internally* to get that done)?

They could internally even double-check that the
array->string->array conversion results in the same data, and do
perform auto-quoting if not?
How likely it is that anyone really wants to turn a char**argv
array into a string that does not convert back properly?

I mean, it is Microsoft's C library that we are talking about[1]:

  In principle, each program can parse the command line string
  differently, but most use the convetion that CommandLineToArgvW
  and the Microsoft C library understand. This convention is
  a good one because it provides a way to encode any command line
  argument as part of a command line string without losing
  information.

  The problem is that there is no ArgvToCommandLineW. How do we
  construct an argument string understood by CommandLineToArgvW?

^ But *why* then?

  The C runtime library is useless
  --------------------------------

  Our first instinct should be look for a library function that's
  already solved the problem.
  ...
  That's not what we want!

^ Maybe make it better, then?  Why not?

  The correct solution

^ There it is!

  [1] https://learn.microsoft.com/en-us/archive/blogs/twistylittlepassagesallalike/everyone-quotes-command-line-arguments-the-wrong-way

Shouldn't the real vulnerability be attributed to the Microsoft
_spawn*() function series?  It takes an array of individual
strings, if it internally munges that for whatever reason into
a single string they could as well take that single string from
the outside, surely the "blamed" language developers would have
spend a thought.  The Microsoft interface is to blame!

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
