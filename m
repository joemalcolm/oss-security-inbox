X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["313" "Thursday" "16" "September" "2021" "11:55:10" "+0000" "Andy Seaborne" "andy@apache.org" nil "12" "[oss-security] CVE-2021-39239: Apache Jena: XML External Entity (XXE) vulnerability " nil nil nil "9" nil nil (number mark "U       andy@apache. Sep 16   12/313   " thread-indent "\"[oss-security] CVE-2021-39239: Apache Jena: XML External Entity (XXE) vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39239: Apache Jena: XML External Entity (XXE) vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5274 invoked by uid 550); 16 Sep 2021 11:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5131 invoked from network); 16 Sep 2021 11:55:24 -0000
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4ef585a0-4e3f-1fba-af99-be43895bf464@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Sep 2021 11:55:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39239: Apache Jena: XML External Entity (XXE)
 vulnerability 

Severity: high

Description:

A vulnerability in XML processing in Apache Jena, in versions up to 4.1.0, =
may allow an attacker to execute XML External Entities (XXE), including exp=
osing the contents of local files to a remote server.

Mitigation:

Users are advised to upgrade to Apache Jena 4.2.0 or later.

