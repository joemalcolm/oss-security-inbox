X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Wednesday" "23" "August" "2017" "07:47:02" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1205294999.1101309.1503488822700.JavaMail.zimbra@redhat.com>" "27" "[oss-security] CVE-2017-7558: Linux kernel: sctp: out-of-bounds read in inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info()" nil nil nil "8" "2017082311:47:02" "[oss-security] CVE-2017-7558: Linux kernel: sctp: out-of-bounds read in inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info()" (number mark "U       vdronov@redh Aug 23   27/995   " thread-indent "\"[oss-security] CVE-2017-7558: Linux kernel: sctp: out-of-bounds read in inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info()\"\n") "<831355908.1098548.1503488322417.JavaMail.zimbra@redhat.com>" ("<831355908.1098548.1503488322417.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3077 invoked by uid 550); 23 Aug 2017 11:47:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2035 invoked from network); 23 Aug 2017 11:47:14 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com CBA5B4ACB5
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Wed, 23 Aug 2017 07:47:02 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1205294999.1101309.1503488822700.JavaMail.zimbra@redhat.com>
In-Reply-To: <831355908.1098548.1503488322417.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.130, 10.4.195.6]
Thread-Topic: CVE-2017-7558: Linux kernel: sctp: out-of-bounds read in inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info()
Thread-Index: B9mhyQ0bszDXg4AFI/Q08N1XBvSG7Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 23 Aug 2017 11:47:02 +0000 (UTC)
Subject: [oss-security] CVE-2017-7558: Linux kernel: sctp: out-of-bounds read in
 inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info()

Heololo,

A kernel data leak due to an out-of-bound read was found in Linux kernel in
inet_diag_msg_sctp{,l}addr_fill() and sctp_get_sctp_info() functions present
since v4.7-rc1 upto v4.13-rc6 including. A data leak happens when these functions
fill in sockaddr data structures used to export socket's diagnostic information.
As a result up to 100 bytes of the slab data could be leaked to a userspace.

Details: it is leaking exactly 100 bytes of a kernel slab whenever we answer to
a netlink request of type INET_DIAG_LOCALS or INET_DIAG_PEERS for a SCTP socket
(e.g. sent by the 'ss' tool included in the 'iproute2' package with 'ss -Si' or
'ss -Sm').

A researcher of this flaw and a patch author is Stefano Brivio of the Red Hat.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1480266

https://marc.info/?t=150348787500002&r=1&w=2

Suggested patch:

https://marc.info/?l=linux-netdev&m=150348777122761&w=2

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
