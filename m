X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["334" "Monday" "14" "March" "2022" "10:07:40" "+0000" "Stefan Eissing" "icing@apache.org" nil "14" "[oss-security] CVE-2022-22721: Apache HTTP Server: core: Possible buffer overflow with very large or unlimited LimitXMLRequestBody " nil nil nil "3" nil nil (number mark "U       icing@apache Mar 14   14/334   " thread-indent "\"[oss-security] CVE-2022-22721: Apache HTTP Server: core: Possible buffer overflow with very large or unlimited LimitXMLRequestBody \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-22721: Apache HTTP Server: core: Possible buffer overflow with very large or unlimited LimitXMLRequestBody " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4014 invoked by uid 550); 14 Mar 2022 10:46:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1369 invoked from network); 14 Mar 2022 10:07:53 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <28650426-1002-ea94-54a5-71841b755b52@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Mar 2022 10:07:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-22721: Apache HTTP Server: core: Possible buffer overflow
 with very large or unlimited LimitXMLRequestBody 

Severity: low

Description:

If LimitXMLRequestBody is set to allow request bodies larger than 350MB (de=
faults to 1M) on 32 bit systems an integer overflow happens which later cau=
ses out of bounds writes.

This issue affects Apache HTTP Server 2.4.52 and earlier.

Credit:

Anonymous working with Trend Micro Zero Day Initiative

