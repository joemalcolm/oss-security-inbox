X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["533" "Monday" "6" "December" "2021" "19:13:10" "+0000" "Marcus Christie" "machristie@apache.org" nil "19" "[oss-security] CVE-2021-43410: Apache Airavata Django Portal: airavata-django-portal allows CRLF log injection because of the lack of escaping in the log statements " nil nil nil "12" nil nil (number mark "U       machristie@a Dec  6   19/533   " thread-indent "\"[oss-security] CVE-2021-43410: Apache Airavata Django Portal: airavata-django-portal allows CRLF log injection because of the lack of escaping in the log statements \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43410: Apache Airavata Django Portal: airavata-django-portal allows CRLF log injection because of the lack of escaping in the log statements " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32117 invoked by uid 550); 6 Dec 2021 19:17:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28579 invoked from network); 6 Dec 2021 19:13:23 -0000
Content-Type: text/plain; charset=utf-8
From: Marcus Christie <machristie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <39c0a5b8-8523-d46c-9488-77d9c422bb8b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Dec 2021 19:13:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-43410: Apache Airavata Django Portal:
 airavata-django-portal allows CRLF log injection because of the lack of
 escaping in the log statements 

Severity: low

Description:

Apache Airavata Django Portal allows CRLF log injection because of lack of =
escaping log statements. In particular, some HTTP request parameters are lo=
gged without first being escaped.

Versions affected:
master branch before commit 3c5d8c7 [1] of airavata-django-portal

[1] https://github.com/apache/airavata-django-portal/commit/3c5d8c72bfc3eb0=
af8693a655a5d60f9273f8170

Credit:

Apache Airavata would like to thank haby0 of Duxiaoman Financial Security T=
eam for reporting this vulnerability.

