X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/30/8
Message-ID: <83670BE1-1FB4-4552-9404-7707C66233F2@akamai.com>
Date: Mon, 29 Sep 2014 22:41:29 -0500
From: "Kobrin, Eric" <ekobrin@...mai.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Array importing in bash 4.3
Content-Type: text/plain; charset=utf-8

On Sep 29, 2014, at 1:55 PM, Florian Weimer <fweimer@...hat.com> wrote:

> On 09/29/2014 05:47 PM, Kobrin, Eric wrote:
>> This code also reveals a difference from the function export code.
>> 
>> The ARRAY_EXPORT code frees temp_string after using it. The function export code mallocs, but never frees it. That behavior predates the recent patches.
> 
> That's because parse_and_execute takes ownership of the string by 
> default.  See the comment in builtins/evalstring.c:


I did miss that comment. Assuming that parse_and_execute operates as expected, the memory doesn't leak so long as parse_and_execute is invoked.

How do you feel about changing from this:

   if (absolute_program (tname) == 0 && (posixly_correct == 0 || legal_identifier (tname)))
     parse_and_execute (temp_string, tname, SEVAL_NONINT|SEVAL_NOHIST|SEVAL_FUNCDEF|SEVAL_ONECMD);

to this? (please forgive style gaffes)

   if (absolute_program (tname) == 0 && (posixly_correct == 0 || legal_identifier (tname)))
   {
     parse_and_execute (temp_string, tname, SEVAL_NONINT|SEVAL_NOHIST|SEVAL_FUNCDEF|SEVAL_ONECMD);
   }
   else
   {
     FREE(temp_string);
   }

-- Eric Kobrin
