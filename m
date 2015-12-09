X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1082" "Tuesday" "8" "December" "2015" "20:32:03" "-0500" "Wade Mealing" "wmealing@redhat.com" "<273719694.18743924.1449624723028.JavaMail.zimbra@redhat.com>" "35" "[oss-security] CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key" nil nil nil "12" "2015120901:32:03" "[oss-security] CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key" (number mark "U       wmealing@red Dec  8   35/1082  " thread-indent "\"[oss-security] CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key\"\n") "<2042161085.18731932.1449618892880.JavaMail.zimbra@redhat.com>" ("<2042161085.18731932.1449618892880.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7491 invoked by uid 550); 9 Dec 2015 01:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7462 invoked from network); 9 Dec 2015 01:32:15 -0000
Date: Tue, 8 Dec 2015 20:32:03 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <273719694.18743924.1449624723028.JavaMail.zimbra@redhat.com>
In-Reply-To: <2042161085.18731932.1449618892880.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.128]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC46 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request - Linux kernel - Fix handling of stored error in a negatively instantiated user key
Thread-Index: KcEEdCCRBo4sBuUh0QXaKa4ybKWCew==
Subject: [oss-security] CVE request - Linux kernel - Fix handling of stored error in a
 negatively instantiated user key

Gday,

A bug was found by Dmitry Vyukov (of Google engineering) in the Linux
kernel key management code.

A malicious user with a local account may be able to escalate privileges
and take control of local system by abusing the user key subsystem.

>From the patch: 

--
If a user key gets negatively instantiated, an error code is cached in the
payload area.  A negatively instantiated key may be then be positively
instantiated by updating it with valid data.  However, the ->update key
type method must be aware that the error code may be there.
--

The paging address is predictable and mappable as userspace memory and can
be used by abused by an attacker to escalate privileges.

This is not the same issue as CVE-2015-7872, this issue persists
after the fix is applied.  I have only seen this affected on the 4.4 
release candidates.


Thanks,

Wade Mealing

Upstream fix
------------
- https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=096fe9eaea40a17e125569f9e657e34cdb6d73bd

Red Hat Bugzilla:
- https://bugzilla.redhat.com/show_bug.cgi?id=1284450
