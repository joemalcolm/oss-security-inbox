X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1185" "Wednesday" "19" "August" "2015" "13:48:04" "+0200" "Christofer Dutz" "cdutz@apache.org" "<op.x3l5qewzn9yd54@christofers-mbp>" "36" "[oss-security] CVE-2015-3269 Apache Flex BlazeDS Insecure Xml Entity Expansion Vulnerability" nil nil nil "8" "2015081911:48:04" "[oss-security] CVE-2015-3269 Apache Flex BlazeDS Insecure Xml Entity Expansion Vulnerability" (number mark "U       cdutz@apache Aug 19   36/1185  " thread-indent "\"[oss-security] CVE-2015-3269 Apache Flex BlazeDS Insecure Xml Entity Expansion Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5237 invoked by uid 550); 19 Aug 2015 12:10:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21662 invoked from network); 19 Aug 2015 11:48:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
Date: Wed, 19 Aug 2015 13:48:04 +0200
To: security@apache.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com, dev@flex.apache.org, users@flex.apache.org
MIME-Version: 1.0
Content-Transfer-Encoding: Quoted-Printable
From: "Christofer Dutz" <cdutz@apache.org>
Organization: Apache Foundation
Message-ID: <op.x3l5qewzn9yd54@christofers-mbp>
User-Agent: Opera Mail/1.0 (MacIntel)
Subject: [oss-security] CVE-2015-3269 Apache Flex BlazeDS Insecure Xml Entity Expansion
 Vulnerability

CVE-2015-3269 Apache Flex BlazeDS Insecure Xml Entity Expansion=20=20
Vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Flex BlazeDS 4.7.0

Description: When receiving XML encoded AMF messages containing DTD=20=20
entities, the
default XML parser configurations allows expanding of entities to local=20=
=20
resources.
A request that included a specially crafted request parameter could be=20=20
used to
access content that would otherwise be protected.


Mitigation: All users of Apache Flex BlazeDS prior to 4.7.1

Example: For an AMF message that contains the following xml payload:
<?xml version=3D"1.0" encoding=3D"ISO-8859-1"?>
  <!DOCTYPE foo [
    <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "file:///etc/passwd" >]><foo>&xxe;</foo>
the entity &xxe; would be expanded to the content of the file /etc/passwd.
However this expanded information is not automatically transferred back to
the client, but could be made available by the application.

Credit: This issue was discovered by =EF=BB=BFMatthias Kaiser of Code White

References:=20=20
https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing

Christofer Dutz
