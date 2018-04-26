X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1417" "Thursday" "26" "April" "2018" "12:11:06" "-0400" "Marshall Schor" "schor@apache.org" "<65b16598-8390-9199-e391-84422cd2f4ac@apache.org>" "45" "[oss-security] [ANNOUNCE] CVE-2017-15691: Apache UIMA XML external entity expansion (XXE) attack exposure" nil nil nil "4" "2018042616:11:06" "[oss-security] [ANNOUNCE] CVE-2017-15691: Apache UIMA XML external entity expansion (XXE) attack exposure" (number mark "U       schor@apache Apr 26   45/1417  " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-15691: Apache UIMA XML external entity expansion (XXE) attack exposure\"\n") "<fac969e1-6a15-186a-d49c-338c58a0b37e@apache.org>" ("<fac969e1-6a15-186a-d49c-338c58a0b37e@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16076 invoked by uid 550); 26 Apr 2018 16:18:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11697 invoked from network); 26 Apr 2018 16:11:17 -0000
References: <fac969e1-6a15-186a-d49c-338c58a0b37e@apache.org>
To: oss-security@lists.openwall.com
From: Marshall Schor <schor@apache.org>
Openpgp: preference=signencrypt
X-Forwarded-Message-Id: <fac969e1-6a15-186a-d49c-338c58a0b37e@apache.org>
Message-ID: <65b16598-8390-9199-e391-84422cd2f4ac@apache.org>
Date: Thu, 26 Apr 2018 12:11:06 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <fac969e1-6a15-186a-d49c-338c58a0b37e@apache.org>
Content-Type: multipart/alternative;
 boundary="------------757EF9CD05B1293AF3CD97D0"
Content-Language: en-US
Subject: [oss-security] [ANNOUNCE] CVE-2017-15691: Apache UIMA XML external entity expansion
 (XXE) attack exposure

--------------757EF9CD05B1293AF3CD97D0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

CVE-2017-15691: Apache UIMA XML external entity expansion (XXE) attack exposure

Severity: Important  

Vendor:
The Apache Software Foundation

Versions Affected:
  - uimaj 2.x.x releases prior to 2.10.2
  - uimaj 3.0.0 releases prior to 3.0.0-beta
  - uima-as releases prior to 2.10.2
  - uimaFIT releases prior to 2.4.0
  - uimaDUCC releases prior to 2.2.2

Description.
The details of this vulnerability were reported to the Apache UIMA Private
mailing list.

This  vulnerability relates to an XML external entity expansion (XXE) capability
of various XML parsers. See
   https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing
for more details.

UIMA as part of its configuration and operation may read XML from various
sources, which could be tainted in ways to cause inadvertent disclosure of local
files or other internal content.

Mitigation:
Users are advised to upgrade these UIMA components to the following levels or later:
  - uimaj: 2.x.x upgrade to 2.10.2 or later
  - uimaj: 3.x.x upgrade to 3.0.0 or later
  - uima-as: upgrade to 2.10.2 or later
  - uimaFIT: upgrade to 2.4.0 or later
  - uimaDUCC: upgrade to 2.2.2 or later

Credit: Joern Kottmann

-Marshall Schor, on behalf of the UIMA Project Management Committee 


--------------757EF9CD05B1293AF3CD97D0--
