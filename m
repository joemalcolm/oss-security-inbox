Received: (qmail 26147 invoked by uid 550); 13 Apr 2025 14:48:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25872 invoked from network); 13 Apr 2025 14:48:03 -0000
Date: Sun, 13 Apr 2025 16:47:59 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Stig Palmquist <stig@stig.io>
Message-ID: <20250413144759.GA18912@openwall.com>
References: <gawci7t5wtkbk3kj3d3wjqqyy6jshli6mnyimynu5cngjvtm72@chxdlvz3vhsi>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <gawci7t5wtkbk3kj3d3wjqqyy6jshli6mnyimynu5cngjvtm72@chxdlvz3vhsi>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-56406: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a heap buffer overflow when transliterating non-ASCII bytes

Hi Stig,

Thank you for handling this disclosure so well!

On Sun, Apr 13, 2025 at 03:23:25PM +0200, Stig Palmquist wrote:
> Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a heap buffer overflow
> when transliterating non-ASCII bytes
> 
> Description
> -----------
> A heap buffer overflow vulnerability was discovered in Perl. 
> 
> When there are non-ASCII bytes in the left-hand-side of the `tr`
> operator, `S_do_trans_invmap` can overflow the destination pointer `d`.
> 
>    $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
>    Segmentation fault (core dumped)

Running this command on distro packages based on 5.32.1 (like in EL9)
does not segfault (produces no output), which is as expected for a
version that didn't yet have the bug (and assuming no bug backport).

> https://github.com/Perl/perl5/commit/87f42aa0e0096e9a346c9672aa3a0bd3bef8c1dd.patch

As it was mentioned in the advance notification to distros, the issue
was introduced in:

https://github.com/Perl/perl5/commit/a311ee08b6781f83a7785f578a26bbc21a7ae457

which is part of tags v5.33.1 to v5.41.10, so I guess those versions are
also affected.  The fix commit is effectively a revert of the bug commit.

Alexander
