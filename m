Received: (qmail 28119 invoked by uid 550); 8 Aug 2023 17:00:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28074 invoked from network); 8 Aug 2023 17:00:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=en5sf8iDi6wMkkzej5Amgs+r5p4GVNXHBgZi2MSJb+Y=; b=MPKkG5jYUN1tO1svplxiF31itS
	EfRa7qABXTT6mdyJmfkzEiCeGh5QCYMrshVCbcsWvIX4jERLUo2cWdKnhrclAI/UVwb1RBiK7fOtQ
	ffUNRwKar3WoVhwdaOwzqdlBce6uDGTNfeRu1D1JuxEEmTV07FG3UNJGgqPEUEEMhfDo=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1qTQ4I-0002Ny-AH@xenbits.xenproject.org>
Date: Tue, 08 Aug 2023 17:00:26 +0000
Subject: [oss-security] Xen Security Advisory 435 v1 (CVE-2022-40982) - x86/Intel: Gather
 Data Sampling

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2022-40982 / XSA-435

                    x86/Intel: Gather Data Sampling

ISSUE DESCRIPTION
=================

A researcher has discovered Gather Data Sampling, a transient execution
side-channel whereby the AVX GATHER instructions can forward the content
of stale vector registers to dependent instructions.

The physical register file is a structure competitively shared between
sibling threads.  Therefore an attacker can infer data from the sibling
thread, or from a more privileged context.

For more details, see:
  https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/technical-documentation/gather-data-sampling.html

IMPACT
======

An attacker can infer data from different contexts on the same core.
Examples of such data includes key material, cipher and plaintext from
the AES-NI instructions, or the contents of REP-MOVS instructions,
commonly used to implement memcpy().

VULNERABLE SYSTEMS
==================

Systems running all versions of Xen are affected.

See the Intel documentation for a list of affected processors.

CPUs from other hardware vendors are not believed to be affected.

MITIGATION
==========

This issue can be mitigated by disabling AVX, either by booting Xen with
`cpuid=no-avx` on the command line, or by specifying `cpuid="host:avx=0"`
in the vm.cfg file of all untrusted VMs.  However, this may come with a
significant performance impact on the system and is not recommended for
anyone able to deploy the microcode and patch described below.

RESOLUTION
==========

Intel are producing microcode updates to address the issue for most
affected CPUs.  Consult your dom0 OS vendor.  This microcode is
effective when late-loaded, which can be performed on a live system
without reboot.

Without microcode, disabling AVX is the only mitigation.  This is
implemented by the patches to Xen on hardware believed to be vulnerable.

In addition, to indicate safety to guest kernels, Xen needs to
synthesise new bits for guests to see, which depends on MSR_ARCH_CAPS
being visible to guests.  The work to support MSR_ARCH_CAPS is extensive
and has been going on in public in earnest since March.  The backports
to security trees are more-extensive still.

Therefore, we have decided to produce new releases on all stable trees.
Please find fixes in the respective branches under the following release
tags:

  RELEASE-4.17.2
  RELEASE-4.16.5
  RELEASE-4.15.5
  RELEASE-4.14.6

Other release activities (tarballs, announcements, etc) will happen in
due course.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmTSZQcMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZoMQH/RAjt/wZHCg/aFunhbiAbdzWmJo36Cz6KL+R2G+v
sBiPMsBvZxSikl6yeYAADgEUFKqNWQhLCAl6oaqgPbtDhFOxeZ72DRhgwZIx2KNL
85ECXk3rFhipiai6oHHbOemjPglXsyz+B5+NE64gOjpjdms9cfvfWnMnSQRF+NKa
vbpEeP+KIK1EcmKOp/xfzjjgEzg7VmJ8jnct0A77sUQYi3Ll1+ENLEcqDElP+Qob
wmM6QYkz78q/xO+R+bT+NNJ33q6JXQdixXa3ddiWrcvL/A3SveqtQh78u9daKmFM
aaivBTgJSWk0348aelEF8UjLNKx8rVRc4Dk2elioiE1PCe8=
=05gz
-----END PGP SIGNATURE-----

--=separator--
