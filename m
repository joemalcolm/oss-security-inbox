X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1710" "Wednesday" "27" "June" "2018" "12:56:07" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180627105607.kfnby2kf3arj3awc@suse.de>" "73" "[oss-security] KVM L1 guest escape - CVE-2018-12904" nil nil nil "6" "2018062710:56:07" "[oss-security] KVM L1 guest escape - CVE-2018-12904" (number mark "U       meissner@sus Jun 27   73/1710  " thread-indent "\"[oss-security] KVM L1 guest escape - CVE-2018-12904\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23974 invoked by uid 550); 27 Jun 2018 10:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23884 invoked from network); 27 Jun 2018 10:56:19 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 27 Jun 2018 12:56:07 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20180627105607.kfnby2kf3arj3awc@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: [oss-security] KVM L1 guest escape - CVE-2018-12904

Hi,

KVM in Linux Kernel between 4.12 and 4.18rc1 has a guest escape allowing
privilege escalation, found by Felix Wilhelm of Google Project Zero.

mitre entry:

[Suggested description]
In
arch/x86/kvm/vmx.c in
the Linux kernel before 4.17.2, when nested virtualization is used,
local attackers could cause L1 KVM guests to VMEXIT, potentially
allowing privilege escalations and denial of service attacks due to
lack of checking of CPL.

------------------------------------------

[Vulnerability Type]
Incorrect Access Control

------------------------------------------

[Vendor of Product]
Linux

------------------------------------------

[Affected Product Code Base]
Kernel - before 4.18.rc1

------------------------------------------

[Affected Component]
KVM implementation in the Linux Kernel

------------------------------------------

[Attack Type]
Local

------------------------------------------

[Impact Denial of Service]
true

------------------------------------------

[Impact Escalation of Privileges]
true

------------------------------------------

[Attack Vectors]
local attacker able to execute code

------------------------------------------

[Reference]
https://bugs.chromium.org/p/project-zero/issues/detail?id=1589
https://github.com/torvalds/linux/commit/727ba748e110b4de50d142edca9d6a9b7e6111d8
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=727ba748e110b4de50d142edca9d6a9b7e6111d8
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.17.2

------------------------------------------

[Has vendor confirmed or acknowledged the vulnerability?]
true

------------------------------------------

[Discoverer]
Felix Wilhelm of Google Project Zero

