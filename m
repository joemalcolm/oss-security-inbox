X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1943" "Wednesday" "31" "August" "2016" "08:23:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160831122356.6E0566C4866@smtpvmsrv1.mitre.org>" "51" "[oss-security] Re: CVE request: Kernel Oops when issuing fcntl on an AUFS directory" "^Cc:" nil nil "8" "2016083112:23:56" "[oss-security] Re: CVE request: Kernel Oops when issuing fcntl on an AUFS directory" (number mark "U       cve-assign@m Aug 31   51/1943  " thread-indent "\"[oss-security] Re: CVE request: Kernel Oops when issuing fcntl on an AUFS directory\"\n") "<1472603664.25374.41.camel@decadent.org.uk>" ("<1472603664.25374.41.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23753 invoked by uid 550); 31 Aug 2016 12:24:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23730 invoked from network); 31 Aug 2016 12:24:08 -0000
In-Reply-To: <1472603664.25374.41.camel@decadent.org.uk>
Message-Id: <20160831122356.6E0566C4866@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, debian@wodny.org
Date: Wed, 31 Aug 2016 08:23:56 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Kernel Oops when issuing fcntl on an AUFS directory
To: ben@decadent.org.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> a bug in Debian's kernel
> packages that allows a denial of service (crash) by local users with
> access to an aufs filesystem.  The bug is in a Debian-specific patch,
> not the upstream kernel or aufs code.

>> the wheezy kernel upgrade from 3.2.78-1 to 3.2.81-1 added the SETFL
>> fcntl support code (#627782) which unfortunately results in a kernel
>> Oops when the fcntl is called on a directory. This breaks e.g. copying
>> files from an AUFS filesystem on a remote machine using scp.

>>        fcntl (fd, F_SETFL, O_RDONLY);

>> Call the program on regular a file (nothing happens) and then on a
>> directory (Oops).

>> The Oops happens in fs/fcntl.c

>> The aufs_file_fop structure sets the value of the .setfl member to
>> aufs_setfl (f_op.c). aufs_dir_fop (dir.c) on the other hand does not.

>>   aufs 3.2.x+setfl-debian

>>   kernel NULL pointer dereference

Use CVE-2016-7118.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXxsvbAAoJEHb/MwWLVhi2LWoP/3ZaPz0Ig/FPWdBi+JyGP7/K
YlCUjfpCrWaIBQwczMqZX+7E+aTym5dQ3tvRYdoOiDZhhcGCxLa7YCNLHZdVDIkC
OJOrBOoDyL1OjhcNvFD6uahCAfqVAilvFgR7HNkbiwPnvFIkUd3LZXtvpfCla4l8
8/PABvTGSnZWesZdG573mduIZQ0wO/RGcp1ng+tbyZjXUUWqJe03v70C19s0aMVh
xXZLk3WuCUUnEfdWsRK2W5Shj4zCqIBhzbzWQcBcFLL65hxdoLGLLsCkx3EM0VkO
8f07NoP24dKfLy1uH4HhRcVKIc4E22knCGOnWIX4aiHvbLHtBAnoNHhG9rgRg221
DomDaYqjyOXgFUIK2DxB1qJbTPvKuyhWQZ+MrI0c72NJ8nSgexoEdk/6pKagpnq7
gSu1MN+r7Q/IBf722Xqi82y9BBV+NlWH967dlqnH3EoxiHK5M6Y7koCdx+9HYrvs
Ib1f60ztjAwglxljqjhGVG02wJhwOqvfH2wJb78HKPJ9A3F24Y5bDyxzmB1J2Pjm
fT5vYyOXGUIoY4U8062yaqPI6OJedhKgJvYfnFqJCxa88RpB8sPXZlMcsm+2ajSv
kA7X7fS7eNj/gPAXgUEkjJaK8r6sDB5MzhRZ1OvJevbRpHR7GYczfAfgFeqJNSEx
IleDjdlHzS7T25oRRIFQ
=4pvR
-----END PGP SIGNATURE-----
