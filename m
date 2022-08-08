Received: (qmail 3235 invoked by uid 550); 8 Aug 2022 11:20:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1792 invoked from network); 8 Aug 2022 11:20:29 -0000
Date: Mon, 8 Aug 2022 13:20:20 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Dipanjan Das <mail.dipanjan.das@gmail.com>,
	Dylan Yudaken <dylany@fb.com>, Jens Axboe <axboe@kernel.dk>
Message-ID: <20220808112020.GA18620@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Linux kernel: io_uring: free of unallocated buffer list in io_register_pbuf_ring()

Hi,

I think this wasn't reported in here before, and has no CVE ID?

Writeup in Chinese dated July 29:

https://dawnslab.jd.com/linux-5.19-rc2_pbuf_ring_0day/

Fix dated July 21, per the writeup included in 5.19-rc8:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ec8516f3b7c40ba7050e6b3a32467e9de451ecdf

Per the Fixes tag, the bug was introduced in May, in:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c7fb19428d67

Alexander
