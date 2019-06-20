X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1719" "Thursday" "20" "June" "2019" "12:56:22" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20190620175621.GB2646@lindsey>" "40" "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" "^Cc:" nil nil "6" "2019062017:56:22" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" (number mark "        tyhicks@cano Jun 20   40/1719  " thread-indent "\"Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues\"\n") "<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>" ("<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28253 invoked by uid 550); 20 Jun 2019 17:56:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28232 invoked from network); 20 Jun 2019 17:56:37 -0000
Message-ID: <20190620175621.GB2646@lindsey>
References: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Security Report <security-report@saasmail.netflix.com>,
	security-report@netflix.com,
	Arturo Borrero =?iso-8859-1?Q?Gonz=E1lez?= <arturo@netfilter.org>
Date: Thu, 20 Jun 2019 12:56:22 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based
 remote denial of service issues
To: oss-security@lists.openwall.com

On 2019-06-17 10:33:38, Security Report wrote:
> #1: CVE-2019-11477: SACK Panic (Linux >= 2.6.29)
> 
> Description: A sequence of SACKs may be crafted such that one can trigger 
> an integer overflow, leading to a kernel panic.
> 
> Fix: Apply the attached patch (“PATCH_net_1_4.patch”). Additionally, 
> versions of the Linux kernel up to, and including, 4.14 require a second 
> patch (“PATCH_net_1a.patch”).
> 
> Workaround #1: Block connections with a low MSS using one of the attached 
> filters. (The values in the filters are examples. You can apply a higher or 
> lower limit, as appropriate for your environment.) Note that these filters 
> may break legitimate connections which rely on a low MSS. Also, note that 
> this mitigation is only effective if TCP probing is disabled (that is, the 
> net.ipv4.tcp_mtu_probing sysctl is set to 0, which appears to be the 
> default value for that sysctl).

Netflix graciously provided this example iptables rule as a workaround:

 # iptables -A INPUT -p tcp -m tcpmss --mss 1:500 -j DROP

I have received a few questions about an equivalent nftables rule. I
didn't have one but Arturo Borrero González has provided this equivalent
rule:

 # nft add rule inet filter input tcp flags syn tcp option maxseg size 1-500 drop

I did a simple test of sending SYN packets with MSS values of 500 and
lower to a server that had the nftables rule loaded. The packets were
dropped by the server with no SYN-ACK response. Bumping the MSS value up
to 501 resulted in the SYN packet not being dropped and a proper SYN-ACK
response.

Consider adding the nftables rule as an alternative in any written
advisories on SACK Panic.

Thanks for the nftables rule, Arturo!

Tyler
