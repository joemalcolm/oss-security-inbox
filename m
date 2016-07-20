X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["555" "Wednesday" "20" "July" "2016" "09:32:53" "+0200" "Christian Wressnegger" "c.wressnegger@tu-bs.de" "<578F2925.2090104@tu-bs.de>" "18" "[oss-security] Buffer overflow in libarchive-3.2.0" nil nil nil "7" "2016072007:32:53" "[oss-security] Buffer overflow in libarchive-3.2.0" (number mark "U       c.wressnegge Jul 20   18/555   " thread-indent "\"[oss-security] Buffer overflow in libarchive-3.2.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30419 invoked by uid 550); 20 Jul 2016 07:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23606 invoked from network); 20 Jul 2016 07:33:07 -0000
To: oss-security@lists.openwall.com
From: Christian Wressnegger <c.wressnegger@tu-bs.de>
Cc: Fabian Yamaguchi <f.yamaguchi@tu-bs.de>,
 Alwin Maier <alwin.maier@tu-bs.de>
Message-ID: <578F2925.2090104@tu-bs.de>
Date: Wed, 20 Jul 2016 09:32:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Buffer overflow in libarchive-3.2.0

Hi oss-security,
(please note, I'm not on the list.)

We've recently discovered a vulnerability in libarchive-3.2.0 when
writing iso9660 containers and reported it to the developers.

https://github.com/libarchive/libarchive/issues/711

The issue has been addressed by the following commit

https://github.com/libarchive/libarchive/commit/3014e19820ea53c15c90f9d447ca3e668a0b76c6

and included in version 3.2.1 of the library.

I was wondering whether anybody could assign a CVE for this?

Thanks and kind regards,
Christian Wressnegger (TU Braunschweig)
