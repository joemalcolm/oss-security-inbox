X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["644" "Thursday" "17" "October" "2019" "00:46:17" "+0200" "Jens Geyer" "jensg@apache.org" "<277A46CA87494176B1BBCF5D72624A2A@HAGGIS>" "30" "[oss-security] CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability" nil nil nil "10" "2019101622:46:17" "[oss-security] CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability" (number mark "U       jensg@apache Oct 17   30/644   " thread-indent "\"[oss-security] CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22051 invoked by uid 550); 17 Oct 2019 08:48:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26275 invoked from network); 16 Oct 2019 22:46:31 -0000
Message-ID: <277A46CA87494176B1BBCF5D72624A2A@HAGGIS>
From: "Jens Geyer" <jensg@apache.org>
To: <oss-security@lists.openwall.com>,
	<security@apache.org>,
	"Thrift-Dev" <dev@thrift.apache.org>,
	<user@thrift.apache.org>
Date: Thu, 17 Oct 2019 00:46:17 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00A8_01D58484.492EA1C0"
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
Subject: [oss-security] CVE-2019-0210: Apache Thrift: out-of-bounds read vulnerability

------=_NextPart_000_00A8_01D58484.492EA1C0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

CVE-2019-0210: Apache Thrift out-of-bounds read vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Thrift 0.9.3 to 0.12.0

Description:
A server implemented in Go using TJSONProtocol or TSimpleJSONProtocol may p=
anic when feed with invalid input data.

Mitigation:
Upgrade to version 0.13.0=20

Credit:
This issue was reported by Alexandre Fiori of Facebook.

On behalf of the Apache Thrift PMC,
Jens Geyer

------=_NextPart_000_00A8_01D58484.492EA1C0--

