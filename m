Received: (qmail 3342 invoked by uid 550); 15 Aug 2024 20:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3309 invoked from network); 15 Aug 2024 20:28:47 -0000
Date: Thu, 15 Aug 2024 22:28:38 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Zr5k9jjqTfWtADCB@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] use-after-free in alist_add() in Vim < v9.1.0678


use-after-free in alist_add() in Vim < v9.1.0678
================================================
Date: 15.08.2024
Severity: Low
CVE: CVE-2024-43374
CWE: Use After Free (CWE-416)

When adding a new file to the argument list, this triggers `Buf*`
autocommands. If such an autocommand wipes the buffer that was just 
opened (including the window where it is shown), it causes the
window structure to be freed which contains a reference to the argument
list that was supposed to be modified.

So once the autocommands are completed, the references to the window and
argument list are no longer valid and as such cause an use-after-free.

Therefore, lock the current window, so that functions trying to close
the window will return an error and the reference to the current
argument list remains valid.

Impact is low since the user must either intentionally add some un-usual
autocommands that wipe a buffer during creation (either manually or by 
sourcing a malicious plugin) but it will most-likely crash Vim.

The Vim project would like to thank github user SuyueGuo for reporting
this issue.

The issue has been fixed as of Vim patch v9.1.0678

References:
https://github.com/vim/vim/commit/0a6e57b09bc8c76691b367a5babfb79b31b770e8
https://github.com/vim/vim/security/GHSA-2w8m-443v-cgvw


Thanks,
Christian
-- 
Leute mit Mut und Charakter sind den anderen Leuten immer sehr
unheimlich.
		-- Hermann Hesse
