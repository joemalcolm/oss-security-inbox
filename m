X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1336" "Tuesday" "15" "March" "2016" "16:09:07" "+0300" "Vasily Averin" "vvs@virtuozzo.com" "<56E80973.80606@virtuozzo.com>" "30" "[oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy" "^Cc:" nil nil "3" "2016031513:09:07" "[oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy" (number mark "        vvs@virtuozz Mar 15   30/1336  " thread-indent "\"[oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3196 invoked by uid 550); 15 Mar 2016 13:13:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32392 invoked from network); 15 Mar 2016 13:09:42 -0000
Message-ID: <56E80973.80606@virtuozzo.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: Solar Designer <solar@openwall.com>,
        Cyrill Gorcunov <gorcunov@virtuozzo.com>,
        "David S. Miller" <davem@davemloft.net>,
        Konstantin Khorenko <khorenko@virtuozzo.com>
Date: Tue, 15 Mar 2016 16:09:07 +0300
From: Vasily Averin <vvs@virtuozzo.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev
 destroy
To: oss-security@lists.openwall.com

Destroy of network interface with huge number of ipv4 addresses
keeps rtnl_lock for a very long time (up to hour).
It blocks many network related operations,
including for example creation of new incoming ssh connections.

The problem is especially important for containers,
container owner have enough permission to enable this trigger
and then can block network access on whole host node.

The problem is fixed in net-next git by patch fbd40ea0180a2d328c5adc61414dc8bab9335ce2
(http://git.kernel.org/cgit/linux/kernel/git/davem/net-next.git/patch/?id=fbd40ea0180a2d328c5adc61414dc8bab9335ce2)

From: David Miller <davem@davemloft.net>
ipv4: Don't do expensive useless work during inetdev destroy.

When an inetdev is destroyed, every address assigned to the interface
is removed.  And in this scenerio we do two pointless things which can
be very expensive if the number of assigned interfaces is large:

1) Address promotion.  We are deleting all addresses, so there is no
   point in doing this.

2) A full nf conntrack table purge for every address.  We only need to
   do this once, as is already caught by the existing
   masq_dev_notifier so masq_inet_event() can skip this.

Reported-by: Solar Designer <solar@openwall.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Tested-by: Cyrill Gorcunov <gorcunov@openvz.org>

