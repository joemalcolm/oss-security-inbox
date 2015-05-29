X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["768" "Friday" "29" "May" "2015" "22:05:26" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1505292156260.17180@wniryva>" "23" "[oss-security] CVE request Linux kernel: ns: user namespaces panic" nil nil nil "5" "2015052916:35:26" "[oss-security] CVE request Linux kernel: ns: user namespaces panic" (number mark "        ppandit@redh May 29   23/768   " thread-indent "\"[oss-security] CVE request Linux kernel: ns: user namespaces panic\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28649 invoked by uid 550); 29 May 2015 16:35:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28628 invoked from network); 29 May 2015 16:35:44 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.11.1505292156260.17180@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
cc: drew@sandstorm.io
Date: Fri, 29 May 2015 22:05:26 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Linux kernel: ns: user namespaces panic
To: oss security list <oss-security@lists.openwall.com>

    Hello,

Linux kernel built with the user namespaces support(CONFIG_USER_NS) is 
vulnerable to a NULL pointer dereference flaw. It could occur when users in 
user namespaces do unmount mounts.

An unprivileged user could use this flaw to crash the system resulting in DoS.

Upstream fixes:
---------------
   -> https://git.kernel.org/linus/820f9f147dcce2602eefd9b575bbbd9ea14f0953
   -> https://git.kernel.org/linus/cd4a40174b71acd021877341684d8bb1dc8ea4ae

It was introduced by:
---------------------
   -> https://git.kernel.org/linus/ce07d891a0891d3c0d0c2d73d577490486b809e1

Thank you Drew Fisher for reporting this issue to Fedora Security Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
