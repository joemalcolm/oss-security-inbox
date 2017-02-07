X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["322" "Tuesday" "7" "February" "2017" "09:57:39" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170207104854.331@usenet.piggo.com>" "13" "[oss-security] CVE request: XXE in Openpyxl" nil nil nil "2" "2017020709:57:39" "[oss-security] CVE request: XXE in Openpyxl" (number mark "U       seb@debian.o Feb  7   13/322   " thread-indent "\"[oss-security] CVE request: XXE in Openpyxl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25643 invoked by uid 550); 7 Feb 2017 12:31:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15983 invoked from network); 7 Feb 2017 09:58:05 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Tue, 7 Feb 2017 09:57:39 +0000 (UTC)
Message-ID: <20170207104854.331@usenet.piggo.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] CVE request: XXE in Openpyxl

Hello,

the Debian Security Team would like to request a CVE for an XML XEE
discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
resolves external entities by default:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854442
  https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1

Cheers,

--Seb

