X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["864" "Monday" "23" "November" "2015" "06:15:57" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<156275171.20653603.1448277357841.JavaMail.zimbra@redhat.com>" "21" "[oss-security] CVE request -- linux kernel: Null pointer dereference when mounting ext4 filesystem" nil nil nil "11" "2015112311:15:57" "[oss-security] CVE request -- linux kernel: Null pointer dereference when mounting ext4 filesystem" (number mark "U       vdronov@redh Nov 23   21/864   " thread-indent "\"[oss-security] CVE request -- linux kernel: Null pointer dereference when mounting ext4 filesystem\"\n") "<280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>" ("<280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13358 invoked by uid 550); 23 Nov 2015 11:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13335 invoked from network); 23 Nov 2015 11:16:10 -0000
Date: Mon, 23 Nov 2015 06:15:57 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <156275171.20653603.1448277357841.JavaMail.zimbra@redhat.com>
In-Reply-To: <280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>
References: <280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.204.98]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF42 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference
Thread-Index: hCmaV1ji8jDXJ5Lh3zK81gkiTJsnTFR3LO4b
Subject: [oss-security] CVE request -- linux kernel: Null pointer dereference when mounting
 ext4 filesystem

Hello,
If possible, we would like to obtain a CVE-ID for the following security issue.

It was reported that there are some exit paths in ext4_fill_super() which result
in destruction of workqueue which is not yet initialized, leading to kernel NULL
pointer dereference. A privileged user with permission to mount a filesystem or
anybody having physical access to the system's USB port and prepared filesystem
on USB disk which will be automatically mounted can cause system panic and thus
DoS.

References:

https://bugs.openvz.org/browse/OVZ-6541 - initial public disclosure

https://bugzilla.redhat.com/show_bug.cgi?id=1267261 - red hat public bug

commit 744692dc059845b2a3022119871846e74d4f6e11 - upstream Linux kernel commit
which fixes the issue (only part of the commit is related).

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
