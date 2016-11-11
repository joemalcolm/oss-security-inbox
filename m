X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1019" "Friday" "11" "November" "2016" "07:51:26" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>" "35" "[oss-security] CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c" nil nil nil "11" "2016111112:51:26" "[oss-security] CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c" (number mark "U       vdronov@redh Nov 11   35/1019  " thread-indent "\"[oss-security] CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c\"\n") "<39480345.12141721.1478868585777.JavaMail.zimbra@redhat.com>" ("<39480345.12141721.1478868585777.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14238 invoked by uid 550); 11 Nov 2016 12:51:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14215 invoked from network); 11 Nov 2016 12:51:38 -0000
Date: Fri, 11 Nov 2016 07:51:26 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <865310648.12141994.1478868686544.JavaMail.zimbra@redhat.com>
In-Reply-To: <39480345.12141721.1478868585777.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.200.75]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in net/ipv4/tcp_input.c
Thread-Index: a2o3R48ijNWqeyo+GpNHc3juzljDmg==
Subject: [oss-security] CVE-2016-8645: linux kernel: net: a BUG() statement can be hit in
 net/ipv4/tcp_input.c

Hello,

Let me please inform that it was discovered by Marco
Grassi <marco.gra@gmail.com> (many thanks) that the
Linux kernels since at least v4.0 are crashing in
tcp_collapse() after making a number of certain syscalls.

RHEL-7 kernels (3.10.0-xxx) are not vulnerable. Also,
the upstream kernels since v4.9-rc1 are not vulnerable too,
as they have the commit c9c3321257. Unfortunately, this
commit is not fix, but just a workaround. I'm not aware
of any fix as of now.

CVE-2016-8645 was assigned to this flaw internally by
the Red Hat, please, use this CVE-ID in communications
regarding this flaw.

Discussion at stable@:

http://www.spinics.net/lists/stable/msg150470.html

Discussion at netdev@:

http://www.spinics.net/lists/netdev/msg403701.html

http://marc.info/?l=linux-netdev&m=147878925724283&w=2

http://marc.info/?t=147878927800005&r=1&w=2 # the whole thread

Red Hat public BZ:

https://bugzilla.redhat.com/show_bug.cgi?id=1393904

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
