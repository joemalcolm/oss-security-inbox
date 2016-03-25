X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1078" "Friday" "25" "March" "2016" "16:04:38" "+0100" "=?UTF-8?B?SsO2cmc=?= Schaible" "joerg.schaible@gmx.de" "<nd3k26$2sr$1@ger.gmane.org>" "29" "[oss-security] CVE request - XStream: XXE vulnerability" nil nil nil "3" "2016032515:04:38" "[oss-security] CVE request - XStream: XXE vulnerability" (number mark "U       joerg.schaib Mar 25   29/1078  " thread-indent "\"[oss-security] CVE request - XStream: XXE vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26466 invoked by uid 550); 25 Mar 2016 20:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26442 invoked from network); 25 Mar 2016 20:55:21 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <nd3k26$2sr$1@ger.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8Bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: hsi-kbw-109-193-123-012.hsi7.kabel-badenwuerttemberg.de
User-Agent: KNode/4.14.10
Date: Fri, 25 Mar 2016 16:04:38 +0100
From: =?UTF-8?B?SsO2cmc=?= Schaible <joerg.schaible@gmx.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - XStream: XXE vulnerability
To: oss-security@lists.openwall.com

Hi all,

XStream (x-stream.github.io) is a Java library to marshal Java objects into 
XML and back. For this purpose it supports a lot of different XML parsers. 
Some of those can also process external entities which was enabled by 
default.

An attacker could therefore provide manipulated XML as input to access data 
on the file system, see 
https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing

Since XStream 1.4.9 all parsers are configured to ignore external entities 
by default as far as such behavior is configurable:
http://x-stream.github.io/changes.html#1.4.9

Luckily XStream's default parser Xpp3 does not parse entities at all. 
However, all application that use XStream >= 1.4.8 explicitly with parsers 
based on StAX, W3C DOM, Dom4J, JDOM or JDOM2 were affected unless the 
parsers had been properly configured manually.

Applications using XOM or explicitly BEA's old StAX reference parser are 
still vulnerable, we found no way to deactivate processing of external 
entities for those two.

Regards,
Jörg

On behalf of the XStream community

