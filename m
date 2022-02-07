X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Monday" "7" "February" "2022" "04:39:16" "+0000" "Benoit Tellier" "btellier@apache.org" nil "23" "[oss-security] CVE-2022-22931: Path traversal in Apache James " nil nil nil "2" nil nil (number mark "U       btellier@apa Feb  7   23/497   " thread-indent "\"[oss-security] CVE-2022-22931: Path traversal in Apache James \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-22931: Path traversal in Apache James " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30384 invoked by uid 550); 7 Feb 2022 08:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14147 invoked from network); 7 Feb 2022 04:39:29 -0000
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f037cdaa-2cef-1c10-849d-52f526ff5af8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 07 Feb 2022 04:39:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-22931: Path traversal in Apache James 

Severity: moderate

Description:

Fix of CVE-2021-40525 do not prepend delimiters upon valid directory valida=
tions.

Affected implementations include:
 - maildir mailbox store
 - Sieve file repository

This enables a user to access other users data stores (limited to user name=
s being prefixed by the value of the username being used).

Mitigation:

This had been fixed in Apache James 3.6.2.

Credit:

These issues were discovered and reported by GHSL team member Jaroslav Loba=
=C4=8Devski

