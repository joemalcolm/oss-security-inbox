X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["595" "Thursday" "22" "September" "2016" "07:12:32" "+0000" "ajax secure" "ajax4sec@hotmail.com" "<HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>" "19" "[oss-security] CVE Request: VLC: Potential divide-by-zero issue" nil nil nil "9" "2016092207:12:32" "[oss-security] CVE Request: VLC: Potential divide-by-zero issue" (number mark "U       ajax4sec@hot Sep 22   19/595   " thread-indent "\"[oss-security] CVE Request: VLC: Potential divide-by-zero issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24025 invoked by uid 550); 22 Sep 2016 11:45:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32062 invoked from network); 22 Sep 2016 07:12:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=TrYUoHlTDiywia8ngURIEMdGKJIwVPEwYLrbSr8OeUM=;
 b=EI53TcHtVkQ7/KKN/EnPsYUCDDUEir7KZYYzvgY5Iv3zvXUdrQre7ogy+uDn0UNichJKrgsDx76UozK5EU+1g5xBEFDw5qg4F23XH1tYuo5OJEeX16YGxXdEbyroC4DcHOzDJLMMr2x7wRj06Mp247usLXeGB+pkjcrrGNWNvn8xrn0HQLVrXBI6Pw2xAommQfrinXyKPCeWv5NCFX4B8r3ubrheZhnqE6NCeznMcsrgUfYmBELStMkYO5dtV55xducWT8NDlkutTFUfqpbeZnRqUIAgOOqoprOgV4eDY8EndQOWvM1P4W+TiWuu1Og4z8sPSJkJttKSMd8woWsDMw==
From: ajax secure <ajax4sec@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Thread-Topic: CVE Request: VLC: Potential divide-by-zero issue
Thread-Index: AdIUc6eg3hZ6Gx5ZRhOfVKJZxf34lwALL86Q
Date: Thu, 22 Sep 2016 07:12:32 +0000
Message-ID: <HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=softfail (sender IP is 10.152.252.60)
 smtp.mailfrom=hotmail.com; lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=fail action=none
 header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
 hotmail.com discourages use of 10.152.252.60 as permitted sender)
x-tmn: [+nDWSkOGM3qvXPXSDf5mrfoA5+TuEXc8]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1;PU1APC01HT070;6:1L35kz3y2zdkXHFf5ziqlez+HrQZJKJQrHygQEoAUtEjOQxA+3MmJPwFxdvOY47vRpwjo6Jnq4GPNPOncL/EdUv0fiQghrHbBQpH+Lpl5OfTnMYxyMD/QNSsjRzbpK1DKu9aa5nAcr8j63Vc29W6e+N0q9+bi8zJ350OIzI8UbJD+38vSWp/lubgTzb8QOGfYWrnpmwJvXIXh1xkMfTlms6Ba0lL9KulKY+qDq9v3qg2zAsUz2g/OHDbFqc4EgUUNEwi28EnMnfWY7PnNGSYGeQTgYifta+xFT8fHG9zYhc=;5:ESCHttoH8v0AWBIMdgoSmuchdy6ZtYZFIuMLxYeahOkdmSyTJWRSg6FfYWgJ9Wspd1kDYVzwMGIGyixodcVC8mjtslNA20ii4XR9z0+Ewyq+6p1MZ9fznf4IfTJfd+pP0NY5ZUfXmvg6ZozH8D8AEA==;24:UakIRZAp1QgUwiGzYv6o9pOsCt/NqCCKFAepDtc9BLfGIEmFO+V+5Vsw4jvmCY/ZoV2b+56RtzcJKJKk5kjiU7fU89O1N4uFhGZ18XydUlQ=;7:88XdHF4/nMpVbyW2gC9zVJkZoz8ETf110BMqVdTnVA07T3lJ/3g/KWeRCE/GDlkOCO87sbizqmiaNKVgAa+nkCf2KLDYAL3qtBs33RP1GtixVDQUkuvx/UbwarLfX9x5GnHi3mpXyqXKUkMXy6cR4dNZxb6Itj7rXsCY+kn9LjjyvdLao3S/ZBzeGivoq0og/DMvWfAVVwVwrUiXs8dDowPGxqXGZAHzae5jJWCa34Vm/i0cKA1DhcqlAV0r/7h2ZSesoqVxOaBQBk6OsGcGhRZD6I3vGu7jK+ArUFFnBwEM1/dXmNw0+LMJgdBnK0j8
x-forefront-antispam-report: EFV:NLI;SFV:NSPM;SFS:(10019020)(98900003);DIR:OUT;SFP:1102;SCL:1;SRVR:PU1APC01HT070;H:HK2PR04MB0706.apcprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;
x-ms-office365-filtering-correlation-id: d5efd707-3780-47e1-9341-08d3e2b7d2ac
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(1601124038)(1603103081)(1601125047);SRVR:PU1APC01HT070;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(432015012)(82015046);SRVR:PU1APC01HT070;BCL:0;PCL:0;RULEID:;SRVR:PU1APC01HT070;
x-forefront-prvs: 0073BFEF03
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_HK2PR04MB070661404763CA3B45FF7C219CC90HK2PR04MB0706apcp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2016 07:12:32.9948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT070
X-OriginalArrivalTime: 22 Sep 2016 07:12:40.0608 (UTC) FILETIME=[B4B26A00:01D214A0]
Subject: [oss-security] CVE Request: VLC: Potential divide-by-zero issue

--_000_HK2PR04MB070661404763CA3B45FF7C219CC90HK2PR04MB0706apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

Xiangkun Jia has discovered a divide-by-zero in VLC, which makes the applic=
ation crashed and may be caused by buffer overflow. The fix is in

http://git.videolan.org/?p=3Dvlc/vlc-2.2.git;a=3Dcommit;h=3D85a64e10d665edf=
8a29526543b5c6fd4923437fd

Can you assign a CVE for this issue? Thank you.

Regards,
Xiangkun Jia
Institute of Software, Chinese Academy of Sciences

--_000_HK2PR04MB070661404763CA3B45FF7C219CC90HK2PR04MB0706apcp_--
