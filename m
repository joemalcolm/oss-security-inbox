X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Wednesday" "3" "April" "2019" "07:46:52" "-0400" "Vladis Dronov" "vdronov@redhat.com" nil "17" nil nil nil nil "4" nil nil (number mark "U       vdronov@redh Apr  3   17/639   " thread-indent "\"[oss-security] CVE-2019-3882: Linux kernel: DoS through vfio/type1 DMA mappings\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3882: Linux kernel: DoS through vfio/type1 DMA mappings" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1635 invoked by uid 550); 3 Apr 2019 11:47:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1611 invoked from network); 3 Apr 2019 11:47:05 -0000
Date: Wed, 3 Apr 2019 07:46:52 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1805750602.17169248.1554292012603.JavaMail.zimbra@redhat.com>
In-Reply-To: <416411872.17168651.1554291862533.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.106, 10.4.195.27]
Thread-Topic: CVE-2019-3882: Linux kernel: DoS through vfio/type1 DMA mappings
Thread-Index: aCvWd0Izv1SFr+UJVPIe2Nu3QMF54g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 03 Apr 2019 11:46:52 +0000 (UTC)
Subject: [oss-security] CVE-2019-3882: Linux kernel: DoS through vfio/type1 DMA mappings

Heololo,

A flaw was found in the Linux kernel's vfio interface implementation that permits
violation of the user's locked memory limit. If a device is bound to a vfio driver,
such as vfio-pci, and the local attacker is administratively granted ownership of
the device, it may cause a system memory exhaustion and thus a denial of service (DoS).

CVE-2019-3882 was allocated for this flaw.

References:

https://lore.kernel.org/lkml/155414977872.12780.13728555131525362206.stgit@gimli.home/T/#u

https://bugzilla.redhat.com/show_bug.cgi?id=1689426

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security | Senior Software Engineer
