X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["309" "Tuesday" "18" "January" "2022" "14:42:56" "+0000" "Ralph Goers" "rgoers@apache.org" nil "16" "[oss-security] CVE-2022-23307: Apache Log4j 1.x:  A deserialization flaw in the Chainsaw component of Log4j 1 can lead to malicious code execution. " nil nil nil "1" nil nil (number mark "U       rgoers@apach Jan 18   16/309   " thread-indent "\"[oss-security] CVE-2022-23307: Apache Log4j 1.x: A deserialization flaw in the Chainsaw component of Log4j 1 can lead to malicious code execution. \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23307: Apache Log4j 1.x: A deserialization flaw in the Chainsaw component of Log4j 1 can lead to malicious code execution. " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17931 invoked by uid 550); 18 Jan 2022 14:47:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13757 invoked from network); 18 Jan 2022 14:43:08 -0000
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f9eae471-1b6b-c840-0039-74cf3674db57@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 18 Jan 2022 14:42:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23307: Apache Log4j 1.x:  A deserialization flaw in the
 Chainsaw component of Log4j 1 can lead to malicious code execution. 

Severity: Critical

Description:

CVE-2020-9493 identified a deserialization issue that was present in Apache=
 Chainsaw. Prior to Chainsaw V2.0 Chainsaw was a component of Apache Log4j =
1.2.x where the same issue exists.

Mitigation:

Upgrade to Apache Log4j 2 and Apache Chainsaw 2.1.0.

Credit:

@kingkk

