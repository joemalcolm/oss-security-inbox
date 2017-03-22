X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2276" "Wednesday" "22" "March" "2017" "14:54:30" "-0600" "Luedtke, Nicholas (HPE Linux Security)" "nicholas.luedtke@hpe.com" "<d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>" "62" "Re: [oss-security] information about pwn2own Kernel problem" nil nil nil "3" "2017032220:54:30" "[oss-security] information about pwn2own Kernel problem" (number mark "U       nicholas.lue Mar 22   62/2276  " thread-indent "\"Re: [oss-security] information about pwn2own Kernel problem\"\n") "<9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>" ("<20170322103936.GB28849@suse.de>" "<9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32205 invoked by uid 550); 22 Mar 2017 21:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16267 invoked from network); 22 Mar 2017 20:55:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=HPEnterprise.onmicrosoft.com; s=selector1-hpe-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=bmNUV7uMZT8Dk9LFzlFCqYLUHeswjNwABUVxa/KDrRQ=;
 b=gFsVrBQP9nuH6pQSP0aq/87OseiICsh+7h8N66C0ihVgJ/8m2LW//LR39iLgy3Tx4aG9fx90CzckskyWcAr9yqed4M8d+RS974EMsC/haMKQOuoDGBgRTDKzJSIPOLrdgpsH+Ey1X5vLURmVZO2g+AQH62Og3lcQbFXakI+GRTc=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none header.from=hpe.com;
To: <oss-security@lists.openwall.com>
References: <20170322103936.GB28849@suse.de>
 <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
From: "Luedtke, Nicholas (HPE Linux Security)" <nicholas.luedtke@hpe.com>
Message-ID: <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
Date: Wed, 22 Mar 2017 14:54:30 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="Ot8pebd5TsKbEAPI23eFI9PESiRxpwv9c"
X-Originating-IP: [73.229.89.246]
X-ClientProxiedBy: BN6PR02CA0041.namprd02.prod.outlook.com (10.173.146.155) To
 TU4PR84MB0110.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.140)
X-MS-Office365-Filtering-Correlation-Id: 66c27c93-3cbe-43ff-3571-08d47165b3ef
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(22001)(48565401081);SRVR:TU4PR84MB0110;
X-Microsoft-Exchange-Diagnostics:
	1;TU4PR84MB0110;3:JFyphs7O9eK9n3w9raE5BV/JJLyq11nrIgBlsvPEjo0QfHOr0IhkWzjmXXxPjy+mFVCLmss1XSA8l6/cv+UnbqTxz1aVaRvz4ghxi7Hr7sdDWTJCjEqVtY2kJa6YGpTkCGl4PVilBUEiObCWQ9g1Wog/j0rPVRD3LU+or0AfqhBTPxNjSh61tbABd1bltB7mKSMsGOeLdEuw07A9LoxWUCqs7S5LfGS8O45ZA26Ms3ZJ+QpKnvgDTEe5AnYqylbyGCWEhNDUPWmpf9zYZpHRK6YG14KFVFKSblvhWKv0v4s=;25:M1rVtqRasUULI0bGvNep6x0yhy2vpvnM0xdZcrAoWfkCsUOi4V5YpBeKVO3MB+zdXAvNrOlnOb+BxqJKtj2YaC2L67nrbn/vfxJfJJSuNXYn4VTlitzHi4zP7TAeMh/7+87vpqHUx6RBkHWSzKruDPGTkarFyGFq5ZW3eOlRQOpAK/228z+5XR8reMh6ND18Q1L7lh4J4W0gX9hTzxuRLwi50phERGQRcOvWBoihqd92rL6cHBjhc+k7R4qQHcpsTTHfPFhT6PNxlnvKyB6XQA36RvxalsSQvAbV8sv2lfAHq+NnvVvl1DG5bRa4bloATcQVNXEZQF/PrKOYCYwkMuXxnLhyrjRj6m2no0KRivzjGowJ27MaSMSf5O24RhT6IcX9qzbNzxRSa1a1Oecqr2X424MZ+aKILzAu4g5HurBO1KNJL5WZQm8/ZSgj90IVuc8q0jraL0EVe2JHlpFEQQ==
X-Microsoft-Exchange-Diagnostics:
	1;TU4PR84MB0110;31:xBvPRTPtPJ5CniLTIRaMQ5UqbSl0aKtGWskLt9qLacHHSe3Yzee84GaC8ThIBDZAwlHRGXzPlyVDm/UTWp4ji8IQvwl5+5hsFbevOd6RaPeLOXoCaINfG5/YdGhi2dTJJbH5jKn0KJL7tAoHSgDYKUMZsHpI0wO27nmQ220JSlXmt+mom3pSr+f6GO9L5l1qvU1XHkoLrw6lZSSir9fNp4MuXMz1rvqnTdU8LrisGqB66m06HF7mBPRLmXmSgwpQn18M9lJRLULnHEUs/eN7+g==;20:57P95+aXgGnJhlsb1BdoVRXOQ0Kb+MtKFk5/sKHRgcjEyfTWBcYTcLQbpfPFNg5ldwBwnz4lRe/422yj9NUqO1StT8nlks+txCt186oC2fir3z4bdcLfsP6dZ5N0Va1shZwi4rHWbnQ85dhoskaywrxYYqzpfXpMSZE5M56GotPZQFnqk2y0XXYLYDtuS9RjiUIjNL1cGrb5zgt9f3Owu1i07A/nLcnr+CNyh9ABaxoEOzegaZ5+67a4al5hbgO39MrntUmze2Fd497qdYgAkM5rCr1/jFi2eAMYex9dic8LC8yLQxBwC8OU4WzpzyPCDsPokDBe4Hc+HaoIZU9O+vJGT/jBJKrxu+CCXz6t4DDoevp3cYtWE22VU6I/tV5rdrU4Li4Kqlzzv0UHQHPPTcEH6Jfbu0ZEONJ/5DTZkeW+8bTZpY+U+iOns5Ut7nWbyrdvfySZgeb+5RFG9Jkfpct3fD8r1ELGmGTFiCmbyYCi3Kwb3fb3evmNJi4BOJ22
X-Microsoft-Antispam-PRVS:
	<TU4PR84MB0110D9CE5E1FE4A4384B28FD993C0@TU4PR84MB0110.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test:
	UriScan:(227479698468861)(192374486261705)(198206253151910);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026)(6041248)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(20161123558025)(6072148);SRVR:TU4PR84MB0110;BCL:0;PCL:0;RULEID:;SRVR:TU4PR84MB0110;
X-Microsoft-Exchange-Diagnostics:
	1;TU4PR84MB0110;4:iJhQQ0G3WXnaugkH2OT4d68+Oyj5Xm4pM+4gbI1p+3fELxwr5LNgjToRYmSGq6Nc1ePc6nNK1/giFVq4rM6HCcg7pgOtM7/Z9JrijxNM1q5o9lBmfpDf0z60Sp06F3Za+J9v4/5ZCkar7ijihLer3jAlGbknEbF2+TnZ3UBmodPZayNhC29nAFjvzqBWAVAxPNdRsv+EajrwpCNidMGKXUPmq53c8KmDlHO6RQ9lQeTInDQwwGNp2S5swong84jPBTEtAPz/E9B8lcMtgvrvwDsv3O0MsDhV6EdU9rvQTbiZK4YNikQsJZLAzjbjp6UVw9oSWS6DrOWc0oT6MNvr1nbgVXAp3prdCK34ko6YbvO17NRcyVClAiu9r62LAuMs40XG9fZChyKuhbFDUaM6KVveXjfMcf+7iSQ5RSCAnQC6wb2zeV6oA5Z55Lo0H04Hy5Q30hlB0P+PTjnXDu7OOUDqx3XCd856nDExm8aWUCE7NFCZA2GVWdpTpPaQF7N//vWIqQJdYyAom5g3t/VWesOMhM5t70ul+r5CjEiKS1v5bG6oWloGTjBKAQWUpSjEx+Z5BlaekmnLb+Fqwm0GRdmVV8P8szpDVBCp7LfRZXme4avRRmPUyUmz95i/XPv3luR8/wOyVpOV/BwiG2cqaAnmGfZQ7aBVFz5mz+1fCXSsWO4D/UKy6v/VcE747wy3jbwg3B5SBhkyHrabq2ZwY1QqpRxEOQLCaXuc7EKgX6o=
X-Forefront-PRVS: 02543CD7CD
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10019020)(4630300001)(6049001)(6009001)(39860400002)(39840400002)(39410400002)(39450400003)(39850400002)(377454003)(24454002)(229853002)(2906002)(38730400002)(81166006)(7736002)(36756003)(2351001)(31696002)(50986999)(189998001)(305945005)(6246003)(110136004)(53546009)(84326002)(25786009)(83506001)(64126003)(65806001)(86362001)(21480400002)(33646002)(66066001)(8676002)(42186005)(2950100002)(117156001)(6666003)(65826007)(6916009)(4001350100001)(53936002)(77096006)(6116002)(512944002)(5660300001)(31686004)(6486002)(76176999)(54356999)(3846002)(5890100001)(568964002)(5000100001)(15650500001);DIR:OUT;SFP:1102;SCL:1;SRVR:TU4PR84MB0110;H:[192.168.0.104];FPR:;SPF:None;MLV:sfv;LANG:en;
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;TU4PR84MB0110;23:1c3Qd0PtcBAMk1/Y5HOkE878xTNsAvE4X/ODud9pd?=
 =?us-ascii?Q?PEauuPiHr+++GPJytHQHDtCWpnYDjWjbxfUsvt5RgOcTjTmK0YdWSK/VGFHe?=
 =?us-ascii?Q?qDw/elBAvhDf4OvcF10feql3t/Y8Y+S3Kv+0YGxHCXa/2Rh2JS2Jw5eWEWs9?=
 =?us-ascii?Q?XlHOAlqiNhQO/WTE5aDLhXDIm37MeXRHdZl77GBrrgP+KGaXSHCn5j8a+fi6?=
 =?us-ascii?Q?Kieb1jyBjxD1QSRQvKzkvt+gkrGsSeEa1TE3VlkGKy9OJUHXt4pkoCsESHcc?=
 =?us-ascii?Q?hcpLg0E0DdPfkXxXnQGos5kV/JtE6Is7Gk8JH13/WYAkHvw9d5EEfrYykmfP?=
 =?us-ascii?Q?ebZsgF2WJlC4ApL7O4VggFMxpElYALoyYzdC9Bxg/hdwSalreqAtjFA/bY9b?=
 =?us-ascii?Q?MegYuMWEUbyJ7a1DY28UVA6Ky/XNC6Lo36P6fnEtY4KIf1/wpkWeSZpJ3jX4?=
 =?us-ascii?Q?/NRsCqENtMQuPTrJlRICKhmTQfJ48BnxlVbJ/EoPvRZeUhnPwrNkNFRhY3KH?=
 =?us-ascii?Q?2V/ZCH7CBpU19LfOKvmHE6iGCAj9mAxemKlQkdw5/91ecZPAeNwd5/NKZyFv?=
 =?us-ascii?Q?hVj9S8eOr/xJNFYE9MeM6eqsNTC/Oep1uGgQfNsEpalC6K9hzF3jURRiYHxl?=
 =?us-ascii?Q?5xcI7LwQRdksHXOE3fkAP1GRvRaqXj6E1nVi/5puvD8orgjpEU/6Bc9hFE2D?=
 =?us-ascii?Q?/TeybZNgT2iPdi+MWhlJTIZMqVdQ5TahNNSQtxj9KRwhsqZjuStHS1tFE8Pr?=
 =?us-ascii?Q?CSrUZO/fGCjMNvi308tJ9pjogWGsP+l6YddcI3IiLosla2dMGMEf4p02CLBG?=
 =?us-ascii?Q?KTWuU/hAZFoi+1dHZ8qgd3oy+0l3wxLJ/IB/rrdkwwYh9pOvBFd+9lVvuZUj?=
 =?us-ascii?Q?1FGmYA4erM/dIpVcVdO0rS0xDVt0JMKJolsLcfOHvZYLGYlIntcvQqHvdlpd?=
 =?us-ascii?Q?Na/0P4fOZy0WSoQnlJqJ3puPJa9kzZ5JFNvtXc382pRygR4NPjGCj3dhlukq?=
 =?us-ascii?Q?7YvB1e78Yp8EUd5zXtiBr6mKGIKavtrbiPv9meKUg//CLh/3J1YR7dLDB5nM?=
 =?us-ascii?Q?svN3B+FAYAtccX4YoDuwodBK23fCOQHVbo+6u4LCS5K7Xms0H9vplynl+pOo?=
 =?us-ascii?Q?cmb7DtnYjuljMYORjwStazTu+oJbUxF10ejSqNlO07OjmPl3ZzOklsAXUcdD?=
 =?us-ascii?Q?GqsDGK821n4miVvtWZ2S1g2UPIiGdHayjna+RA1HxnBKcF5n74VnVXC4VzwI?=
 =?us-ascii?Q?U5xMtwX/3YcJACTNJQ1sObdGD0XFhMzVuBLsAQUjfu5Zi+BN7wGcYhHp/PhW?=
 =?us-ascii?Q?shjHFKYb1CeMR45zv/mVNZpkqjyFluZz7SRbNtJ9XlbBK0RH475cdLZRIGrx?=
 =?us-ascii?Q?LRZbAwNWaybUHIhf4AfQhMzDdQ=3D?=
X-Microsoft-Exchange-Diagnostics:
	1;TU4PR84MB0110;6:Mv2SIGyLqNry4/1EAPpqrX5T+w9dOav4oK++YHkWAxf5UVMuCsF2G/X8FvbcKEMTSUBEMt6PykCjEpX/oteXDnbZS13/f3UuBhdgLOXTW/7WmoIshDJuqhdPESYuOnQjytl/tDhXwexddqoB3u82DFwGaCaeoe9jIHkVyuvOMd1J6Y/Fb847GzECZfRyj3yG1eWouQtqnVOO96c5GcIsHxyQP/moHPQJk2jfCivpHEg0ddhAoW4zi2Whq0ILoEODUts89EV4pukLSgo/zdert9Redi3iYwnEGGYqktb0Qm6dj4mLHbNUgPmgjXFhHUAGZ53ZnLULg2G79PwQt2oaQxAOnvSxW003XweGI84LZmXD0XYiqHX+9IZ0IPr/2LXdX4X2SWt0d1eXV0t2oBo303MCnZbubh+CdORVY0W/zbE=;5:5NP3BsF5z5Wvzx3P3SngCVpVWNzzS5VC0UQfZt/r9JLP++H3NZ9k4m4axZOmTsfHJAC0vAC4J4Wb0sogZxU/jwzHs/SU9aAbCxXzTH/SMm14VzvAY0w/E6n2EljwKELJBOWLNTFE4Q5NrI0ClUkDLQ==;24:g92NbTyvojOTffNTemPplhv610eXjGfdvgICGuBfWOA35TT2xlv9GR8w+4wlx/428rZxy8FcWSSETMT2hixJ8Ed+iLtE+UgFuVatul2cz5A=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;TU4PR84MB0110;7:kI/H7Lsv9lWAdmVy3nmG7S+FcmmiX43VmyjG88ARXQA/bg95aQVbuHcwwFcGJ/4TwAx6oC8ttIqvbEE2/lJuaCdm+XK5OOmb6rtGV5GCclMmAZWYVTzXDCkuNf/uFd5/Ngy94MSZ8rmaxSW1YesXJp1peEjUbt5kn2Mo/pu7WCOev+v6RtFhTk2C4YxULTtjb6UkFaWk0R+9GnGUhfDByVozrnVC/3pLjbFQjUDQSq5wxWVHodp19me5fPXtBwdu6PNJLgvp5ejIogvw7HiGHWJOTmH+0NBcfvr4tJo6Q4rCOlgUPVlPl2jDP8ISHGZ9KsEAJFSsx1pra43LPE3x0A==
X-OriginatorOrg: hpe.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2017 20:54:58.7391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0110
Subject: Re: [oss-security] information about pwn2own Kernel problem

--Ot8pebd5TsKbEAPI23eFI9PESiRxpwv9c
Content-Type: multipart/mixed; boundary="uO3E3PD3lVAmFCJKmsBnkCGxFQjHTLpbd";
 protected-headers="v1"
From: "Luedtke, Nicholas (HPE Linux Security)" <nicholas.luedtke@hpe.com>
To: oss-security@lists.openwall.com
Message-ID: <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
Subject: Re: [oss-security] information about pwn2own Kernel problem
References: <20170322103936.GB28849@suse.de>
 <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
In-Reply-To: <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>

--uO3E3PD3lVAmFCJKmsBnkCGxFQjHTLpbd
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 3/22/2017 2:21 PM, Tyler Hicks wrote:
> ZDI disclosed the information to the Ubuntu Security team a little less
> than 48 hours ago.
>
> The Ubuntu Kernel team has triaged the issue and came up with a
> potential fix. That fix is undergoing internal review and I'll be
> disseminating it via the usual channels once that is complete.
>
> Tyler
Is this an Ubuntu specific issue? Or does it affect the upstream kernels
as well?


--=20
Nicholas Luedtke
HPE Linux Security, Hewlett-Packard Enterprise




--uO3E3PD3lVAmFCJKmsBnkCGxFQjHTLpbd--

--Ot8pebd5TsKbEAPI23eFI9PESiRxpwv9c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJY0uSXAAoJEL+bDtw6splI07UQAKA4HfcFPaif8Yr/iZV9k+BN
q8Bagro413U2vFdSpJ47mjLPUFMLodcWgMnQ9BmkdiIdLKgCAgm/lllK0JJ0DLWt
hth165HoHHXnVQaac7+Wr+8Jubye2vHpqxPTz7ePK59kjKt2b2vUwrOkSzXIW8yW
/WnEFWbAbKP4gAAF9UdyL4/BN5b0MuOZmRiIBKK6vG2o2sl8/zb9oPZozRMKa6nB
L8jCC+41sPNeiF6bkAPNH+BqYBUBRrgL1KrDczpQ0Mv4dLGb9ickCTPv/UNle7kN
BwaPGpJlzALvSVRD9x9ZfFpJSoGn4HUjJLuEIXRtO1z1E/IzG1ZdEt7sywJsh7r1
xXCe9gzc6+XLcEV+nAzjKhVNA8tMG47HrzCXF8xtR35+oTOY9HZ1MkT6Y/ZZDSvn
T0T93jtssvTa9DYQuZ7vprdsy/GE3dx82yS68/zVPJJ5SdukCV+cwR8MoBWROgLb
fOSdmfDELcPageBSyhO99BVCWde5DkJlIqkeRN+Df+reEzPL9+uXWUUjNGI5UTBO
e99fXnAEQp5SgdXjapPKNoarWMmraOguH7DLStIiG8hurY5G/oxPdmoYSkQgElAY
bOZhrpA5dGbOaCRe2JNeC8cjfPQ7zULY8i+SLucyTyrTUMM5DaFeePuO+SJmQWHv
ylTzMZvsj4JZ0h8IOLhA
=glK2
-----END PGP SIGNATURE-----

--Ot8pebd5TsKbEAPI23eFI9PESiRxpwv9c--
