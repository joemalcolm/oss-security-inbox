X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1538" "Monday" "21" "December" "2015" "23:53:41" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512212349450.26574@wniryva>" "42" "[oss-security] CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info" "^cc:" nil nil "12" "2015122118:23:41" "[oss-security] CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info" (number mark "        ppandit@redh Dec 21   42/1538  " thread-indent "\"[oss-security] CVE request: Qemu: scsi: stack based buffer overflow in megasas_ctrl_get_info\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1900 invoked by uid 550); 21 Dec 2015 18:24:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1877 invoked from network); 21 Dec 2015 18:24:06 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1512212349450.26574@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Mon, 21 Dec 2015 23:53:41 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Qemu: scsi: stack based buffer overflow in
 megasas_ctrl_get_info
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the SCSI MegaRAID SAS HBA emulation support is 
vulnerable to a stack buffer overflow issue. It occurs while processing the 
SCSI controller's CTRL_GET_INFO command. A privileged guest user could use 
this flaw to crash the Qemu process instance resulting in DoS.

Upstream patch:
- ---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg03737.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1284008

This issue was discovered by Mr Qinghao Tang of Qihoo 360 Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWeEOtAAoJEN0TPTL+WwQfobUQALM8V93og7NcHj15LiRqXKOD
UnisLDqo2VeX0MmEHaQ5sYmoJbvYEDebGAqnqfYSfw5LkmfUVfKgzGkIFdywpNva
e80b/k3QLvuDJNiZMWGHzNe5fQUzW2faV07zGag1Bw8RsFvjv72Hq+T0Il9InJHE
9EvcP9LdO4U0Ztqj0ATr5HeejDg09lKIEjwdA9h1UZJp89BghS1+QlFLUstRUtx2
28h24bYL/NMjwpjd4UBU3Fdgn2S3NpC/AsmngVfuTaUtZ6XIORnMHLpvrTvbEjDD
XV864kQbq7KEe1RF8htrBp13n0ugZ63ThHTE46ISiwuHXF9YIG49Eugig98IIrXw
zdMgWlPnh5/fem+hzryx1CpMHu4GePbRdwrjC4ydciTHVoNO1ZqNjj57bsoj3Oiy
rjHraGA6ZkU8hYnNUknXCCY5AN/sBUj/+rU05tE7qmZ0HTJkgNwcuCGX3w6CjhVu
cfbmfOJH1v+dTqCnjTTtRG1fKCVy8webaiNegHqEl+wi21SU23BYmw2mHkOfbPvo
lntNUopd/e+GR6uCSUKdqwofkCzVhc3iisRqwS88dPK1qh5wcZaGfi1+gJAemYaR
qbSA7SJzUemjiJM3ShhnRsXAsSkqsromSEuVh2GuW5RSa2v+WFRS+A5upRXwAaqN
QXM1s/NRQTFIEfxDQcqL
=W+H1
-----END PGP SIGNATURE-----
