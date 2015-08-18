X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["821" "Monday" "17" "August" "2015" "23:45:55" "-0400" "Wade Mealing" "wmealing@redhat.com" "<1347252297.10141328.1439869555742.JavaMail.zimbra@redhat.com>" "26" "[oss-security] CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD" nil nil nil "8" "2015081803:45:55" "[oss-security] CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD" (number mark "        wmealing@red Aug 17   26/821   " thread-indent "\"[oss-security] CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD\"\n") "<421643713.5763678.1439194103335.JavaMail.zimbra@redhat.com>" ("<421643713.5763678.1439194103335.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9233 invoked by uid 550); 18 Aug 2015 03:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8175 invoked from network); 18 Aug 2015 03:46:08 -0000
Message-ID: <1347252297.10141328.1439869555742.JavaMail.zimbra@redhat.com>
In-Reply-To: <421643713.5763678.1439194103335.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.48.179]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC44 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD
Thread-Index: iStE0gDXnKRdCYWQSZEcXFyEsvXReA==
Cc: cve-assign@mitre.org
Date: Mon, 17 Aug 2015 23:45:55 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: linux kernel:fd leak in vhost ioctl VHOST_SET_LOG_FD
To: OSS Security List <oss-security@lists.openwall.com>

Gday,

I'd like to request a CVE for the following issue:

A flaw was found in the way Linux kernel's vhost driver treated userspace
provided log fd while processing VHOST_SET_LOG_FD ioctl command. A
privileged local user with access to the /dev/vhost-net files.  The
provided descriptor would never be released and consume kernel memory.

Usually this /dev/vhost-net file(s) have write access with
root permissions but applications may access it with privileged 
access through libvirt or other virtualisation.

A file descriptor may waste memory for each VHOST_SET_LOG_FD command issued, eventually
wasting available system resources creating a denial of service.

Thanks,

Wade Mealing
Red Hat Product Security

Patch:
https://lkml.org/lkml/2015/8/10/375

Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1251839
