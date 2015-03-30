X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["599" "Sunday" "29" "March" "2015" "18:50:25" "-0700" "Javantea" "jvoss@altsci.com" "<20150330015025.24AB213859E@mail.altsci.com>" "16" "[oss-security] CVE Request: Remote Code Execution in Realms Wiki install.sh" nil nil nil "3" "2015033001:50:25" "[oss-security] CVE Request: Remote Code Execution in Realms Wiki install.sh" (number mark "        jvoss@altsci Mar 29   16/599   " thread-indent "\"[oss-security] CVE Request: Remote Code Execution in Realms Wiki install.sh\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7419 invoked by uid 550); 30 Mar 2015 03:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26477 invoked from network); 30 Mar 2015 01:49:31 -0000
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20150330015025.24AB213859E@mail.altsci.com>
Date: Sun, 29 Mar 2015 18:50:25 -0700 (PDT)
From: Javantea <jvoss@altsci.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Remote Code Execution in Realms Wiki install.sh
To: oss-security@lists.openwall.com

Hello,

Realms Wiki install.sh is vulnerable to remote code execution. This is unpatched but the author has responded that he intends to fix the bugs when he has the time. At the same time I found a CSRF vulnerability which I asked for a separate CVE for.

Product:  Realms Wiki
Website:  http://realms.io/
Github:   https://github.com/scragg0x/realms-wiki
CVSS Score: 7.9 (AV:A/AC:M/Au:N/C:C/I:C/A:C)

References:
[1] http://seclists.org/fulldisclosure/2015/Mar/153
[2] https://twitter.com/scragg0x/status/581602868802682881

Could you allocate a CVE id for this?

Thank you and Regards, Javantea.
