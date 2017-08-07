X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["536" "Monday" "7" "August" "2017" "09:55:36" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<486401008.39761758.1502114136819.JavaMail.zimbra@redhat.com>" "12" "Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" nil nil nil "8" "2017080713:55:36" "[oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" (number mark "U       vdronov@redh Aug  7   12/536   " thread-indent "\"Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()\"\n") "<20170805110417.GA10944@grsecurity.net>" ("<465481173.38534111.1501765671454.JavaMail.zimbra@redhat.com>" "<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>" "<20170805110417.GA10944@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32359 invoked by uid 550); 7 Aug 2017 13:55:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32341 invoked from network); 7 Aug 2017 13:55:48 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com F223B80474
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Mon, 7 Aug 2017 09:55:36 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com, Brad Spengler <spender@grsecurity.net>
Message-ID: <486401008.39761758.1502114136819.JavaMail.zimbra@redhat.com>
In-Reply-To: <20170805110417.GA10944@grsecurity.net>
References: <465481173.38534111.1501765671454.JavaMail.zimbra@redhat.com> <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com> <20170805110417.GA10944@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.119, 10.4.195.12]
Thread-Topic: kernel: inotify: a race between inotify_handle_event() and sys_rename()
Thread-Index: y+UTgqixTnTrzrdHIpStm2EeNsqleg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 07 Aug 2017 13:55:37 +0000 (UTC)
Subject: Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between
 inotify_handle_event() and sys_rename()

Hello, Brad,

Indeed, the wording "in the wild" is probably incorrect. The mentioned exploit was developed by the
flaw researchers and we are not aware of it being available to or used by anyone else. We are sorry
for this misinformation.

As for the timeline as we understand it, we were notified about the flaw, we've discovered the flaw
being actually already fixed in the upstream, we've notified linux-distros@ and in a week we've made
this public announce.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
