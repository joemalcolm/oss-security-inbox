X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["666" "Tuesday" "4" "January" "2022" "05:55:31" "+0000" "Benoit Tellier" "btellier@apache.org" nil "22" "[oss-security] CVE-2021-40111: Apache James IMAP parsing Denial Of Service " nil nil nil "1" nil nil (number mark "U       btellier@apa Jan  4   22/666   " thread-indent "\"[oss-security] CVE-2021-40111: Apache James IMAP parsing Denial Of Service \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40111: Apache James IMAP parsing Denial Of Service " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17604 invoked by uid 550); 4 Jan 2022 06:56:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21566 invoked from network); 4 Jan 2022 05:55:44 -0000
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f4521c81-26b9-35d0-a5b4-f25b1a766d73@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Jan 2022 05:55:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40111: Apache James IMAP parsing Denial Of Service 

Severity: moderate

Description:

While fuzzing with Jazzer the IMAP parsing stack we discover that crafted A=
PPEND and STATUS IMAP command could be used to trigger infinite loops resul=
ting in expensive CPU computations and OutOfMemory exceptions.
This can be used for a Denial Of Service attack. The IMAP user needs to be =
authenticated to exploit this vulnerability.  This affected Apache James pr=
ior to version 3.6.1.

This issue is being tracked as JAMES-3634

Mitigation:

This vulnerability had been patched in Apache James 3.6.1 and higher. We re=
commend the upgrade.

Credit:

The Apache James PMC would like to thanks Benoit TELLIER for the report.

