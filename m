X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Thursday" "10" "May" "2018" "08:05:56" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "18" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018051012:05:56" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       vdronov@redh May 10   18/568   " thread-indent "\"[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5722 invoked by uid 550); 10 May 2018 12:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5676 invoked from network); 10 May 2018 12:06:09 -0000
Date: Thu, 10 May 2018 08:05:56 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
In-Reply-To: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.5.81, 10.4.195.25]
Thread-Topic: CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit
Thread-Index: IE3hqurjeM8jelCV14Pi7a9x358h4w==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Thu, 10 May 2018 12:05:57 +0000 (UTC)
Subject: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in
 net/dccp/output.c:dccp_write_xmit

Hello,

A null pointer dereference in dccp_write_xmit() function in net/dccp/output.c
in the Linux kernel before v4.16-rc7 allows a local user to cause a denial of
service by a number of certain crafted system calls.

References:

https://syzkaller.appspot.com/bug?id=833568de043e0909b2aeaef7be136db39d21ba94

https://marc.info/?t=152036611500003&r=1&w=2

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=67f93df79aeefc3add4e4b31a752600f834236e2

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
