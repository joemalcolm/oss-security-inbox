X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["584" "Tuesday" "4" "January" "2022" "05:55:35" "+0000" "Benoit Tellier" "btellier@apache.org" nil "21" "[oss-security] CVE-2021-40525: Apache James: Sieve file storage vulnerable to path traversal attacks " nil nil nil "1" nil nil (number mark "U       btellier@apa Jan  4   21/584   " thread-indent "\"[oss-security] CVE-2021-40525: Apache James: Sieve file storage vulnerable to path traversal attacks \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40525: Apache James: Sieve file storage vulnerable to path traversal attacks " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17945 invoked by uid 550); 4 Jan 2022 06:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21611 invoked from network); 4 Jan 2022 05:55:48 -0000
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aaa200fd-48d0-c922-fb68-06e5d17aa9e0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Jan 2022 05:55:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40525: Apache James: Sieve file storage vulnerable to
 path traversal attacks 

Description:

Apache James ManagedSieve implementation alongside with the file storage fo=
r sieve scripts is vulnerable to path traversal, allowing reading and writi=
ng any file. This vulnerability had been patched in Apache James 3.6.1 and =
higher. We recommend the upgrade.


This issue is being tracked as JAMES-3646

Mitigation:

This could also be mitigated by ensuring manageSieve is disabled, which is =
the case by default.

Distributed and Cassandra based products are also not impacted.

Credit:

The Apache James PMC would like to thanks Benoit TELLIER for the report.

