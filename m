X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/11/5
Message-ID: <20201111094035.5fbewlsfpj76zumb@jwilk.net>
Date: Wed, 11 Nov 2020 10:40:35 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: <oss-security@...ts.openwall.com>
Subject: Re: Dash executes code when noexec ("-n") is specified
Content-Type: text/plain; charset=utf-8

* Eric Pruitt <eric.pruitt@...il.com>, 2020-11-10, 20:48:
>    $ dash -n -c 'echo this should not be executed'
>    this should not be executed

This was reported in 2017:
https://bugs.debian.org/858288

-- 
Jakub Wilk
