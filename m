X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1798" "Tuesday" "10" "September" "2019" "23:16:48" "+1000" "Michael Neuling" "mikey@neuling.org" "<856d6efa0e9b4dd39030e7372a17e3dba2db2aef.camel@neuling.org>" "52" "[oss-security] CVE-2019-15030: Linux kernel: powerpc: data leak with FP/VMX  triggerable by unavailable exception in transaction" nil nil nil "9" "2019091013:16:48" "[oss-security] CVE-2019-15030: Linux kernel: powerpc: data leak with FP/VMX triggerable by unavailable exception in transaction" (number mark "U       mikey@neulin Sep 10   52/1798  " thread-indent "\"[oss-security] CVE-2019-15030: Linux kernel: powerpc: data leak with FP/VMX triggerable by unavailable exception in transaction\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-15030: Linux kernel: powerpc: data leak with FP/VMX triggerable by unavailable exception in transaction" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23996 invoked by uid 550); 10 Sep 2019 13:30:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15721 invoked from network); 10 Sep 2019 13:17:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuling.org;
	s=201811; t=1568121409;
	bh=8YpvriWgZotmerko0J+/vGDj0I0pWRFk35pz5gDDI3E=;
	h=Subject:From:To:Cc:Date:From;
	b=afV9jy3e43LDgZZ6cCx9zYoP1i33CBwatneHIcRpDM/dYSvl+PlNywbzT+32oG8bn
	 fEMIvS/EcUUFmz95slyme9PkgMYgwoPxm0MXKvlhgOpBJTLx8yJ+fD9kBATXOj0sLi
	 nG6HuBAKzF/cRbGWpr+PY+ZZjgLNPMuG903ctQ4DgFMuPgXxDt1fq1bFFHmpCcU6RY
	 kg0D3PZkrvxrSW/O7PyFz9OOIHTq218qDKrHhGyJxJFRkeGORToHoddoe+bLFs1/eP
	 MVgPofN8mI0/qQ2RmkZQupFHsoohFs5gTiHM6Y7yW3C1MGAvBppA731Z70wSer0/Xn
	 4tyf33YQYzK8w==
Message-ID: <856d6efa0e9b4dd39030e7372a17e3dba2db2aef.camel@neuling.org>
From: Michael Neuling <mikey@neuling.org>
To: oss-security <oss-security@lists.openwall.com>
Cc: Michael Ellerman <michael@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org,  linux-kernel@vger.kernel.org,
 Linuxppc-users <linuxppc-users@lists.ozlabs.org>,  Gustavo Romero
 <gromero@linux.vnet.ibm.com>
Date: Tue, 10 Sep 2019 23:16:48 +1000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2019-15030: Linux kernel: powerpc: data leak with FP/VMX 
 triggerable by unavailable exception in transaction

The Linux kernel for powerpc since v4.12 has a bug in it's TM handling wher=
e any
user can read the FP/VMX registers of a difference user's process. Users of=
 TM +
FP/VMX can also experience corruption of their FP/VMX state.

To trigger the bug, a process starts a transaction and reads a FP/VMX regis=
ter.
This transaction can then fail which causes a rollback to the checkpointed
state. Due to the kernel taking an FP/VMX unavaliable exception inside a
transaction and the kernel's incorrect handling of this, the checkpointed s=
tate
can be set to the FP/VMX registers of another process. This checkpointed st=
ate
can then be read by the process hence leaking data from one process to anot=
her.

The trigger for this bug is an FP/VMX unavailable exception inside a
transaction, hence the process needs FP/VMX off when starting the transacti=
on.
FP/VMX availability is under the control of the kernel and is transparent t=
o the
user, hence the user has to retry the transaction many times to trigger this
bug.=20

All 64-bit machines where TM is present are affected. This includes all POW=
ER8
variants and POWER9 VMs under KVM or LPARs under PowerVM. POWER9 bare metal
doesn't support TM and hence is not affected.

The bug was introduced in commit:
  f48e91e87e67 ("powerpc/tm: Fix FP and VMX register corruption")
Which was originally merged in v4.12

The upstream fix is here:
  https://git.kernel.org/torvalds/c/8205d5d98ef7f155de211f5e2eb6ca03d95a5a60

The fix can be verified by running the tm-poison from the kernel selftests.=
 This
test is in a patch here:
https://patchwork.ozlabs.org/patch/1157467/
which should eventually end up here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/too=
ls/testing/selftests/powerpc/tm/tm-poison.c

cheers
Mikey





