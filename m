Received: (qmail 27728 invoked by uid 550); 25 Aug 2024 19:43:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27695 invoked from network); 25 Aug 2024 19:43:57 -0000
Date: Sun, 25 Aug 2024 21:43:39 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Cc: Yee Cheng Chin <ychin.macvim@gmail.com>, "T.J. Townsend" <tj@mrsk.me>,
	Ken Takata <ktakata65536@gmail.com>,
	Jiaqi Zhou <zeertzjq@outlook.com>, dominique.pelle@gmail.com,
	mattn.jp@gmail.com, sthen@openbsd.org, adamw@freebsd.org,
	James McCoy <jamessan@jamessan.com>,
	Yegappan Lakshmanan <yegappanl@gmail.com>,
	oss-security@lists.openwall.com, dougkearns@gmail.com
Message-ID: <ZsuJa1nZS1l/g/IS@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] heap-buffer-overflow in ins_typebuf() in Vim <
 9.1.0697


heap-buffer-overflow in ins_typebuf() in Vim < 9.1.0697
=======================================================
Date: 25.08.2024
Severity: Low
CVE: <not-yet-assigned>
CWE: Heap-based buffer overlow (CWE-122)

When flushing the typeahead buffer, Vim moves the current position in
the typeahead buffer but does not check whether there is enough space
left in the buffer to handle the next characters.  So this may lead to
the tb_off position within the typebuf variable to point outside of the
valid buffer size, which can then later lead to a heap-buffer overflow
in e.g. ins_typebuf().

Therefore, when flushing the typeahead buffer, check if there is enough
space left before advancing the off position. If not, fall back to flush
current typebuf contents.

It's not quite clear yet, what can lead to this situation. It seems to
happen when error messages occur (which will cause Vim to flush the
typeahead buffer) in comnination with several long mappgins and so it
may eventually move the off position out of a valid buffer size.

Impact is low since it is not easily reproducable and requires to have
several mappings active and run into some error condition. But when this
happens, this will cause a crash.

The Vim project would like to thank github user SuyueGuo for reporting
this issue.

The issue has been fixed as of Vim patch v9.1.0697

References:
https://github.com/vim/vim/commit/322ba9108612bead5eb
https://github.com/vim/vim/security/advisories/GHSA-4ghr-c62x-cqfh

Thanks,
Chris
-- 
Arbeit, die wir lieben ist das einzige, was uns mit dem Leben
versöhnen kann.
		-- Hermann J. Bang
