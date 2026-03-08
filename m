Received: (qmail 11527 invoked by uid 550); 8 Mar 2026 04:36:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16147 invoked from network); 8 Mar 2026 04:05:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	reply-to:sender:bcc; bh=BKYWwEmRp8yHyrV2Fb81SxcJHRZWCwyAiKcL8hebyX4=; b=VuPNH
	PKJmGHSe+F4vEH6E+yWvUHWm2gma2H+4MdI+jaBsNkFDdqSXN5fHodf7kN8wfihofvBtlFW1edvdz
	Hhe9laobloSSAUoyBNPl3rsgRBqvy1chbLDgHGEzOrZ2U9jR1IALbvYtosniRryIx5x0ashCJSTy4
	wirUdrPBViR7U3WKGxs362oXIFEAl4J70qHQFVDHUZduTdPACQ4bRb41BmeRmiyYroipein4gKcqO
	+/a98HolXgPNsUik31svEFUnXZr5Cg6d+RYkZsHjlNRSpaVSUXlhC2MZ7QvWbrIRSmulXjOw0GYj7
	mMz3NEn7FDTiPNQPsEporaUlMaGZA==;
MIME-Version: 1.0
Date: Sun, 08 Mar 2026 06:05:45 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, bug-inetutils@gnu.org,
 ron.benyizhak@safebreach.com, simon@josefsson.org,
 auerswal@unix-ag.uni-kl.de
In-Reply-To: <20260308025745.GA24992@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com>
 <20260307002011.18141-1-justin.swartz@risingedge.co.za>
 <20260308025745.GA24992@openwall.com>
Message-ID: <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.04)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuX4YdWO9pQqcxcwsgSBwojYKUxED5h93s4x
 tIfLg0c/eSu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTg7NXnxaOJdjj0HN0oUaaMGBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Hj659XjhVt1bdQ9l6emukohSnw9YyoGHx/ukuag1WKDVi/kr
 0Xu6IEz8fH7EgizlKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyEY/pn7fI
 pI3uH7GbNvMm8JGvCjEIRhByMPuJ53PpRQrRPOcKMZQ8TspT6l0qMPoDqDqcdaWTbH+oFVJBbBEA
 vZbNITk0BDBRvlTZwGE4M1fg5pAS+jM23TXjPe0x3K5SiSjJG/2a67wkDtsemQ5QsY2ZQf/2SpOZ
 EHliB6lJb1DDLaL+LKs/oKLduA+IVglWikZofkllSL8ViMA9I3D9oPH5yqxsqDXlCOaJ+Wr4vlYH
 GCAaqGGIAdjLRq5GPKaeRlxVDZeXHNSyIX15NWGaHY7zkSRIvD/syMwda91IAUKHiBSoGdSAwB7s
 MnqRmZNfnALr+QtOUjdFUEoutE0C2eAfzMFQ41HhYhjf58tL0uNZX9B0JtPeSlsoT/DDChBScxw3
 qqhc+N6cuEg4XWh5Fla+gUWjL2viBcE20Dnt/jBqs+iklTH6siygcfQ6lJvOwrekjoyY3j6/9i3D
 d4g+OK0ovaOw/98TBlK7E3o1wHbGwl8HKrYJQPWXWkQXww5wvKLwqFudgXQdZQF1+MzinvdjzQ6Y
 C7Heg3Xf7O1TOd64DVUMDneoxZd7gOPJACQvQil+s9GGWF/2ZkFbTQnIIoyR7eZ5E9iu0DfsWxxO
 B3VXhzx06/q4U6jqdG5fKUg2Ibtf63VNbf0lrvssY+k7AAMhWEVoIHmM/OoTdePyyWmTF6ymUAav
 ae3aV27dM5QNDnh1ABz26iCpC3zFGBZLQqtnOCfO+nz2CVSkxMf+VsJJg9tJeQjs6amrICnvcyB+
 lcZkPRq7NhoxyMwqi8Q23fWQx9SoxRPXmbHvYZomGm4e1cRGOCtsy2/fhFcX8KcaMS+4ayUpOtEh
 dxekWDmK9g==
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: Telnetd Vulnerability Report

On Sun, 8 Mar 2026 03:57:45 +0100, Solar Designer wrote:
> I'm not saying you should revise the list in any way - just sharing 
> what
> others have.  It may well be that allowing those other env vars by
> default is obsolete since use cases for telnet are now more 
> specialized,
> and maybe allowing LANG and LC_* is desirable for current use cases.

LANG and LC_* were cargo-culted in as they are honoured by OpenSSHd.


> Separately note that I didn't check the *BSDs telnet _client_ (which I
> think is still present in all *BSDs) for being (hopefully not) willing
> to export arbitrary env vars.  The maintainers could want to check 
> this.
> And you could want to check the telnet client in InetUtils, now that we
> know this package missed telnet[d] security fixes in general.  This was
> CVE-2005-0488 (and CVE-2005-1205 on Windows).
> 
> "Certain BSD-based Telnet clients, including those used on Solaris and
> SuSE Linux, allow remote malicious Telnet servers to read sensitive
> environment variables via the NEW-ENVIRON option with a SEND 
> ENV_USERVAR
> command."

I don't mind poking at the InetUtils telnet client once I've done my 
best
to leave the telnetd implementation in a better state than I found it 
in.


> > The daemon now clears the inherited environment (preserving PATH
> > and TERM, respectively, if present) before calling telnetd_setup().
> 
> Inherited from inetd or the like?  It's supposed to be trusted input 
> and
> env vars in there may be set on purpose, so dropping them is 
> unexpected.
> I think e.g. sshd doesn't do that, why would telnetd?  Think things 
> like
> LD_PRELOAD=/lib64/libhardened_malloc.so (although /etc/ld.so.preload is
> a more reliable way to do this when practical to do it globally).

Yes, inherited from inetd. Your reasoning makes sense, so I'll get rid 
of
exorcise_env() and leave the inetd/tcpd supplied environment intact for
telnetd (or some site-specific wrapper) to inherit.


> > +++ b/telnetd/state.c
> > @@ -1495,10 +1495,18 @@ suboption (void)
> >  	      case NEW_ENV_VAR:
> >  	      case ENV_USERVAR:
...
> >        }				/* end of case TELOPT_NEW_ENVIRON */
> 
> Some code duplication here.  Not new with these changes, but could be
> worth moving to a new function e.g. set_env_var_if_allowed().

Agreed. I'll implement set_env_var_if_allowed() instead.


> > +/* A default whitelist for environment variables. */
> > +static const char *allowed_env_vars[] = {
> > +  "USER",
> > +  "LOGNAME",
> > +  "TERM",
> > +  "LANG",
> > +  "LC_*",
> > +  NULL
> > +};
> 
> Can make not only the strings but also the pointers const:
> 
> static const char * const allowed_env_vars[] = {
> 
> so that both may end up in a read-only section.

OK, .rodata it is.


> > +int
> > +is_env_var_allowed (const char *var, const char *val)
> > +{
> > +  const char **p;
> > +  int allowed = 0;
> > +
> > +  for (p = allowed_env_vars; *p; p++)
> > +    {
> > +      if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
> > +        {
> > +          allowed = 1;
> > +          break;
> > +        }
> > +    }
> > +
> > +  if (!allowed)
> > +    return 0;
> 
> You didn't strictly need the "allowed" variable, you could check *p
> after the loop.  But maybe it's more readable the way you wrote it.

I'll keep "allowed" for the time being, but I don't mind changing it if
there's a clearer way to express this logic.


> My review above isn't in full context - I only looked at the patches.

Thanks for the review, I'll submit a third version of this patch set 
later.
