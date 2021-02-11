X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["825" "Thursday" "11" "February" "2021" "23:43:29" "+0100" "Jens Geyer" "jensg@apache.org" "<5AC665375A88489691186D327AC3D0FF@HAGGIS>" "32" "[oss-security] CVE-2020-13949: Apache Thrift: potential DoS when processing untrusted payloads" "^Date:" nil nil "2" "2021021122:43:29" "[oss-security] CVE-2020-13949: Apache Thrift: potential DoS when processing untrusted payloads" (number mark "        jensg@apache Feb 11   32/825   " thread-indent "\"[oss-security] CVE-2020-13949: Apache Thrift: potential DoS when processing untrusted payloads\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13949: Apache Thrift: potential DoS when processing untrusted payloads" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30429 invoked by uid 550); 11 Feb 2021 22:59:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3781 invoked from network); 11 Feb 2021 22:43:43 -0000
Message-ID: <5AC665375A88489691186D327AC3D0FF@HAGGIS>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001C_01D700CF.B364FFD0"
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
Date: Thu, 11 Feb 2021 23:43:29 +0100
From: "Jens Geyer" <jensg@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-13949: Apache Thrift: potential DoS when processing untrusted payloads
To: <oss-security@lists.openwall.com>,
	<security@apache.org>,
	"Thrift-Dev" <dev@thrift.apache.org>,
	<user@thrift.apache.org>

------=_NextPart_000_001C_01D700CF.B364FFD0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

CVE-2020-13949: potential DoS when processing untrusted Thrift payloads

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Thrift up to and including 0.13.0

Description:
Applications using Thrift would not error upon receiving messages declaring=
 containers of sizes larger than the payload. As a result, malicious RPC cl=
ients could send short messages which would result in a large memory alloca=
tion, potentially leading to denial of service.

Mitigation:
Upgrade to version 0.14.0

Credit:
This issue was reported by Hasnain Lakhani of Facebook.

On behalf of the Apache Thrift PMC,
Jens Geyer=

------=_NextPart_000_001C_01D700CF.B364FFD0--

