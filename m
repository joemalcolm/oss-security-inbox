X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["436" "Monday" "3" "January" "2022" "21:32:36" "+0000" "Kirk Lund" "klund@apache.org" nil "13" "[oss-security] CVE-2021-34797: Apache Geode project log file redaction of sensitive information vulnerability " nil nil nil "1" nil nil (number mark "U       klund@apache Jan  3   13/436   " thread-indent "\"[oss-security] CVE-2021-34797: Apache Geode project log file redaction of sensitive information vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-34797: Apache Geode project log file redaction of sensitive information vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31832 invoked by uid 550); 3 Jan 2022 21:38:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28281 invoked from network); 3 Jan 2022 21:32:50 -0000
Content-Type: text/plain; charset=utf-8
From: Kirk Lund <klund@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7014bc33-70a1-6411-c65d-ed87f7f454e4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Jan 2022 21:32:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-34797: Apache Geode project log file redaction of
 sensitive information vulnerability 

Description:

Apache Geode versions up to 1.12.4 and 1.13.4 are vulnerable to a log file =
redaction of sensitive information flaw when using values that begin with c=
haracters other than letters or numbers for passwords and security properti=
es with the prefix "sysprop-", "javax.net.ssl", or "security-".

This issue is being tracked as GEODE-9354

Credit:

Apache Geode would like to thank Aaron Lindsey for reporting this issue.

