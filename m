X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/04/18
Message-ID: <7f3608ca32a7f91b6ba300a18c4e2e49@tribut.de>
Date: Tue, 04 Mar 2014 13:00:21 +0100
From: Felix Eckhofer <felix@...but.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request?: konqueror - https uses all ciphers, even weak ones
Content-Type: text/plain; charset=utf-8

Hi.

Am 04.03.2014 12:24, schrieb Daniel Kahn Gillmor:
>>  Google Chrome doesn’t permit the link though, it just crashes :)
> 
> On what platform?  Is this for any connection, or just for a primary
> connection?  That is, can any web site can crash google chrome with 
> <img
> src="https://demo.cmrg.net/" /> ?

On Ubuntu, both Google Chrome 33.0.1750.146 from the official Google 
repo as well as Chromium 32.0.1700.107 from Ubuntu's repo crashes when 
trying to open the demo site and also when trying to open a page with an 
image embedded such as https://dump.tribut.de/democmrgnet.html


felix
