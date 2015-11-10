X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["954" "Tuesday" "10" "November" "2015" "00:23:14" "+0000" "Alyssa Milburn" "amilburn@zall.org" "<20151110002314.GU18245@li141-249.members.linode.com>" "20" "[oss-security] race condition checking digests/checksums in sudoers" "^Cc:" nil nil "11" "2015111000:23:14" "[oss-security] race condition checking digests/checksums in sudoers" (number mark "        amilburn@zal Nov 10   20/954   " thread-indent "\"[oss-security] race condition checking digests/checksums in sudoers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31905 invoked by uid 550); 10 Nov 2015 00:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31785 invoked from network); 10 Nov 2015 00:22:57 -0000
Message-ID: <20151110002314.GU18245@li141-249.members.linode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "Todd C. Miller" <Todd.Miller@courtesan.com>
Date: Tue, 10 Nov 2015 00:23:14 +0000
From: Alyssa Milburn <amilburn@zall.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] race condition checking digests/checksums in sudoers
To: oss-security@lists.openwall.com

Hey all,

Recent releases of sudo (since 1.8.7) support SHA-2 digests in the sudoers
file, which the documentation states "may be useful in situations where the
user invoking sudo has write access to the command or its parent directory".

The sudoers plugin performs this digest verification while matching rules,
and later independently calls execve() to execute the binary. This results
in a race condition if the digest functionality is used as suggested (in
fact, the rules are matched before the user is prompted for a password, so
you have quite some time to replace the binary from underneath sudo).

I'm not sure whether this problem is interesting enough to announce or not;
I imagine this functionality isn't widely used, but it's clearly unsafe to
use in such situations right now, and it seems like it would be a can of
worms (at best) to make it completely safe.

(Thanks to the maintainer for responding very quickly to my mail!)

- Alyssa
