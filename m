Received: (qmail 31779 invoked by uid 550); 9 May 2023 23:15:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30199 invoked from network); 9 May 2023 23:15:10 -0000
Date: Wed, 10 May 2023 01:14:34 +0200
From: Solar Designer <solar@openwall.com>
To: Tobias Holl <tobias@tholl.xyz>
Cc: oss-security@lists.openwall.com
Message-ID: <20230509231434.GA21065@openwall.com>
References: <e18a885b-de15-c287-e4a4-a0df7904f15f@tholl.xyz>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e18a885b-de15-c287-e4a4-a0df7904f15f@tholl.xyz>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel io_uring out-of-bounds access to physical memory

On Mon, May 08, 2023 at 04:01:59PM +0200, Tobias Holl wrote:
> a bug in the fixed buffer registration code for io_uring
> (io_sqe_buffer_register in io_uring/rsrc.c) allows out-of-bounds access
> to physical memory beyond the end of the buffer. This can be used to
> achieve full local privilege escalation.
> 
> The vulnerable code landed in 6.3-rc1 with commit 57bebf807e2a
> ("io_uring/rsrc: optimise registered huge pages").
> 
> A fix has been committed upstream for 6.4-rc1 in commit 776617db78c6
> ("io_uring/rsrc: check for nonconsecutive pages"). The fix has also
> been staged for 6.3.2.
> 
> CVE assignment for this issue is pending.

This is now CVE-2023-2598.

Alexander
