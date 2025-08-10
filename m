Received: (qmail 11343 invoked by uid 550); 10 Aug 2025 13:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11295 invoked from network); 10 Aug 2025 13:49:57 -0000
Date: Sun, 10 Aug 2025 15:49:46 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aJijevEkuGrUVYAK@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] heap use-after-free was found in Vim < 9.1.1400

Note: I have been asked to created a security advisory for the issue 
mentioned below. The actual issue has already been fixed on May 21st.

A heap use-after-free was found in Vim >v9.1.1231 and < 9.1.1400
================================================================
Date: 10.08.2025
Severity: Medium
CVE: *not yet assigned*
CWE: Use-after-free (CWE-416)

Vim gained support for the "tuple" data type in patch v9.1.1232.

When processing nested tuples in Vim script, an error during evaluation
can trigger a use-after-free in Vim’s internal tuple reference
management. Specifically, the tuple_unref() function may access already
freed memory due to improper lifetime handling, leading to memory
corruption.

While the most likely outcome is a denial-of-service (application
crash), the underlying memory corruption could, in theory, be leveraged
for more severe consequences depending on the environment in which Vim
is running. The exploit requires direct user interaction, as the script
must be explicitly executed within Vim and therefore the severity of
this impact is rated **medium**.

This issue was discovered via fuzz testing with AFL++ and confirmed
using AddressSanitizer.

The Vim project would like to thank Yang Luo and Yanju Chen from the
Security Team @ Riema Labs for reporting this issue and Yegappan
Lakshmanan for fixing this vulnerability.

The issue has been fixed as of Vim patch v9.1.1400

References:
https://github.com/vim/vim/commit/1307743697bbc46e1518abfea7f89caa95bcaf97
https://github.com/vim/vim/security/advisories/GHSA-3r4f-mm4w-wgg6

Thanks,
Chris
-- 
Manchen gibt man das Gefühl, wodurch man es andern nimmt, durch
Schlüsse.
		-- Jean Paul
