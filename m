Received: (qmail 1976 invoked by uid 550); 22 Nov 2023 21:13:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1946 invoked from network); 22 Nov 2023 21:13:02 -0000
Date: Wed, 22 Nov 2023 22:12:49 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-sec <oss-security@lists.openwall.com>
Message-ID: <ZV5u0W1aT9xFCSTK@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] use-after-free in ex_substitute in Vim < v9.0.2121

CVE-2023-48706: Use-After-Free in ex_substitute()
=================================================
Date: 22.11.2023
Severity: Low

When executing a :s command for the very first time and using a 
sub-replace-special atom inside the substitution part, it is possible 
that the recursive :s call causes freeing of memory which may later then 
be accessed by the initial :s command.

Impact is low since the user must intentionally execute the payload and
the whole process is a bit tricky to do (since it seems to work only
reliably for the very first :s command). It may also cause a crash of 
Vim.

The Vim project would like to thank github user gandalf4a for reporting 
this issue which is now fixed in Vim patch 9.0.2121.

URLs: https://github.com/vim/vim/commit/26c11c56888d01e298cd8044caf8
      https://github.com/vim/vim/security/advisories/GHSA-c8qm-x72m-q53q


Thanks,
Christian
-- 
Wie man sein Kind nicht nennen sollte: 
  Jupp Heidi 
