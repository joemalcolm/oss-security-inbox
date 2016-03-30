X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Wednesday" "30" "March" "2016" "14:40:49" "+0300" "Stelios Tsampas" "stelios@census-labs.com" "<56FBBB41.9010405@census-labs.com>" "34" "[oss-security] CVE-2016-2385 Kamailio SEAS module heap buffer overflow" "^Cc:" nil nil "3" "2016033011:40:49" "[oss-security] CVE-2016-2385 Kamailio SEAS module heap buffer overflow" (number mark "U       stelios@cens Mar 30   34/1150  " thread-indent "\"[oss-security] CVE-2016-2385 Kamailio SEAS module heap buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19719 invoked by uid 550); 30 Mar 2016 11:59:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11364 invoked from network); 30 Mar 2016 11:41:14 -0000
Message-ID: <56FBBB41.9010405@census-labs.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
Date: Wed, 30 Mar 2016 14:40:49 +0300
From: Stelios Tsampas <stelios@census-labs.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-2385 Kamailio SEAS module heap buffer overflow
To: oss-security@lists.openwall.com

Kamailio (successor of former OpenSER and SER) is an Open Source SIP
Server released under GPL. It can be used to build large platforms for
VoIP and realtime communications, presence, WebRTC, Instant messaging
and other applications.

A heap overflow was found in Kamailio version 4.3.4 (possibly affecting
earlier versions also). The heap overflow takes place in the encode_msg
function of the SEAS module and can be triggered remotely if the module
is enabled.

A technical analysis of the vulnerability can be found here:
https://census-labs.com/news/2016/03/30/kamailio-seas-heap-overflow/

The vulnerability may allow an attacker to cause memory corruption,
process termination or potentially remote code execution.

This defect has been fixed in version 4.3.5 of Kamailio. Administrators
of affected systems are strongly advised to upgrade Kamailio to the
latest stable release.

Disclosure Timeline
-------------------
Vendor Contact:	        February 12th, 2016
CVE assignment:	        February 15th, 2016
Vendor Patch Release:	March 3rd, 2016
Public Advisory:	March 30th, 2016

Regards,

Stelios Tsampas

IT Security Researcher
CENSUS S.A.

