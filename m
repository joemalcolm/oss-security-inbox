X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Friday" "26" "August" "2016" "05:05:11" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>" "23" "[oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" "^Date:" nil nil "8" "2016082609:05:11" "[oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" (number mark "        vdronov@redh Aug 26   23/784   " thread-indent "\"[oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit\"\n") "<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>" ("<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15676 invoked by uid 550); 26 Aug 2016 09:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10153 invoked from network); 26 Aug 2016 09:05:23 -0000
Message-ID: <18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>
In-Reply-To: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>
References: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.182]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF48 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)
Thread-Index: AYotnA1cUYB0pFH9275OKy1/eLxrytn6hq7B
Date: Fri, 26 Aug 2016 05:05:11 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr
 doesn't clear the setgid bit
To: oss-security@lists.openwall.com

Hello,

We would like to ask for a CVE-ID for the following securuty flaw.

When file permissions are modified via chmod(2) and the user is not in
the owning group or capable of CAP_FSETID, the setgid bit is cleared in
inode_change_ok().  Setting a POSIX ACL via setxattr(2) sets the file
permissions as well as the new ACL, but doesn't clear the setgid bit in
a similar way; this allows to bypass the check in chmod(2).

A proposed fix:
http://marc.info/?l=linux-fsdevel&m=147162313630259&w=2

Initial discussion:
http://www.spinics.net/lists/linux-fsdevel/msg98328.html

Red Hat security Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1368938

The fix is not yet accepted to the Linux kernel upstream.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
