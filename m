X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1607" "Thursday" "14" "January" "2016" "22:57:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160115035720.417C86C01CE@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" "^Cc:" nil nil "1" "2016011503:57:20" "[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" (number mark "        cve-assign@m Jan 14   41/1607  " thread-indent "\"[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy\"\n") "<CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>" ("<CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23781 invoked by uid 550); 15 Jan 2016 03:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23759 invoked from network); 15 Jan 2016 03:57:31 -0000
In-Reply-To: <CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>
Message-Id: <20160115035720.417C86C01CE@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 14 Jan 2016 22:57:20 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> CVE request (one is the problem, the other the fix):
> 
> https://github.com/openshift/origin/issues/6556
> https://github.com/openshift/origin/pull/6576
> 
> You can modify a build so that it escalates privileges when built, you
> can't build it yourself (that fails) but if the imagestream trigger is used
> then it would build and you'd have escalated privileges.

>> pkg/build/admission/admission.go
>> 
>> -  Handler: admission.NewHandler(admission.Create),
>> +  Handler: admission.NewHandler(admission.Create, admission.Update),

Use CVE-2016-1906.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmGzAAAoJEL54rhJi8gl5RsoP/0XiA5NuaONohleODumNEtnk
vBX0Qs7kI3OngNJl1CVodLum+1dO90ngGwRpvVb7LgFnX780f/buOYlKeLOhHOdz
MxjqjkvL9krDTcOXiTc2IUcYchLJCeVmxCHlDA6dzvhNukThKidbmKOWCQkXYJXE
q+75TzXB14zxl4zTTjnw0Q5H1mI0itNbPby1+wTWI1Tq99Wximw4c729VFj161eW
OSnqNQk44j6FlDp6QINoYM+njHphcl/1rJm9J+Qfx9s0Z06Flaig7q89FQ5F5WFO
W2hwAuFhbo+mk1utxzCk+Z4Uh2dUOW86WFrGLd9nx/W4GYrkRekkdSyx8aBKPwy4
aQhV/cZy4IrKd3WJz2J+ivrbbpg1+UwGnZd8oUyLhw+9GoGyY8it9C3iNgTQEbPL
995s2wPIWsZAVAUX/lb11x1NqfDJ5JKR3UJr4MypEaXyz2nM/A/eDEMyEaJkfrzj
/rlmuCeQLwZZ70I+ELz65qPQFI14lFDGQN6QNVL0NM6fNqUol6e85GKH6nuAiuJY
htOPFSAEaQ4Of92gj1V15o6ZqlGfr8LApkZIadqmFlATSijn3aZ/KB85Pl3Y+vdf
JXTkuC+aVKoUvnP4RCk4wbxEwEyeSix1KsHfpb+8nozvy/fmdlA3SRfJTUTtyakw
3KIccaubTIANgI7hO226
=riuw
-----END PGP SIGNATURE-----
