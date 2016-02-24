X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1230" "Wednesday" "24" "February" "2016" "07:01:11" "+0000" "Simon McVittie" "smcv@debian.org" "<20160224070111.GA8044@perpetual.pseudorandom.co.uk>" "24" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" nil nil nil "2" "2016022407:01:11" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "U       smcv@debian. Feb 24   24/1230  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<20160223164136.GA24225@altlinux.org>" "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28572 invoked by uid 550); 24 Feb 2016 07:01:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28554 invoked from network); 24 Feb 2016 07:01:23 -0000
Date: Wed, 24 Feb 2016 07:01:11 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20160224070111.GA8044@perpetual.pseudorandom.co.uk>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
 <20160223161754.GA23263@openwall.com>
 <20160223164136.GA24225@altlinux.org>
 <42e97a56-3538-0864-ee40-2494df567745@halfdog.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42e97a56-3538-0864-ee40-2494df567745@halfdog.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user
 namespaces

On Wed, 24 Feb 2016 at 05:43:04 +0000, halfdog wrote:
> Dmitry V. Levin wrote:
> > Just for the record, pt_chown is not enabled by default in upstream
> > glibc starting with glibc-2.18, one has to specify
> > --enable-pt_chown configure option explicitly to build pt_chown.
> 
> Thanks for that information. So for pt_chown, this could hopefully be
> just an Ubuntu issue.

And Debian 8 (but not the future Debian 9, at least on Linux kernels), and
probably other distributions where backward compat was a concern.

<https://bugs.debian.org/717544> has some interesting background. The
Debian and Ubuntu glibc maintainers tried turning off pt_chown in 2014,
but had to turn it back on because it caused too many regressions: in
particular "mount -t devpts devpts-foo chroot-foo/dev/pts" apparently
alters the mount options for the "real" /dev/pts, not just the one being
mounted in the chroot (presumably losing the noexec,nosuid,gid=5 and
mode=620 or mode=600 options that are expected in Debian). I don't know
whether the default mount options were subsequently altered in util-linux
and/or the kernel as suggested on that bug, or whether manually mounting
devpts is just not going to be a supported action in Debian 9.

    S
