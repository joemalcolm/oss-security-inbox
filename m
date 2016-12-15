X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1866" "Thursday" "15" "December" "2016" "12:02:19" "+0200" "Henri Salo" "henri@nerv.fi" "<20161215100219.GA32322@tunkki>" "68" "[oss-security] CVE request: PT-2013-46 Local File Include in Nagios Looking Glass" nil nil nil "12" "2016121510:02:19" "[oss-security] CVE request: PT-2013-46 Local File Include in Nagios Looking Glass" (number mark "U       henri@nerv.f Dec 15   68/1866  " thread-indent "\"[oss-security] CVE request: PT-2013-46 Local File Include in Nagios Looking Glass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24348 invoked by uid 550); 15 Dec 2016 10:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24327 invoked from network); 15 Dec 2016 10:02:35 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Thu, 15 Dec 2016 12:02:19 +0200
From: Henri Salo <henri@nerv.fi>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Cc: contact@ptsecurity.ru
Message-ID: <20161215100219.GA32322@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request: PT-2013-46 Local File Include in Nagios Looking Glass

Could you assign 2013 CVE identifier for Local File Include vulnerability in
Nagios Looking Glass, thanks.

Advisory below
==============

-----------------------------------------------------------
  (PT-2013-46) Positive Technologies Security Advisory
      Local File Include in Nagios Looking Glass
-----------------------------------------------------------

---[ Vulnerable software ]

Nagios Looking Glass
Version: 1.1.0 beta 2 and earlier

Link:
http://exchange.nagios.org/directory/Addons/Frontends-(GUIs-and-CLIs)/Web-Interfaces/Nagios-Looking-Glass/details

---[ Severity level ]

Severity level: High
Impact: Files Reading
Access Vector:  Remote
CVSS v2:
Base Score: 7.8
Vector: (AV:N/AC:L/Au:N/C:C/I:N/A:N)

CVE: not assigned

---[ Software description ]

Nagios Looking Glass (NLG) is a web-based interface for Nagios that allows you
to show at-a-glance, real-time server status to 3rd parties without giving them
direct access to Nagios.

---[ Vulnerability description ]

The specialists of the Positive Research center have detected a Local File
Include vulnerability in Nagios Looking Glass.

Application don't validates input data. That allows attackers to read config
file. To exploit this vulnerability remote attacker shouldn't have privileges in
Nagios Looking Glass.
Vulnerability exists in server/s3_download.php.

---[ How to fix ]

No solution

---[ Advisory status ]

19.07.2013 - Vendor gets vulnerability details
13.08.2013 - Vulnerability details were sent to CERT
28.10.2013 - Public disclosure

---[ Credits ]

The vulnerability was detected by Vyacheslav Egoshin, Positive Research Center
(Positive Technologies Company)

---[ References ]

http://en.securitylab.ru/lab/PT-2013-46
Reports on the vulnerabilities previously discovered by Positive Research:

http://www.ptsecurity.com/research/advisory/
http://en.securitylab.ru/lab/
