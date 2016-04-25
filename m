X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2403" "Monday" "25" "April" "2016" "23:00:10" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20160425210010.GA9723@pisco.westfalen.local>" "70" "[oss-security] CVE requests: Multiple Wireshark vulnerabilities" nil nil nil "4" "2016042521:00:10" "[oss-security] CVE requests: Multiple Wireshark vulnerabilities" (number mark "U       jmm@debian.o Apr 25   70/2403  " thread-indent "\"[oss-security] CVE requests: Multiple Wireshark vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22262 invoked by uid 550); 25 Apr 2016 21:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22244 invoked from network); 25 Apr 2016 21:00:24 -0000
Date: Mon, 25 Apr 2016 23:00:10 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Cc: security@wireshark.org
Message-ID: <20160425210010.GA9723@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: 95.33.145.171
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: [oss-security] CVE requests: Multiple Wireshark vulnerabilities

Hi,
there's quite a backlog of Wireshark vulnerabilities which don't
have CVE IDs assigned:

Ixia IxVeriWave file parser crash :
https://www.wireshark.org/security/wnpa-sec-2016-12.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11795

IEEE 802.11 dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-13.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11818

GSM A-bis OML dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-14.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11825

ASN.1 BER dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-15.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12106

SPICE dissector large loop :
https://www.wireshark.org/security/wnpa-sec-2016-16.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12151

NFS dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-17.html

ASN.1 BER dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-18.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11822

NCP dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-19.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11591

TShark reassembly crash :
https://www.wireshark.org/security/wnpa-sec-2016-20.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11799

IEEE 802.11 dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-21.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=11824
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12187

PKTC dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-22.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12206

PKTC dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-23.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12242

IAX2 infinite loop :
https://www.wireshark.org/security/wnpa-sec-2016-24.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12260

Wireshark and TShark crash :
https://www.wireshark.org/security/wnpa-sec-2016-25.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12268

GSM CBCH dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-26.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12278

MS-WSP dissector crash :
https://www.wireshark.org/security/wnpa-sec-2016-27.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=12341

Cheers,
        Moritz
