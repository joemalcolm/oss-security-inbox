X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2012" "Thursday" "27" "October" "2016" "02:41:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161027064119.26C1813A5A0@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: kernel: low-severity vfio driver integer overflow - Linux kernel" nil nil nil "10" "2016102706:41:19" "[oss-security] Re: kernel: low-severity vfio driver integer overflow - Linux kernel" (number mark "U       cve-assign@m Oct 27   47/2012  " thread-indent "\"[oss-security] Re: kernel: low-severity vfio driver integer overflow - Linux kernel\"\n") "<CAH0z3hMh6Txh5Bi_JTLTkxxsfGrZyNmvB1d1h6aCSZHkBj0O7A@mail.gmail.com>" ("<CAH0z3hMh6Txh5Bi_JTLTkxxsfGrZyNmvB1d1h6aCSZHkBj0O7A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31976 invoked by uid 550); 27 Oct 2016 06:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31949 invoked from network); 27 Oct 2016 06:41:32 -0000
From: cve-assign@mitre.org
To: vlad@tsyrklevich.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAH0z3hMh6Txh5Bi_JTLTkxxsfGrZyNmvB1d1h6aCSZHkBj0O7A@mail.gmail.com>
Message-Id: <20161027064119.26C1813A5A0@smtpvmsrv1.mitre.org>
Date: Thu, 27 Oct 2016 02:41:19 -0400 (EDT)
Subject: [oss-security] Re: kernel: low-severity vfio driver integer overflow - Linux kernel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The vfio driver allows direct user access to devices. The
> VFIO_DEVICE_SET_IRQS ioctl for vfio PCI devices has a state machine
> confusion bug where specifying VFIO_IRQ_SET_DATA_NONE along with
> another bit in VFIO_IRQ_SET_DATA_TYPE_MASK in hdr.flags allows integer
> overflow checks to be skipped for hdr.start/hdr.count. This might
> allow memory corruption later in vfio_pci_set_msi_trigger() with user
> access to an appropriate vfio device file, but it seems difficult to
> usefully exploit in practice.
> 
> https://patchwork.kernel.org/patch/9373631/

Use CVE-2016-9083 for the "state machine confusion bug."

Use CVE-2016-9084 for the separate problem fixed by "kzalloc is
changed to a kcalloc."

This is not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/vfio/pci/vfio_pci.c
and
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/vfio/pci/vfio_pci_intrs.c
but may be there later.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYEaDdAAoJEHb/MwWLVhi2SXoP/A1cw0kppdrB03QUfdZM8ShT
BBnH+GWpricg333jEtfM1ypq5NqN62bG4/SQzvJwqV0HKffodIqzKAqpu0jzvzHA
rlVs+lrv0folE2T4mZNc0lDWr36lwIf2LJx3tdYnl/EaW11FSVIsO/K5/bnXYU0b
Yxarmk5jhG48pcjFo969FvpfDYXBZuleuluTWs/t4MM5R5iY/hpA/+vPBqQPf9Qp
Mb+WwFu4fuXjTxWRTXfaH6l2ZQ4qdjxzwZnHzyj4Xt/B9aXDQx/uibM6gwMlK79d
HSAElifmLxhBClhRj9t5CWjz7qxtD/Ll7UOklM1a6C+DPwvpYnr5iaz0iQDh4IA9
ZFWh+EffrFufmrvQ1/3YBLwCUd74thDisbeqZSaIOH9+itdV5rwiuiAz7PusNzcc
VLTh3kP34kahzIyvpNt342opeA/1dCvv1qNWCC1G9MwJbuW6N7PAm1v7bwr22Fz7
sFvQ7FB4aUV+AV835wkPNXqZaoyBfzDvzXoW9aFMzQzjcvdKfNT4VU7N2mHJqfYU
OP5PNuqUg4Wly0Rwych0YpoYTXfvFyy//AvuTIvZRHQErS5ny8gJvjwGg8oVObjr
l+3WOQxAmJST2jvczPLKhiQP3zPDmlMx9MTUuYWR4MJqaEf7nwjJnqTf5chWGPsR
9jneh8oMpkQJm0IRDyc+
=AZ3J
-----END PGP SIGNATURE-----
