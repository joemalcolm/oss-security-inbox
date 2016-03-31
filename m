X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2338" "Thursday" "31" "March" "2016" "16:31:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels" "^Cc:" nil nil "3" "2016033120:31:25" "[oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels" (number mark "        cve-assign@m Mar 31   55/2338  " thread-indent "\"[oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels\"\n") "<CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>" ("<CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13520 invoked by uid 550); 31 Mar 2016 20:31:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13477 invoked from network); 31 Mar 2016 20:31:37 -0000
In-Reply-To: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
Message-Id: <20160331203125.94DE28BC0A1@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Thu, 31 Mar 2016 16:31:25 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Partial SMAP bypass on 64-bit Linux kernels
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?h=x86/urgent&id=3d44d51bd339766f0178f0cf2e8d048b4a4872aa
>
> That patch fixes a bug that exposed a fairly large kernel code surface
> to a straightforward SMAP bypass.

>> From: Salvatore Bonaccorso <carnil@debian.org>
>> Date: Tue, 29 Mar 2016 17:00:03 +0200

>> @MITRE CVE assignment team: Would it make sense to have a CVE id
>> assigned for this issue for better trackability?

We're going to approach this one in the same way as the issue that was
later assigned CVE-2016-2847.

Specifically, is there anyone who believes
3d44d51bd339766f0178f0cf2e8d048b4a4872aa must not have a CVE ID?

The situation, very roughly, seems to be that the upstream vendor has
announced that the behavior is a bug. CLAC occurs at a correct place
for some types of entries, but accidentally did not occur at a correct
place in the case of entries through the int80 gate. Consequently,
exploits of kernel vulnerabilities can cause more damage in some
cases.

However, it seems to be a bug in how the kernel responds to a
post-exploitation attack pattern. This is not a topic area that
commonly has CVE ID assignments. Access by the kernel to a user space
page is not an action that "crosses a privilege boundary" in a
traditional sense.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW/YinAAoJEL54rhJi8gl5LXcQAJ71fH0G8ucsjSEuUOhrxA27
4cklfaLGWRTExNNHVbHLKKt2kl2QakS5U37z3phkAoji3X7fhK2qBZNL5TLnVae6
7wZ8j+oMZaQTob7mf5AN/WYA/C30MnjqpABPb8iiBdM+7utiVrZW5aOFiKdXyFfM
sg1gmYuGzPdcxc0yYjfX4CLvaljUbnzB0ZQNqO8OuCyj8eKR94pbhXBhw1sIWmje
07Km2qy3NzIZuZj0QC51yy05fPRf1kQUgsDLWGknnLNDGKc5iXA+o7yufDYF1468
MFDYcMz7kOoDefxtakZRXfq430Bs6wzt0dvPMVo27fHTXwTqIV609rX76mXoJEoM
7v+i5b9u+IWIpkOJyorB0pIP10Sd501uIjlfNUMVu1pGzF7iGmbkDWdyXVGx2RHZ
JFD4VRK5KTMAFrb1CeO7JCNkNHoQp55Dj1qeZZUHoPFI7CpCkeIWU+m3NC2IiYTe
F+eTeedFkPb7HPJ04QPY2821ETZfjVsii0ocMACQa5lQD5NwS3DIEy8dYmam3P90
EIRqafs94Bc02u4gvskIqDHTPjep9x/x2ODtbE/fPfpjUwpIE2H4ymR2WD6Cvj7E
EP0zmvip5Ec3kBx62r4yUFp6TQmf1EY7l2w+CdkotPFuuh+/L8Px8thg+hKV39Jo
QxUGU9yWdo2caoenKZi2
=ADv/
-----END PGP SIGNATURE-----
