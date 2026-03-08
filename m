Received: (qmail 9731 invoked by uid 550); 8 Mar 2026 08:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7776 invoked from network); 8 Mar 2026 08:06:04 -0000
Date: Sun, 8 Mar 2026 09:05:57 +0100
From: Solar Designer <solar@openwall.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: oss-security@lists.openwall.com, bug-inetutils@gnu.org,
	collin.funk1@gmail.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de, ron.benyizhak@safebreach.com
Message-ID: <20260308080557.GA27619@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com> <20260307002011.18141-1-justin.swartz@risingedge.co.za> <20260308025745.GA24992@openwall.com> <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za> <20260308073422.20218-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308073422.20218-1-justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Telnetd Vulnerability Report

On Sun, Mar 08, 2026 at 09:34:22AM +0200, Justin Swartz wrote:
> Based on the feedback provided, the third version of the patch set [1]:

> - Places the strings of the allowed environment variables array into
>   the .rodata section.

Actually, the strings would be in .rodata (or after linking, in .text)
with your previous patch version as well.  It's the array of pointers
that you're also moving to there now.

> - Discards the --accept-env feature [3], as an inetutils maintainer [2]
>   is working on an implementation to extend the allowed environment
>   using Gnulib instead.

It sounds like one of you will have to rebase this on the other's work.

> +extern int is_env_var_allowed (const char *var, const char *val);

You shouldn't need to have this one extern now - you can make it static.

> +#ifdef HAVE_PATHS_H
> +# include <paths.h>
> +#else
> +# ifndef _PATH_DEFPATH
> +#  define _PATH_DEFPATH "/usr/bin:/bin"
> +# endif
> +#endif

You shouldn't need this anymore.

> +is_env_var_allowed (const char *var, const char *val)
> +{
> +  const char * const *p;

This second const here looks wrong as you're changing the value of this
pointer.  I suggested this syntax only for the array, where you used it
correctly.

> +void
> +set_env_var_if_allowed (const char *var, const char *val)
> +{
> +  if (is_env_var_allowed (var, val))
> +    {
> +      if (val)
> +        {
> +          if (*val != 0)
> +            setenv (var, val, 1);
> +        }
> +      else
> +        {
> +          unsetenv (var);
> +        }
> +    }
> +}

I doubt it's desired behavior to retain the previous value of the env
var if the new value is an empty string - or is it?  If it is not, then
I suggest either dropping the "*val != 0" check or moving it into
"if (val && *val != 0)".

Alexander
