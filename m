X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/29/33
Message-ID: <54299D1E.6060302@redhat.com>
Date: Mon, 29 Sep 2014 19:55:42 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Array importing in bash 4.3
Content-Type: text/plain; charset=utf-8

On 09/29/2014 05:47 PM, Kobrin, Eric wrote:
> This code also reveals a difference from the function export code.
>
> The ARRAY_EXPORT code frees temp_string after using it. The function export code mallocs, but never frees it. That behavior predates the recent patches.

That's because parse_and_execute takes ownership of the string by 
default.  See the comment in builtins/evalstring.c:

/* Parse and execute the commands in STRING.  Returns whatever
    execute_command () returns.  This frees STRING.  FLAGS is a
    flags word; look in common.h for the possible values.  Actions
    are:
         (flags & SEVAL_NONINT) -> interactive = 0;
         (flags & SEVAL_INTERACT) -> interactive = 1;
         (flags & SEVAL_NOHIST) -> call bash_history_disable ()
         (flags & SEVAL_NOFREE) -> don't free STRING when finished
         (flags & SEVAL_RESETLINE) -> reset line_number to 1
*/


-- 
Florian Weimer / Red Hat Product Security
