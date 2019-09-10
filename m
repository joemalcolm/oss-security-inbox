X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Tuesday" "10" "September" "2019" "23:16:53" "+1000" "Michael Neuling" "mikey@neuling.org" "<2b9f664b4763f745dee7efa526285eb891c99c72.camel@neuling.org>" "53" "[oss-security] CVE-2019-15031: Linux kernel: powerpc: data leak with FP/VMX  triggerable by interrupt in transaction" nil nil nil "9" "2019091013:16:53" "[oss-security] CVE-2019-15031: Linux kernel: powerpc: data leak with FP/VMX triggerable by interrupt in transaction" (number mark "U       mikey@neulin Sep 10   53/1828  " thread-indent "\"[oss-security] CVE-2019-15031: Linux kernel: powerpc: data leak with FP/VMX triggerable by interrupt in transaction\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-15031: Linux kernel: powerpc: data leak with FP/VMX triggerable by interrupt in transaction" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26130 invoked by uid 550); 10 Sep 2019 13:30:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15761 invoked from network); 10 Sep 2019 13:17:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuling.org;
	s=201811; t=1568121413;
	bh=AuX99LUqbp1Lf5Waj0ruq7cGRnU1eycOTwzoHk5YkPk=;
	h=Subject:From:To:Cc:Date:From;
	b=oUUf9Q64Li8hy7ydebbi2lLVMvsD3aRYrfl8Q4F5PTGojl/aBh202eNYsD9haEyjX
	 oKYKjO72NZoacLd8SPMjb057qAXCf3ZfjcmNPS5U0zyVF/1ZTDKyQhulDqHfi/ho2z
	 H3UgB3zbZK1gYRvDrFJ/HVYjEGpL0oS29fXO0WTBxvZAAZ+3UhVkRJxzl4Vhk21EEn
	 VgXONSN+j4pZeCd3Ia/IaFDAIbKP3SvKAb8EJ7BZS9xjjcC0r4uFvnK3XE/CUkyyXS
	 bu5YExcfGHPWBRulBgjw6KtOgzn8U89hIZGJJdxLtW+Nw1PobTSwCB1+r6+/dO1b/k
	 pvdLmCgyrlnpQ==
Message-ID: <2b9f664b4763f745dee7efa526285eb891c99c72.camel@neuling.org>
From: Michael Neuling <mikey@neuling.org>
To: oss-security <oss-security@lists.openwall.com>
Cc: Michael Ellerman <michael@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org,  linux-kernel@vger.kernel.org,
 Linuxppc-users <linuxppc-users@lists.ozlabs.org>,  Gustavo Romero
 <gromero@linux.vnet.ibm.com>
Date: Tue, 10 Sep 2019 23:16:53 +1000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2019-15031: Linux kernel: powerpc: data leak with FP/VMX 
 triggerable by interrupt in transaction

The Linux kernel for powerpc since v4.15 has a bug in it's TM handling duri=
ng
interrupts where any user can read the FP/VMX registers of a difference use=
r's
process. Users of TM + FP/VMX can also experience corruption of their FP/VMX
state.

To trigger the bug, a process starts a transaction with FP/VMX off and then
takes an interrupt. Due to the kernels incorrect handling of the interrupt,
FP/VMX is turned on but the checkpointed state is not updated. If this
transaction then rolls back, the checkpointed state may contain the state o=
f a
different process. This checkpointed state can then be read by the process =
hence
leaking data from one process to another.

The trigger for this bug is an interrupt inside a transaction where FP/VMX =
is
off, hence the process needs FP/VMX off when starting the transaction. FP/V=
MX
availability is under the control of the kernel and is transparent to the u=
ser,
hence the user has to retry the transaction many times to trigger this bug.=
 High
interrupt loads also help trigger this bug.

All 64-bit machines where TM is present are affected. This includes all POW=
ER8
variants and POWER9 VMs under KVM or LPARs under PowerVM. POWER9 bare metal
doesn't support TM and hence is not affected.

The bug was introduced in commit:
  fa7771176b439 ("powerpc: Don't enable FP/Altivec if not checkpointed")
Which was originally merged in v4.15

The upstream fix is here:
  https://git.kernel.org/torvalds/c/a8318c13e79badb92bc6640704a64cc022a6eb97

The fix can be verified by running the tm-poison from the kernel selftests.=
 This
test is in a patch here:
https://patchwork.ozlabs.org/patch/1157467/
which should eventually end up here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/too=
ls/testing/selftests/powerpc/tm/tm-poison.c

cheers
Mikey





