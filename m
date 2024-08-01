Received: (qmail 32268 invoked by uid 550); 1 Aug 2024 20:45:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32238 invoked from network); 1 Aug 2024 20:45:35 -0000
Date: Thu, 1 Aug 2024 22:45:13 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Zqvz2YXZFlji+ZJC@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] use-after-free in tagstack_clear_entry() in Vim <
 v9.1.0647


use-after-free in tagstack_clear_entry() in Vim 
===============================================
Date: 01.08.2024
Severity: Low
CVE: CVE-2024-41957
CWE: Double Free (CWE-415)

When closing a window, the corresponding tagstack data will be cleared
and freed. However a bit later, the quickfix list belonging to that
window will also be cleared and if that quickfix list points to the same
tagstack data, Vim will try to free it again, resulting in a
double-free/use-after-free access exception.

Impact is low since the user must intentionally execute vim with several non-default flags,
but it may cause a crash of Vim.

The Vim project would like to thank github user SuyueGuo for reporting this issue.

The issue has been fixed as of Vim patch v9.1.0647

URLs: https://github.com/vim/vim/commit/8a0bbe7b8aad6f8da28dee218c01bc8a
      https://github.com/vim/vim/security/advisories/GHSA-f9cr-gv85-hcr4

Thanks,
Chris
-- 
Jedes Ding hat zwei Seiten. Fanatiker sehen nur die eine.
		-- Hellmut Walters
