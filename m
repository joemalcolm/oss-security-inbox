X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1710" "Tuesday" "7" "February" "2017" "20:14:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b52ce65719d94835a1628207ab996ffa@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests" nil nil nil "2" "2017020801:14:20" "[oss-security] Re: CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests" (number mark "U       cve-assign@m Feb  7   39/1710  " thread-indent "\"[oss-security] Re: CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests\"\n") "<alpine.LFD.2.20.1702080024220.11236@wniryva>" ("<alpine.LFD.2.20.1702080024220.11236@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9538 invoked by uid 550); 8 Feb 2017 01:14:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9520 invoked from network); 8 Feb 2017 01:14:31 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1702080024220.11236@wniryva>
Message-ID: <b52ce65719d94835a1628207ab996ffa@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 20:14:20 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Virtio Crypto device emulation support is
> vulnerable to an integer overflow issue. It could occur while handling data
> encryption/decryption requests in 'virtio_crypto_handle_sym_req'.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS or potentially execute arbitrary code on the host with
> privileges of the Qemu process.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01368.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1420092
> http://git.qemu-project.org/?p=qemu.git;a=commit;h=a08aaff811fb194950f79711d2afe5a892ae03a4

Use CVE-2017-5931.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmm+0AAoJEHb/MwWLVhi2B4sP+wfNcAISLT1m/fgfqNIvDW7u
FTDw5NMDO0QRah+v5DxJdGtJrUiBZdyRGNH84JxUhBkdv4BreRZIsoGJyKvkc6D4
5jUBxdSfpvd901pJ39A9YdA13lvCGOvkekCzAmwqW97l7gY0WL0E2t8kkRk/6Gu1
HPHAVtsU8oFC/Pn7tsVrqorzJjY+D/7pDpL67VoTuiXwwafoSWwPq1YWBgEmNh2z
ojPI8m43NPmWBeo3vCNOGsLLmgLqDCdg0Hct44PQcMDBWD0RXtWSrVQhiPuIeSgp
TO3T4NMh+pr7ZIs8THe7t3cOise7RiSmGd31MmzIhEttqxgEawU9UuTieXWStH4Y
SpUv2G22PP2vMFc+iNFthPaQIz1QMSenNyT2IlKEM0ObSKSNYio/TyHRO1U/ddOb
9mF/D/+uooJxc7+bwghbwUn56RAAUhp0FVBLxklLbwTXpA5wrK7ttugOc/4uOru2
IWH79Z0vWIKuGjGbwa0J1mRvugM0Nv04GGoxtIgKMmSvK2UIvdYa8Icd4teBiniL
DNi9AsooOQDhrY5d1KHAPGIXFQlZnsaafGXiEi2vACewcVUEy8syqGIFZ6ImU/ZF
6iG5UfBo91tRng1KgtRwkUu7x5E27/+vYxYo+1ezh1XTBYUZpV8/cqjB7xCQuy6p
BHYeFVTsdOsmy6zt3L+2
=ukgp
-----END PGP SIGNATURE-----
