X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/27/3
Message-ID: <CADR5acJGf2FjniZhTxJrihS3ttAUS+5c+82evsv=nopngFAxMg@mail.gmail.com>
Date: Sat, 27 Apr 2013 15:49:09 -0700
From: Felix Gröbert <groebert@...gle.com>
To: kseifried@...hat.com
Cc: oss-security@...ts.openwall.com, Henri Salo <henri@...v.fi>,  Jan Lieskovsky <jlieskov@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>, draynor@...rcefire.com
Subject: Re: Multiple potential security issues fixed in ClamAV 0.97.8 - any further details?
Content-Type: text/plain; charset=utf-8

Hi,

sorry for the delayed response, I'm OOO.

The bugs should be public now:

https://bugzilla.clamav.net/show_bug.cgi?id=7055
heap corruption, potentially exploitable.

https://bugzilla.clamav.net/show_bug.cgi?id=7053
overflow due to PDF key length computation. Potentially exploitable.

https://bugzilla.clamav.net/show_bug.cgi?id=7054
NULL pointer dereference in sis parsing.

When building clamav I recommend disabling legacy or unneeded features
(e.g. sis). I guess that's common sense though.

Cheers
Felix

