X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Tuesday" "14" "August" "2018" "16:30:51" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>" "18" "[oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" nil nil nil "8" "2018081420:30:51" "[oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" (number mark "U       vdronov@redh Aug 14   18/593   " thread-indent "\"[oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)\"\n") "<1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17554 invoked by uid 550); 14 Aug 2018 20:31:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17526 invoked from network); 14 Aug 2018 20:31:04 -0000
Date: Tue, 14 Aug 2018 16:30:51 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>
In-Reply-To: <1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.200.25, 10.4.195.13]
Thread-Topic: CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)
Thread-Index: T7ljbgLI//twjzWcJLFdAzvOBHz+zA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.25
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 14 Aug 2018 20:30:52 +0000 (UTC)
Subject: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow
 a remote denial of service (FragmentSmack)

Heololo,

A flaw named FragmentSmack was found in the way the Linux kernel handled
reassembly of fragmented IPv4 and IPv6 packets. A remote attacker could
use this flaw to trigger time and calculation expensive fragment reassembly
algorithms by sending specially crafted packets which could lead to a CPU
saturation and hence a denial of service on the system.

External References:

https://www.kb.cert.org/vuls/id/641765

https://access.redhat.com/articles/3553061

https://bugzilla.redhat.com/show_bug.cgi?id=1609664

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
