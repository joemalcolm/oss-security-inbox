X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["824" "Tuesday" "7" "April" "2015" "20:38:21" "-0400" "Wade Mealing" "wmealing@redhat.com" "<158444692.10419768.1428453501546.JavaMail.zimbra@redhat.com>" "25" "[oss-security] CVE request netfilter connection tracking accounting." nil nil nil "4" "2015040800:38:21" "[oss-security] CVE request netfilter connection tracking accounting." (number mark "        wmealing@red Apr  7   25/824   " thread-indent "\"[oss-security] CVE request netfilter connection tracking accounting.\"\n") "<799394835.10419174.1428452967519.JavaMail.zimbra@redhat.com>" ("<799394835.10419174.1428452967519.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32676 invoked by uid 550); 8 Apr 2015 00:38:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32655 invoked from network); 8 Apr 2015 00:38:34 -0000
Message-ID: <158444692.10419768.1428453501546.JavaMail.zimbra@redhat.com>
In-Reply-To: <799394835.10419174.1428452967519.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.50.24]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC41 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request netfilter connection tracking accounting.
Thread-Index: qGJ9LzfgcUq/l9Oaf640Nn3vJ7i+4g==
Cc: cve-assign@mitre.org
Date: Tue, 7 Apr 2015 20:38:21 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request netfilter connection tracking accounting.
To: OSS Security List <oss-security@lists.openwall.com>

Gday,

I'd like to request a CVE for an issue posted to netfilter-devel 
( http://marc.info/?l=netfilter-devel&m=140112364215200&w=2 ).
 
This issue can be classified as a denial of service.

>From the bug report:

"I got the following OOPS with kernel 3.14.4 (debian backport for wheezy) on our 
internet gateway while trying to establish a new PPTP tunnel from a NAT-ed host.
Seems it's 100% reproductible"

The issue appears to be within netfilter connection tracking accounting, not specific
to PPTP or other helper protocols.

The flaw was introduced on Linux 3.6 and fixed on 3.15. The upstream fix is available ( See reference 1 )

Thank you.

Wade Mealing -- Red Hat Product Security

References:

1) http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=223b02d923ecd7c84cf9780bb3686f455d279279
