Received: (qmail 9805 invoked by uid 550); 19 Apr 2026 21:11:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24168 invoked from network); 19 Apr 2026 20:46:52 -0000
Date: Sun, 19 Apr 2026 22:46:43 +0200
From: Matthias Ferdinand <ml.oss-security@mfedv.net>
To: oss-security@lists.openwall.com
Message-ID: <aeU_M_lpglZoXOqI@xoff>
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com>
 <aeILrE9J6sYYPmEh@xoff>
 <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
 <87mrz1tbu3.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87mrz1tbu3.fsf@gentoo.org>
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

[ hopefully, discussing binary releases is not off-topic ]

On Sat, Apr 18, 2026 at 12:18:44AM +0100, Sam James wrote:
> Eli Schwartz <eschwartz@gentoo.org> writes:
> 
> > On 4/17/26 6:30 AM, Matthias Ferdinand wrote:
> >> Perhaps the message did not spread wide enough. Or are many Go programs
> >> just not affected?

> For serious issues, it may make sense for projects distributing binaries
> (provided they know it was built by a buggy compiler) in the same way
> they might do for a vulnerable OpenSSL DLL in their Windows offering.


> > $ emerge @golang-rebuild
> > ...
> > fixing. It is regular like clockwork, so do people really need an
> > invitation to do so?

Personally, I am guilty of not compiling packages myself (except for
some pkgsrc) and using mostly distributions in binary package form
(Debian, Ubuntu, Alma). Also, many projects on github release binary
packages. Doing a fresh release with no change except for the compiler
used (and some new release version or build number) may make sense for
those projects with affected binaries.


> > IIRC it is possible to determine which packages actually need rebuilding
> > for any given CVE, but to do so you need to locally extract the entire
> > recursive deps-included source code of every package, and run some
> > arcane undocumented `go ....` invocation. Functionally, what you're
> > doing is checking which programs link to an internal static library
> > distributed with the go compiler. (This is not exactly correct, but it
> > is a useful mental model.)

Don't know enough Go to check affectedness of any project myself, but if
it is that difficult it makes me worry even more :-) In the original
advisory I did not see any mention if/how these issues propagate into
compiled applications, and I only started worrying after reading the
blog post about the memory safety issues and seeing that some projects
had started issuing updates.

A vulnerability in the build chain of course takes more time to assess
and solve for all binaries in a binary distribution. Or you could just
issue package updates for all Go applications (as proposed by Eli
Schwarz).
Not sure if I would really to want to see either every project/package
using Go listed under the existing CVEs, or a new CVE issued for each
just for increased visibility. I just wondered why the impact on
binaries and binary packages is not being discussed more broadly
(anywhere, not just oss-security).

https://security-tracker.debian.org/tracker/CVE-2026-... only lists
golang packages as affected, with some as already fixed and released,
e.g.  https://security-tracker.debian.org/tracker/CVE-2026-33810 (DNS
contraints).

https://ubuntu.com/security/CVE-2026-... are still showing "Needs
evaluation" for the golang packages, but they contain a comment by Marc
Deslauriers: "Packages built using golang need to be rebuilt once the
vulnerability has been fixed."

Alpine has bumped build numbers, as Chad Dougherty wrote here
    From: Chad Dougherty <crd477@icloud.com>
     Not an advisory, but Alpine did this:
     https://git.alpinelinux.org/aports/commit/?h=3.23-stable&id=f43ed43f4d329cb8cbca59b90c9560ab9e6d8f42
Alpine also had fresh releases on 2026-04-15, including some updates
"rebuild with Go ..."

Arch linux appears not to have recompiled Go applications (or at least
not all of them, only checked restic)

repo.almalinux.org does not show updated golang versions, so probably
no recompiled Go applications either.


Matthias
