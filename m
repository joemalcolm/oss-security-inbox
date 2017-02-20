X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1318" "Monday" "20" "February" "2017" "08:22:42" "-0800" "Timothy D. Morgan" "tim.advisories@blindspotsecurity.com" "<a2152d8b-5716-db81-9668-c04e70cd744f@blindspotsecurity.com>" "15" "[oss-security] Blindspot Advisory: Java/Python FTP Injections Allow for Firewall Bypass" nil nil nil "2" "2017022016:22:42" "[oss-security] Blindspot Advisory: Java/Python FTP Injections Allow for Firewall Bypass" (number mark "U       tim.advisori Feb 20   15/1318  " thread-indent "\"[oss-security] Blindspot Advisory: Java/Python FTP Injections Allow for Firewall Bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9701 invoked by uid 550); 20 Feb 2017 16:29:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3344 invoked from network); 20 Feb 2017 16:23:01 -0000
To: oss-security@lists.openwall.com
From: "Timothy D. Morgan" <tim.advisories@blindspotsecurity.com>
Message-ID: <a2152d8b-5716-db81-9668-c04e70cd744f@blindspotsecurity.com>
Date: Mon, 20 Feb 2017 08:22:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Blindspot Advisory: Java/Python FTP Injections Allow for Firewall
 Bypass


Recently, an vulnerability in Java's FTP URL handling code has been published which allows for protocol stream injection. It has been shown[1] that this flaw could be used to leverage existing XXE or SSRF vulnerabilities to send unauthorized email from Java applications via the SMTP protocol. While technically interesting, the full impact of this protocol stream injection has not been fully accounted for in existing public analysis.

Protocol injection flaws like this have been an area of research of mine for the past few couple of years and as it turns out, this FTP protocol injection allows one to fool a victim's firewall into allowing TCP connections from the Internet to the vulnerable host's system on any "high" port (1024-65535). A nearly identical vulnerability exists in Python's urllib2 and urllib libraries. In the case of Java, this attack can be carried out against desktop users even if those desktop users do not have the Java browser plugin enabled.

As of 2017-02-20, the vulnerabilities discussed here have not been patched by the associated vendors, despite advance warning and ample time to do so.
...

For the rest of the advisory, please see:
  http://blog.blindspotsecurity.com/2017/02/advisory-javapython-ftp-injections.html




1. https://shiftordie.de/blog/2017/02/18/smtp-over-xxe/
