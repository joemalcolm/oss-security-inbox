X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Tuesday" "23" "August" "2016" "17:04:37" "-0400" "CAI Qian" "caiqian@redhat.com" "<1439716096.1919046.1471986277289.JavaMail.zimbra@redhat.com>" "42" "[oss-security] cve request: overlayfs: Fix dentry reference leak" nil nil nil "8" "2016082321:04:37" "[oss-security] cve request: overlayfs: Fix dentry reference leak" (number mark "U       caiqian@redh Aug 23   42/1794  " thread-indent "\"[oss-security] cve request: overlayfs: Fix dentry reference leak\"\n") "<18949047.1914380.1471985043180.JavaMail.zimbra@redhat.com>" ("<18949047.1914380.1471985043180.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24295 invoked by uid 550); 23 Aug 2016 21:04:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24277 invoked from network); 23 Aug 2016 21:04:50 -0000
Date: Tue, 23 Aug 2016 17:04:37 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <1439716096.1919046.1471986277289.JavaMail.zimbra@redhat.com>
In-Reply-To: <18949047.1914380.1471985043180.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: overlayfs: Fix dentry reference leak
Thread-Index: eLQv49li1+ZU+vdPa07cIYCJ0TwFyQ==
Subject: [oss-security] cve request: overlayfs: Fix dentry reference leak

=== Description ===
commit ab79efab0a0ba01a74df782eb7fa44b044dae8b5 upstream.

In ovl_copy_up_locked(), newdentry is leaked if the function exits through
out_cleanup as this just to out after calling ovl_cleanup() - which doesn't
actually release the ref on newdentry.

The out_cleanup segment should instead exit through out2 as certainly
newdentry leaks - and possibly upper does also, though this isn't caught
given the catch of newdentry.

Without this fix, something like the following is seen:

	BUG: Dentry ffff880023e9eb20{i=f861,n=#ffff880023e82d90} still in use (1) [unmount of tmpfs tmpfs]
	BUG: Dentry ffff880023ece640{i=0,n=bigfile}  still in use (1) [unmount of tmpfs tmpfs]

when unmounting the upper layer after an error occurred in copyup.

An error can be induced by creating a big file in a lower layer with
something like:

	dd if=/dev/zero of=/lower/a/bigfile bs=65536 count=1 seek=$((0xf000))

to create a large file (4.1G).  Overlay an upper layer that is too small
(on tmpfs might do) and then induce a copy up by opening it writably.

=== POC Exploit ===
This can be reproduced in a DevOps environment when the docker runtime storage is on overlayfs over
xfs as a local DoS. An attacker access to a developer account could run a crafted image from elsewhere
like docker by creating a big file in the container filesystem and try to read it running by any
user like below by forcing xfs_file_open() returns -EFBIG,

$ cat Dockerfile
FROM fedora
USER nobody
RUN dd if=/dev/zero of=/home/nobody/bigfile bs=1024k seek=2046 count=1
ADD open /home/nobody
CMD ["/home/nobody/open", "/home/nobody/bigfile"]

and possibly trigger kernel dentry leaks inside the container that will eventually running out of
kernel resources for other developers. Hence, a local DoS.
   CAI Qian
