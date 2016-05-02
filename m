X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Monday" "2" "May" "2016" "19:14:58" "+0200" "Max Teufel" "max@teufelsnetz.com" "<25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>" "21" "[oss-security] CVE request: atheme: security fixes" "^Date:" nil nil "5" "2016050217:14:58" "[oss-security] CVE request: atheme: security fixes" (number mark "U       max@teufelsn May  2   21/697   " thread-indent "\"[oss-security] CVE request: atheme: security fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26621 invoked by uid 550); 2 May 2016 17:15:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26600 invoked from network); 2 May 2016 17:15:13 -0000
X-Spam-DCC: : 
Message-ID: <25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with ClamAV 0.97.3/21512/Sun May  1 18:38:16 2016
Date: Mon, 2 May 2016 19:14:58 +0200
From: Max Teufel <max@teufelsnetz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: atheme: security fixes
To: oss-security@lists.openwall.com

Hi,

Multiple security issues were found in Atheme, an IRC services package,
which will be fixed in the upcoming 7.2.7 release. Could CVEs be
assigned to the issues summarized below?

Fix:
https://github.com/atheme/atheme/commit/c597156adc60a45b5f827793cd420945f47bc03b
Description: A remote attacker could change Atheme's behavior by
registering/dropping certain accounts/nicks.
Reference: https://github.com/atheme/atheme/issues/397

Fix:
https://github.com/atheme/atheme/commit/87580d767868360d2fed503980129504da84b63e
Description: Under certain circumstances, a remote attacker could cause
denial of service due to a buffer overflow in the XMLRPC response
encoding code.

Regards,
Max Teufel

