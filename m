X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1157" "Wednesday" "28" "February" "2018" "15:29:55" "-0500" "Michael McNally" "mcnally@isc.org" "<e0737f7c-7572-b3ac-bdd2-39ec72fd78c4@isc.org>" "31" "[oss-security] Multiple CVEs announced by ISC (ISC DHCP: CVE-2018-5732 & CVE-2018-5733, BIND CVE-2018-5734)" nil nil nil "2" "2018022820:29:55" "[oss-security] Multiple CVEs announced by ISC (ISC DHCP: CVE-2018-5732 & CVE-2018-5733, BIND CVE-2018-5734)" (number mark "U       mcnally@isc. Feb 28   31/1157  " thread-indent "\"[oss-security] Multiple CVEs announced by ISC (ISC DHCP: CVE-2018-5732 & CVE-2018-5733, BIND CVE-2018-5734)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1875 invoked by uid 550); 28 Feb 2018 20:30:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1849 invoked from network); 28 Feb 2018 20:30:11 -0000
To: oss-security@lists.openwall.com, isc-os-security@lists.isc.org
From: Michael McNally <mcnally@isc.org>
Cc: "security-officer@isc.org" <security-officer@isc.org>
Message-ID: <e0737f7c-7572-b3ac-bdd2-39ec72fd78c4@isc.org>
Date: Wed, 28 Feb 2018 15:29:55 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Multiple CVEs announced by ISC (ISC DHCP: CVE-2018-5732 &
 CVE-2018-5733, BIND CVE-2018-5734)

Today ISC publicly disclosed three CVEs, two in ISC DHCP and a third
in BIND Supported Preview Edition [which is a customer-only non-public
version of BIND, but since the disclosure is public we wish to be
clear about it here so as not to confuse those who are following the
public open source version of the product.]

All three vulnerabilities are now public.  Thank you, to those who were
informed in advance, for cooperating with our disclosure schedule.

The two DHCP vulnerabilities are:

   CVE-2018-5732: A specially constructed response from a
   malicious server can cause a buffer overflow in dhclient
   https://kb.isc.org/article/AA-01565/75/CVE-2018-5732

   CVE-2018-5733: A malicious client can overflow a
   reference counter in ISC dhcpd
   https://kb.isc.org/article/AA-01567/75/CVE-2018-5733

And the (Supported Preview Edition-only) BIND vulnerability is:

   CVE-2018-5734: A malformed request can trigger an
   assertion failure in badcache.c
   https://kb.isc.org/article/AA-01562/74/CVE-2018-5734

If you have questions about these announcements please direct
them to security-officer@isc.org


Michael McNally
ISC Security Officer
