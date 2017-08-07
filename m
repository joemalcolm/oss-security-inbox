X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Monday" "7" "August" "2017" "09:51:30" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<514529694.39760564.1502113890222.JavaMail.zimbra@redhat.com>" "15" "Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" nil nil nil "8" "2017080713:51:30" "[oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" (number mark "U       vdronov@redh Aug  7   15/645   " thread-indent "\"Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()\"\n") "<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>" ("<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7367 invoked by uid 550); 7 Aug 2017 13:51:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7347 invoked from network); 7 Aug 2017 13:51:42 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com AA68B6148C
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Mon, 7 Aug 2017 09:51:30 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <514529694.39760564.1502113890222.JavaMail.zimbra@redhat.com>
In-Reply-To: <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>
References: <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.119, 10.4.195.12]
Thread-Topic: kernel: inotify: a race between inotify_handle_event() and sys_rename()
Thread-Index: iX7Gyza0ZBokhRfEuzpqP3ISP6NaIO9HtdvP
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 07 Aug 2017 13:51:30 +0000 (UTC)
Subject: Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between
 inotify_handle_event() and sys_rename()

Hello,

1) We would like to make an additional announcement that an important part of this flaw
research was conducted by Leilei Lin <leilei.lin@alibaba-inc.com> of Alibaba Group, who
developed the initial patches:

https://patchwork.kernel.org/patch/9755753/
https://patchwork.kernel.org/patch/9755757/

2) Unfortunately, the wording "in the wild" in this announcement is probably incorrect.
The mentioned exploit was developed by the flaw researchers and we are not aware of it
being available publicly or used by a wider audience. We are sorry for this misinformation.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
