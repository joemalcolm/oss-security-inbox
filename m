X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["463" "Thursday" "6" "January" "2022" "17:48:38" "+0000" "Ryan Skraba" "rskraba@apache.org" nil "14" "[oss-security] CVE-2021-43045: Apache Avro: Possible DOS vulnerabilities in C# Avro SDK " nil nil nil "1" nil nil (number mark "U       rskraba@apac Jan  6   14/463   " thread-indent "\"[oss-security] CVE-2021-43045: Apache Avro: Possible DOS vulnerabilities in C# Avro SDK \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43045: Apache Avro: Possible DOS vulnerabilities in C# Avro SDK " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21790 invoked by uid 550); 6 Jan 2022 17:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20236 invoked from network); 6 Jan 2022 17:48:52 -0000
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <04d5ac43-d559-563f-9f39-e7455cbfbaeb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 06 Jan 2022 17:48:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-43045: Apache Avro: Possible DOS vulnerabilities in C#
 Avro SDK 

Description:

A vulnerability in the .NET SDK of Apache Avro allows an attacker to alloca=
te excessive resources, potentially causing a denial-of-service attack.  Th=
is issue affects .NET applications using Apache Avro version 1.10.2 and pri=
or versions.  Users should update to version 1.11.0 which addresses this is=
sue.

This issue is being tracked as AVRO-3225,AVRO-3226

Credit:

Apache Avro would like to thank Philip Sanetra for reporting this issue.

