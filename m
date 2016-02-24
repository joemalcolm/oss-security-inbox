X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1997" "Wednesday" "24" "February" "2016" "19:10:54" "+0000" "Serge Hallyn" "serge.hallyn@ubuntu.com" "<20160224191054.GD19242@ubuntumail>" "36" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" nil nil nil "2" "2016022419:10:54" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "U       serge.hallyn Feb 24   36/1997  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<20160224080303.GA1667@altlinux.org>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<20160223164136.GA24225@altlinux.org>" "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>" "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>" "<20160224080303.GA1667@altlinux.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9537 invoked by uid 550); 24 Feb 2016 19:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9519 invoked from network); 24 Feb 2016 19:11:07 -0000
Date: Wed, 24 Feb 2016 19:10:54 +0000
From: Serge Hallyn <serge.hallyn@ubuntu.com>
To: oss-security@lists.openwall.com
Message-ID: <20160224191054.GD19242@ubuntumail>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
 <20160223161754.GA23263@openwall.com>
 <20160223164136.GA24225@altlinux.org>
 <42e97a56-3538-0864-ee40-2494df567745@halfdog.net>
 <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
 <20160224080303.GA1667@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160224080303.GA1667@altlinux.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user
 namespaces

Quoting Dmitry V. Levin (ldv@altlinux.org):
> On Wed, Feb 24, 2016 at 07:01:11AM +0000, Simon McVittie wrote:
> [...]
> > <https://bugs.debian.org/717544> has some interesting background. The
> > Debian and Ubuntu glibc maintainers tried turning off pt_chown in 2014,
> > but had to turn it back on because it caused too many regressions: in
> > particular "mount -t devpts devpts-foo chroot-foo/dev/pts" apparently
> > alters the mount options for the "real" /dev/pts, not just the one being
> > mounted in the chroot (presumably losing the noexec,nosuid,gid=5 and
> > mode=620 or mode=600 options that are expected in Debian). I don't know
> > whether the default mount options were subsequently altered in util-linux
> > and/or the kernel as suggested on that bug, or whether manually mounting
> > devpts is just not going to be a supported action in Debian 9.
> 
> Linux kernel, starting with version 2.6.29, allows multiple instances
> of devpts filesystem (assuming that CONFIG_DEVPTS_MULTIPLE_INSTANCES
> is enabled) when "newinstance" mount option is specified for devpts.
> The feature is primarily to support containers, but also addresses
> the issue: 
> https://www.kernel.org/doc/Documentation/filesystems/devpts.txt

The problem is that while it's possible to mount a newinstance, it
is also still possible to mount the host instance and change the
settings.  Any rogue piece of userspace in a non-user-namespaced
container is able to do so and mess up the host.  If new devpts
mounts always did newinstance, then I think things would have been
different.  But the mere availability of newinstance mounts does not
solve this.

(When the newinstance was being implemented the authors really did want
to make it so that future mounts would remount the 'namespaced' version,
(i.e. mount -t devpts -o newinstance /mnt; mount -t devpts /dev/pts
would result in /mnt's superblock being used for /dev/pts), but there
just wasn't a good way to figure out which mount that would be.)

-serge
