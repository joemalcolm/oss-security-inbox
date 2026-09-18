X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/2
Message-ID: <e6850d87-e78e-4fed-8628-0dbc929af81f@gmail.com>
Date: Fri, 18 Sep 2026 00:07:48 -0500
From: Jacob Bachmeyer <jcb62281@...il.com>
To: oss-security@...ts.openwall.com, Peter Gutmann <pgut001@...auckland.ac.nz>
Cc: Sam James <sam@...too.org>, Clemens Lang <cllang@...hat.com>, "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Removing dead code (was: Retrospective by 'gpg.fail' authors)
Content-Type: text/plain; charset=utf-8

On 9/16/26 22:08, Peter Gutmann wrote:
> [...]  Given that it's open source with an unknown number of downstream users
> doing unknown things with it, there's no way to tell whether it's safe to
> remove or not.

I actually have a very rare counterexample to that, from DejaGnu.

DejaGnu is a software testing framework, and more-or-less cannot have 
security issues by definition, as its purpose is to execute arbitrary 
code from trusted testsuites.  DejaGnu once "had" a feature that was 
supposed to catch tests that failed to run to completion.

A Tcl variable, "testcnt" could be set to the expected number of test 
results.  However, the code that handled checking that the actual 
results matched the expected results would crash the framework with a 
Tcl error if it were ever actually run.  (It would be run only if 
"testcnt" had been set.)

Since no had ever complained (in 24 years) about the feature being 
broken, it was safe to say that the feature had never been used.  :-)


-- Jacob


