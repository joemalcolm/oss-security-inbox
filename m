X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1614" "Friday" "1" "September" "2017" "19:20:54" "+0300" "Vasily Averin" "vvs@virtuozzo.com" "<ec789926-c94c-cbd8-375d-34f34118e74e@virtuozzo.com>" "41" "[oss-security] CVE-2017-14106 kernel: net/ipv4: divide by 0 in __tcp_select_window()" "^Cc:" nil nil "9" "2017090116:20:54" "[oss-security] CVE-2017-14106 kernel: net/ipv4: divide by 0 in __tcp_select_window()" (number mark "        vvs@virtuozz Sep  1   41/1614  " thread-indent "\"[oss-security] CVE-2017-14106 kernel: net/ipv4: divide by 0 in __tcp_select_window()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3618 invoked by uid 550); 1 Sep 2017 16:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1621 invoked from network); 1 Sep 2017 16:21:07 -0000
Message-ID: <ec789926-c94c-cbd8-375d-34f34118e74e@virtuozzo.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 1 Sep 2017 19:20:54 +0300
From: Vasily Averin <vvs@virtuozzo.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-14106 kernel: net/ipv4: divide by 0 in __tcp_select_window()
To: oss-security@lists.openwall.com

[Suggested description]
The tcp_disconnect function in net/ipv4/tcp.c in the Linux kernel before 4.12 allows
local users to cause a denial of service (__tcp_select_window divide-by-zero error and system crash) 
by triggering a disconnect within a certain tcp_recvmsg code path.

[VulnerabilityType Other]
CWE-369: Divide By Zero

[Reference]
https://groups.google.com/forum/#!topic/syzkaller/e4SrsEBEziQ
https://www.mail-archive.com/netdev@vger.kernel.org/msg186255.html
https://github.com/torvalds/linux/commit/499350a5a6e7512d9ed369ed63a4244b6536f4f8
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=499350a5a6e7512d9ed369ed63a4244b6536f4f8


[Discoverer]
Andrey Konovalov  <andreyknvl@google.com>

It was fixed in linux mainline 4.12-rc3

commit 499350a5a6e7512d9ed369ed63a4244b6536f4f8
Author: Wei Wang <weiwan@google.com>
Date:   Thu May 18 11:22:33 2017 -0700

    tcp: initialize rcv_mss to TCP_MIN_MSS instead of 0
    
    When tcp_disconnect() is called, inet_csk_delack_init() sets
    icsk->icsk_ack.rcv_mss to 0.
    This could potentially cause tcp_recvmsg() => tcp_cleanup_rbuf() =>
    __tcp_select_window() call path to have division by 0 issue.
    So this patch initializes rcv_mss to TCP_MIN_MSS instead of 0.
    
    Reported-by: Andrey Konovalov  <andreyknvl@google.com>
    Signed-off-by: Wei Wang <weiwan@google.com>
    Signed-off-by: Eric Dumazet <edumazet@google.com>
    Signed-off-by: Neal Cardwell <ncardwell@google.com>
    Signed-off-by: Yuchung Cheng <ycheng@google.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

Thank you,
	Vasily Averin
