X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Thursday" "16" "July" "2015" "15:02:45" "+0300" "Henri Salo" "henri@nerv.fi" "<20150716120245.GA22561@lakka.kapsi.fi>" "16" "[oss-security] CVE request: WordPress plugin sp-client-document-manager Blind SQL Injection" nil nil nil "7" "2015071612:02:45" "[oss-security] CVE request: WordPress plugin sp-client-document-manager Blind SQL Injection" (number mark "        henri@nerv.f Jul 16   16/625   " thread-indent "\"[oss-security] CVE request: WordPress plugin sp-client-document-manager Blind SQL Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14305 invoked by uid 550); 16 Jul 2015 12:02:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14287 invoked from network); 16 Jul 2015 12:02:58 -0000
Message-ID: <20150716120245.GA22561@lakka.kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: fgeek@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Cc: cve-assign@mitre.org
Date: Thu, 16 Jul 2015 15:02:45 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: WordPress plugin sp-client-document-manager Blind SQL
 Injection
To: oss-security@lists.openwall.com

Can I get CVE identifier for WordPress plugin sp-client-document-manager Blind
SQL Injection vulnerability, thanks?

URL: https://wordpress.org/plugins/sp-client-document-manager/
Affected: 2.5.3 and previous version
Fixed in: 2.5.4
PoC:
/wordpress/wp-content/plugins/sp-client-document-manager/ajax.php?function=thumbnails&pid=[SQLi]
Changelog says for 2.5.4: "Fixed exploit in ajax (credit: rh3792@naver.com)"
More information: https://www.exploit-db.com/exploits/36576/

Please note that changelog also says: "2.5.7.3: Security fix, please update",
but I do not yet have more information about that issue.

-- 
Henri Salo
