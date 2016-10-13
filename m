X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1654" "Thursday" "13" "October" "2016" "09:33:21" "-0400" "CAI Qian" "caiqian@redhat.com" "<562698334.718761.1476365601025.JavaMail.zimbra@redhat.com>" "40" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" nil nil nil "10" "2016101313:33:21" "[oss-security] Re: cve request: systemd-machined: information exposure for docker containers" (number mark "U       caiqian@redh Oct 13   40/1654  " thread-indent "\"[oss-security] Re: cve request: systemd-machined: information exposure for docker containers\"\n") "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" ("<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5718 invoked by uid 550); 13 Oct 2016 13:33:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5700 invoked from network); 13 Oct 2016 13:33:33 -0000
Date: Thu, 13 Oct 2016 09:33:21 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <562698334.718761.1476365601025.JavaMail.zimbra@redhat.com>
In-Reply-To: <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
References: <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: systemd-machined: information exposure for docker containers
Thread-Index: IdVf/9wGFzfQWHbifGEJn+/zALFzxw==
Subject: [oss-security] Re: cve request: systemd-machined: information exposure for docker
 containers



----- Original Message -----
> From: cve-assign@mitre.org
> To: caiqian@redhat.com
> Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
> Sent: Tuesday, July 26, 2016 3:24:13 PM
> Subject: Re: cve request: systemd-machined: information exposure for docker containers
> 
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > Once docker containers register themselves to systemd-machined
> > by oci-register-machine. Any unprivileged user could run
> > machinectl to list every single containers running in the host
> > even if the containers do not belong to this user (including containers
> > belong to the root user), and access sensitive information associated
> > with any individual container including its internal IP address, OS
> > version, running processes, and file path for its rootfs.
> > 
> > $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
> > cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
> >            Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
> >           Leader: 43494 (sleep)
> >          Service: docker; class container
> >             Root:
> >             /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f759613
> >          Address: 172.17.0.2
> >                   fe80::42:acff:fe11:2
> >               OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
> >             Unit:
> >             docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254ebfd2d
> >                   43494 sleep 3000
> 
> Use CVE-2016-6349.
It turns out this CVE is against oci-register-machine NOT systemd. The fix is here,

https://github.com/projectatomic/oci-register-machine/pull/22

   CAI Qian
