X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["986" "Monday" "23" "November" "2015" "15:17:09" "+0100" "Christofer Dutz" "cdutz@apache.org" "<op.x8j4mv0bn9yd54@christofers-macbook-pro.local>" "26" "[oss-security] CVE-2015-5255: SSRF vulnerability in Apache Flex BlazeDS 4.7.1 " nil nil nil "11" "2015112314:17:09" "[oss-security] CVE-2015-5255: SSRF vulnerability in Apache Flex BlazeDS 4.7.1" (number mark "U       cdutz@apache Nov 23   26/986   " thread-indent "\"[oss-security] CVE-2015-5255: SSRF vulnerability in Apache Flex BlazeDS 4.7.1 \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17423 invoked by uid 550); 23 Nov 2015 14:17:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16364 invoked from network); 23 Nov 2015 14:17:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
To: dev@flex.apache.org, "users@flex.apache.org" <users@flex.apache.org>,
 security@apache.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Date: Mon, 23 Nov 2015 15:17:09 +0100
MIME-Version: 1.0
Content-Transfer-Encoding: Quoted-Printable
From: "Christofer Dutz" <cdutz@apache.org>
Organization: Apache Foundation
Message-ID: <op.x8j4mv0bn9yd54@christofers-macbook-pro.local>
User-Agent: Opera Mail/1.0 (MacIntel)
Subject: [oss-security] CVE-2015-5255: SSRF vulnerability in Apache Flex BlazeDS 4.7.1 

CVE-2015-5255: SSRF vulnerability in Apache Flex BlazeDS 4.7.1
Severity: Important
Vendor: The Apache Software Foundation
Versions Affected: BlazeDS 4.7.0 and 4.7.1
Description: The code in BlazeDS to deserialize AMF XML datatypes allows
so-called SSRF Attacks
(Server Side Request Forgery) in which the server could contact a remote
service on
behalf of the attacker. The attacker could hereby circumvent firewall
restrictions.
Mitigation: 4.7.x users should upgrade to 4.7.2
Example: For XML object containing the following string representation:

<!DOCTYPE foo PUBLIC "-//VSR//PENTEST//EN"
"http://protected-server/protected-service"><foo>Some content</foo>
The server could access the url:
http://protected-server/protected-service

Even if directly accessing this resource is prevented by firewall rules.

Credit: This issue was discovered by =EF=BB=BFJames Kettle of PortSwigger L=
td.
References:
http://www.vsecurity.com/download/papers/XMLDTDEntityAttacks.pdf

Christofer Dutz
