Received: (qmail 32022 invoked by uid 550); 20 Jan 2025 22:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31983 invoked from network); 20 Jan 2025 22:04:55 -0000
Date: Mon, 20 Jan 2025 23:04:45 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Z47IfZiDnNqGAmCt@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] Subject: [vim-security] segmentation fault in win_line() in Vim <
 9.1.1043

segmentation fault in win_line() in Vim < 9.1.1043
==================================================
Date: 20.01.2025
Severity: Medium
CVE: CVE-2025-24014
CWE: Out-of-bounds Write (CWE-787)

In silent Ex mode (-s -e), Vim typically doesn't show a screen and just
operates silently in batch mode. However, it is still possible to
trigger the function that handles the scrolling of a gui version of Vim
by feeding some binary characters to Vim. The function that handles the
scrolling however may be triggering a redraw, which will access the
ScreenLines pointer, even so this variable hasn't been allocated
(since there is no screen).

In Patch 9.1.1043 Vim will therefore skip the redraw attempt, by testing
whether the ScreenLines pointer is NULL.

Impact is medium since the user must intentionally and explicitly feed
some binary data to Vim in ex mode.

The Vim project would like to thank github user @fizz-is-on-the-way
for reporting this issue.

The issue has been fixed as of Vim patch v9.1.1003

References:
https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8a484f5e9163c40e63919
https://github.com/vim/vim/security/advisories/GHSA-j3g9-wg22-v955

Thanks,
Christian
-- 
Catharsis is something I associate with pornography and crossword puzzles.
		-- Howard Chaykin
