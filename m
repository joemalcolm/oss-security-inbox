Received: (qmail 26562 invoked by uid 550); 6 Mar 2025 06:14:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26054 invoked from network); 6 Mar 2025 06:13:53 -0000
Date: Thu, 6 Mar 2025 07:13:51 +0100
From: Solar Designer <solar@openwall.com>
To: Bastian Blank <bblank@thinkmo.de>, oss-security@lists.openwall.com
Message-ID: <20250306061351.GA7019@openwall.com>
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com> <20250306031513.GA4873@openwall.com> <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com> <20250306044856.GA6417@openwall.com> <20250306055013.roznatsim5uh4bd7@shell.thinkmo.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306055013.roznatsim5uh4bd7@shell.thinkmo.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature Verification Vulnerability

On Thu, Mar 06, 2025 at 06:50:13AM +0100, Bastian Blank wrote:
> On Thu, Mar 06, 2025 at 05:48:56AM +0100, Solar Designer wrote:
> > > First of all, there's an equivalent change in Linux.
> > > https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bb2281fb05e50108ce95c43ab7e701ee564565c8
> > Oh, I had missed that, thanks!
> 
> Who is expected to maintain this list of hashes?  Because this sounds
> like a huge maintenance hog, as this will now block any security updates
> of the microcode.

Per my skimming of the Linux patch above, need_sha_check() _partially_
addresses this concern by only requiring hashes for new microcode when
the currently loaded microcode is below certain revisions (perhaps those
where AMD has fixed this issue).  So it appears it won't be possible to
load some future microcode off a vulnerable microcode right away, but it
should be possible to do the same in two steps - load the current fixed
version first, then load whatever future version.  An issue is that
Linux distros' userland packages and generated initramfs images are not
prepared to use such two-step process, so your concern seems valid.

I hope someone corrects me if I misunderstood any of this.

Alexander
