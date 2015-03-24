X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1459" "Tuesday" "24" "March" "2015" "14:02:00" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1503241359350.9901@wniryva>" "40" "[oss-security] CVE request Linux kernel: fs: btrfs: non-atomic xattr replace operation" nil nil nil "3" "2015032408:32:00" "[oss-security] CVE request Linux kernel: fs: btrfs: non-atomic xattr replace operation" (number mark "        ppandit@redh Mar 24   40/1459  " thread-indent "\"[oss-security] CVE request Linux kernel: fs: btrfs: non-atomic xattr replace operation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26329 invoked by uid 550); 24 Mar 2015 08:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26305 invoked from network); 24 Mar 2015 08:32:25 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.11.1503241359350.9901@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 24 Mar 2015 14:02:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Linux kernel: fs: btrfs: non-atomic xattr replace
 operation
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

    Hello,

Linux kernel built with the Btrfs Filesystem support(CONFIG_BTRFS_FS) is 
vulnerable to a race condition which leaves the extended attribute(xattr) 
empty for a short time window. This could be leveraged to bypass set ACLs and 
potentially escalate user privileges.

An unprivileged user could use this flaw to potentially escalate privileges on 
a system.

Upstream fix:
- -------------
   -> https://git.kernel.org/linus/5f5bc6b1e2d5a6f827bc860ef2dc5b6f365d1339


Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVESEAAAoJEN0TPTL+WwQf4jEQAKz/fs8rptK2TOpN8sb3tjq/
RaLXXcddHYRo5sHybzsM9WpBgnz3lHGtgf80990976G28SjR5n1qKRxywYr8Fzza
XBfWR+eQ4BizIJ1Jv5jL4RJYFAePoba13edlB0cIhfNPHaFnW5aPswiDuTsfNcMX
Y9jhEciePAvxc2P4inQi7A6d00StBkVq0K8nsIECf0fWjXJ7UkgVY4Uf7UPKr+eM
JWPjRIjF07uqDZG8XkySkEQblEs9HD6xNS6hGlroiODMOqY0QWybRZhqQA9JvN5a
p51VYW+c7GNyaxSeByqq7imjn6liaRnjk7j/G2lzT+PDm6ouw0krq5+MKAq6i6Qf
Nl4r3mKy3F6MgyO5g5VUo++TsnP9+8Ru/NukUwfstSbQqvHZLR8xPq3kySMkaYdM
QFUju7BlSSy8hc7sn/bRh3D8+34Dljn3s4LtWuxLyKN5Uh/xgwhyODQnqqILVv1K
GNjmXQhrnV+LtY22+n2ywfrQFsZBF/A74zNDtMsc8V1/ptFyNCtWnjtdJNohunUE
KQoixT7UDXzb9Wmv7blznsHLZtADcC2bZPleLU4nEPrckt/79sG0cw9X8SYjZBkc
J+LpmMxGBdffq2T/O1Qwve1tWfyPZykxerFUrNdWmJmSYi11BZxSD9igMX/AdAk7
L4Hm3L8rwKNFYgGgpKCM
=To/S
-----END PGP SIGNATURE-----
