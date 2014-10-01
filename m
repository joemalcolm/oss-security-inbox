X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/01/10
Message-ID: <20141001153228.58d6e6ff@redhat.com>
Date: Wed, 1 Oct 2014 15:32:28 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Healing the bash fork
Content-Type: text/plain; charset=utf-8

On Tue, 30 Sep 2014 19:19:55 -0400 (EDT) David A. Wheeler wrote:

> * Approach 1: Florian Weimer's approach.  Bash functions to be
> exported have a prefix ("BASH_FUNC_") and suffix added.  Then, ONLY
> environment variables with that prefix and suffix are interpreted
> specially.  This approach is used by Red Hat, CentOS, Debian, Ubuntu,
> and Cygwin (at least), and was later accepted into bash upstream.
> The original approach used "()" as the suffix; bash upstream took
> this but switched to the "%%" suffix instead, which is a nice
> improvement (since "%" is not a shell metacharacter this is less
> likely to trigger OTHER problems).  I know Cygwin is using the bash
> upstream '%%' suffix.

The following indicates there is other prefix and suffix used, that
makes these incompatibility issues worse:

  http://support.apple.com/kb/HT6495

  The names of all environment variables that introduce function
  definitions are required to have a prefix "__BASH_FUNC<" and suffix
  ">()" to prevent unintended function passing via HTTP headers.

-- 
Tomas Hoger / Red Hat Product Security
