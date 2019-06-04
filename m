X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1006" "Tuesday" "4" "June" "2019" "16:37:21" "+0200" "Solar Designer" "solar@openwall.com" "<20190604143721.GA18436@openwall.com>" "27" "Re: [oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" "^Cc:" nil nil "6" "2019060414:37:21" "[oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" (number mark "        solar@openwa Jun  4   27/1006  " thread-indent "\"Re: [oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow\"\n") "<000001d51861$e546e2a0$afd4a7e0$@com.cn>" ("<000001d51861$e546e2a0$afd4a7e0$@com.cn>") nil nil nil nil nil nil nil "Re: [oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32320 invoked by uid 550); 4 Jun 2019 14:38:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31796 invoked from network); 4 Jun 2019 14:37:26 -0000
Message-ID: <20190604143721.GA18436@openwall.com>
References: <000001d51861$e546e2a0$afd4a7e0$@com.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <000001d51861$e546e2a0$afd4a7e0$@com.cn>
User-Agent: Mutt/1.4.2.3i
Cc: huangwen <huangwen@venusgroup.com.cn>
Date: Tue, 4 Jun 2019 16:37:21 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow
To: oss-security@lists.openwall.com

On Sat, Jun 01, 2019 at 06:07:57PM +0800, huangwen wrote:
> There is heap-based buffer overflow in marvell wifi chip driver in Linux
> kernel,allows local users to cause a denial of service(system crash) or
> possibly execute arbitrary code.

> The problem is inside mwifiex_uap_parse_tail_ies function in
> drivers/net/wireless/marvell/mwifiex/ie.c. 
> 
> There are two memcpy in this function.The memcpy in while loop will be
> called when element_id is not equal to WLAN_EID_SSID,WLAN_EID_SUPP_RATES
> etc.
> 
> The copy dst buffer gen_ie->ie_buffer is a array with size
> IEEE_MAX_IE_SIZE(256), the src buffer is element in cfg80211_beacon_data
> from user space. 
> 
> There is not len check for two memcpy in this function.
> 
> If special elements are constructed (E.g.
> WLAN_EID_SUPPORTED_OPERATING_CLASSES) to make memcpy called repeatedly, will
> finally trigger the overflow.

This is now CVE-2019-10126.

> https://lore.kernel.org/linux-wireless/20190531131841.7552-1-tiwai@suse.de

Alexander
