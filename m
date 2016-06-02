X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2410" "Thursday" "2" "June" "2016" "12:11:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160602161123.78CDA6C028A@smtpvmsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd" "^Cc:" nil nil "6" "2016060216:11:23" "[oss-security] Re: CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd" (number mark "U       cve-assign@m Jun  2   60/2410  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd\"\n") "<alpine.LFD.2.20.1606021054530.24989@wniryva>" ("<alpine.LFD.2.20.1606021054530.24989@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26105 invoked by uid 550); 2 Jun 2016 16:11:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26085 invoked from network); 2 Jun 2016 16:11:35 -0000
In-Reply-To: <alpine.LFD.2.20.1606021054530.24989@wniryva>
Message-Id: <20160602161123.78CDA6C028A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
Date: Thu,  2 Jun 2016 12:11:23 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support
> is vulnerable to an OOB write access issue. The controller uses 16-byte FIFO
> buffer for command and information transfer. The OOB write occurs while
> reading from information transfer buffer via non-DMA mode in routine
> get_cmd().
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1341931
> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg00150.html

>> Add check to validate command length against buffer size to avoid any
>> overrun.

Use CVE-2016-5238.

The scope of this CVE is the missing "dmalen > TI_BUFSZ" check in
the get_cmd function. The scope of this CVE does not include the
"At least the following patch is needed to ensure that ti_size always
matches ti_rptr/ti_wptr" discussion.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/esp.c but
that may be an expected place for a later update.


>> In theory this shouldn't happen, but I agree that it is better to be
>> defensive.

We typically can still assign a CVE ID with that response. We cannot
assign a CVE ID with a response of "there is no vulnerability but
I'm accepting the defense-in-depth code change." Admittedly this is
sometimes a difficult distinction.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUFo9AAoJEHb/MwWLVhi2HgcP+wWpJhmbyE55xndbleU5kBUX
MyF83fzuj/PhM5ShgCI3y+VPQ7GmabZ4ui03qIhQl8NGdO4JW8PD1rRYJJ0gouVW
UCi6JXQLQt8nlOQ0g4ROKTyONiKt5kc+9y6NoDZO16v7gd8gPFkoF6Z7JGOoizTA
7Si/nCVB5XPWyRG8eEYNyxEXKxq6bdKvWlSYkwIHNDR9bWjCCy915vg/VyIjG9td
thbASw7Ocem811eH79h7E5prm1MBb4Dmjlgbw/1TPeAvbVRki+KFqbdG1UVe0nJk
6DD+TfyNrk4DERuzN97XTaltz7s+lyNWhObLuDHrhmQV8DNYiPz63wP45QVD3vff
kjw8xnmuGhAyWhBenWBaUJ2HPFTJoXob5+Knvdo6JWH5Y8ES8Ob9gBbaKRnKhs6u
dM/Kdht9A1DCHG0+QKCYlT8GfERutCPgjejyGxhBauRTnPztxTTr6/3G0BOkU3j9
s1gUkWjk2SONM2mtnFa0Kd3ZU+qE+9k9EoBf4DZnRY+BnBfd/Nq2j78vTQiIrBOn
oT42usKfbCKFiixbJKH2pVsreherp+eau4UirjoksIbftCIeCiWA90wfi0Dhoi3P
ydwB2X0Eh9Jy1IN9Pu/sc5IrA7sMMHTRByomyxYcZmu1oOAoOTH7qmNBYSxrKA1Z
DB5KI7w/WY+cLrwaUhxv
=kY8R
-----END PGP SIGNATURE-----
