Received: (qmail 16191 invoked by uid 550); 26 Oct 2023 19:51:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16152 invoked from network); 26 Oct 2023 19:51:26 -0000
Date: Thu, 26 Oct 2023 21:51:13 +0200
From: Christian Brabandt <cb@256bit.org>
To: Christian Brabandt <cb@256bit.org>
Cc: oss-security@lists.openwall.com
Message-ID: <ZTrDMV48/Zg/5ose@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] integer overflow in :history command in Vim < 9.0.2068

Integer overflow in :history Ex-Command in Vim < 9.0.2068
=========================================================

Severity: Low

When using the :history ex-command, it's possible that the
provided argument overflows the accepted value. Causing an
Integer Overflow and potentially later an use-after-free.

This is not a major issue as most users probably won't use
intentionally large values for the :history command

The issue is fixed in Vim version 9.0.2068.

This issue was reported on October 26th, 2023 by Cole
Dilorenzo to the vim-security mailing list.

https://github.com/vim/vim/security/advisories/GHSA-q22m-h7m2-9mgm
https://github.com/vim/vim/commit/9198c1f2b1ddecde22af918541e0de2a32f0f45a

Thanks,
Christian
-- 
Wer den Sirenengesang der Werbung widersteht, ist mündiger Bürger. Und
gefährdet Arbeitskräfte.
		-- Oliver Hassencamp
