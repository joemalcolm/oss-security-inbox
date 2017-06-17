X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Sunday" "18" "June" "2017" "01:20:31" "+0200" "Sebastian Pipping" "sebastian@pipping.org" "<e499fcaf-3255-5db3-7b3e-43261bbf8a9d@pipping.org>" "28" "[oss-security] Expat 2.2.1 security fixes" "^Date:" nil nil "6" "2017061723:20:31" "[oss-security] Expat 2.2.1 security fixes" (number mark "        sebastian@pi Jun 18   28/905   " thread-indent "\"[oss-security] Expat 2.2.1 security fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24417 invoked by uid 550); 17 Jun 2017 23:20:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24382 invoked from network); 17 Jun 2017 23:20:43 -0000
Message-ID: <e499fcaf-3255-5db3-7b3e-43261bbf8a9d@pipping.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Df-Sender: aGFydHdvcmtAYmluZXJhLmRl
Date: Sun, 18 Jun 2017 01:20:31 +0200
From: Sebastian Pipping <sebastian@pipping.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Expat 2.2.1 security fixes
To: oss-security@lists.openwall.com

Hi!


Expat 2.2.1 has been released.  The change log has more details [2] than
this mail, including commit SHA1s.
For a quick overview of the security fixes and CVEs, we have:

   CVE-2017-9233  External entity infinite loop DoS [1]
  (CVE-2016-9063) Integer overflow (re-fix)
             n/a  More integer overflow fixes
  (CVE-2016-0718) Fix regression bugs from 2.2.0's fix to CVE-2016-0718
  (CVE-2016-5300) Use os-specific entropy sources like getrandom
             n/a  No longer leak parser pointer information
             n/a  Prevent use of uninitialised variables
             n/a  Add missing API parameter validation (NULL, len<0)
  (CVE-2012-0876) Counter hash flooding with SipHash

If you control copies of Expat somewhere, please get them updated.

Best



Sebastian


[1] https://libexpat.github.io/doc/cve-2017-9233/
[2] https://github.com/libexpat/libexpat/blob/master/expat/Changes
