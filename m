Received: (qmail 22338 invoked by uid 550); 11 Jan 2025 14:35:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22283 invoked from network); 11 Jan 2025 14:35:39 -0000
Date: Sat, 11 Jan 2025 15:35:30 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Z4KBsizUbDyCPXFi@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] heap-buffer-overflow in Vim < 9.1.1003

heap-buffer-overflow with visual mode in Vim < 9.1.1003
=======================================================
Date: 11.01.2025
Severity: Medium
CVE: CVE-2025-22134
CWE: Heap-based Buffer Overflow (CWE-122)

When switching to other buffers using the :all command and visual mode
still being active, this may cause a heap-buffer overflow, because Vim
does not properly end visual mode and therefore may try to access
beyond the end of a line in a buffer.

In Patch 9.1.1003 Vim will correctly reset the visual mode before
opening other windows and buffers and therefore fix this bug.  In
addition it does verify that it won't try to access a position if the
position is greater than the corresponding buffer line.

Impact is medium since the user must have switched on visual mode when
executing the :all ex command.

The issue has been fixed as of Vim patch v9.1.1003

The Vim project would like to thank github user gandalf4a for reporting
this issue.

References:
https://github.com/vim/vim/commit/c9a1e257f1630a0866447e53a564f7ff96a80ead
https://github.com/vim/vim/security/advisories/GHSA-5rgf-26wj-48v8

Thanks,
Christian
-- 
Children are unpredictable.  You never know what inconsistency they're
going to catch you in next.
		-- Franklin P. Jones
