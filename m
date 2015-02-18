X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/18/11
Message-ID: <54E5081F.2020902@redhat.com>
Date: Wed, 18 Feb 2015 14:46:07 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: foomatic file loading from cwd
Content-Type: text/plain; charset=utf-8

> With apologies, this should have been made public some time ago
> however it fell through the cracks. This is a low severity issue, it
> requires significant attack/victim interaction and local access.
>
> This was assigned CVE-2013-6500
>
> https://bugzilla.redhat.com/show_bug.cgi?id=995090

With apologies please REJECT CVE-2013-6500, this issue is not in
foomatic. There may be an issue in Perl Encode however whether or not it
is a security issue (or simply "broken by design" is up for debate.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
