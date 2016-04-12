X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1683" "Tuesday" "12" "April" "2016" "07:41:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160412114157.5C4CD332042@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: Qemu: net: buffer overflow in MIPSnet emulator" "^Cc:" nil nil "4" "2016041211:41:57" "[oss-security] Re: CVE Request: Qemu: net: buffer overflow in MIPSnet emulator" (number mark "        cve-assign@m Apr 12   42/1683  " thread-indent "\"[oss-security] Re: CVE Request: Qemu: net: buffer overflow in MIPSnet emulator\"\n") "<alpine.LFD.2.20.1604112359170.31458@wniryva>" ("<alpine.LFD.2.20.1604112359170.31458@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8180 invoked by uid 550); 12 Apr 2016 11:42:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8160 invoked from network); 12 Apr 2016 11:42:10 -0000
In-Reply-To: <alpine.LFD.2.20.1604112359170.31458@wniryva>
Message-Id: <20160412114157.5C4CD332042@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, oleksandr.bazhaniuk@intel.com
Date: Tue, 12 Apr 2016 07:41:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Qemu: net: buffer overflow in MIPSnet emulator
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the MIPSnet controller emulator is vulnerable to a
> buffer overflow issue. It could occur while receiving network packets in
> mipsnet_receive(), if the guest NIC is configured to accept large(MTU)
> packets.
> 
> A remote user/process could use this flaw to crash the Qemu process on a host,
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg01131.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1326082

Use CVE-2016-4002.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/mipsnet.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDN1xAAoJEL54rhJi8gl5ry0P/jlvWbrq0ApLur2hfkVyI7OC
mWpOzrpRMpdonxLuRamQ1iESb7xh0hz4GL1KsBw9opthx6Cciry6gMCqWcPR7wbF
GpxtUu5VbdkmKkXq4XQ6fiXEYBJgw0C0veGSBWLWzZRZJ7x/ty5UpepDG6r6jeX3
hJiZMXfr03yfr8hh5jYdKBzr9HgLoqPt3Ra2KvmAh6FxlR7RT15i8hrMSHe7ZJcI
89ZUhi0wgmgwejpjajIGvM3yRhUsFbw7MbvT4559cdoA3SL6zft93YGVnpUV9T7i
T9j0loFjvFGb9gbO8QvOWzTQBsRpCl4U5Y/iCNGn/vRMcXQGHPluhkX9jMTThAd1
BjKpGkcqBAnq7/fCG25O9BcEju7vvUHUkFlK7f8kGiHycPumPo9KALDcngIRVH7p
xpM8roLcR4zLLVEnPXwVfWJGBL6tWAmP2RXhg31T6eL9X6iSOuT04GIo5I0KsT9F
FJg7Ds0pKjqCR9XGh9Cdk1L3RZuUjPeGkPDIDwPORAtwua4V70TY+H76T1fcq3Os
/DTgDukCB6ON2vHMaoIAFRUFwUo7Jrx60iakD3LfgnGzlQrQ0gwP0Cs8Z58uITzS
oRwvHTeER1IQv9qhYotPJ0KstRVDfCKsn+QoS+dap1tzYFbsadzByM2u+lcb4ej0
i3Sdbgv4KP8ADHtv5jB6
=Q3kp
-----END PGP SIGNATURE-----
