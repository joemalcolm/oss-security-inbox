X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1411" "Thursday" "4" "June" "2015" "13:25:19" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1506041320520.16237@wniryva>" "34" "Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060407:55:19" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        ppandit@redh Jun  4   34/1411  " thread-indent "\"Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<874mmo54ll.fsf@x220.int.ebiederm.org>" ("<20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org>" "<alpine.LFD.2.11.1506041216340.16237@wniryva>" "<874mmo54ll.fsf@x220.int.ebiederm.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25712 invoked by uid 550); 4 Jun 2015 07:55:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25694 invoked from network); 4 Jun 2015 07:55:37 -0000
X-X-Sender: pjp@javelin
In-Reply-To: <874mmo54ll.fsf@x220.int.ebiederm.org>
Message-ID: <alpine.LFD.2.11.1506041320520.16237@wniryva>
References: <20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org> <alpine.LFD.2.11.1506041216340.16237@wniryva> <874mmo54ll.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
cc: cve-assign@mitre.org, "Eric W. Biederman" <ebiederm@xmission.com>
Date: Thu, 4 Jun 2015 13:25:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces
 panic
To: oss security list <oss-security@lists.openwall.com>

   Hello Eric,

+-- On Thu, 4 Jun 2015, Eric W. Biederman wrote --+
| The core issue is that a unprivileged user could call umount(MNT_DETACH)
| and in the right circumstances gain access to every file on essentially
| any filesystem in the mount namespace.
... 
| The bug fix modifies umount(MNT_DETACH) to keeps mounts covered
| even after the actual umount.  That changes makes it unsafe for
| copy_tree to run on an unmounted mount tree because one of it's
| assumptions is violated.  Which assumption I do not remember at this
| late hour.  But I think it was something bad enough to cause a crash.
| I can not recall all of the details when reading through the code
| at this late hour.
| 
| Previously copy_tree on an unmounted tree would just return a single
| struct mount as all of the connections would have been cleanly removed.
| 
| So I believe cd4a40174b71acd021877341684d8bb1dc8ea4ae prevents a
| difficult to trigger crash if you have
| e0c9c0afd2fc958ffa34b697972721d81df8a56f applied.
| 
| e0c9c0afd2fc958ffa34b697972721d81df8a56f mnt: Update detach_mounts to leave mounts connected
| is the real bug fix that fixes a fairly scary issue.
| 
| I hope that helps.

  Yes, it does. Thank you so much for throwing light on the real issue and 
its corresponding fix. I appreciate it.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
