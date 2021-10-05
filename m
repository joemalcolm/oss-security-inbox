X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Tuesday" "5" "October" "2021" "09:02:50" "+0000" "Stefan Eissing" "icing@apache.org" nil "25" "[oss-security] CVE-2021-41524: Apache HTTP Server: null pointer dereference in h2 fuzzing " nil nil nil "10" nil nil (number mark "U       icing@apache Oct  5   25/571   " thread-indent "\"[oss-security] CVE-2021-41524: Apache HTTP Server: null pointer dereference in h2 fuzzing \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41524: Apache HTTP Server: null pointer dereference in h2 fuzzing " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24188 invoked by uid 550); 5 Oct 2021 11:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15781 invoked from network); 5 Oct 2021 09:03:03 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bdea6093-16a6-a6c7-bd9f-a774fd158aec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Oct 2021 09:02:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41524: Apache HTTP Server: null pointer dereference in h2
 fuzzing 

Severity: moderate

Description:

While fuzzing the 2.4.49 httpd, a new null pointer dereference was detected=
 during HTTP/2 request processing,
allowing an external source to DoS the server. This requires a specially cr=
afted request.=20

The vulnerability was recently introduced in version 2.4.49. No exploit is =
known to the project.

Mitigation:

Disable the HTTP/2 protocol.

Credit:

Apache httpd team would like to thank LI ZHI XIN from NSFocus Security Team=
 for reporting this issue.

References:

https://httpd.apache.org/security/vulnerabilities_24.html

