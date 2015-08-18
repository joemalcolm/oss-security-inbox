X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1560" "Tuesday" "18" "August" "2015" "01:29:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150818052953.CAB306C0012@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD" nil nil nil "8" "2015081805:29:53" "[oss-security] Re: CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD" (number mark "        cve-assign@m Aug 18   39/1560  " thread-indent "\"[oss-security] Re: CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD\"\n") "<1347252297.10141328.1439869555742.JavaMail.zimbra@redhat.com>" ("<1347252297.10141328.1439869555742.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15997 invoked by uid 550); 18 Aug 2015 05:30:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15976 invoked from network); 18 Aug 2015 05:30:05 -0000
In-Reply-To: <1347252297.10141328.1439869555742.JavaMail.zimbra@redhat.com>
Message-Id: <20150818052953.CAB306C0012@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 18 Aug 2015 01:29:53 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A flaw was found in the way Linux kernel's vhost driver treated userspace
> provided log fd while processing VHOST_SET_LOG_FD ioctl command. A
> privileged local user with access to the /dev/vhost-net files.  The
> provided descriptor would never be released and consume kernel memory.
> 
> Usually this /dev/vhost-net file(s) have write access with
> root permissions but applications may access it with privileged 
> access through libvirt or other virtualisation.
> 
> A file descriptor may waste memory for each VHOST_SET_LOG_FD command issued, eventually
> wasting available system resources creating a denial of service.
> 
> https://lkml.org/lkml/2015/8/10/375
> https://bugzilla.redhat.com/show_bug.cgi?id=1251839

(not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/vhost/vhost.c)

Use CVE-2015-6252.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJV0sJcAAoJEKllVAevmvmsqscH/1AdQuzu0sM3q3ZxCHidm2cD
tCvp8ap/fN58bu6h8N2XnG7b/cCNgtYZFVhouINLFMjinPaat8rEzX8jnKyvYg3Y
XhhDyXw1c/Ly94Y1Ec3xx5gozlulkJzn/JoZIxenA+ENOh5NQnCL9CSPrmCrGcTO
0w/Tuywuj02jmz9mFiijuDsKFGybGFCQ5gE0tGA5CLyy+0YFHliXdvzBmaD5qBT8
QN4kzG356QYDMA3fPuEBarluYcSHfm4GCogsTa007TjvI+0FdnCRLcN2IKPXBjpY
bo15L2zlMwSAbStNOcuyOdOCaIOE6hlFmt88TxcJ0sFyWjSHZiUcINXsCOyIcwk=
=rAP9
-----END PGP SIGNATURE-----
