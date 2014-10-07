X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/07/29
Message-ID: <CALx_OUAsyePE5rNHYKmfNkNoiaN7BdkPK2c-a4ijaFT_CxSMLQ@mail.gmail.com>
Date: Tue, 7 Oct 2014 08:45:52 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Thoughts on Shellshock and beyond
Content-Type: text/plain; charset=utf-8

>>    What class of bug is Shellshock? "Weird feature invented in
>>    pre-Internet era"? How do you conquer this class of bugs?
>
> There are two bugs: Calling “eval” on untrusted input (a relatively common
> issue), and the fact that this particular code path should never have been
> exposed to the network at all.  The second part is not strictly a bash bug,
> even if we addressed that with a change in bash. If this issue had been
> discovered when the first CGI-enabled web server was implemented, maybe it
> would not have been called a bash bug, but a bug in how CGI used environment
> variables.

Possibly, but it probably wouldn't have stayed that way for long. Even
though the bug was introduced long before the arrival of Apache, I
would guess that it had affected Sendmail from day one.

In practice, it's usually counterproductive to try to precisely pin
the blame; bash is the place where we can fix it more easily and
produce more intuitive behavior with one less things for other
developers to worry about it.

/mz
