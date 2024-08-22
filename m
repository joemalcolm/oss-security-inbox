Received: (qmail 14276 invoked by uid 550); 22 Aug 2024 20:06:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14229 invoked from network); 22 Aug 2024 20:06:05 -0000
Date: Thu, 22 Aug 2024 22:05:50 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ZseaHjgsv2FZU6Hr@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] heap-buffer-overflow in do_search() in Vim < 9.1.0689


heap-buffer-overflow in do_search() in Vim < 9.1.0689
=====================================================
Date: 22.08.2024
Severity: Low
CVE: <not-yet-assigned>
CWE: Heap-based buffer overlow (CWE-122)

When performing a search and displaying the search-count message is
disabled (`:set shm+=S`), the search pattern is displayed at the bottom
of the screen in a buffer (msgbuf).
When right-left mode (`:set rl`) is enabled, the search pattern is
reversed. This happens by allocating a new buffer. If the search pattern
contains some ASCII NUL characters, the buffer allocated will be smaller
than the original allocated buffer (because for allocating the reversed
buffer, the strlen() function is called, which only counts until it
notices an ASCII NUL byte ) and thus the original length indicator is
wrong.

This causes an overflow when accessing characters inside the msgbuf by
the previously (now wrong) length of the msgbuf. Therefore, one must
recalculate the length of the msgbuf after is has been re-allocated.

Impact is low since it requires the search count functionality to be off
(which may happen) and at the same time `:set rightleft` must have been
used, which seems to be a rarely used feature and the search pattern
must include some ASCII NUL bytes.  But when this happens, this will
cause a crash.

The Vim project would like to thank github user SuyueGuo for reporting
this issue.

The issue has been fixed as of Vim patch v9.1.0689

URLs: https://github.com/vim/vim/commit/cacb6693c10bb19f28a50eca47bc
      https://github.com/vim/vim/security/GHSA-v2x2-cjcg-f9jm

Best,
Chris
-- 
Denken ist interessanter als Wissen, aber nicht als Anschauen.
		-- Goethe, Maximen und Reflektionen, Nr. 1076
