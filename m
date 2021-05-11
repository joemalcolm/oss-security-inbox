X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/05/11/3
Message-ID: <99169547-a9b0-ca29-0b09-035e6d58ac98@enst-bretagne.fr>
Date: Tue, 11 May 2021 07:37:47 +0200
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: Re: Code execution through Thunar
Content-Type: text/plain; charset=utf-8

Le 09/05/2021 à 21:38, Gabriel Corona a écrit :
> When called with a regular file as command line argument, Thunar
> would delegate to some other program without user confirmation
> based on the file type. This could be exploited to trigger code
> execution in a chain of vulnerabilities.
> 
> This is fixed in 4.16.7 and 4.17.2. When called with a regular
> file, Thunar now opens the containing directory and selects the
> file.
> 
> A CVE ID has been requested.

This is CVE-2021-32563.

Gabriel
