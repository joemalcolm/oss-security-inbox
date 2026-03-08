Received: (qmail 22100 invoked by uid 550); 8 Mar 2026 02:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18064 invoked from network); 8 Mar 2026 02:57:57 -0000
Date: Sun, 8 Mar 2026 03:57:45 +0100
From: Solar Designer <solar@openwall.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: oss-security@lists.openwall.com, bug-inetutils@gnu.org,
	ron.benyizhak@safebreach.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de
Message-ID: <20260308025745.GA24992@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com> <20260307002011.18141-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307002011.18141-1-justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Telnetd Vulnerability Report

On Sat, Mar 07, 2026 at 02:20:11AM +0200, Justin Swartz wrote:
> WHITELISTING
> 
> The obsolete blacklist, implemented by scrub_env(), has been removed.
> The daemon now clears the inherited environment and enforces a default
> whitelist (USER, LOGNAME, TERM, LANG, and LC_*) for all NEW_ENVIRON
> values.

Makes sense to me.

Note that this list is different from Linux NetKit's, which is:

    /*
     * Allow only these variables.
     */
    if (!strcmp(varp, "TERM")) return 1;
    if (!strcmp(varp, "DISPLAY")) return 1;
    if (!strcmp(varp, "USER")) return 1;
    if (!strcmp(varp, "LOGNAME")) return 1;
    if (!strcmp(varp, "POSIXLY_CORRECT")) return 1;

I also checked the major *BSDs.  telnetd was removed from OpenBSD in
2005, so I didn't look further.  It was removed from FreeBSD in 2022:

https://cgit.freebsd.org/src/commit/?id=d701f45aba19f232ce7817085935f33dd609ed8b

where it used this at time of removal:

	static const char *acc[] = {
		"XAUTH=", "XAUTHORITY=", "DISPLAY=",
		"TERM=",
		"EDITOR=",
		"PAGER=",
		"LOGNAME=",
		"POSIXLY_CORRECT=",
		"PRINTER=",
		NULL
	};

Curiously, there was CVE-2009-0641 where FreeBSD 7.x would accept even
LD_PRELOAD, but I couldn't quickly find where the bug was exactly:

https://lists.openwall.net/full-disclosure/2009/02/14/1

Message-ID: <72f8221d0902131846h6c77a8d1t90c3352f978b8732@mail.gmail.com>
Date: Sat, 14 Feb 2009 03:46:07 +0100
From: Kingcope Kingcope <kcope2@...glemail.com>
To: full-disclosure@...ts.grok.org.uk
Subject: FreeBSD zeroday

https://www.freebsd.org/security/advisories/FreeBSD-SA-09:05.telnetd.asc

"recent changes in FreeBSD's environment-handling code rendered
telnetd's scrubbing inoperative"

We could want to find the detail in order to avoid the same pitfall.

NetBSD still has telnetd:

https://cvsweb.netbsd.org/bsdweb.cgi/src/libexec/telnetd/

and in sys_term.c it has:

/*
 * scrub_env()
 *
 * We only accept the environment variables listed below.
 */

void
scrub_env(void)
{
	static const char *reject[] = {
		"TERMCAP=/",
		NULL
	};

	static const char *acceptstr[] = {
		"XAUTH=", "XAUTHORITY=", "DISPLAY=",
		"TERM=",
		"EDITOR=",
		"PAGER=",
		"LOGNAME=",
		"POSIXLY_CORRECT=",
		"TERMCAP=",
		"PRINTER=",
		NULL
	};

	char **cpp, **cpp2;
	const char **p;

	for (cpp2 = cpp = environ; *cpp; cpp++) {
		int reject_it = 0;

		for(p = reject; *p; p++)
			if(strncmp(*cpp, *p, strlen(*p)) == 0) {
				reject_it = 1;
				break;
			}
		if (reject_it)
			continue;

		for(p = acceptstr; *p; p++)
			if(strncmp(*cpp, *p, strlen(*p)) == 0)
				break;
		if(*p != NULL)
			*cpp2++ = *cpp;
	}
	*cpp2 = NULL;
}

I'm not saying you should revise the list in any way - just sharing what
others have.  It may well be that allowing those other env vars by
default is obsolete since use cases for telnet are now more specialized,
and maybe allowing LANG and LC_* is desirable for current use cases.

Separately note that I didn't check the *BSDs telnet _client_ (which I
think is still present in all *BSDs) for being (hopefully not) willing
to export arbitrary env vars.  The maintainers could want to check this.
And you could want to check the telnet client in InetUtils, now that we
know this package missed telnet[d] security fixes in general.  This was
CVE-2005-0488 (and CVE-2005-1205 on Windows).

"Certain BSD-based Telnet clients, including those used on Solaris and
SuSE Linux, allow remote malicious Telnet servers to read sensitive
environment variables via the NEW-ENVIRON option with a SEND ENV_USERVAR
command."

> TELOPT_TTYPE INTERCEPTION
> 
> The whitelist validation has been extended, in the second version of the
> patch set, to intercept raw terminal type negotiations (aka TELOPT_TTYPE),
> to prevent questionable TERM payloads from bypassing the NEW_ENVIRON
> filter. 

Good idea.

> The daemon now clears the inherited environment (preserving PATH
> and TERM, respectively, if present) before calling telnetd_setup().

Inherited from inetd or the like?  It's supposed to be trusted input and
env vars in there may be set on purpose, so dropping them is unexpected.
I think e.g. sshd doesn't do that, why would telnetd?  Think things like
LD_PRELOAD=/lib64/libhardened_malloc.so (although /etc/ld.so.preload is
a more reliable way to do this when practical to do it globally).

> +++ b/telnetd/state.c
> @@ -1495,10 +1495,18 @@ suboption (void)
>  	      case NEW_ENV_VAR:
>  	      case ENV_USERVAR:
>  		*cp = '\0';
> -		if (valp)
> -		  setenv (varp, valp, 1);
> -		else
> -		  unsetenv (varp);
> +		if (is_env_var_allowed (varp, valp))
> +		  {
> +		    if (valp)
> +		      {
> +		        if (valp && *valp != 0)
> +		          setenv (varp, valp, 1);
> +		      }
> +		    else
> +		      {
> +		          unsetenv (varp);
> +		      }
> +		  }
>  		cp = varp = (char *) subpointer;
>  		valp = 0;
>  		break;
> @@ -1514,10 +1522,18 @@ suboption (void)
>  	      }
>  	  }
>  	*cp = '\0';
> -	if (valp)
> -	  setenv (varp, valp, 1);
> -	else
> -	  unsetenv (varp);
> +	if (is_env_var_allowed (varp, valp))
> +	  {
> +	    if (valp)
> +	      {
> +	        if (valp && *valp != 0)
> +	          setenv (varp, valp, 1);
> +	      }
> +	    else
> +	      {
> +	        unsetenv (varp);
> +	      }
> +	  }
>  	break;
>        }				/* end of case TELOPT_NEW_ENVIRON */

Some code duplication here.  Not new with these changes, but could be
worth moving to a new function e.g. set_env_var_if_allowed().

> +/* A default whitelist for environment variables. */
> +static const char *allowed_env_vars[] = {
> +  "USER",
> +  "LOGNAME",
> +  "TERM",
> +  "LANG",
> +  "LC_*",
> +  NULL
> +};

Can make not only the strings but also the pointers const:

static const char * const allowed_env_vars[] = {

so that both may end up in a read-only section.

> +int
> +is_env_var_allowed (const char *var, const char *val)
> +{
> +  const char **p;
> +  int allowed = 0;
> +
> +  for (p = allowed_env_vars; *p; p++)
> +    {
> +      if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
> +        {
> +          allowed = 1;
> +          break;
> +        }
> +    }
> +
> +  if (!allowed)
> +    return 0;

You didn't strictly need the "allowed" variable, you could check *p
after the loop.  But maybe it's more readable the way you wrote it.

My review above isn't in full context - I only looked at the patches.

Alexander
