Received: (qmail 6122 invoked by uid 550); 18 Mar 2026 14:09:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5560 invoked from network); 18 Mar 2026 14:09:01 -0000
Date: Wed, 18 Mar 2026 15:08:59 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260318140859.GA28877@openwall.com>
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com> <CAOcQRVW0Nestm-mMxnEzbb=cTEy_chVaoy8rm7Aqwc5OkadHVw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOcQRVW0Nestm-mMxnEzbb=cTEy_chVaoy8rm7Aqwc5OkadHVw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

Hi Dmitry,

On Wed, Mar 18, 2026 at 09:14:31AM +0100, Dmitry Belyavskiy wrote:
> Can we somehow establish some better coordination in case of widely used
> downstream patches, especially for such an important, ubiquitous and
> heavily patched component as OpenSSH?

This was brought to the distros list on March 5.  On March 6, I wrote:

"Looks like Red Hat packages are also affected.  In particular, I looked
at openssh-8.0p1-gssapi-keyex.patch from RHEL 9."

so it's not like Red Hat could assume this was limited to Debian/Ubuntu.

I now recall that something similar happened on a previous occasion,
where you were not aware of a relevant issue until public disclosure.

So we seem to have a question to the Red Hat security team here - are
you going to be informing your package maintainers of embargoed issues
(which I consider fitting the need-to-know condition of the distros
list), or are you deliberately handling them differently, or neither?

I suppose this could reasonably vary by package - security updates to be
prepared by security team vs. by package maintainer.

Should I be taking care of notifying Dmitry for OpenSSH specifically,
where we know that he's eager to prepare for these disclosures but is
often left out of the loop?  IIRC, from the previous occasion I actually
planned to start doing that, but I forgot, I'm sorry.

Meanwhile, I see the Mitigation section in
https://access.redhat.com/security/cve/cve-2026-3497 has been updated to
correctly refer to GSSAPI key exchange rather than authentication, but
it still seems to imply the default configuration is affected - which I
think it is not, or is it?

I wasn't too concerned about this issue for the Rocky Linux SIG/Security
package that I maintain because we build it without Kerberos and GSSAPI
support since March 2024.  The patch is still applied, but the
GSSAPIKeyExchange setting does not exist for real (is silently ignored
via an extra patch for compatibility with FIPS configs that disable it),
so it can't possibly be enabled there.  Ditto in CIQ's RLC Pro Hardened.

Alexander
