X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1490" "Wednesday" "30" "December" "2015" "14:29:18" "+0100" "Daniele Bianco" "danbia@ocert.org" "<20151230132918.GW4273@ns360119.ovh.net>" "50" "[oss-security] [oCERT 2015-012] Ganeti multiple issues" nil nil nil "12" "2015123013:29:18" "[oss-security] [oCERT 2015-012] Ganeti multiple issues" (number mark "U       danbia@ocert Dec 30   50/1490  " thread-indent "\"[oss-security] [oCERT 2015-012] Ganeti multiple issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11808 invoked by uid 550); 30 Dec 2015 13:29:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11761 invoked from network); 30 Dec 2015 13:29:30 -0000
Date: Wed, 30 Dec 2015 14:29:18 +0100
From: Daniele Bianco <danbia@ocert.org>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
        ocert-announce@lists.ocert.org
Message-ID: <20151230132918.GW4273@ns360119.ovh.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x9544A497
X-GPG-Fingerprint: 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] [oCERT 2015-012] Ganeti multiple issues

#2015-012 Ganeti multiple issues

Description:

Ganeti, an open source virtualization manager, suffers from multiple issues in
its RESTful control interface (RAPI).

The distributed replicated storage (DRBD) secret is leaked by the RAPI
interface when job results are requested. Leveraging on the knowledge of
this secret, a malicious user who had already gained access to the storage
network of the cluster can retrieve instance data more easily and reliably.

The RAPI interface is also vulnerable to a DoS condition, triggered via SSL
parameter renegotiation issued by a malicious client. The condition leads to
resource exhaustion on the master node.

Affected version:

Ganeti <=2.9.6, <=2.10.7, <=2.11.7, <=2.12.5, <=2.13.2, <=2.14.1, <=2.15.1

Fixed version:

Ganeti >=2.9.7, >=2.10.8, >=2.11.8, >=2.12.6, >=2.13.3, >=2.14.2, >=2.15.2

Credit: vulnerability reported by Pierre Kim <pierre [dot] kim [dot] sec [at] gmail [dot] com>.

CVE:

CVE-2015-7944 (DoS), CVE-2015-7945 (DRBD secret leak) 

Timeline:

2015-12-21: vulnerability report received
2015-12-24: contacted affected vendors
2015-12-30: advisory release

References:

http://downloads.ganeti.org/releases

Permalink:

http://www.ocert.org/advisories/ocert-2015-012.html

--
  Daniele Bianco      Open Source Computer Security Incident Response Team
  <danbia@ocert.org>                                  http://www.ocert.org

  GPG Key 0x9544A497
  GPG Key fingerprint = 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
