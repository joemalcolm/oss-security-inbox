X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/29/21
Message-ID: <A9DC0B5B-6E71-4A9D-A45E-69D6127AF0D6@akamai.com>
Date: Mon, 29 Sep 2014 10:42:28 -0500
From: "Kobrin, Eric" <ekobrin@...mai.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "chet.ramey@...e.edu" <chet.ramey@...e.edu>
Subject: Re: Re: CVE-2014-6271: remote code execution through bash (3rd vulnerability)
Content-Type: text/plain; charset=utf-8

On Sep 29, 2014, at 10:33 AM, Chet Ramey <chet.ramey@...e.edu> wrote:
> If that is the command you ran, this doesn't show any vulnerability. 

I've seen quite a few examples like this which don't do precisely what the submitter thought.

I hope this isn't another such example:

$ env $'BASH_FUNC_\nfoo%%=() { echo 123\n }' ./bash -c 'foo'
./bash: error importing function definition for `
foo'
123

This doesn't seem like desired behavior.

In the version before the recent patches, adding unexpected characters could cause segfaults.

-- Eric
