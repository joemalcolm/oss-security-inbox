X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3953" "Sunday" "30" "August" "2015" "21:09:02" "+0800" "Jing Wang" "justqdjing@gmail.com" "<CAFWG0-ix-ti0LSO-J0TCSKXXW29H7r__773QzbR=w0aMgFK5OA@mail.gmail.com>" "142" "[oss-security] KnowledgeTree OSS 3.0.3b Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug" nil nil nil "8" "2015083013:09:02" "[oss-security] KnowledgeTree OSS 3.0.3b Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug" (number mark "        justqdjing@g Aug 30  142/3953  " thread-indent "\"[oss-security] KnowledgeTree OSS 3.0.3b Reflected XSS (Cross-site Scripting) Web Application 0-Day Security Bug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21603 invoked by uid 550); 30 Aug 2015 13:10:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20244 invoked from network); 30 Aug 2015 13:09:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=0I/k9YpRLGpuuxchz9ZBWZwF79jQfO7i1mWXXl0O8ss=;
        b=LZVUejc4CmeV4CC6nrEAes6eJspWPx04Ivt0FivD+ucsCXYgfotBFhKH0SzWpi71dl
         TtuQQ+Tj8O866rh5x6uk4sNpml2AkHGyFGDDbdBBA1SxP6mpT8eDYRFTaugFDayg0tpq
         yRSd5iB1DRGAIU5zNP9RKU5Jn+YfMt9YXYwPnmqM4lPp5i192GiHF4tmrriYH90Sk09F
         Rldnc4caqsmdoBZ8dOs1RdCHT65qfWhRUMZMUQH62Vah2zKfvR5IcQg8yldXJnjtUZ+U
         w5VS/xuYxo4D00Q6QqopkxIObbYhLx6SA66hCHXKuSJAiSrJCILcoXSU8HHMoN8G0SmP
         PzWw==
MIME-Version: 1.0
X-Received: by 10.107.149.18 with SMTP id x18mr19974314iod.141.1440940142881;
 Sun, 30 Aug 2015 06:09:02 -0700 (PDT)
Message-ID: <CAFWG0-ix-ti0LSO-J0TCSKXXW29H7r__773QzbR=w0aMgFK5OA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140fee45bf2df051e8705ea
Date: Sun, 30 Aug 2015 21:09:02 +0800
From: Jing Wang <justqdjing@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] KnowledgeTree OSS 3.0.3b Reflected XSS (Cross-site Scripting) Web
 Application 0-Day Security Bug
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com

--001a1140fee45bf2df051e8705ea
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

*KnowledgeTree OSS 3.0.3b Reflected XSS (Cross-site Scripting) Web
Application 0-Day Security Bug*



Exploit Title: KnowledgeTree login.php &errorMessage parameter Reflected
XSS Web Security Vulnerability
Product: Knowledge Tree Document Management System
Vendor: Knowledge Inc
Vulnerable Versions: OSS 3.0.3b
Tested Version: OSS 3.0.3b
Advisory Publication: August 22, 2015
Latest Update: August 31, 2015
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
KnowledgeTree



*Product & Vulnerable Versions:*
Knowledge Tree Document Management System
OSS 3.0.3b



*Vendor URL & Download:*
Product can be obtained from here,
http://download.cnet.com/KnowledgeTree-Document-Management-System/3000-1074=
3_4-10632972.html
http://www.knowledgetree.com/




*Product Introduction Overview:*
"KnowledgeTree is open source document management software designed for
business people to use and install. Seamlessly connect people, ideas, and
processes to satisfy all your collaboration, compliance, and business
process requirements. KnowledgeTree works with Microsoft=C2=AE Office=C2=AE,
Microsoft=C2=AE Windows=C2=AE and Linux=C2=AE."







*(2) Vulnerability Details:*
KnowledgeTree web application has a computer security problem. Hackers can
exploit it by reflected XSS cyber attacks. This may allow a remote attacker
to create a specially crafted request that would execute arbitrary script
code in a user's browser session within the trust relationship between
their browser and the server.

Several other similar products 0-day vulnerabilities have been found by
some other bug hunter researchers before. KnowledgeTree has patched some of
them. "Bugtraq is an electronic mailing list dedicated to issues about
computer security. On-topic issues are new discussions about
vulnerabilities, vendor security-related announcements, methods of
exploitation, and how to fix them. It is a high-volume mailing list, and
almost all new vulnerabilities are discussed there.". It has listed similar
exploits, such as Bugtraq (Security Focus) 32920.



*(2.1) *The code flaw occurs at "&errorMessage" parameter in "login.php"
page.

One similar bug is CVE-2008-5858. Its X-Force ID is 47529.








*References:*
http://tetraph.com/security/xss-vulnerability/knowledgetree-oss-3-0-3b-refl=
ected-xss/
http://securityrelated.blogspot.com/2015/08/knowledgetree-oss-303b-reflecte=
d-xss.html
http://seclists.org/fulldisclosure/2015/May/31
https://progressive-comp.com/?l=3Dfull-disclosure&m=3D143110966112898&w=3D1
https://packetstormsecurity.com/files/132927/PhotoPost-PHP-4.8c-Cross-Site-=
Scripting.html
http://whitehatpost.blog.163.com/blog/static/242232054201573084141976/
https://hackertopic.wordpress.com/2015/08/22/knowledgetree-oss-3-0-3b-refle=
cted-xss/
http://lists.openwall.net/full-disclosure/2015/03/10/5
http://marc.info/?l=3Dfull-disclosure&m=3D143251239323317&w=3D4
https://www.mail-archive.com/fulldisclosure%40seclists.org/msg01415.html








--
Jing Wang,
Division of Mathematical Sciences (MAS),
School of Physical and Mathematical Sciences (SPMS),
Nanyang Technological University (NTU), Singapore.
http://www.tetraph.com/wangjing/
https://twitter.com/justqdjing

--001a1140fee45bf2df051e8705ea--
