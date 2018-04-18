X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Wednesday" "18" "April" "2018" "08:24:10" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<2086549779.1418796.1524054250024.JavaMail.zimbra@redhat.com>" "23" "[oss-security]   CVE-2018-1088 glusterfs: Privilege escalation via gluster_shared_storage when snapshot scheduling is enabled" nil nil nil "4" "2018041812:24:10" "[oss-security] CVE-2018-1088 glusterfs: Privilege escalation via gluster_shared_storage when snapshot scheduling is enabled" (number mark "U       siddharth@re Apr 18   23/918   " thread-indent "\"[oss-security]   CVE-2018-1088 glusterfs: Privilege escalation via gluster_shared_storage when snapshot scheduling is enabled\"\n") "<622967152.1418641.1524054199846.JavaMail.zimbra@redhat.com>" ("<622967152.1418641.1524054199846.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7986 invoked by uid 550); 18 Apr 2018 12:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5646 invoked from network); 18 Apr 2018 12:24:22 -0000
Date: Wed, 18 Apr 2018 08:24:10 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <2086549779.1418796.1524054250024.JavaMail.zimbra@redhat.com>
In-Reply-To: <622967152.1418641.1524054199846.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.118.5, 10.4.195.19]
Thread-Topic: CVE-2018-1088 glusterfs: Privilege escalation via gluster_shared_storage when snapshot scheduling is enabled
Thread-Index: z75RfKjKTg0lKXLRFmgjvqrDqEBhmw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 18 Apr 2018 12:24:10 +0000 (UTC)
Subject: [oss-security]   CVE-2018-1088 glusterfs: Privilege escalation via
 gluster_shared_storage when snapshot scheduling is enabled

Hi,

A flaw was found in glusterfs which can lead to privilege escalation on 
gluster server nodes.

This flaw is based on symlink attack. Any glusterfs unauthenticated client 
having access to gluster nodes can mount gluster_shared_storage volume which 
contains file symlink to /etc/cron.d which is owned by root. After mounting
this shared volume client can schedule malicious cronjob which would run as 
root. This would lead to privilege escalation. Symlink is created when gluster
snapshot scheduling is enabled. This requires gluster administrator to run 
command "snap_scheduler.py init", this is shipped with glusterfs-server 
package.

This flaw was discovered by John Strunk (Red Hat)


Respectfully,
-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A      
Fingerprint  :  6F04 C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A


