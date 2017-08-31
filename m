X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Thursday" "31" "August" "2017" "14:06:34" "+0200" "Nicolas =?ISO-8859-1?Q?Gr=E9goire?=" "nicolas.gregoire@agarri.fr" "<1504181194.31557.160.camel@agarri.fr>" "19" "[oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35" nil nil nil "8" "2017083112:06:34" "[oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35" (number mark "U       nicolas.greg Aug 31   19/593   " thread-indent "\"[oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5335 invoked by uid 550); 31 Aug 2017 12:35:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13792 invoked from network); 31 Aug 2017 12:06:46 -0000
Message-ID: <1504181194.31557.160.camel@agarri.fr>
From: Nicolas =?ISO-8859-1?Q?Gr=E9goire?= <nicolas.gregoire@agarri.fr>
To: oss-security@lists.openwall.com
Date: Thu, 31 Aug 2017 14:06:34 +0200
Organization: Agarri
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35

Hello,

a flaw was identified in the URL parsing code of async-http-client, a
Java HTTP client used in other projects like the Play Framework
(through its WS library):
https://www.playframework.com/documentation/2.6.x/JavaWS

The bug is similar to CVE-2016-8624 affecting cURL (incorrect
processing of string "#@" in the hostname):
https://curl.haxx.se/docs/adv_20161102J.html

Version 2.0.35 of async-http-client includes a fix and is available
through Maven since Monday. Relevant GitHub issue:
https://github.com/AsyncHttpClient/async-http-client/issues/1455

Regards,
Nicolas Grégoire


