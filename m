X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["817" "Tuesday" "27" "October" "2015" "09:37:12" "+0100" "Quentin Casasnovas" "quentin.casasnovas@oracle.com" "<20151027083712.GA1560@chrystal.uk.oracle.com>" "20" "Re: [oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" nil nil nil "10" "2015102708:37:12" "[oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" (number mark "        quentin.casa Oct 27   20/817   " thread-indent "\"Re: [oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c\"\n") "<20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>" ("<20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18423 invoked by uid 550); 27 Oct 2015 08:36:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18401 invoked from network); 27 Oct 2015 08:36:44 -0000
Message-ID: <20151027083712.GA1560@chrystal.uk.oracle.com>
References: <20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Cc: cve-assign@mitre.org
Date: Tue, 27 Oct 2015 09:37:12 +0100
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-6937 - Linux kernel - NULL pointer
 dereference in net/rds/connection.c
To: oss-security@lists.openwall.com

On Mon, Sep 14, 2015 at 03:34:59PM -0400, cve-assign@mitre.org wrote:
> CVE-2015-6937 has been assigned to this issue that is exploitable "on
> sockets that weren't properly bound before attempting to send a
> message":
> 
>   https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=74e98eb085889b0d2d4908f59f6e00026063014f
> 

The above fix is incomplete and still allows to trigger a NULL pointer
dereference when sending a message.  The root cause of this problem is a
race condition when checking that the socket is bound in rds_sendmsg(),
more information and a complete fix can be found here:

  https://lkml.org/lkml/2015/10/16/530

It should hit Linus' tree soon but since distributions already started
shipping the incomplete fix, I thought it would be wise to mention this
here.

Quentin
