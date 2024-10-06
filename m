Received: (qmail 17677 invoked by uid 550); 6 Oct 2024 15:45:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17647 invoked from network); 6 Oct 2024 15:45:59 -0000
Date: Sun, 6 Oct 2024 17:45:49 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ZwKwrSltz1Zj7wCR@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] use-after-free when closing buffers in Vim < 9.1.0764

use-after-free when closing buffers in Vim < 9.1.0764
=====================================================
Date: 06.10.2024
Severity: Low
CVE: <not-yet-assigned>
CWE: Use After Free (CWE-416)

When closing a buffer (visible in a window) a BufWinLeave auto command
can cause an use-after-free if this auto command happens to re-open the
same buffer in a new split window.

While vim already has some logic to determine such a case, so that a
simple: 

```
au BufWinLeave foobar :vsp foobar
```

is already detected and such an auto command is aborted with E1159, a
slightly more complicated ex command to first edit another file and
then split the window and edit the original file again, confuses Vims
referencing counting and may still cause Vim to free the buffer
structure although it is still referenced in another window.

Patch 9.1.0764 changes that behaviour by checking if the newly to be
edited buffer is locked and aborts if such a case is detected.

Impact is low since the user must have intentionally set up such a
strange auto command and run some buffer unload commands. However this
may lead to a crash.

The Vim project would like to thank github user gandalf4a for reporting
this issue.

The issue has been fixed as of Vim patch v9.1.0764

References:
https://github.com/vim/vim/commit/51b62387be93c65fa56bbabe1c3
https://github.com/vim/vim/security/advisories/GHSA-rj48-v4mq-j4vg

Thanks,
Christian
-- 
Schweigend Zeit vergehen lassen macht einzelne Menschen und Völker
wieder jung.
		-- Cesare Pavese
