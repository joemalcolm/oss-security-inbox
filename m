X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["599" "Tuesday" "5" "January" "2016" "09:24:09" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<2020545490.4983210.1452003849662.JavaMail.zimbra@redhat.com>" "16" "[oss-security] CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed" nil nil nil "1" "2016010514:24:09" "[oss-security] CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed" (number mark "U       vdronov@redh Jan  5   16/599   " thread-indent "\"[oss-security] CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed\"\n") "<1376856206.4982387.1452003718745.JavaMail.zimbra@redhat.com>" ("<1376856206.4982387.1452003718745.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11383 invoked by uid 550); 5 Jan 2016 14:24:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11359 invoked from network); 5 Jan 2016 14:24:22 -0000
Date: Tue, 5 Jan 2016 09:24:09 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <2020545490.4983210.1452003849662.JavaMail.zimbra@redhat.com>
In-Reply-To: <1376856206.4982387.1452003718745.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.104]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF42 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed
Thread-Index: yMZAcSRHyofb7qwc0LrOQfu8pBWeSw==
Subject: [oss-security] CVE request -- linux kernel: nfs: kernel panic occurs at nfs client
 when nfsv4.2 migration is executed

Hello,
If possible, we would like to obtain a CVE-ID for the following issue which we
believe is a security one. I was not able to find an already-assigned CVE-ID
for this.

A flaw was found in the Linux kernel in the NFSv4.2 migration code that can cause
a panic of the NFS client due to improperly initialized kernel structure.

References:

Red Hat public Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1295802

An upstream patch: https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=18e3b739f

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
