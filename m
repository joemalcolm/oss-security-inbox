X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4331" "Sunday" "30" "August" "2015" "21:47:56" "+0800" "Jing Wang" "justqdjing@gmail.com" "<CAFWG0-jEReuEiRzX_Toj0LAXv9i-YaP=Szg6hMzHMCRrxShAOA@mail.gmail.com>" "140" "[oss-security] Winmail Server 4.2 Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug" nil nil nil "8" "2015083013:47:56" "[oss-security] Winmail Server 4.2 Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug" (number mark "        justqdjing@g Aug 30  140/4331  " thread-indent "\"[oss-security] Winmail Server 4.2 Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5915 invoked by uid 550); 30 Aug 2015 13:48:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5830 invoked from network); 30 Aug 2015 13:48:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=SdQQmsVUxBOIbuo+CYbssbx74yeAaOWBJPinUW8eDBg=;
        b=NnfEoIwdraM+E4CoW30y51em3Dhm6nsAgm1dbAhz0AaPPhydBJIR8lUrbbpy6o7t5L
         n/rGdsz8PFrFgI7c71iYwV6mni6gX3hUsO7Dg26bPpRFlWhV7TpwjYV693LzGSuTOAGQ
         t6LmiEeWAGoMUKAvsvj7M9Fctz8W/5FIpc2BHYiRa2lvX4V9FF5tTG5Hks4pMRqDOJ7R
         tpqyCLigQq375qUz9T8Z2yplEaB18WIPkTwvFyM5GNEVLPBT53al+QiHmITg0EVj+lBK
         ecOSng9eN+9I8MQTY+0/C56N4iGiVZwSRFYgVbbayAl0xHVDjnZ8RCep6r4aXnquKzbd
         7iEw==
MIME-Version: 1.0
X-Received: by 10.50.141.198 with SMTP id rq6mr1610246igb.54.1440942476501;
 Sun, 30 Aug 2015 06:47:56 -0700 (PDT)
Message-ID: <CAFWG0-jEReuEiRzX_Toj0LAXv9i-YaP=Szg6hMzHMCRrxShAOA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0122f724742a3a051e8790c1
Date: Sun, 30 Aug 2015 21:47:56 +0800
From: Jing Wang <justqdjing@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Winmail Server 4.2 Reflected XSS (Cross-site Scripting) Web
 Application 0-Day Security Bug
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com

--089e0122f724742a3a051e8790c1
Content-Type: text/plain; charset=UTF-8

*Winmail Server 4.2 Reflected XSS (Cross-site Scripting) Web Application
0-Day Security Bug*



Exploit Title: Winmail Server badlogin.php &lid parameter Reflected XSS Web
Security Vulnerability
Product: Winmail Server
Vendor: Winmail Server
Vulnerable Versions: 4.2   4.1
Tested Version: 4.2   4.1
Advisory Publication: August 24, 2015
Latest Update: August 30, 2015
Vulnerability Type: Cross-Site Scripting [CWE-79]
CVE Reference:
Impact CVSS Severity (version 2.0):
CVSS v2 Base Score: 4.3 (MEDIUM) (AV:N/AC:M/Au:N/C:N/I:P/A:N) (legend)
Impact Subscore: 2.9
Exploitability Subscore: 8.6
CVSS Version 2 Metrics:
Access Vector: Network exploitable; Victim must voluntarily interact with
attack mechanism
Access Complexity: Medium
Authentication: Not required to exploit
Impact Type: Allows unauthorized modification
Discover and Reporter: Wang Jing [School of Physical and Mathematical
Sciences (SPMS), Nanyang Technological University (NTU), Singapore]
(@justqdjing)









*Suggestion Details:*


*(1) Vendor & Product Description:*


*Vendor:*
Winmail Server



*Product & Vulnerable Versions:*
Winmail Server
4.2   4.1



*Vendor URL & Download:*
Product can be obtained from here,
http://www.magicwinmail.net/download.asp




*Product Introduction Overview:*
"Winmail Server is an enterprise class mail server software system offering
a robust feature set, including extensive security measures. Winmail Server
supports SMTP, POP3, IMAP, Webmail, LDAP, multiple domains, SMTP
authentication, spam protection, anti-virus protection, SSL security,
Network Storage, remote access, Web-based administration, and a wide array
of standard email options such as filtering, signatures, real-time
monitoring, archiving, and public email folders. Winmail Server can be
configured as a mail server or gateway for ISDN, ADSL, FTTB and cable modem
networks, beyond standard LAN and Internet mail server configurations."








*(2) Vulnerability Details:*
Winmail Server web application has a computer security problem. Hackers can
exploit it by reflected XSS cyber attacks. This may allow a remote attacker
to create a specially crafted request that would execute arbitrary script
code in a user's browser session within the trust relationship between
their browser and the server.

Several other similar products 0-day vulnerabilities have been found by
some other bug hunter researchers before. Winmail Server has patched some
of them. "scip AG was founded in 2002. We are driven by innovation,
sustainability, transparency, and enjoyment of our work. We are completely
self-funded and are thus in the comfortable position to provide completely
independent and neutral services. Our staff consists of highly specialized
experts who focus on the topic information security and continuously
further their expertise through advanced training". Scip has recorded
similar XSS bugs, such as scipID 26980.



*(2.1) *The code flaw occurs at "&lid" parameter in "badlogin.php" page. In
fact, CVE-2005-3692 mentions that "&retid" parameter in "badlogin.php" page
is vulnerable to XSS attacks. But it does not mention "&lid" parameter".
The scipID of the bug is 26980. Bugtraq (SecurityFocus) ID is 15493. OSVDB
ID is 20926.







*References:*
http://tetraph.com/security/xss-vulnerability/winmail-server-4-2-reflected-xss/
http://securityrelated.blogspot.com/2015/08/winmail-server-42-reflected-xss.html
http://seclists.org/fulldisclosure/2015/May/103
http://marc.info/?l=full-disclosure&m=143110916812709&w=4
http://permalink.gmane.org/gmane.comp.security.fulldisclosure/2028
http://webtech.lofter.com/post/1cd3e0d3_6eef8c8
http://whitehatpost.blog.163.com/blog/static/242232054201573091630996/
https://hackertopic.wordpress.com/2015/08/25/winmail-server-4-2-reflected-xss/
http://whitehatview.tumblr.com/post/118853357881/tetraph-cve-2014-9468-instantasp
http://marc.info/?l=full-disclosure&m=142649827629327&w=4
https://packetstormsecurity.com/files/132029/SITEFACT-CMS-2.01-Cross-Site-Scripting.html






--
Jing Wang,
Division of Mathematical Sciences (MAS),
School of Physical and Mathematical Sciences (SPMS),
Nanyang Technological University (NTU), Singapore.
http://www.tetraph.com/wangjing/
https://twitter.com/justqdjing

--089e0122f724742a3a051e8790c1--
