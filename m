X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["494" "Friday" "11" "November" "2016" "08:24:33" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<590204934.12153620.1478870673670.JavaMail.zimbra@redhat.com>" "18" "[oss-security] Re: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c" nil nil nil "11" "2016111113:24:33" "[oss-security] Re: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c" (number mark "U       vdronov@redh Nov 11   18/494   " thread-indent "\"[oss-security] Re: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c\"\n") "<865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>" ("<865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17782 invoked by uid 550); 11 Nov 2016 13:24:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17764 invoked from network); 11 Nov 2016 13:24:45 -0000
Date: Fri, 11 Nov 2016 08:24:33 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <590204934.12153620.1478870673670.JavaMail.zimbra@redhat.com>
In-Reply-To: <865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>
References: <865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.200.75]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c
Thread-Index: a2o3R48ijNWqeyo+GpNHc3juzljDmlEJgVsL
Subject: [oss-security] Re: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit
 in net/ipv4/tcp_input.c

Hello,

> I'm not aware of any fix as of now.

Actiually, not. There is a patch being developed now, thanks, Eric:

http://marc.info/?l=linux-netdev&m=147881188232264&w=2

http://marc.info/?t=147881111500001&r=1&w=2&n=2 # the whole thread

http://marc.info/?l=linux-netdev&m=147881236332369&w=2 # patch v2

http://www.spinics.net/lists/netdev/msg403787.html

http://www.spinics.net/lists/netdev/msg403789.html # patch v2

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
