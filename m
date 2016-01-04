X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1651" "Monday" "4" "January" "2016" "11:58:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160104165801.C12373323FC@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash" nil nil nil "1" "2016010416:58:01" "[oss-security] Re: CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash" (number mark "U       cve-assign@m Jan  4   40/1651  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash\"\n") "<alpine.LFD.2.20.1601041939440.17635@wniryva>" ("<alpine.LFD.2.20.1601041939440.17635@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22021 invoked by uid 550); 4 Jan 2016 16:58:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22003 invoked from network); 4 Jan 2016 16:58:18 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.LFD.2.20.1601041939440.17635@wniryva>
Message-Id: <20160104165801.C12373323FC@smtpvbsrv1.mitre.org>
Date: Mon,  4 Jan 2016 11:58:01 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: vmxnet3: incorrect l2 header validation leads to a crash

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with a VMWARE VMXNET3 paravirtual NIC emulator support is
> vulnerable to crash issue. It occurs when a guest sends a Layer-2 packets
> smaller than 22 bytes.
> 
> A privileged(CAP_SYS_RAWIO) guest user could use this flaw to crash the Qemu
> process instance resulting in DoS.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=a7278b36fcab9af469563bd7b9dadebe2ae25e48
> https://bugzilla.redhat.com/show_bug.cgi?id=1270871

>> 'tx_pkt->packet_type' hasn't been assigned for such packets, and
>> 'vmxnet3_on_tx_done_update_stats()' expects it to be properly set.

Use CVE-2015-8744.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWiqQOAAoJEL54rhJi8gl58u0QAJHr+J/tR96tT+LyDMUQWhaP
Si58acKWZEkk9nV55TwaS6uJw0VriHu1QRB7gtU5VYWNPI6rRZk3sc52hoKJyLe9
GA1c4bvCekExsnUOIIV5MNcqa2o53uQCRfhtcfNTVwSn31tgmJud5PT3xIuJH5z6
cDR94YqJGdrOGbCxm7CH9NlGLQsy8cCXzMcCezkGogGxv16jg614PWjwOEvemEgT
Fbc03MHFquCULWF5QD0ZU0TIoFXQcS6KGtc2kvCmUEu6uPH+8NIUdj0bAOu47Yje
wzzOFf/dIoa0zO3trrSa1qznFlK/kyWmF2Ls3qZgojrc1IP79yCl9Q9ZoIE6NzF2
p8zzMoabvC8SzoRlCg2pJjJkmAyJR/bNbgw523/rvSz9q+6QzEtkYnNE26brITb3
v7GIJlfT9W+qrylm5nu01bb0U42E+uB/lA+M8s1ZpjPjQps2tUufr/XE/EGqdJvB
Za+tNNVPZeFGOEYIBYSrdhdKQQOkBLA0p7Ebcf8ZnHrPFEF7v14yRBgnlywf2kHD
wK6y91YEji25WjIIQQgmgaXmixUcwzS+y52ET0gEKcAO07IYKnOUexd+fMV2YBEW
aAC0Ch2xpR6bBn3SJye5avUIbML7B1M4VQlpSUZwn46DFir5dqHf0ssdYasO+DBU
eF6FHB0afcV5gGrTIozR
=O+Vj
-----END PGP SIGNATURE-----
