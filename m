Received: (qmail 16244 invoked by uid 550); 7 Apr 2026 14:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32722 invoked from network); 6 Apr 2026 23:27:28 -0000
Date: Tue, 7 Apr 2026 09:27:13 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
cc: oss-security@lists.openwall.com
In-Reply-To: <3b3e0ccd-0365-4383-8dba-8c195a15d7eb@gmail.com>
Message-ID: <e8c26989-e50f-d892-c1cc-2515071132aa@mindrot.org>
References: <8054b51fdf431307@cvs.openbsd.org> <43950a0c-60c3-479d-a18a-30238bda901e@gmail.com> <d671c5fa-eb18-448f-ac36-8f87f8bcf56a@mindrot.org> <3b3e0ccd-0365-4383-8dba-8c195a15d7eb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
x-ms-reactions: disallow
X-Scanned-By: MIMEDefang 2.75 on 130.102.79.58
Subject: Re: [oss-security] Announce: OpenSSH 10.3 released

On Mon, 6 Apr 2026, Demi Marie Obenour wrote:

> > Probably, but this is the essence of the problem as we see it: we can't
> > know for sure whether this is safe, because we don't can effectively
> > reason about what shell is in use (and thus what its metacharacters
> > are) and what the user is doing with these characters in their
> > configuration file.
> 
> What about using execve() directly for these commands, rather than a
> shell?  That would break backwards compatibility for what I suspect to
> be rare configurations, while fixing most of these injection problems.

People definitely use shell constructs in `Match exec` and `LocalCommand`
so this would be quite a loss on the client side.

On the server-side, we already use execve(), but that's not a guarantee
of safety. As an extreme example, consider

AuthorizedPrincipalsCommand sh -c %u

> > It's still possible to shoot youself in the foot with these if you
> > try hard enough though, e.g. if you've rigged NSS to allow arbitrary
> > usernames with no character filtering, then there is the potential
> > for shell injection if the admin has specified token expansion in
> > a *Command directive.
> 
> Does NSS generally enforce some sort of validation?

Typically it's configured to perform a lookup in some database (e.g.
LDAP) and return only users that exist there. These are fine.

Other configurations are possible, e.g. someone might naively create
a NSS configuration that accepted any username and returned default
account information for it. sshd isn't the only thing that might have
problems here. There's probably plenty of other things that would have
difficulty with getpwnam() returning valid user information for the
name "../../../../../../etc/shadow"

-d
