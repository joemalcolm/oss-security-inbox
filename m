X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Wednesday" "23" "December" "2015" "11:55:14" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<996765221.2010506.1450889714081.JavaMail.zimbra@redhat.com>" "17" "[oss-security] CVE request -- linux kernel: overlay: fix permission checking for setattr" "^Date:" nil nil "12" "2015122316:55:14" "[oss-security] CVE request -- linux kernel: overlay: fix permission checking for setattr" (number mark "        vdronov@redh Dec 23   17/708   " thread-indent "\"[oss-security] CVE request -- linux kernel: overlay: fix permission checking for setattr\"\n") "<1299085544.2005478.1450889121487.JavaMail.zimbra@redhat.com>" ("<1299085544.2005478.1450889121487.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32326 invoked by uid 550); 23 Dec 2015 16:55:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32305 invoked from network); 23 Dec 2015 16:55:26 -0000
Message-ID: <996765221.2010506.1450889714081.JavaMail.zimbra@redhat.com>
In-Reply-To: <1299085544.2005478.1450889121487.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.52]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF42 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: overlay: fix permission checking for setattr
Thread-Index: msM38YnNle4zNA2nD3rIB7PCOh56ug==
Date: Wed, 23 Dec 2015 11:55:14 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- linux kernel: overlay: fix permission checking for
 setattr
To: oss-security@lists.openwall.com

Hello,
If possible, we would like to obtain a CVE-ID for the following security issue.
I was not able to find an already-assigned CVE-ID for this.

A flaw was found in the overlay filesystem of the Linux kernel which allows
an unprivileged user to change attributes of the files in the overlay,
particularly allowing access to root-only-accessible files like '/etc/shadow'.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1291329 - Red Hat public Bugzilla

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=acff81ec2c79492b180fade3c2894425cd35a545
- an upstream Linux kernel commit fixing the issue.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
