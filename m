X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6515" "Monday" "3" "June" "2019" "23:48:26" "+0300" "Vladimir D. Seleznev" "vseleznv@altlinux.org" "<20190603204826.GA9152@portlab.ipa.basealt.ru>" "131" "Re: [oss-security] Using quilt on untrusted RPM spec files" nil nil nil "6" "2019060320:48:26" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "U       vseleznv@alt Jun  3  131/6515  " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<20180927155934.GB8696@f195.suse.de>" ("<20180927155934.GB8696@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Using quilt on untrusted RPM spec files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15597 invoked by uid 550); 4 Jun 2019 09:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3362 invoked from network); 3 Jun 2019 20:48:38 -0000
Date: Mon, 3 Jun 2019 23:48:26 +0300
From: "Vladimir D. Seleznev" <vseleznv@altlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <20190603204826.GA9152@portlab.ipa.basealt.ru>
References: <20180927155934.GB8696@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180927155934.GB8696@f195.suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files

On Thu, Sep 27, 2018 at 05:59:34PM +0200, Matthias Gerstner wrote:
> Hello list,

Hello!

> in the SUSE security team we have been recently looking into the security of
> using quilt on untrusted RPM spec files and patches. The openSUSE distribution
> is RPM based and uses the open build service (OBS) [1] for collaboration with
> the community. Packagers, contributors and interested people can host their
> packages in personal home projects and can become maintainers of development
> packages that are targeted for inclusion in SUSE distributions.
> 
> Once packages are submitted into an actual SUSE distribution like openSUSE
> Tumbleweed human and automated reviews of the package contents will take
> place for quality assurance and security. One of the typical workflows for
> many people concerned with managing the openSUSE distribution is to checkout
> a (possible not yet reviewed) OBS package and run `quilt setup` on the RPM
> spec file for extracting the package sources and applying any specified
> patches. When building an RPM package on server or client side then this
> happens in an isolated environment (e.g. a chroot [2] or in a virtual
> machine). The `quilt setup` invocation, however, typically happens
> interactively on client machines without special security measures.
> 
> It turns out that running `quilt setup` on untrusted sources is not a good
> idea:
> 
> - The statements in the `%prep` section of the RPM spec file are
>   plainly executed in the context of the calling user.
> - Arbitrary flags can be passed to `patch` via `%define _default_patch_flags
>   ...` in the spec file. By embedding semicolons into the flags also arbitrary
>   commands can be injected this way.
> - By combining the available vectors, difficult to spot malicious code can be
>   hidden in RPM spec files. For example patch can be caused to follow
>   symlinks, thereby "patching" files in a user's home directory as demonstrated
>   in [3].
> 
> Now we would be interested in discussing this topic with the community. Do
> other distributions have similar workflows and therefore similar attack
> surface as we do? What would be viable countermeasures?

For more than one and a half decade long, we in ALT Linux Team are using
hasher [1] [2], which isolates the host system, the build environment
and the building process from each other, and makes the building process
safe and reproducible.  There are some articles (in Russian) [3] [4].

A short description of how it works based on the hasher documentation:

The  hasher architecture is based on triple-user model: caller user (C)
and two unprivileged pseudousers; the first one (R) emulates root  in
the  generated build environment, the second one (U) emulates a regular
user who builds software.

Switching between caller user and helper users is handled by a special
privileged  program hasher-priv(8). hasher-priv(8) is a small privileged
helper for the hasher project, which only does a small set of actions
that require privileges during the generation of build chroot
environment and starts the actual build process.  It is written with
extreme caution to defend from attacks installed by unprivileged users.
This helper is also  used  to purge processes left after pseudousers, to
create device files, and to control resources allocated for unprivileged
processes to defend from DoS-attacks.  hasher-priv(8) is designed to be
as small as possible and well reviewed.

In  general,  the  path  of  source  package  in hasher during the build
process looks as follows:

1. *Generate aptbox*  User C generates environment (aptbox) for apt.

2. *Remove build environment probably left by previous builds*  The
removal is done sequentially: inside build chroot by user U, inside
build chroot by user R and finally outside chroot by user C.

3. *Generate new build chroot framework*  User  C  generates  the
framework,  which  consists  of helper directories  and  statically
linked  helper  programs: ash(1), find(1) and cpio(1).  Basic device
files like /dev/null  are  also created  at this  point  by  means  of
hasher-priv(8).  These devices are necessary for build environment and
are  secure  for the host system.

4. *Generate basic install environment*  This  environment  contains
everything  necessary  for regular package installs.  Using apt
utilities, user C determines the set  of packages required to generate
the install environment.  Using static helper programs, user R unpacks
these packages.

5. *Generate basic build environment*  This environment  contains  tools
deemed required  for  every package build.  Using apt utilities, user  C
determines a set of packages, user R installs them.

6. *Generate build environment for this particular package*  User U
fetches package build  dependencies,  using  apt utilities, user  C
determines  the set  of  packages  to install, and user R installs them.

7. *Build the package*  User U executes the build.

These schemes are designed to eliminate attacks of the type U->R, U->C,
R->C, and all attacks targeted to root.

Sure, this solution is kinda ALT specific, e.g. it uses apt for
dependency calculation, but it can be adapted for the use of any other
instruments.

P.S. It's been a while when the original message was sent, but it's
better later than never, they say.

> Our current assessment is that most people that use quilt this way are
> probably not aware of the potential dangers involved. Furthermore we think
> that in order to fix this a simple to use default protection mechanism
> would be required. While running `quilt setup` e.g. in a docker
> container would provide fair security against such scenarios it would
> introduce quite some dependencies and complexities that make it not well
> suited for a default approach.
> 
> We are currently testing isolation of quilt with nsjail [4]. A first result,
> the wrapper "squilt" [5], can confine quilt's execution to a package
> directory, thereby reducing the attack surface significantly.
> 
> [1]: https://openbuildservice.org
> [2]: https://build.opensuse.org/package/show/openSUSE:Tools/build
> [3]: https://build.opensuse.org/package/show/home:mgerstner/surprise
> [4]: http://nsjail.com
> [5]: https://github.com/jsegitz/squilt

[1] http://git.altlinux.org/gears/h/hasher.git
[2] https://en.altlinux.org/Hasher
[3] http://ftp.altlinux.org/pub/people/ldv/hasher/thesis-2004.html
[4] http://ftp.altlinux.org/pub/people/ldv/hasher/thesis-2005.html

-- 
   With best regards,
   Vladimir D. Seleznev
