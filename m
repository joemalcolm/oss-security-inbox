X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Monday" "8" "February" "2021" "06:25:40" "+0100" "Jean-Baptiste Onofre" "jb@nanthrax.net" "<A9D6FE26-5B9B-4505-A830-A2D4DBE3DFE6@nanthrax.net>" "31" "[oss-security] CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole" nil nil nil "2" "2021020805:25:40" "[oss-security] CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole" (number mark "U       jb@nanthrax. Feb  8   31/689   " thread-indent "\"[oss-security] CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28445 invoked by uid 550); 8 Feb 2021 07:11:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14035 invoked from network); 8 Feb 2021 05:25:52 -0000
X-Originating-IP: 82.64.90.43
From: Jean-Baptiste Onofre <jb@nanthrax.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_569FC757-D675-4EDA-A4C3-474C94905FEA"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <A9D6FE26-5B9B-4505-A830-A2D4DBE3DFE6@nanthrax.net>
Date: Mon, 8 Feb 2021 06:25:40 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Subject: [oss-security] CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole

--Apple-Mail=_569FC757-D675-4EDA-A4C3-474C94905FEA
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-13947 - XSS in WebConsole

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ prior to 5.15.12 and 5.16.0

Description:
An instance of a cross-site scripting
vulnerability was identified to be present in the web based
administration console on the message.jsp page of Apache ActiveMQ
versions 5.15.12 to 5.16.0.

Mitigation:
Upgrade to at least Apache ActiveMQ 5.15.13 or 5.16.1

Credit:
This issue was discovery by:

* qiang qiang <silbul2017@gmail.com>


--Apple-Mail=_569FC757-D675-4EDA-A4C3-474C94905FEA--
