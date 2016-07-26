X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Tuesday" "26" "July" "2016" "09:25:05" "-0400" "CAI Qian" "caiqian@redhat.com" "<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "23" "[oss-security] cve request: systemd-machined: information exposure for docker containers" "^Cc:" nil nil "7" "2016072613:25:05" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        caiqian@redh Jul 26   23/1063  " thread-indent "\"[oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<69224713.8679401.1469538928526.JavaMail.zimbra@redhat.com>" ("<69224713.8679401.1469538928526.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15623 invoked by uid 550); 26 Jul 2016 13:25:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15605 invoked from network); 26 Jul 2016 13:25:18 -0000
Message-ID: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
In-Reply-To: <69224713.8679401.1469538928526.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: systemd-machined: information exposure for docker containers
Thread-Index: O4dkuEuoQ2A4oNiHbCxUJail3sbZ1A==
Cc: cve-assign@mitre.org
Date: Tue, 26 Jul 2016 09:25:05 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] cve request: systemd-machined: information exposure for docker
 containers
To: oss-security@lists.openwall.com

Once docker containers register themselves to systemd-machined
by oci-register-machine. Any unprivileged user could run
machinectl to list every single containers running in the host
even if the containers do not belong to this user (including containers
belong to the root user), and access sensitive information associated
with any individual container including its internal IP address, OS
version, running processes, and file path for its rootfs.

$ machinectl status cc8d10c7b9892b75843d200d54d34a3a
cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
           Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
          Leader: 43494 (sleep)
         Service: docker; class container
            Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f7=
59613
         Address: 172.17.0.2
                  fe80::42:acff:fe11:2
              OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
            Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254e=
bfd2d
                  =E2=94=94=E2=94=8043494 sleep 3000

   CAI Qian
