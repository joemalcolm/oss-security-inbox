X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4990" "Monday" "18" "December" "2017" "20:21:56" "+0000" "halfdog" "me@halfdog.net" "<814-1513628516.856754@MaI1.D5wz.7Roo>" "105" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017121820:21:56" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        me@halfdog.n Dec 18  105/4990  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<87tvwoowng.fsf@fifthhorseman.net>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" "<87tvwoowng.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1989 invoked by uid 550); 18 Dec 2017 20:22:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1970 invoked from network); 18 Dec 2017 20:22:26 -0000
In-reply-to: <87tvwoowng.fsf@fifthhorseman.net>
References: <20171207210134.GA7079@openwall.com> <2172-1513501568.968862@pLoG.Le7g.f3CQ> <87tvwoowng.fsf@fifthhorseman.net>
Comments: In-reply-to Daniel Kahn Gillmor <dkg@fifthhorseman.net>
   message dated "Mon, 18 Dec 2017 10:58:43 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <814-1513628516.856754@MaI1.D5wz.7Roo>
Date: Mon, 18 Dec 2017 20:21:56 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

Daniel Kahn Gillmor writes:
> On Sun 2017-12-17 09:06:08 +0000, halfdog wrote:
> > Solar Designer writes:
> >> On Thu, Dec 07, 2017 at 06:32:11AM +0000, halfdog wrote:
> >> > After getting gpg and agent running, I noticed, that not reliably
> >> > stopping the gpg-agent on initrd would introduce a private key
> >> > data leak via /proc from early boot process to running system
> >> > when stopping fails.
> >>=20
> >> Can you elaborate on this, please?
> >
> > As the agent process stays alive and initrd PID namespace is the
> > same as final init-process PID namespace, the agent will stay
> > via /proc and traceable by root using PTRACE.
> 
> I think what you're saying is basically that the key (or its passphrase)
> remains in RAM while the agent is running.
> 
> This is also true for things like ssh-agent.
> 
> Keeping the key in RAM enables convenient, simple reuse -- this is a
> security benefit, because it means it is possible to do things like read
> a series of encrypted e-mails without entering your password for each
> message.  Without this, reading encrypted mail is an extreme nuisance
> (esp. at the rate at which some people send and receive mail), and it
> encourages people to just revert to cleartext mail in the first place.

The features you describe are a clear must for desktop/enduser
usecases, that require frequent access to the key. It is clear
to me, that those features are required, no discussion to this
point.

The point in starting this thread was, that GnuPG does NOT conveniently
cover usecases for headless or scripting operation. Thus it seems
that the time has come to look for replacement, as GnuPG is moving
more in the "desktop" direction, as also your comments indicate.

> >> Personally, I intend to stay with GnuPG 1 for now.
> >
> > As Debian marked the packages with "gnupg1 - GNU privacy guard -
> > a PGP implementation (deprecated "classic" version)" I wanted to
> > anticipate the changes now, giving me more time to evaluate the
> > changes and to find alternatives when needed.
> 
> Hi!  I'm the person who marked gpg1 "deprecated" in debian.  i consider
> it deprecated for several reasons, including:
> 
>  * upstream is not devoting much time to it ...
> 
>  * gpg1 does not support any of the newer cryptographic primitives,
>    ... You will not be able to verify elliptic-curve signatures, nor ...
> 
>  * gpg1's network interaction is entirely one-shot, ...
> 
>  * gpg1 always holds private key material in-process. it can be PTRACE'd
>    by the user themselves (not just as root) for full recovery of the
>    secret key.  gpg2 never sees the private key material, since it
>    delegates that task to the agent.  This process separation means it's
>    possible to create gpg-agent backend processes that run in isolated
>    namespaces, that hook into hardware, that store keys in the kernel,
>    etc.  While these steps haven't been taken yet, they will only be
>    possible with gpg2, since gpg1 expects to handle the private keys
>    directly.

That's really a strange argument. You fear PTRACING for key extraction
of a short-lived, per-key instance of gpg1 process and solve that
by putting all the key material into a single long-lived gpg-agent
process, not even providing convenient commands to flush the keys
from there? Hence not even PTRACING is needed, you can just access
the socket to make the process give you the keys (directly or
by requesting decrypts/signatures - I did not check on that).

Even with namespaces, PTRACE is still allowed unless you are running
the agent as SUID-binary, causing other risks again. In my opinion,
for server operation both schemes would not improve security the
same way as on desktops: if the automated tasks is implemented to
be run as root, PTRACE and namespaces do not help in any way.
If run as distinct user, there are only two usecases:

* The service just does encryption/signature verification: here
  the unavoidable agent just provides additional attack surface,
  e.g. by replacing verification keys in the agent only, thus
  everything looks nice on disk but your signature verification
  is broken.

* The service does signing/decryption: the key is passwordless
  (or password is within user-readable configuration) or HW-token.
  In both cases, the initial security of the key material before
  being transfered to gpg-agent only depends on file system level
  access restrictions. Gaining access to UID or PTRACE is already
  equivalent to full key material compromise. So also here the
  agent only adds attack surface and that's it.

To reduce the attack surface, a "gpg --one-shot" argument could
be added, which will terminate the agent immediately after use,
maybe not even exposing it via sockets visible to other processes
but only connected to its "parent" gpg process via pipes.

>  * gpg1 retains and provides backward compatibility for known-broken
>    formats, like PGP-2, and will likely never effectively drop them...
> ...

hd


