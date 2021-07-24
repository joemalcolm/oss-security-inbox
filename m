X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/24/3
Message-ID: <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
Date: Sat, 24 Jul 2021 12:32:34 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Potential symlink attack in python3 __pycache__
Content-Type: text/plain; charset=utf-8

On Sat, 2021-07-24 at 18:33 +0300, Georgi Guninski wrote:
> Not sure if this is vulnerability, but it looks like
> classical symlink attack.
> 
> In python3, if a script in directory DIR1 does "import another",
> then python3 creates directory __pycache__ in DIR1 and puts
> some files in __pycache__.
> 
> According to our tests, if DIR1/__pycache__ is symlink to something,
> then python3 follows the symlink.

When subdirectories of DIR1 are writable by anyone other than the
person running the script, you have a bunch of problems:

  https://bugs.python.org/issue16202


