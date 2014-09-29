X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/29/31
Message-ID: <609F45F8-68FE-4388-8D92-B57AA4F56508@akamai.com>
Date: Mon, 29 Sep 2014 12:39:03 -0500
From: "Kobrin, Eric" <ekobrin@...mai.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: Florian Weimer <fweimer@...hat.com>, Tavis Ormandy <taviso@...xchg8b.com>, "chet.ramey@...e.edu" <chet.ramey@...e.edu>, Michal Zalewski <lcamtuf@...edump.cx>, Solar Designer <solar@...nwall.com>
Subject: Re: Healing the bash fork
Content-Type: text/plain; charset=utf-8

On Sep 29, 2014, at 11:59 AM, Eric Blake <eblake@...hat.com> wrote:

> But I see no reason to move away from %% suffixing.

The suffix fixes the obvious CGI hole, but it leaves exposed programs in which the adversary gets to choose the variable name as well.

env $'BASH_FUNC_foo%%=() { echo 123\n }' bash -c "foo"

I think that a more robust solution, such using a separate store for functions, is needed if function import is to survive as a feature.

-- Eric Kobrin
