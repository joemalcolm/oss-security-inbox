X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1918" "Monday" "9" "May" "2016" "21:48:59" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1462823339.4268.54.camel@opteya.com>" "63" "Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" "^Cc:" nil nil "5" "2016050919:48:59" "[oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" (number mark "        ydroneaud@op May  9   63/1918  " thread-indent "\"Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'\"\n") "<20160507042232.GA5286@eldamar.local>" ("<20160507042232.GA5286@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11763 invoked by uid 550); 9 May 2016 19:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11745 invoked from network); 9 May 2016 19:49:13 -0000
Message-ID: <1462823339.4268.54.camel@opteya.com>
In-Reply-To: <20160507042232.GA5286@eldamar.local>
References: <20160507042232.GA5286@eldamar.local>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a01:e35:2e9f:6ac0:ec14:7a2b:dba0:464c
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: Doug Ledford <dledford@redhat.com>, Red Hat Security Response Team
	 <secalert@redhat.com>, Ben Hutchings <benh@debian.org>, 
	linux-rdma@vger.kernel.org
Date: Mon, 09 May 2016 21:48:59 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux: IB/security: Restrict use of
 the write() interface'
To: oss-security@lists.openwall.com

Hi,

Le samedi 07 mai 2016 à 06:22 +0200, Salvatore Bonaccorso a écrit :
> 
> Jann Horn reported an issue in the infiniband stack. It has been
> fixed
> in v4.6-rc6 with commit e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3:
> 
> https://git.kernel.org/linus/e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3
> 
> > 
> > IB/security: Restrict use of the write() interface
> > The drivers/infiniband stack uses write() as a replacement for
> > bi-directional ioctl().  This is not safe. There are ways to
> > trigger write calls that result in the return structure that
> > is normally written to user space being shunted off to user
> > specified kernel memory instead.
> > 
> > For the immediate repair, detect and deny suspicious accesses to
> > the write API.
> > 
> > For long term, update the user space libraries and the kernel API
> > to something that doesn't present the same security vulnerabilities
> > (likely a structured ioctl() interface).
> > 
> > The impacted uAPI interfaces are generally only available if
> > hardware from drivers/infiniband is installed in the system.

As a workaround, I would suggest that systems which do not require
(userspace) RDMA/Infiniband to blacklist/remove the following modules:

  rdma_ucm
  ib_uverbs
  ib_ucm
  ib_umad

For example, adds the following in /etc/modprobe.d/blacklist.conf

  blacklist rdma_ucm
  blacklist ib_uverbs
  blacklist ib_ucm
  blacklist ib_umad

Those building their own kernel might want to disable, if not already,

  CONFIG_INFINIBAND_USER_ACCESS, 
  CONFIG_INFINIBAND_USER_MAD,
  CONFIG_INFINIBAND_ADDR_TRANS

(Unfortunately the last one will also disable those features:
  iSCSI Extensions for RDMA (iSER)
  iSCSI Extensions for RDMA (iSER) target support
  RDS over Infiniband and iWARP
  9P RDMA Transport (Experimental)
  RPC-over-RDMA transport
    (which actually disable NFSoRDMA))

Regards.

-- 
Yann Droneaud
OPTEYA

