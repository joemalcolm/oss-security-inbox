X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2108" "Monday" "21" "December" "2015" "20:16:51" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151222011651.ABC96B2E0C5@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info" "^Cc:" nil nil "12" "2015122201:16:51" "[oss-security] Re: CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info" (number mark "        cve-assign@m Dec 21   50/2108  " thread-indent "\"[oss-security] Re: CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info\"\n") "<alpine.LFD.2.20.1512212349450.26574@wniryva>" ("<alpine.LFD.2.20.1512212349450.26574@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11423 invoked by uid 550); 22 Dec 2015 01:17:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11402 invoked from network); 22 Dec 2015 01:17:05 -0000
In-Reply-To: <alpine.LFD.2.20.1512212349450.26574@wniryva>
Message-Id: <20151222011651.ABC96B2E0C5@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
Date: Mon, 21 Dec 2015 20:16:51 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the SCSI MegaRAID SAS HBA emulation support is
> vulnerable to a stack buffer overflow issue. It occurs while processing the
> SCSI controller's CTRL_GET_INFO command. A privileged guest user could use
> this flaw to crash the Qemu process instance resulting in DoS.

>> A stack overflow issue was reported by Mr Qinghao Tang ... It
>> occurs while processing the SCSI controller's CTRL_GET_INFO command,
>> as the memset(2) call uses driver supplied 'cmd->iov_size' to
>> initialise the '&info' object.

>> scsi: initialise info object with appropriate size

>> While processing controller 'CTRL_GET_INFO' command, the routine
>> 'megasas_ctrl_get_info' overflows the '&info' object size. Use its
>> appropriate size to null initialise it.

> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg03737.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1284008

Use CVE-2015-8613.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/megasas.c but that
may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWeKKaAAoJEL54rhJi8gl5eNgQAL4kqeQPi3YvHQXPrrqYuvBQ
tik3Vi/USlhDPHncbIsjTLAcXepf/q5mCAuCJZaoAhzoaPNxkPVHz3idGb4wbYd5
LacANo4hAAxoxdNn0KXZmWtkDz+8Zbf0VnawY2xGMoPDk+KvczPxboE6vupyth00
7+JxihRYVEzY2JPZVOF5YYPa/hdytkQvw0iAOAZsgBsXlCMcJIBZcwgwbem8ibrR
+UBtQ++/bL6UOX3bmADxsmDQr6IHO4yGaS5zGSYYb6fUROKDeG1Q1y5AT+F1t2tC
O8YC+TFyadtFFWU5Ps7yW8hJ9+ACe5IygFSiHfoSCSSFz1wtZwHdNmQBb6Gfojy1
HGnMiC8d5/LnO+Mrg70/9sKzZbAbH0EH6ceVtAbrLTap6f09Cw6pJiZw1kZmleQU
Nrs+TioE44GKFFhL1putIDB1pcZL3ENDuQE6nWy9pOwfhbNIceo3yr7F1dLfIw3l
NUFgi1UcGMqeSQFbXtrGMZWNGzhPXeZyz2S/P+6Tai9esJ1dgXY862YMIG3W/JMQ
bezvCXhTKa6OIF843krLGZRsSGVIaN53DqsQI86tGtOhUGE5Rzm3Rdj9cw5frBB9
VWYDmYr957CZjdTFVwCbnTW39JKPkcY2UoHff63nNY4Uy7Q5V+hLkrS09SOk2UxU
x8p9clIO2w3lRNAaTEkh
=kvtP
-----END PGP SIGNATURE-----
