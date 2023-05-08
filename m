Received: (qmail 3099 invoked by uid 550); 8 May 2023 14:34:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11709 invoked from network); 8 May 2023 14:02:16 -0000
X-Virus-Scanned: amavisd-new at tholl.xyz
Message-ID: <e18a885b-de15-c287-e4a4-a0df7904f15f@tholl.xyz>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=tholl.xyz; s=dkim;
	t=1683554519; bh=bjPrP3T+L6yXlcYrK6APIsrVykAaUxl5WkiwkxMuml0=;
	h=Date:To:From:Subject;
	b=WZtKGx+JTwrKGSafo1Hlsk91U+c/HX5JmG46SvHNSYHeUVy3irtVTYUwplpGAE/Fg
	 KmO1S0TXHhhwK91u4TssqNtvK3dKF/4cziGF0lgQRXcC3zTOWAeusPaTZWlkflNZbW
	 dUXsGEKq4//kGor8LrKScmWd17eNt3IYdUIrIOVUAmgG2MEd6UPG/mN/WnRWCwOoKc
	 bKgqEax6781iIAQ9N0LjG7e+byAbz9JldGkrAF5qZ/AkCLCf9+bWxtKdHt3FBFDe1r
	 UxaHJM8suXaAfaxU67RgPsDq9LlFhNCNxYXNIXl31p9YwC8SGXZoxU4jlq83HBFUHF
	 bjU9Vnpvi13NIjadTi62zFJ6OXZUEz0sf2jvFRBSninRhVcP1f/lUlEAhk5Tkmvy4q
	 iINthMk2uImxyylknvRjUuo6IZdnmzby65J46ERRUDriwdXkcTVdczw/sj8iKRolna
	 I0BkB0805QfdiHn+JAIuy8v33/knInbRUoVNrNm2ZOPdoC6ZjgE5BaZyNBBUQgIb1J
	 ctiuabISz0A1clTydK+2TMF/+8J9Vu27pHxFyWSKlRzt1S0WpwiodYZQcQUuUp+1t8
	 xmamhxgIw+QzUXU1hPXixrY0vZZvoTAkZ/5N6cLAtB9N22R1O5w7MocqfhR2WTjSjv
	 f81etOnpC2vERkr93jNE7apQ=
Date: Mon, 8 May 2023 16:01:59 +0200
Mime-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Tobias Holl <tobias@tholl.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Linux kernel io_uring out-of-bounds access to physical memory

Hi all,

a bug in the fixed buffer registration code for io_uring
(io_sqe_buffer_register in io_uring/rsrc.c) allows out-of-bounds access
to physical memory beyond the end of the buffer. This can be used to
achieve full local privilege escalation.

The vulnerable code landed in 6.3-rc1 with commit 57bebf807e2a
("io_uring/rsrc: optimise registered huge pages")¹.

A fix has been committed upstream for 6.4-rc1 in commit 776617db78c6
("io_uring/rsrc: check for nonconsecutive pages")². The fix has also
been staged³ for 6.3.2.

CVE assignment for this issue is pending.


The idea behind the original commit is that instead of splitting huge
pages that are registered as a buffer into individual bvec entries
(expensive), we can just have a single bvec entry for all parts of the
huge page that are in the buffer (not expensive). Specifically, if all
pages in the buffer map to the same folio, it will use the first struct
page and the length of the buffer in a single bvec entry rather than
mapping each page individually.

For a normal huge page, this works. Unfortunately, this misses the fact
that just because the pages map to the same folio, they do not
necessarily have to be consecutive. In fact, they can all be the _same_
page of memory (e.g. by repeatedly mapping at offset 0 from a memfd).
Then, the bvec will span far beyond the single page that it is actually
allowed to touch. Later, IORING_OP_READ_FIXED and IORING_OP_WRITE_FIXED
allow us to read from and write to the buffer (i.e. the memory pointed
to by the bvec) at will. This allows read/write access to the physical
memory behind the single page that we actually have.

The actual length of the buffer (and therefore the limit of our OOB
access) is only limited by the number of pages we can map (generally
close to vm.max_map_count, since each mapping of the same page requires
a new mapping). If hugetlbfs is enabled and huge pages are set up, you
can use them to access even more memory, but this isn't generally
required in order to find something interesting in the accessible
memory.


TL;DR bug reproduction steps:
  1. Create a memfd
  2. fallocate a single page in that file descriptor
  3. Use MAP_FIXED to map this page repeatedly, in consecutive locations
  4. Register the entire region that you just filled up with that page as
     a fixed buffer with IORING_REGISTER_BUFFERS
  5. Use IORING_OP_WRITE_FIXED to write the buffer to some other file
     (OOB read) or IORING_OP_READ_FIXED to read data into the buffer (OOB
     write).

Of course, from there, we can simply find any interesting object in
physical memory and start overwriting function pointers to get code
execution and escalate privileges. A full proof-of-concept exploit with
a bit more robustness can be found at
   https://tholl.xyz/static/bugs/2023-io_uring-fixed-buffers/exploit.c


-- Tobias


¹ https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=57bebf807e2abcf87d96b9de1266104ee2d8fc2f
² https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=776617db78c6d208780e7c69d4d68d1fa82913de
³ Commit 14ad317320c7c000e89ee5a928b9ca165443af0e for 6.3.2-rc1,
   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?h=linux-6.3.y&id=14ad317320c7c000e89ee5a928b9ca165443af0e

