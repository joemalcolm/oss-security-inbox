X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1343" "Wednesday" "11" "May" "2016" "20:12:32" "-0400" "ira.weiny" "ira.weiny@intel.com" "<20160512001231.GB27943@phlsvsds.ph.intel.com>" "50" "Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" nil nil nil "5" "2016051200:12:32" "[oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" (number mark "U       ira.weiny@in May 11   50/1343  " thread-indent "\"Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'\"\n") "<1462823339.4268.54.camel@opteya.com>" ("<20160507042232.GA5286@eldamar.local>" "<1462823339.4268.54.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30490 invoked by uid 550); 12 May 2016 11:23:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28052 invoked from network); 12 May 2016 00:12:47 -0000
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,609,1455004800"; 
   d="scan'208";a="964049981"
X-Authentication-Warning: phlsvsds.ph.intel.com: iweiny set sender to ira.weiny@intel.com using -f
Date: Wed, 11 May 2016 20:12:32 -0400
From: "ira.weiny" <ira.weiny@intel.com>
To: Yann Droneaud <ydroneaud@opteya.com>
Cc: oss-security@lists.openwall.com, Doug Ledford <dledford@redhat.com>,
        Red Hat Security Response Team <secalert@redhat.com>,
        Ben Hutchings <benh@debian.org>, linux-rdma@vger.kernel.org
Message-ID: <20160512001231.GB27943@phlsvsds.ph.intel.com>
References: <20160507042232.GA5286@eldamar.local> <1462823339.4268.54.camel@opteya.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1462823339.4268.54.camel@opteya.com>
User-Agent: Mutt/1.4.2.2i
Subject: Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'

On Mon, May 09, 2016 at 09:48:59PM +0200, Yann Droneaud wrote:
> Hi,
> 
> 
> As a workaround, I would suggest that systems which do not require
> (userspace) RDMA/Infiniband to blacklist/remove the following modules:
> 
>   rdma_ucm
>   ib_uverbs
>   ib_ucm
>   ib_umad

NOTE: AFAICT ib_umad is not vulnerable as it uses correct write/read semantics.
However, if you are disabling the other modules you probably have no use for
ib_umad either.

Ira

> 
> For example, adds the following in /etc/modprobe.d/blacklist.conf
> 
>   blacklist rdma_ucm
>   blacklist ib_uverbs
>   blacklist ib_ucm
>   blacklist ib_umad
> 
> Those building their own kernel might want to disable, if not already,
> 
>   CONFIG_INFINIBAND_USER_ACCESS, 
>   CONFIG_INFINIBAND_USER_MAD,
>   CONFIG_INFINIBAND_ADDR_TRANS
> 
> (Unfortunately the last one will also disable those features:
>   iSCSI Extensions for RDMA (iSER)
>   iSCSI Extensions for RDMA (iSER) target support
>   RDS over Infiniband and iWARP
>   9P RDMA Transport (Experimental)
>   RPC-over-RDMA transport
>     (which actually disable NFSoRDMA))
> 
> Regards.
> 
> -- 
> Yann Droneaud
> OPTEYA
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-rdma" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
