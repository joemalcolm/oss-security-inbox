X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["354" "Thursday" "1" "April" "2021" "01:20:24" "+0200" "Jan Engelhardt" "jengelh@inai.de" nil "8" "Re: [oss-security] kopano-core 11.0.1: Remote DoS by memory exhaustion" nil nil nil "4" nil nil (number mark "U       jengelh@inai Apr  1    8/354   " thread-indent "\"Re: [oss-security] kopano-core 11.0.1: Remote DoS by memory exhaustion\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] kopano-core 11.0.1: Remote DoS by memory exhaustion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28497 invoked by uid 550); 1 Apr 2021 07:20:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13747 invoked from network); 31 Mar 2021 23:20:36 -0000
Date: Thu, 1 Apr 2021 01:20:24 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <r4p33o1o-q1pp-8932-qso-36op579rn850@vanv.qr>
Message-ID: <s6oo8s-46ps-5o2p-2164-31s0no13r759@vanv.qr>
References: <r4p33o1o-q1pp-8932-qso-36op579rn850@vanv.qr>
User-Agent: Alpine 2.24 (LSU 510 2020-10-10)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Subject: Re: [oss-security] kopano-core 11.0.1: Remote DoS by memory
 exhaustion

On Friday 2021-03-19 13:44, Jan Engelhardt wrote:
>Initial publication, no CVE number yet (will request).
>[…]
>The "kopano-ical" program implements a network service/trivial HTTP server.
>It imposes no length restrictions on HTTP headers, which can be exploited
>to memory-exhaust the process and have it terminate.

This was assigned CVE-2021-28994.
