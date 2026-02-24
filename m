Received: (qmail 9869 invoked by uid 550); 24 Feb 2026 06:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4009 invoked from network); 24 Feb 2026 06:45:08 -0000
Date: Tue, 24 Feb 2026 07:43:51 +0100
From: Solar Designer <solar@openwall.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	ron.benyizhak@safebreach.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de
Message-ID: <20260224064351.GA14779@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224052943.GA13045@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Telnetd Vulnerability Report

On Tue, Feb 24, 2026 at 06:29:43AM +0100, Solar Designer wrote:
> On Tue, Feb 24, 2026 at 03:17:02AM +0200, Justin Swartz wrote:
> > In my opinion, to fix this issue and finally put the ghost of CVE-1999-0073 to rest: telnetd must drop the blacklist approach and adopt the OpenSSH AcceptEnv-style approach suggested by Simon Josefsson [1], which amounts to preparing a brand new environment for /bin/login based on a strict whitelist of variables names considered to be "safe", and perhaps a healthy dose of input sanitization for their respective values.
> 
> Oh, sure.  A couple of decades ago I ported OpenBSD's telnet and telnetd
> to Linux for our distro, Owl.  I no longer recalled all detail, but
> looking at my "Linux port" patch now, it appears to implement a strict
> allow-list approach already.  There's a comment saying the "list comes
> from Linux NetKit telnetd, version 0.17", so maybe NetKit already used
> that approach too, and Linux distros got a regression by switching from
> NetKit to InetUtils?  Or it could be that Red Hat used NetKit and Debian
> went with InetUtils.  I see I'm also lightly sanitizing env var values
> (only for not containing '/' and being of sane length), which I doubt
> was in NetKit.

I'm now looking at telnet-0.17-85.el9.src.rpm from Rocky Linux 9.  The
telnet server part of it is still based on NetKit 0.17, where the latest
ChangeLog entry is:

22-Jul-2000:
        Bug fixes for environment processing from Olaf Kirch. Also fixes
          privacy issue noticed by Steve Bellovin. Also fix a wrong
          assert().

and the code is:

/* check that variable is safe to pass to login or shell */
#if 0  /* insecure version */
static int envvarok(char *varp) {
    if (strncmp(varp, "LD_", strlen("LD_")) &&
        strncmp(varp, "ELF_LD_", strlen("ELF_LD_")) &&
        strncmp(varp, "AOUT_LD_", strlen("AOUT_LD_")) &&
        strncmp(varp, "_RLD_", strlen("_RLD_")) &&
        strcmp(varp, "LIBPATH") &&
        strcmp(varp, "ENV") &&
        strcmp(varp, "IFS"))
    {
        return 1;
    }
    else {
        /* optionally syslog(LOG_INFO) here */
        return 0;
    }
}

#else
static int envvarok(char *varp) {
    /*
     * Allow only these variables.
     */
    if (!strcmp(varp, "TERM")) return 1;
    if (!strcmp(varp, "DISPLAY")) return 1;
    if (!strcmp(varp, "USER")) return 1;
    if (!strcmp(varp, "LOGNAME")) return 1;
    if (!strcmp(varp, "POSIXLY_CORRECT")) return 1;

    /* optionally syslog(LOG_INFO) here */
    return 0;
}

In my patch against OpenBSD's it is:

+/* This list comes from Linux NetKit telnetd, version 0.17 */
+static char *goodenv_table[] = {
+       "TERM",
+       "DISPLAY",
+       "USER",
+       "LOGNAME",
+       "POSIXLY_CORRECT",
+       NULL
 };

[...]

+envvarok(varp, valp)
+       char *varp, *valp;
 {
[...]
+       for (i = 0; goodenv_table[i]; i++) {
+               if (strcmp(goodenv_table[i], varp))
+                       continue;
+               if (strchr(valp, '/') || strlen(valp) >= 0x100) {
+                       syslog(LOG_NOTICE, "Rejected attempt to set the "
+                               "environment variable \"%s\" to an "
+                               "invalid value", varp);
+                       return (0);
+               }
+               return (1);
+       }
[...]
+       return (0);

So it looks like in the Linux world non-use of an allow list is specific
to InetUtils, which means primarily Debian and derived distros.

Alexander
