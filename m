X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1232" "Friday" "5" "June" "2015" "17:34:23" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1506051728280.15797@wniryva>" "33" "Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060512:04:23" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        ppandit@redh Jun  5   33/1232  " thread-indent "\"Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>" ("<20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31893 invoked by uid 550); 5 Jun 2015 12:04:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31871 invoked from network); 5 Jun 2015 12:04:44 -0000
X-X-Sender: pjp@javelin
In-Reply-To: <20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>
Message-ID: <alpine.LFD.2.11.1506051728280.15797@wniryva>
References: <20150604135744.3617A6C0050@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: cve-assign@mitre.org, "Eric W. Biederman" <ebiederm@xmission.com>
Date: Fri, 5 Jun 2015 17:34:23 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Linux kernel: ns: user namespaces
 panic
To: oss security list <oss-security@lists.openwall.com>

+-- On Thu, 4 Jun 2015, cve-assign@mitre.org wrote --+
| >> From: ebiederm@xmission.com (Eric W. Biederman)
| >> 
| >> The core issue is that a unprivileged user could call umount(MNT_DETACH)
| >> and in the right circumstances gain access to every file on essentially
| >> any filesystem in the mount namespace.
| >> 
| >> e0c9c0afd2fc958ffa34b697972721d81df8a56f mnt: Update detach_mounts to leave mounts connected
| >> is the real bug fix that fixes a fairly scary issue.
| >>
| >> So I believe cd4a40174b71acd021877341684d8bb1dc8ea4ae prevents a
| >> difficult to trigger crash if you have
| >> e0c9c0afd2fc958ffa34b697972721d81df8a56f applied.
| >>
|
| Use CVE-2015-4176 for the issue fixed in
| e0c9c0afd2fc958ffa34b697972721d81df8a56f. This code change is present
| in 4.0.2.
| 
| Use CVE-2015-4177 for the issue fixed in
| cd4a40174b71acd021877341684d8bb1dc8ea4ae. This code change is not
| present in 4.0.2.

  Ie IIUC, existence of CVE-2015-4177 depends on CVE-2015-4176 being fixed, 
which in turn depends on commit

  -> https://git.kernel.org/linus/ce07d891a0891d3c0d0c2d73d577490486b809e1

being present. (...Eric?)

--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
