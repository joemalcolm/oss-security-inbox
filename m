X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1872" "Tuesday" "27" "February" "2018" "06:55:29" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<703439990.6459977.1519732529278.JavaMail.zimbra@redhat.com>" "62" "[oss-security] CVE-2018-7492: Linux kernel: Null pointer dereference in net/rds/rdma.c:__rds_rdma_map()" nil nil nil "2" "2018022711:55:29" "[oss-security] CVE-2018-7492: Linux kernel: Null pointer dereference in net/rds/rdma.c:__rds_rdma_map()" (number mark "U       vdronov@redh Feb 27   62/1872  " thread-indent "\"[oss-security] CVE-2018-7492: Linux kernel: Null pointer dereference in net/rds/rdma.c:__rds_rdma_map()\"\n") "<20180226200529.51BA680EC84@smtprhmv1.mitre.org>" ("<20180226200529.51BA680EC84@smtprhmv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7307 invoked by uid 550); 27 Feb 2018 11:55:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7287 invoked from network); 27 Feb 2018 11:55:41 -0000
Date: Tue, 27 Feb 2018 06:55:29 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <703439990.6459977.1519732529278.JavaMail.zimbra@redhat.com>
In-Reply-To: <20180226200529.51BA680EC84@smtprhmv1.mitre.org>
References: <20180226200529.51BA680EC84@smtprhmv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.10, 10.4.195.21]
Thread-Topic: CVE-2018-7492: Linux kernel: Null pointer dereference in net/rds/rdma.c:__rds_rdma_map()
Thread-Index: B603tduX9fiqar2rv3rzxy7eJS0Fpg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 27 Feb 2018 11:55:29 +0000 (UTC)
Subject: [oss-security] CVE-2018-7492: Linux kernel: Null pointer dereference in
 net/rds/rdma.c:__rds_rdma_map()

Hello,

> > [Suggested description]
> > A NULL pointer dereference was found in the net/rds/rdma.c __rds_rdma_map()
> > function in the Linux kernel before 4.14.7 allowing local attackers to cause
> > a system panic and a denial-of-service, related to RDS_GET_MR and
> > RDS_GET_MR_FOR_DEST.
> > 
> > ------------------------------------------
> > 
> > [VulnerabilityType Other]
> > CWE-476 NULL Pointer Dereference
> > 
> > ------------------------------------------
> > 
> > [Vendor of Product]
> > kernel.org: Linux kernel
> > 
> > ------------------------------------------
> > 
> > [Affected Product Code Base]
> > Linux kernel - fixed since v4.15-rc3
> > 
> > ------------------------------------------
> > 
> > [Affected Component]
> > 'net/rds/rdma.c' file, __rds_rdma_map() function
> > 
> > ------------------------------------------
> > 
> > [Attack Type]
> > Local
> > 
> > ------------------------------------------
> > 
> > [Impact Denial of Service]
> > true
> > 
> > ------------------------------------------
> > 
> > [Attack Vectors]
> > to exploit vulnerability a certain setsockopt() call should be made for an AF_RDS socket.
> > 
> > ------------------------------------------
> > 
> > [Reference]
> > https://patchwork.kernel.org/patch/10096441/
> > https://xorl.wordpress.com/2017/12/18/linux-kernel-rdma-null-pointer-dereference/
> > https://bugzilla.redhat.com/show_bug.cgi?id=1527393
> > https://github.com/torvalds/linux/commit/f3069c6d33f6ae63a1668737bc78aaaa51bff7ca
> > http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f3069c6d33f6ae63a1668737bc78aaaa51bff7ca
> > https://www.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.7
> > 
> > ------------------------------------------
> > 
> > [Discoverer]
> > syzkaller719569
> 
> Use CVE-2018-7492.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
