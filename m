X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/04/1
Message-Id: <20171104014225.F3F4B17FDCE@rebar.astron.com>
Date: Fri, 3 Nov 2017 21:42:25 -0400
From: christos@...las.com (Christos Zoulas)
To: oss-security@...ts.openwall.com
Subject: Re: Re: Security risk of server side text editing in general and vim.tiny specifically
Content-Type: text/plain; charset=utf-8

On Nov 3, 11:12am, itz@...y.loosely.org (Ian Zimmerman) wrote:
-- Subject: [oss-security] Re: Security risk of server side text editing in g

| How much of this (and the parallel thread of course) applies to nvi?

Nvi stores the recovery files in /var/tmp/vi.recover/ owned by the user,
mode 600.

christos
