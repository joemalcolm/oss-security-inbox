X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1742" "Thursday" "19" "January" "2017" "16:50:29" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4574c9ede05943b4bed89cb18f288ac3@imshyb01.MITRE.ORG>" "44" "[oss-security] Re: CVE request Kernel: kvm: use-after-free issue while creating devices" nil nil nil "1" "2017011921:50:29" "[oss-security] Re: CVE request Kernel: kvm: use-after-free issue while creating devices" (number mark "U       cve-assign@m Jan 19   44/1742  " thread-indent "\"[oss-security] Re: CVE request Kernel: kvm: use-after-free issue while creating devices\"\n") "<alpine.LFD.2.20.1701182308090.22270@wniryva>" ("<alpine.LFD.2.20.1701182308090.22270@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7573 invoked by uid 550); 19 Jan 2017 21:50:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7553 invoked from network); 19 Jan 2017 21:50:41 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<security@ncsc.gov.uk>
In-Reply-To: <alpine.LFD.2.20.1701182308090.22270@wniryva>
Message-ID: <4574c9ede05943b4bed89cb18f288ac3@imshyb01.MITRE.ORG>
Date: Thu, 19 Jan 2017 16:50:29 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Kernel: kvm: use-after-free issue while creating devices

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support
> is vulnerable to a use-after-free flaw. It could occur while creating devices, 
> via ioctl('/dev/kvm', ...) calls.
> 
> A user/process could use this flaw to crash the host kernel resulting in DoS 
> or potentially escalate their privileges on a system.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1414506
> https://git.kernel.org/linus/a0f1d21c1ccb1da66629627a74059dd7f5ac9c61

>> KVM: use after free in kvm_ioctl_create_device()
>> 
>> We should move the ops->destroy(dev) after the list_del(&dev->vm_node)
>> so that we don't use "dev" after freeing it.
>> 
>> virt/kvm/kvm_main.c

Use CVE-2016-10150.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgTPgAAoJEHb/MwWLVhi2d54P/1HdOI1khdv+N0Xl8/6HEHsI
Fw7DGd9i1o74vbcFSaqkWLLPD1py1bo0Vc2rzYHhuLR9snJ6c+q/Zcrf5JAkCi2R
+pmTznsfb82uTSX69RlQidv6aDHE15kGWh99iKaRmSyl3zx5WynfrmBQwBziUVVi
6yBcnQc5VRC8lyaTh2iLdW/m/fjzBieQKfKTlbdTGc7hkoEWyTvSmxksmTN5cQyU
AbJjID50vjXdKpS7vxQ88LGuy/BWT74V0Nb2lIU7YCqX8nGcnfcTiM0HQM7nOQRb
uX3XrQfzE5OrbotTZmj59+lf5dpsKxeE1RJvpdA33XFgtEoYs6nRZwnBIDtJPL0v
8OMUhPLhSd3aikOPZ2WKTD/vqv1nxjpOo/mMJA5T6PlMi/7+XTYXrHlRd08e5JJc
BM1m6NuvTUoU2DV0ixicAUWRHd2MOx0i+BPubGrZeCYlACjPkI/SoJn8JqjsBvN0
EkX8am20G6RJxTGtplhjnhqGc0ZoT1XBi9fwpmEtFAD8lKI53DLPVzw0Yy2KMlOw
wwW94nMmo0KcXGPDf58aG2j+20cGkgPHaK4vKUaRC2ISsx++MYfRFFREo2wC4dyW
cAs0lb8ka9SFbiLZ6KiHVq3+uXs77HMBRPbT9wrS1z7QGapzB/5f2t46SYX2eCWD
P+hlTEh26mdh5anV0jew
=0y5u
-----END PGP SIGNATURE-----
