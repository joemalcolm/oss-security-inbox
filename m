X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Thursday" "10" "September" "2020" "07:27:04" "+0200" "Jean-Baptiste Onofre" "jb@nanthrax.net" "<91D3B5A6-C405-4FF3-BE8D-042122A1780B@nanthrax.net>" "29" "[oss-security] [CVE-2020-13920] ActiveMQ JMX vulenarable to MITM attack" nil nil nil "9" "2020091005:27:04" "[oss-security] [CVE-2020-13920] ActiveMQ JMX vulenarable to MITM attack" (number mark "U       jb@nanthrax. Sep 10   29/933   " thread-indent "\"[oss-security] [CVE-2020-13920] ActiveMQ JMX vulenarable to MITM attack\"\n") "<97C2A4E8-5CA9-467F-AE63-C79E17F3F5D5@nanthrax.net>" ("<97C2A4E8-5CA9-467F-AE63-C79E17F3F5D5@nanthrax.net>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13920] ActiveMQ JMX vulenarable to MITM attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13515 invoked by uid 550); 10 Sep 2020 06:58:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12020 invoked from network); 10 Sep 2020 05:27:22 -0000
X-Originating-IP: 82.64.90.43
From: Jean-Baptiste Onofre <jb@nanthrax.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_333FC975-4A5E-41B3-A8D5-14BF07E843EC"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <91D3B5A6-C405-4FF3-BE8D-042122A1780B@nanthrax.net>
References: <97C2A4E8-5CA9-467F-AE63-C79E17F3F5D5@nanthrax.net>
To: oss-security@lists.openwall.com
Date: Thu, 10 Sep 2020 07:27:04 +0200
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: [oss-security] [CVE-2020-13920] ActiveMQ JMX vulenarable to MITM attack

--Apple-Mail=_333FC975-4A5E-41B3-A8D5-14BF07E843EC
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-13920: Apache ActiveMQ JMX is vulnerable to a MITM attack

Severity: Moderate

Vendor: The Apache Software Foundation

Affected Version: Apache ActiveMQ version prior to 5.15.12

Vulnerability details:
Apache ActiveMQ uses LocateRegistry.createRegistry() to create the JMX RMI
registry and binds the server to the "jmxrmi" entry. It is possible
to connect to the registry without authentication and call the rebind
method to rebind jmxrmi to something else. If an attacker creates another
server to proxy the original, and bound that, he effectively becomes a 
man in the middle and is able to intercept the credentials when an user
connects.

Mitigation:
Upgrade to Apache ActiveMQ 5.15.12

Credit: Jonathan Gallimore & Colm O hEigeartaigh


--Apple-Mail=_333FC975-4A5E-41B3-A8D5-14BF07E843EC--
