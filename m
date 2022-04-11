Received: (qmail 16273 invoked by uid 550); 11 Apr 2022 17:11:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12048 invoked from network); 11 Apr 2022 16:40:15 -0000
Date: Mon, 11 Apr 2022 12:39:44 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <YlRZ0MNxf3lyr/nE@dojo.mi.org>
References: <CAAr7cF2zor2=J0D=NxFqS0TecrZTv2X8d_W53=vp_KWNJ-rxsg@mail.gmail.com>
 <YlQSAy7P8xHKaWpT@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YlQSAy7P8xHKaWpT@kroah.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Mon, 11 Apr 2022 12:40:35 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Mon, 11 Apr 2022 12:40:35 -0400 (EDT)
Subject: Re: [oss-security] CVE-2022-28893: Linux kernel: Use after free in
 SUNRPC subsystem

:On Mon, Apr 11, 2022 at 04:20:56PM +0800, Felix Fu wrote:
:> Hello, I Request a CVE from MITRE.
:> 
:> Description: The SUNRPC subsystem in the Linux kernel through 5.17.2 can
:> call xs_xprt_free before ensuring that sockets are in the intended state.
:> Details: Use after free happens in inet_put_port because some sockets are
:> not close before xs_xprt_free().
:> CVE-ID: CVE-2022-28893  (
:> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-28893)
:> Fix:
:> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1a3b1bba7c7a5eb8a11513cf88427cb9d77bc60a
:
:This is a merge commit, not the actual commit that fixed the issue :(

https://github.com/torvalds/linux/commit/f00432063db1a0db484e85193eccc6845435b80e

appears to be the actual commit that fixed the issue.

-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"Holy one-track Batcomputer mind!!!"                   -Robin, the Boy Wonder
