X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1329" "Monday" "1" "June" "2020" "09:24:21" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>" "42" "[oss-security] Exploitability of the integer overflows in djbdns 1.05?" "^Date:" nil nil "6" "2020060106:24:21" "[oss-security] Exploitability of the integer overflows in djbdns 1.05?" (number mark "        gguninski@gm Jun  1   42/1329  " thread-indent "\"[oss-security] Exploitability of the integer overflows in djbdns 1.05?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Exploitability of the integer overflows in djbdns 1.05?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23943 invoked by uid 550); 1 Jun 2020 09:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7194 invoked from network); 1 Jun 2020 06:24:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8+Ynqj88wpbm97UUq9mfTLEAoA8ulppzZiiP2V75YRM=;
        b=m+HYcKSp6VPf+0FyMy/Uve9XAzWzxy2UTHqPVMPs6pAHm9EO8U6UZNL8fmeJFrxFJ/
         EGr8tqPGmgxmqg42H0j9Kd+G21a9uQIpABfnenMXaM5UEQRENBX2Q7wPX425LuOz5jxS
         WMAZSakFzkKsr+NXLOu+h1Wm3hnjdiDZNyj4FKgQrxBwdC54sBdBb47IWXTAy5HcsFHY
         N3jAF/ELzz8tGzRtYHuuKy/nPjj4SBVzoSIyMk3Yo03+l48icHduZireEkyIQLmTU/5p
         u8yu100fhGr9CC1WQScZvi+N7cWuG2yRDtM7/2XRAHADMshNyDtp0V/XN+UKD5nH9drh
         7nig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8+Ynqj88wpbm97UUq9mfTLEAoA8ulppzZiiP2V75YRM=;
        b=JsJpWjk7hu15kJagKOsglUkmfeyc+Ymij3qjYCwhvUATwuHetwPNKLtURlU9lredq6
         tnZ0qa05rOgSHSZob4w86zCEPBTcVLPPimfbQgLLQ/IFZ7kYsvW2kVf6Wn2XYAn0qQp6
         1Zrr0bg+coGshAG5w1+hm+puohqC1jYQgudI6Eylz1IuPsDIlWic0CnfK/ns66GXTTMP
         +UL6qvBddMqdIN9T4/OuvNLmyCm0qBFn/e5WgIgLZqefqCFvYedtZ/qmwkPW0jj5MrOL
         +cNHM9MjhV7a/W8EaVakSEbMluczLmovldl8fQgl2dOR0i0OF9d43qxzkH/mdehhUy6I
         Dlig==
X-Gm-Message-State: AOAM530XcF3KJOdFYdkfJoIDaEbbIgA4iq36sO9XyCRcFYTFNeogTLQX
	8WkzVhXye4i8GP+buXQov98qDSr/GdHug8emS6opaCz4
X-Google-Smtp-Source: ABdhPJzNxHw1SxNOPD9rG9tp36L2xa21/ITGZubjJxu4AIt9KdKFjYsRwvjj0hE4pMrOp8ItLTbwq8EnaDZgN01KZds=
X-Received: by 2002:a7b:cb47:: with SMTP id v7mr20473120wmj.34.1590992673208;
 Sun, 31 May 2020 23:24:33 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 1 Jun 2020 09:24:21 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exploitability of the integer overflows in djbdns 1.05?
To: oss-security@lists.openwall.com

 From my blog:
https://j.ludost.net/blog/archives/2020/06/01/exploitability_of_the_integer_overflows_in_djbdns_1_05/index.html

Exploitability of the integer overflows in djbdns 1.05?

TLDR: Are the integer overflows in djbdns 1.05 exploitable?

Background: there are integer overflows and memory corruption
in the library functions of qmail 1.03.
For reference see [1] [2].

Some of the qmail vulnerabilities (integer overflows and negative index???)
are present in djbdns 1.05.

For example in alloc.c of djbdns:
====
/*@null@*//*@out@*/char *alloc(n)
unsigned int n;
{
  char *x;
  n = ALIGNMENT + n - (n & (ALIGNMENT - 1)); /* XXX: could overflow */
=====

This clearly overflows for n= -1 for example.

It is natural to write an integer overflow, but
documenting easy to fix security bug is beyond
our understanding.

Reachability of the bugs is not clear and might require
gigabytes of memory to hit the problems by encoding
integer in unary.

In addition djbns limits the memory usage by |softlimit|,
but we are not sure the limits are on all vulnerable
programs. An island of tractability could be |alloc(atoi())|
or |alloc(size * count)|

Is djbdns exploitable by any of the qmail bugs?

[1] http://www.guninski.com/where_do_you_want_billg_to_go_today_4.html
[2] https://www.openwall.com/lists/oss-security/2020/05/19/8
