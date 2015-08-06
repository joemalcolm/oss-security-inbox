X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1077" "Thursday" "6" "August" "2015" "00:50:54" "-0400" "Wade Mealing" "wmealing@redhat.com" "<1756750062.4665492.1438836654512.JavaMail.zimbra@redhat.com>" "31" "[oss-security] CVE-2015-5156 : virt-io max-skb-frags heap overflow." nil nil nil "8" "2015080604:50:54" "[oss-security] CVE-2015-5156 : virt-io max-skb-frags heap overflow." (number mark "        wmealing@red Aug  6   31/1077  " thread-indent "\"[oss-security] CVE-2015-5156 : virt-io max-skb-frags heap overflow.\"\n") "<1498066502.4654756.1438828955841.JavaMail.zimbra@redhat.com>" ("<1498066502.4654756.1438828955841.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20255 invoked by uid 550); 6 Aug 2015 04:51:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20234 invoked from network); 6 Aug 2015 04:51:06 -0000
Message-ID: <1756750062.4665492.1438836654512.JavaMail.zimbra@redhat.com>
In-Reply-To: <1498066502.4654756.1438828955841.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.76]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC44 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE-2015-5156 : virt-io max-skb-frags heap overflow.
Thread-Index: nlx7t1PEtNhbn2AStCM5ovBSIBPfEQ==
Date: Thu, 6 Aug 2015 00:50:54 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5156 : virt-io max-skb-frags heap overflow.
To: oss-security@lists.openwall.com

Gday,

When a guests KVM network devices is in a bridge configuration the kernel can 
create a situation in which packets are fragmented in an unexpected fashion. 
The GRO functionality can create a situation in which multiple SKB's are 
chained together in a single packets fraglist (by design).  

The virtio module declares support for NETIF_F_FRAGLIST and assumes that there
are at most MAX_SKB_FRAGS + 2 fragments which isn't always true with a 
fraglist, when GRO is enabled on the incoming driver it can create more fragments
than expected.

A longer than expected fragment list in the socket buffer will make the call
to skb_to_sgvec overflow the sg array, leading to memory corruption, and denial
of service.

An unprivileged attacker could use this flaw to crash the system resulting in DoS.

Red Hat would like to thank Jason Wang for reporting this issue.

Upstream fixes:
---------------
  -> http://marc.info/?l=linux-netdev&m=143868216724068&w=2

Red Hat Bugzilla:
----------------
  -> https://bugzilla.redhat.com/show_bug.cgi?id=1243852

Thanks,

Wade Mealing
