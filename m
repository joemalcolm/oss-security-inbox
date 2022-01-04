X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["547" "Tuesday" "4" "January" "2022" "05:55:27" "+0000" "Benoit Tellier" "btellier@apache.org" nil "20" "[oss-security] CVE-2021-40110: Apache James IMAP vulnerable to a ReDoS " nil nil nil "1" nil nil (number mark "U       btellier@apa Jan  4   20/547   " thread-indent "\"[oss-security] CVE-2021-40110: Apache James IMAP vulnerable to a ReDoS \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40110: Apache James IMAP vulnerable to a ReDoS " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16207 invoked by uid 550); 4 Jan 2022 06:56:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21519 invoked from network); 4 Jan 2022 05:55:40 -0000
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7d7a8e28-8cb4-4938-f7c9-9bfd2d3f0fec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Jan 2022 05:55:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40110: Apache James IMAP vulnerable to a ReDoS 

Severity: moderate

Description:

Using Jazzer fuzzer, we identified that an IMAP user can craft IMAP LIST co=
mmands to orchestrate a Denial Of Service using a vulnerable Regular expres=
sion.  This affected Apache James prior to 3.6.1

This issue is being tracked as JAMES-3635

Mitigation:

We recommend upgrading to Apache James 3.6.1 or higher , which enforce the =
use of RE2J regular expression engine to execute regex in linear time witho=
ut back-tracking.

Credit:

Apache James PMC would like to thanks Benoit TELLIER for this report.

