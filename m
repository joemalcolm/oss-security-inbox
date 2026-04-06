Received: (qmail 3769 invoked by uid 550); 6 Apr 2026 10:38:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19492 invoked from network); 6 Apr 2026 06:20:38 -0000
Date: Mon, 6 Apr 2026 16:20:19 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
cc: oss-security@lists.openwall.com
In-Reply-To: <43950a0c-60c3-479d-a18a-30238bda901e@gmail.com>
Message-ID: <d671c5fa-eb18-448f-ac36-8f87f8bcf56a@mindrot.org>
References: <8054b51fdf431307@cvs.openbsd.org> <43950a0c-60c3-479d-a18a-30238bda901e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1876900708352-1490290924-1775456419=:9433"
x-ms-reactions: disallow
X-Scanned-By: MIMEDefang 2.75 on 130.102.60.17
Subject: Re: [oss-security] Announce: OpenSSH 10.3 released

--1876900708352-1490290924-1775456419=:9433
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 3 Apr 2026, Demi Marie Obenour wrote:

> >  * ssh(1): validation of shell metacharacters in user names supplied
> >    on the command-line was performed too late to prevent some
> >    situations where they could be expanded from %-tokens in
> >    ssh_config. For certain configurations, such as those that use a
> >    "%u" token in a "Match exec" block, an attacker who can control
> >    the user name passed to ssh(1) could potentially execute arbitrary
> >    shell commands.  Reported by Florian Kohnhäuser.
> > 
> >    We continue to recommend against directly exposing ssh(1) and
> >    other tools' command-lines to untrusted input. Mitigations such
> >    as this can not be absolute given the variety of shells and user
> >    configurations in use.
> 
> Is it safe (from a shell injection perspective) to pass inputs that are
> sanitized for character set, but otherwise untrusted?  For instance,
> is it sufficient to limit usernames to ^[A-Za-z][A-Za-z0-9_-]{0,31}$
> and domain names to valid host names [1]?

Probably, but this is the essence of the problem as we see it: we can't
know for sure whether this is safe, because we don't can effectively
reason about what shell is in use (and thus what its metacharacters
are) and what the user is doing with these characters in their
configuration file.

To make things harder, this isn't the full set of characters that
appear in usernames. At least %, @, \ and / are relatively common
too :(

> Can one assume that in situations where entries come from an
> untrusted source (such as AuthorizedKeysCommand), OpenSSH _does_
> do such checking?

The *Command options in sshd_config require that the user exist
in the system password database, otherwise they will not be
executed.

It's still possible to shoot youself in the foot with these if you
try hard enough though, e.g. if you've rigged NSS to allow arbitrary
usernames with no character filtering, then there is the potential
for shell injection if the admin has specified token expansion in
a *Command directive.

> [1]: No more than 254 bytes (plus optional trailing '.'), no leading '.',
>      each '.'-delimited component must start and end with [a-z0-9], not
>      be more than 63 bytes, and only have [a-z0-9-].

This too would block some hostnames that people use frequently.
As a trivial example, '_' is common in hostnames despite being
strictly invalid. IIRC there are other more esoteric ones too.

-d
--1876900708352-1490290924-1775456419=:9433--
