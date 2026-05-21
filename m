Received: (qmail 32227 invoked by uid 550); 21 May 2026 20:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12229 invoked from network); 21 May 2026 20:21:52 -0000
Date: Thu, 21 May 2026 13:21:42 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <84Zg5p5I5P02YkgI@aceecat.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <agxXF1J53iSJIrP6@suse.de>
 <20260519151600.3ded0958@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260519151600.3ded0958@hboeck.de>
Subject: [oss-security] Re: Fixed: local root exploit in haveged, fixed in 1.9.21,
 CVE-2026-41054

On Tue, May 19, 2026 at 03:16:00PM +0200, Hanno Böck wrote:

> You can also fix this by uninstalling it.

> There's no need to have an "entropy daemon"... It adds needless
> complexity and, as this issue shows, attack surface. There have been
> many improvements in the Linux kernel's RNG (Jason Donenfeld, also
> known as the Wireguard developer, did a lot of work on that) and I
> am quite confident that there are no problems with the RNG on any
> reasonably recent Linux kernel that an "entropy daemon" would help
> with.

Wasn't most of the problem on VPSes, where hardware reads are
simulated by the host and thus to some degree predictable? AFAIR that
was the primary target of haveged. And that's why places like hetzner
still include it in their default cloud-init setup, according to my
experience :-(

-- 
Ian
