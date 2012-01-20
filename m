X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/12
Message-ID: <20120120094445.GA4594@openwall.com>
Date: Fri, 20 Jan 2012 13:44:45 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: distros & linux-distros embargo period and message format
Content-Type: text/plain; charset=utf-8

Hi,

I've just updated the wiki page at:

http://oss-security.openwall.org/wiki/mailing-lists/distros

to state the following:

"Please note that the maximum acceptable embargo period for issues
disclosed to these lists is 14 to 19 days, with embargoes longer than 14
days (up to 19) allowed in case the issue is reported on a Thursday or a
Friday and the proposed coordinated disclosure date is thus adjusted to
fall on a Monday or (preferably) a Tuesday.  Please do not ask for a
longer embargo.  In fact, embargoes shorter than 14 days are preferable."

Previously, the maximum was specified as 14 days unconditionally, but
frankly this started to fail in practice for the day-of-week reason -
so I've adjusted the policy as above (based on proposals from list
members).

While at it, I've also added this clarification on the format of messages:

"Speaking of encryption, the supported message formats are: plain
unencrypted messages, PGP/MIME (including with attachments), or inline
PGP.  (In all of these cases, messages are distributed to list members
(re-)encrypted to their own keys.)  However, manual PGP-encrypted
attachments are not supported (so if you want to attach file(s) to your
encrypted message, use PGP/MIME)."

Alexander
