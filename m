X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Tuesday" "10" "April" "2018" "05:15:38" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1627665717.17705240.1523351738464.JavaMail.zimbra@redhat.com>" "24" "[oss-security] CVE-2017-13220 / Android A-63527053: Linux kernel: Possible out-of-bound access in Bluetooth subsystem" nil nil nil "4" "2018041009:15:38" "[oss-security] CVE-2017-13220 / Android A-63527053: Linux kernel: Possible out-of-bound access in Bluetooth subsystem" (number mark "U       vdronov@redh Apr 10   24/823   " thread-indent "\"[oss-security] CVE-2017-13220 / Android A-63527053: Linux kernel: Possible out-of-bound access in Bluetooth subsystem\"\n") "<466671774.17703621.1523351409877.JavaMail.zimbra@redhat.com>" ("<466671774.17703621.1523351409877.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23946 invoked by uid 550); 10 Apr 2018 09:15:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23917 invoked from network); 10 Apr 2018 09:15:50 -0000
Date: Tue, 10 Apr 2018 05:15:38 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1627665717.17705240.1523351738464.JavaMail.zimbra@redhat.com>
In-Reply-To: <466671774.17703621.1523351409877.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.33, 10.4.195.8]
Thread-Topic: CVE-2017-13220 / Android A-63527053: Linux kernel: Possible out-of-bound access in Bluetooth subsystem
Thread-Index: y6euGOKA07kuvgyOwVrPH+/8JFD9QQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 10 Apr 2018 09:15:38 +0000 (UTC)
Subject: [oss-security] CVE-2017-13220 / Android A-63527053: Linux kernel: Possible
 out-of-bound access in Bluetooth subsystem

Hello,

There was a flaw CVE-2017-13220 / Android A-63527053 reported in Android
security bulletin with not much of public details:

https://source.android.com/security/bulletin/pixel/2018-01-01#kernel-components

Per discussion with Android security developer this flaw is related to
an upstream commit 51bda2bca53b ("Bluetooth: hidp_connection_add() unsafe
use of l2cap_pi()").

Red Hat is handling this flaw in:

https://bugzilla.redhat.com/show_bug.cgi?id=1536155

I believe the other distributions may want to update the related bug pages
with the info above:

https://bugzilla.suse.com/show_bug.cgi?id=1076537
https://security-tracker.debian.org/tracker/CVE-2017-13220
https://people.canonical.com/~ubuntu-security/cve/2017/CVE-2017-13220.html

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
