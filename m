X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["985" "Friday" "20" "January" "2017" "07:20:33" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170120081301.962@usenet.piggo.com>" "33" "[oss-security] CVE request: cgiemail multiple vulnerabilities" nil nil nil "1" "2017012007:20:33" "[oss-security] CVE request: cgiemail multiple vulnerabilities" (number mark "U       seb@debian.o Jan 20   33/985   " thread-indent "\"[oss-security] CVE request: cgiemail multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5540 invoked by uid 550); 20 Jan 2017 08:05:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18203 invoked from network); 20 Jan 2017 07:21:11 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Fri, 20 Jan 2017 07:20:33 +0000 (UTC)
Message-ID: <20170120081301.962@usenet.piggo.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] CVE request: cgiemail multiple vulnerabilities

Hello,

the Debian security team would like to request CVEs for the following
vulnerabilities in cgiemail, all discovered by the cPanel Security Team,
and made public in their TSR-2017-0001 advisory[0]:

  * SEC-212 Format string injection

    The ability to supply arbitrary format strings to cgiemail and
    cgiecho allowed code execution whenever a user was able to provide a
    cgiemail template file.
    
  * SEC-214 Open redirect

    The cgiemail and cgiecho binaries served as an open redirect due to
    their handling of the “success” and “failure” parameters.

  * SEC-215 HTTP header injection

    The handling of redirects in cgiemail and cgiecho did not protect
    against the injection of additional HTTP headers.

  * Reflected XSS vulnerability

    The "addendum" parameter was reflected without any escaping in
    success and error messages produced by cgiemail and cgiecho.

Cheers,

--Seb

[0] https://news.cpanel.com/tsr-2017-0001-full-disclosure

