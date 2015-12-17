X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1455" "Thursday" "17" "December" "2015" "15:03:40" "+0100" "Daniele Bianco" "danbia@ocert.org" "<20151217140340.GX4273@ns360119.ovh.net>" "55" "[oss-security] [oCERT 2015-011] PyAMF input sanitization errors (XXE)" nil nil nil "12" "2015121714:03:40" "[oss-security] [oCERT 2015-011] PyAMF input sanitization errors (XXE)" (number mark "U       danbia@ocert Dec 17   55/1455  " thread-indent "\"[oss-security] [oCERT 2015-011] PyAMF input sanitization errors (XXE)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32005 invoked by uid 550); 17 Dec 2015 14:03:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31961 invoked from network); 17 Dec 2015 14:03:52 -0000
Date: Thu, 17 Dec 2015 15:03:40 +0100
From: Daniele Bianco <danbia@ocert.org>
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com
Message-ID: <20151217140340.GX4273@ns360119.ovh.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-GPG-Key: 0x9544A497
X-GPG-Fingerprint: 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] [oCERT 2015-011] PyAMF input sanitization errors (XXE)


#2015-011 PyAMF input sanitization errors (XXE)

Description:

PyAMF is a Python module that implements the Action Message Format (AMF)
protocol, allowing Flash interoperation with various web frameworks.

PyAMF suffers from insufficient AMF input payload sanitization which
results in the XML parser not preventing the processing of XML external
entities (XXE).

A specially crafted AMF payload, containing malicious references to XML
external entities, can be used to trigger Denial of Service (DoS)
conditions or arbitrarily return the contents of files that are accessible
with the running application privileges.

Affected version:

PyAMF <= 0.7.2

Fixed version:

PyAMF >= 0.8.0

Credit: vulnerability reported by Nicolas Grégoire <nicolas [dot] gregoire [at] agarri [dot] fr>

CVE:

CVE-2015-8549

Timeline:

2015-12-01: vulnerability report received
2015-12-02: contacted maintainer
2015-12-04: maintainer commits patch via public pull request
2015-12-12: reporter confirms patch
2015-12-14: contacted affected vendors
2015-12-14: assigned CVE
2015-12-17: advisory release

References:

https://github.com/hydralabs/pyamf/pull/58

Permalink:

http://www.ocert.org/advisories/ocert-2015-011.html

--
  Daniele Bianco      Open Source Computer Security Incident Response Team
  <danbia@ocert.org>                                  http://www.ocert.org

  GPG Key 0x9544A497
  GPG Key fingerprint = 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
