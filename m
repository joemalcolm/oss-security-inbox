X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2248" "Saturday" "6" "March" "2021" "09:39:24" "+0100" "Marcus Meissner" "meissner@suse.de" nil "36" "[oss-security] Linux iscsi security fixes" nil nil nil "3" nil nil (number mark "U       meissner@sus Mar  6   36/2248  " thread-indent "\"[oss-security] Linux iscsi security fixes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux iscsi security fixes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6055 invoked by uid 550); 6 Mar 2021 08:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6025 invoked from network); 6 Mar 2021 08:39:36 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Sat, 6 Mar 2021 09:39:24 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20210306083924.GC26482@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Linux iscsi security fixes

Hi,

The iscsi developers have just published 3 security fixes to Linux Kernel mainline git.

Reported-by: Adam Nichols <adam@grimm-co.com>

(I think) the researcher had requested CVEs, the kernel devs however ommitted them from the commits.

CVE-2021-27365: iscsi_host_get_param() allows sysfs params larger than 4k

	The linux kernel iscsi initiator code allows initiator/target parameters to be negotiated than can be longer than 4k, since no limit is imposed. But when these values are displayed via sysfs, the sysfs subsystem limits that output to 4k, so the memory above that gets leaked.

	https://bugzilla.suse.com/show_bug.cgi?id=1182715
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ec98ea7070e94cc25a422ec97d1421e28d97b7ee
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f9dbdf97a5bd92b1a49cee3d591b55b11fd7a6d5

	(not sure if both directly associated, but both fix the same class of issues)

(2 fixes in 1 upstream commit, just in 2 seperate hunks:)

CVE-2021-27363: kernel-source: show_transport_handle() shows iSCSI transport handle to non-root users

	The iscsi initiator kernel subsystem makes the transport handle available via sysfs so that the iscsid daemon can access it, but it makes this visible to all users, making it possible for non-root users to attack the iscsi subsystem using this knowledge, particularly together with CVE-2021-27364, which allows non-root users to user the netlink socket to talk to the iscsi kernel subsystem.

	https://bugzilla.suse.com/show_bug.cgi?id=1182716
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=688e8128b7a92df982709a4137ea4588d16f24aa


CVE-2021-27364: kernel-source: iscsi_if_recv_msg() allows non-root users to connect and send commands
	This vulnerability allows any user to connect to the iscsi NETLINK socket and send commands to the kernel, such as "end a session", which is not good.

	Together with CVE-2021-27363, this allows non-root bad actors to end sessions arbitrarily. (See bsc#1182716).
	https://bugzilla.suse.com/show_bug.cgi?id=1182717
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=688e8128b7a92df982709a4137ea4588d16f24aa

Ciao, Marcus
