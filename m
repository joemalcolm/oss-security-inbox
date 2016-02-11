X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["940" "Thursday" "11" "February" "2016" "06:40:10" "-0500" "Wade Mealing" "wmealing@redhat.com" "<929915505.18990807.1455190810330.JavaMail.zimbra@redhat.com>" "27" "[oss-security] Linux kernel: Flaw in CXGB3 driver." nil nil nil "2" "2016021111:40:10" "[oss-security] Linux kernel: Flaw in CXGB3 driver." (number mark "U       wmealing@red Feb 11   27/940   " thread-indent "\"[oss-security] Linux kernel: Flaw in CXGB3 driver.\"\n") "<1181782633.18985831.1455188851858.JavaMail.zimbra@redhat.com>" ("<1181782633.18985831.1455188851858.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27799 invoked by uid 550); 11 Feb 2016 11:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27767 invoked from network); 11 Feb 2016 11:40:23 -0000
Date: Thu, 11 Feb 2016 06:40:10 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Message-ID: <929915505.18990807.1455190810330.JavaMail.zimbra@redhat.com>
In-Reply-To: <1181782633.18985831.1455188851858.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.42]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC48 (Mac)/8.0.6_GA_5922)
Thread-Topic: Linux kernel: Flaw in CXGB3 driver.
Thread-Index: 08pofUOkUF0sbV9p5bxQ1XC7B43Fjw==
Subject: [oss-security] Linux kernel: Flaw in CXGB3 driver.

Gday,

I would like a CVE for the following issue:

A flaw was found in the CXGB3 kernel driver when the network was considered congested.  The kernel would incorrectly misinterpret the congestion as an error condition and incorrectly free/clean up the skb. When the device would then send the skb's queued, these structures would be referenced and may panic the system or allow an attacker to escalate privileges in a use-after-free scenario.

The bug and the problematic free is shown shown in the patch[1]: 

----

The cxgb3_*_send() functions return NET_XMIT_ values, which are
positive integers values. So don't treat positive return values
as an error.
----

Thanks,

Wade Mealing
Red Hat Product Security Team

== References:

Upstream fix commit[1]:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=67f1aee6f45059fd6b0f5b0ecb2c97ad0451f6b3

Red Hat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1303532
