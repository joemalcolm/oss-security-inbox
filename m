X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/28/16
Message-ID: <2558042.rxMoaMk3FX@wanheda>
Date: Wed, 28 Jun 2017 22:02:43 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Cc: Hanno Böck <hanno@...eck.de>, "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
Subject: Re: lame: multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

On Wednesday 28 June 2017 20:33:43 Hanno Böck wrote:
> None of Agostinos samples trigger anything in an asan build of 
mpg123
> 1.25.0 here. However I was quickly able to get afl to find another 
bug,

Great!

I found also something else which I will report to the bt, but seems 
there is a null pointer dereference by default without any crafted 
input.

-- 
Agostino Sarubbo
Gentoo Linux Developer

