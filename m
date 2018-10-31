X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3985" "Wednesday" "31" "October" "2018" "18:18:10" "+0530" "Siddharth Sharma" "siddharth@redhat.com" "<20827340.HMuAYWp0fB@rem0te-expl0it>" "106" "[oss-security] glusterfs: multiple flaws" nil nil nil "10" "2018103112:48:10" "[oss-security] glusterfs: multiple flaws" (number mark "U       siddharth@re Oct 31  106/3985  " thread-indent "\"[oss-security] glusterfs: multiple flaws\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7661 invoked by uid 550); 31 Oct 2018 13:13:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9556 invoked from network); 31 Oct 2018 12:49:32 -0000
From: Siddharth Sharma <siddharth@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Date: Wed, 31 Oct 2018 18:18:10 +0530
Message-ID: <20827340.HMuAYWp0fB@rem0te-expl0it>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2091212.qnOIpsBL6I"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Wed, 31 Oct 2018 12:49:20 +0000 (UTC)
Subject: [oss-security] glusterfs: multiple flaws

--nextPart2091212.qnOIpsBL6I
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

We were informed about several security flaws affecting glusterfs.
All of the following bugs were reported by Michael Hanselmann (hansmi.ch).


CVE-2018-14651
==============
It was found that the fix for CVE-2018-10927, CVE-2018-10928, CVE-2018-10929, 
CVE-2018-10930, and CVE-2018-10926 was incomplete. A remote, authenticated 
attacker could use one of these flaws to execute arbitrary code, create 
arbitrary files, or cause denial of service on glusterfs server nodes via 
symlinks to relative paths.


CVE-2018-14652
==============
A buffer overflow was found in strncpy of the pl_getxattr() function. An 
authenticated attacker could remotely overflow the buffer by sending a buffer 
of larger length than the size of the key resulting in remote denial of 
service.


CVE-2018-14653
==============
A buffer overflow on the heap was found in gf_getspec_req RPC request. A 
remote, authenticated attacker could use this flaw to cause denial of service 
and read arbitrary files on glusterfs server node.


CVE-2018-14654 
==============
A flaw was found in the way glusterfs server handles client requests. A 
remote, authenticated attacker could set arbitrary values for the 
GF_XATTROP_ENTRY_IN_KEY and GF_XATTROP_ENTRY_OUT_KEY during xattrop file 
operation resulting in creation and deletion of arbitrary files on glusterfs 
server node.


CVE-2018-14659
==============
A flaw was found in glusterfs server which allowed clients to create io-stats 
dumps on server node. A remote, authenticated attacker could use this flaw to 
create io-stats dump on a server without any limitation and utilizing all 
available inodes resulting in remote denial of service.


CVE-2018-14660 
==============
A flaw was found in glusterfs server which allowed repeated usage of 
GF_META_LOCK_KEY xattr. A remote, authenticated attacker could use this flaw 
to create multiple locks for single inode by using setxattr repetitively 
resulting in memory exhaustion of glusterfs server node.


CVE-2018-14661
==============
It was found that usage of snprintf function in feature/locks translator of 
glusterfs server was vulnerable to a format string attack. A remote, 
authenticated attacker could use this flaw to cause remote denial of service.


https://www.redhat.com/security/data/cve/CVE-2018-14651.html
https://www.redhat.com/security/data/cve/CVE-2018-14652.html
https://www.redhat.com/security/data/cve/CVE-2018-14653.html
https://www.redhat.com/security/data/cve/CVE-2018-14654.html
https://www.redhat.com/security/data/cve/CVE-2018-14659.html
https://www.redhat.com/security/data/cve/CVE-2018-14660.html
https://www.redhat.com/security/data/cve/CVE-2018-14661.html


Regards,
-- 
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A      
Fingerprint  :  6F04 C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A

--nextPart2091212.qnOIpsBL6I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbwTGhKSc5M6BSOhBzW+OVdn2SJoFAlvZpIoACgkQzW+OVdn2
SJrctxAAgeTM4BqXpHO47/S8tEB3Or0dxdexd6a+6nZ6/Zn0fEXZ7uEAtsEm4/Zr
+CnJse+eR/nEXnlNf/KB+LZqIgzpvxfHzC4qlyfcGalq0vRIuJLwYu++n6mAthIO
pQdIWOVcrkujJvdCHyWiPqZgWkva/vB7/PtrMXEMksAdSYxkfgPa1Y9z5acXyhyA
AI+8EhJ4ypgjPymvj3MmkjfF+RntWSJ0DnLy9a+//YAAojRQjTNKCLWapOfAgvoH
PC8USF+qOAw15zOW7ekPQwQNMoTzwjAMU59aYYzlyMrazAevhTjIw+jTWDFkJXuE
gsNtNpFJvXbkHEgBmsxW1GUtxFU8tUobgbwd/oKCZe/BfOGS18sXJnqM8NHQ+krP
H+HvTTOHzVUFoG+mrUTFK4D8wKeOe1ikmgNtA0owpI2VI0ZtVfnBHnmsPScxsbzZ
VyUu2th/HVIHYPJ5gersISSqH4P8SlFZSCF0UIf9pMSKQ2PEWSh48BLqhIJqSU8v
KDp6mG9xXba7TKP0wDGjkM+2pt6zT0m6F1+ong8CYOfULmAFd6cFGdrtFxHgfXNW
uVli+Sc+haDSlpvSaokg3wIik9yViSTcjJWS7WMgVk6hZIIoT9lsfTyW360KVbzG
zrzMBjBP9GCECYmhBrC9aY+FIK0LmqV923v7sq9gn90bR1EFO08=
=64P+
-----END PGP SIGNATURE-----

--nextPart2091212.qnOIpsBL6I--



