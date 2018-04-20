X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["498" "Friday" "20" "April" "2018" "05:30:39" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1871023181.21407601.1524216639486.JavaMail.zimbra@redhat.com>" "14" "[oss-security] Re: a number of CVEs for issues in the filesystem's code in the Linux kernel" nil nil nil "4" "2018042009:30:39" "[oss-security] Re: a number of CVEs for issues in the filesystem's code in the Linux kernel" (number mark "U       vdronov@redh Apr 20   14/498   " thread-indent "\"[oss-security] Re: a number of CVEs for issues in the filesystem's code in the Linux kernel\"\n") "<2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>" ("<2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9788 invoked by uid 550); 20 Apr 2018 09:30:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9767 invoked from network); 20 Apr 2018 09:30:51 -0000
Date: Fri, 20 Apr 2018 05:30:39 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1871023181.21407601.1524216639486.JavaMail.zimbra@redhat.com>
In-Reply-To: <2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>
References: <2142970777.14264014.1522310169467.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.112.40, 10.4.195.1]
Thread-Topic: a number of CVEs for issues in the filesystem's code in the Linux kernel
Thread-Index: /YQE+LsYQpClvt6cRm598X5di0FwKo2AQwiR
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Fri, 20 Apr 2018 09:30:39 +0000 (UTC)
Subject: [oss-security] Re: a number of CVEs for issues in the filesystem's code in the
 Linux kernel

Hello,

It appeared that there is another reproducer for CVE-2018-1092 ("kernel:
NULL pointer dereference in ext4/mballoc.c:ext4_process_freed_data() when
mounting crafted ext4 image") which possibly affects a wider range of
systems (than a previous one):

https://bugzilla.kernel.org/show_bug.cgi?id=199275

It was verified that a crash caused by this reproducer (88.img) is fixed
by the same upstream commit 8e4b5eae5decd.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
