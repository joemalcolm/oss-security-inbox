Received: (qmail 1842 invoked by uid 550); 1 Aug 2024 20:45:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1782 invoked from network); 1 Aug 2024 20:45:47 -0000
Date: Thu, 1 Aug 2024 22:45:31 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Zqvz6w+ReGkspALf@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] double-free in dialog_changed() in Vim < v9.1.0648


double-free in dialog_changed() in Vim < v9.1.0648
==================================================
Date: 01.08.2024
Severity: Low
CVE: <not-yet-assigned>
CWE: Double Free (CWE-416)

When abandoning a buffer, Vim may ask the user what to do with the
modified buffer. If the user wants the changed buffer to be saved, Vim
may create a new Untitled file, if the buffer did not have a name yet.

However, when setting the buffer name to Unnamed, Vim will falsely free
a pointer twice, leading to a double-free and possibly later to a
heap-use-after-free, which can lead to a crash.

The Vim project would like to thank github user SuyueGuo for reporting this issue.

The issue has been fixed as of Vim patch v9.1.0648

URLs: https://github.com/vim/vim/commit/b29f4abcd4b3382fa746e
      https://github.com/vim/vim/security/GHSA-46pw-v7qw-xc2f

Thanks,
Chris
-- 
Denk immer daran, daß die Menge, die bei Deiner Krönung gejubelt hat,
auch klatschen wird, wenn man Dich köpft.
		-- Terry Pratchett, "Ab die Post"
