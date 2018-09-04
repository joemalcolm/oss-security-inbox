X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3860" "Tuesday" "4" "September" "2018" "04:31:11" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<1340116763.28074569.1536049871778.JavaMail.zimbra@redhat.com>" "117" "[oss-security] glusterfs: multiple flaws" "^Date:" nil nil "9" "2018090408:31:11" "[oss-security] glusterfs: multiple flaws" (number mark "        siddharth@re Sep  4  117/3860  " thread-indent "\"[oss-security] glusterfs: multiple flaws\"\n") "<1142391371.28074477.1536049766526.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15798 invoked by uid 550); 4 Sep 2018 09:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14245 invoked from network); 4 Sep 2018 08:31:24 -0000
Message-ID: <1340116763.28074569.1536049871778.JavaMail.zimbra@redhat.com>
In-Reply-To: <1142391371.28074477.1536049766526.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.116.57, 10.4.196.29, 10.5.100.50, 10.4.195.27]
Thread-Topic: glusterfs: multiple flaws
Thread-Index: gqOkkJjrAjkxKl666qK1Vl0UvfJZ+g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Tue, 04 Sep 2018 08:31:12 +0000 (UTC)
Date: Tue, 4 Sep 2018 04:31:11 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] glusterfs: multiple flaws
To: oss-security@lists.openwall.com

Hello,

We were informed about several security flaws affecting glusterfs.
All of the following bugs were reported by Michael Hanselmann (hansmi.ch).

CVE count: 12


CVE-2018-10904
==============

It was found that glusterfs server does not properly sanitize file paths in the 
"trusted.io-stats-dump" extended attribute which is used by the 
"debug/io-stats" translator. An attacker can use this flaw to create files and 
execute arbitrary code. To exploit this, the attacker would require sufficient 
access to modify the extended attributes of files on a gluster volume.


CVE-2018-10907
==============

It was found that glusterfs server is vulnerable to mulitple stack based buffer 
overflows due to functions in server-rpc-fopc.c allocating fixed size buffers 
using 'alloca(3)'. An authenticated attacker could exploit this by mounting a 
gluster volume and sending a string longer that the fixed buffer size to cause 
crash or potential code execution.


CVE-2018-10911
==============

A flaw was found in dict.c:dict_unserialize function of glusterfs, 
dic_unserialize function does not handle negative key length values. An attacker 
could use this flaw to read memory from other locations into the stored dict 
value.


CVE-2018-10913
==============
An information disclosure vulnerability was discovered in glusterfs server. An 
attacker could issue a xattr request via glusterfs FUSE to determine the 
existence of any file.


CVE-2018-10914
==============

It was found that an attacker could issue a xattr request via glusterfs FUSE to 
cause gluster brick process to crash which will result in a remote denial of 
service. If gluster multiplexing is enabled this will result in a crash of 
multiple bricks and gluster volumes.


CVE-2018-10923
==============

It was found that the "mknod" call derived from mknod(2) can create files 
pointing to devices on a glusterfs server node. An authenticated attacker could 
use this to create an arbitrary device and read data from any device attached 
to the glusterfs server node.


CVE-2018-10924
==============

It was discovered that fsync(2) system call in glusterfs client code leaks 
memory. An authenticated attacker could use this flaw to launch a denial of 
service attack by making gluster clients consume memory of the host machine.


CVE-2018-10926
==============

A flaw was found in RPC request using gfs3_mknod_req supported by glusterfs 
server. An authenticated attacker could use this flaw to write files to an 
arbitrary location via path traversal and execute arbitrary code on a glusterfs 
server node.


CVE-2018-10927
==============

A flaw was found in RPC request using gfs3_lookup_req in glusterfs server. An 
authenticated attacker could use this flaw to leak information and execute 
remote denial of service by crashing gluster brick process.


CVE-2018-10928
==============

A flaw was found in RPC request using gfs3_symlink_req in glusterfs server 
which allows symlink destinations to point to file paths outside of the gluster 
volume. An authenticated attacker could use this flaw to create arbitrary 
symlinks pointing anywhere on the server and execute arbitrary code on 
glusterfs server nodes.


CVE-2018-10929
==============

A flaw was found in RPC request using gfs2_create_req in glusterfs server. An 
authenticated attacker could use this flaw to create arbitrary files and 
execute arbitrary code on glusterfs server nodes.


CVE-2018-10930
==============

A flaw was found in RPC request using gfs3_rename_req in glusterfs server. An 
authenticated attacker could use this flaw to write to a destination outside 
the gluster volume.


Respectfully,
-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A      
Fingerprint  :  6F04 C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A
