X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["843" "Tuesday" "4" "January" "2022" "05:55:21" "+0000" "Benoit Tellier" "btellier@apache.org" nil "27" "[oss-security] CVE-2021-38542: Apache James vulnerable to STARTTLS command injection (IMAP and POP3) " nil nil nil "1" nil nil (number mark "U       btellier@apa Jan  4   27/843   " thread-indent "\"[oss-security] CVE-2021-38542: Apache James vulnerable to STARTTLS command injection (IMAP and POP3) \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38542: Apache James vulnerable to STARTTLS command injection (IMAP and POP3) " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15762 invoked by uid 550); 4 Jan 2022 06:56:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20441 invoked from network); 4 Jan 2022 05:55:34 -0000
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <be74be76-1448-e1c7-2e72-4c5d7699df38@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Jan 2022 05:55:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-38542: Apache James vulnerable to STARTTLS command
 injection (IMAP and POP3) 

Severity: moderate

Description:

Apache James prior to release 3.6.1 is vulnerable to a buffering attack rel=
ying on the use of the STARTTLS command. This can result in Man-in -the-mid=
dle command injection attacks, leading potentially to leakage of sensible i=
nformation.


This issue is being tracked as JAMES-1862

Mitigation:

We recommend to upgrade to Apache James 3.6.1, which fixes this vulnerabili=
ty.

Furthermore, we recommend, if possible to dis-activate STARTTLS and rely so=
lely on explicit TLS for mail protocols, including SMTP, IMAP and POP3.

Credit:

We thanks Benoit Tellier, Raphael Ouazana for reporting this vulnerability =
as well as Damian Poddebniak, Fabian Ising, Hanno B=C3=B6ck, and Sebastian =
Schinzel M=C3=BCnster University of Applied Science for their research and =
tools regarding STARTTLS security.

