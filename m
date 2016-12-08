X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1572" "Thursday" "8" "December" "2016" "01:32:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<be20b15c60174c99ac2f0cd46f050826@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: usb: redirector: memory leakage when destroying" nil nil nil "12" "2016120806:32:16" "[oss-security] Re: CVE request Qemu: usb: redirector: memory leakage when destroying" (number mark "U       cve-assign@m Dec  8   39/1572  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: redirector: memory leakage when destroying\"\n") "<alpine.LFD.2.20.1612061659200.2165@wniryva>" ("<alpine.LFD.2.20.1612061659200.2165@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18049 invoked by uid 550); 8 Dec 2016 06:32:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18026 invoked from network); 8 Dec 2016 06:32:28 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612061659200.2165@wniryva>
Message-ID: <be20b15c60174c99ac2f0cd46f050826@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:32:16 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: usb: redirector: memory leakage when destroying

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the USB redirector usb-guest support is
> vulnerable to a memory leakage flaw. It could occur while destroying the USB
> redirector in 'usbredir_handle_destroy'.
> 
> A guest user/process could use this issue to leak host memory, resulting in
> DoS for a host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg01379.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=07b026fd82d6cf11baf7d7c603c4f5f6070b35bf

>> it doesn't free the vm change state handler

Use CVE-2016-9907.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSPvuAAoJEHb/MwWLVhi2broP/2fJ5v5oVmb9x0tsuXAjZ1Ba
aXQDcdYBS0GUbME9pWh1rjuHtlYtiwocTpDLRIph38oyyre+ejrTQoqdp8S7pkVL
oB/ENczkJM94VM88tl+lVs53x+0iZl+a2Xs0K7vFLsc+vYhPeXyzyM0PVm90AjNV
vlM9sYQDfmZ7LzsQr6CyvOmwe1xfs/1Zo6U62qPkdmjFeBNhUGg/F+NoVv2U2yaQ
ArsgSON2QE7eyLvpawFqbnWSKITrYKp+3WIEQxRDScWl1dgSY4CPKxBFiKGM7odu
np7PtDRiJp3S9o9IYAkvJ9B07meSqiy6HLubLDXQsKmV+9S08lXNAhmNo6Esed42
AIMcasrZNA7S1fCNXM9zykphS/ku3kZKzvdrHxJM7zHtMg9PcKi8fPKybX8ddNju
suLCPt6HsCNjK/a3duxMJAeUaxo6bgGJa5QdZ7skUzSEKt3ffUPmSDNQG4rjz3N6
W8RPnbTGCFkNSTmzbIoR6Ho5ttZZ7TTXXTQpQRPuUUiZ5f+p3kII7cQN+z+/Hn61
UCHkc4NJNnn9tK8M9NBELx6VomVtqWAzMhxw3FcO6eekPW40mMrCuoM+IkQp0a9d
l9OYJP6Zihlpfa8Nm0kzk26+V+hLR4aXv/zaCzDm9ipe2NRckn6ZIltYzoW7waeI
Co2uP2bGilgPtZnQhnBK
=0MJ9
-----END PGP SIGNATURE-----
