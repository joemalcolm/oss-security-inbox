Received: (qmail 12003 invoked by uid 550); 8 Mar 2026 09:47:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11268 invoked from network); 8 Mar 2026 09:42:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	reply-to:sender:bcc; bh=QSXuqhTUTEhy6QNrPcLzkcQntG7QXQkLU/ZMoA0U8V0=; b=r4mgl
	2dhfKnqLt/RtKOXqCM+e6z2qeQHx4bSQiVNR+wixsde8xaF21iJNig0CQZHT9WW2jbUA0QcZ9UmnK
	OjFalvkDzdq/iAteBHCVW2eRZlpu13cn7oF2SLs0e+PrE9UJB+sQcJDdkzDdSXHRw2Y9b8deCooWP
	8p4c5XuegKKpfiHeI3sHJ+w3oFphwn4mutyurVrQLfmakBFDFl4llFJHeEjitwxB0dHEGzin2K74+
	lodJooWb86jiJx3GbLTkrgOvl55AIrnz/vCcPZ8glmEAbs+jk8yEQbkFP3ftyhrZGKJzVyvh5M6qy
	VKLKZZxzmaZJlpdJ5YhyIwL/Vjb9g==;
MIME-Version: 1.0
Date: Sun, 08 Mar 2026 11:41:47 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, bug-inetutils@gnu.org,
 collin.funk1@gmail.com, simon@josefsson.org, auerswal@unix-ag.uni-kl.de,
 ron.benyizhak@safebreach.com
In-Reply-To: <20260308080557.GA27619@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com>
 <20260307002011.18141-1-justin.swartz@risingedge.co.za>
 <20260308025745.GA24992@openwall.com>
 <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za>
 <20260308073422.20218-1-justin.swartz@risingedge.co.za>
 <20260308080557.GA27619@openwall.com>
Message-ID: <0940bd56c70e5d93bc32024cca2b2ac9@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00929476604982)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuVfHd1Pe3cv+5ZSzAwX24XnS4DCMC+R7u03
 QrPzg9flsSu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTgeofHbrv/l3xWyQQYX1nZaBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Hj659XjhVt1bdQ9l6emukohSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBoCO4qTTFh+YfFhnsJKW+4WQB2ErbcicDbPONrkjWuIPYD7NLT3TvBNLPf1+s3ESe+GGIqRjk
 Mz2jvqlQOSgIbaeqxdJWIouFUjNPAI/E3PzhS4ZB89wBg3fE1IRBh4Eju90/HdeWcvWwvxP7m9tu
 6hfMGGiVGguJYVfi+McPxsm6Ma0wFdLTf4T3IkAGhpNhJZ+sEAQAshpJkJgYp1fmVCZYrq03PPfA
 CiLUtg/tzCpiQsMD1yQpJw3MZEkSuQ6aZxvaQE1RAJKkl+/NcOb97uJrCxWqdvrJu5u4CAG115m4
 kc30M5N1XOqLep1NLvTyBBviKlpvP7rQS13JFiYi1lPrLvDxuJ2Pl/Wwf+s2EUaRwh/zbysUocUY
 70LVf6DXKjPTc9Bi5t6eH92KZgAaeKHYbE04rhZBVwX5kuEhEEhv9/dCEtFs6CKy+LlVT1402WH7
 25+y2Pi6XSn8nYV1KkECi53KQdYoAYFDTkiO90JDv3Qru3mOOsfu36pjw6IKrSOIPpeqwlm2NDGX
 IJ2x7C1GDHQzkP4E4DmzW72VoTr7KQxyJBDgZ6UOEU7Q88doCIktcnl0yqCNlzE1u8EO1t/STCxH
 8DQLRZxuVhe+952JTxOKPmvS9FNQaEBx3Mzmo+aqL7i/jEFRlxxHHR2edU8lBysIgCGqonuzqB2w
 MqcL/PyVSe2/DDFq5n7HBuKWuG2VxN5Tk0oIOEgQvkpB2uKK0i3ShO9tndQNaNp5LxD/AGkWz8j9
 jQRWYwPzN22yjA6ktpRxAMHlW2L66vScAWRVdBHvMOSsCIK1u2y67o71H/aAwarQpYDOYx/6JtUO
 88QFH8MDIR4rYBrcD0FJiQH1DNMnmiccMfxXP8hqHV3idsf9htp8mcWuKRLRaGd4RgFnzGg9rgSS
 O4p0kGP/3gydw9VcjiaDXW5/43LFbxilGU+e1pFQ+nUu7tVfyfBb
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Telnetd Vulnerability Report

On 2026-03-08 10:05, Solar Designer wrote:
> On Sun, Mar 08, 2026 at 09:34:22AM +0200, Justin Swartz wrote:
>> Based on the feedback provided, the third version of the patch set 
>> [1]:
> 
>> - Places the strings of the allowed environment variables array into
>>   the .rodata section.
> 
> Actually, the strings would be in .rodata (or after linking, in .text)
> with your previous patch version as well.  It's the array of pointers
> that you're also moving to there now.

Thanks for clarifying that.


>> - Discards the --accept-env feature [3], as an inetutils maintainer 
>> [2]
>>   is working on an implementation to extend the allowed environment
>>   using Gnulib instead.
> 
> It sounds like one of you will have to rebase this on the other's work.

I'm leaving this up to the inetutils maintainers to take of, as I won't
have the spare time to contribute towards this going forward.


>> +extern int is_env_var_allowed (const char *var, const char *val);
> 
> You shouldn't need to have this one extern now - you can make it 
> static.
> 
>> +#ifdef HAVE_PATHS_H
>> +# include <paths.h>
>> +#else
>> +# ifndef _PATH_DEFPATH
>> +#  define _PATH_DEFPATH "/usr/bin:/bin"
>> +# endif
>> +#endif
> 
> You shouldn't need this anymore.

You're right. I forgot to drop that when I got rid of exorcise_env().


>> +is_env_var_allowed (const char *var, const char *val)
>> +{
>> +  const char * const *p;
> 
> This second const here looks wrong as you're changing the value of this
> pointer.  I suggested this syntax only for the array, where you used it
> correctly.

That pointer isn't constant.

######################################################################
##                                                                  ##
##  A test with the pointer declaration used in the previous patch  ##
##                                                                  ##
######################################################################

$ cat > p1.c << "EOF"
#include <stdio.h>

static const char * const allowed_env_vars[] = {
         "USER", "LOGNAME", "TERM", "LANG", "LC_*", NULL
};

int main(void)
{
         const char **p;

         for (p = allowed_env_vars; *p; p++)
                 puts(*p);

         putchar('\n');
         return 0;
}
EOF

$ cc -o p1 p1.c -Wall -Werror -Wextra -pedantic
p.c: In function ‘main’:
p.c:11:16: error: assignment discards ‘const’ qualifier from pointer 
target type [-Werror=discarded-qualifiers]
    11 |         for (p = allowed_env_vars; *p; p++)
       |                ^
cc1: all warnings being treated as errors


######################################################################
##                                                                  ##
##  A test with the pointer declaration used in the current patch   ##
##                                                                  ##
######################################################################

$ (echo '9s/\*\*p/\* const \*p/g'; echo ',p'; echo 'wq') | ed -s p.c
#include <stdio.h>

static const char * const allowed_env_vars[] = {
         "USER", "LOGNAME", "TERM", "LANG", "LC_*", NULL
};

int main(void)
{
         const char * const *p;

         for (p = allowed_env_vars; *p; p++)
                 puts(*p);

         putchar('\n');
         return 0;
}

$ cc -o p p.c -Wall -Werror -Wextra -pedantic && echo $?
0


######################################################################
##                                                                  ##
##  A test with the pointer declaration that would be constant      ##
##                                                                  ##
######################################################################

$ (echo '9s/p;/ const p;/g'; echo ',p'; echo 'wq') | ed -s p.c
#include <stdio.h>

static const char * const allowed_env_vars[] = {
         "USER", "LOGNAME", "TERM", "LANG", "LC_*", NULL
};

int main(void)
{
         const char * const * const p;

         for (p = allowed_env_vars; *p; p++)
                 puts(*p);

         putchar('\n');
         return 0;
}

$ cc -o p p.c -Wall -Werror -Wextra -pedantic
p.c: In function ‘main’:
p.c:11:16: error: assignment of read-only variable ‘p’
    11 |         for (p = allowed_env_vars; *p; p++)
       |                ^
p.c:11:41: error: increment of read-only variable ‘p’
    11 |         for (p = allowed_env_vars; *p; p++)
       |                                         ^~


>> +void
>> +set_env_var_if_allowed (const char *var, const char *val)
>> +{
>> +  if (is_env_var_allowed (var, val))
>> +    {
>> +      if (val)
>> +        {
>> +          if (*val != 0)
>> +            setenv (var, val, 1);
>> +        }
>> +      else
>> +        {
>> +          unsetenv (var);
>> +        }
>> +    }
>> +}
> 
> I doubt it's desired behavior to retain the previous value of the env
> var if the new value is an empty string - or is it?  If it is not, then
> I suggest either dropping the "*val != 0" check or moving it into
> "if (val && *val != 0)".

My thinking was: if a whitelisted variable was defined but featured
an empty value, then it might be safer to use whatever value it was
already assigned in the environment instead.

But given that RFC 1572 explicitly supports a client sending a
defined variable with no value, then maybe it's best not to second
guess the client and just let them clear it.
