X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1079" "Wednesday" "9" "January" "2019" "09:43:17" "+0000" "Purushottam Choudhary" "Purushottam.Choudhary@kpit.com" "<1547026997083.50320@kpit.com>" "27" "[oss-security] Fastbin double free issue in MP4v2 2.0.0 " "^Date:" nil nil "1" "2019010909:43:17" "[oss-security] Fastbin double free issue in MP4v2 2.0.0" (number mark "        Purushottam. Jan  9   27/1079  " thread-indent "\"[oss-security] Fastbin double free issue in MP4v2 2.0.0 \"\n") "<1547018706.5411.ezmlm@lists.openwall.com>" ("<1547018706.5411.ezmlm@lists.openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7946 invoked by uid 550); 9 Jan 2019 12:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30656 invoked from network); 9 Jan 2019 09:43:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eEv2KGfpCQrsMi6wjgm+7edXHI1gJZKTrs0cDwkuqY=;
 b=A07Lh71d8Yj/hCxl/tk7FPA5/rSkSkM9SH7c7cv2CV3NJgW6Xga/+8RcoidS185WNsfNf40NQ2diLvT5GEfAyFZ92ajQZTrO+bc2SBt9YcVgVQvMC6KOTgKrssDHncvfRCCzLeE/2UI5WxVaykJlfv3kf7MnT1GsjxMJQPb0KkE=
Authentication-Results: spf=fail (sender IP is 103.243.224.61)
 smtp.mailfrom=kpit.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=kpit.com;
Received-SPF: Fail (protection.outlook.com: domain of kpit.com does not
 designate 103.243.224.61 as permitted sender)
 receiver=protection.outlook.com; client-ip=103.243.224.61;
 helo=KCHJEXMBX02.kpit.com;
Thread-Topic: Fastbin double free issue in MP4v2 2.0.0 
Thread-Index: AQHUp/+/1d6fOQhUZE+WOtMVTPFZ/w==
Message-ID: <1547026997083.50320@kpit.com>
References: <1547018706.5411.ezmlm@lists.openwall.com>
In-Reply-To: <1547018706.5411.ezmlm@lists.openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [115.112.39.238]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: 
	CIP:103.243.224.61;IPV:NLI;CTRY:;EFV:NLI;SFV:NSPM;SFS:(10009020)(39860400002)(346002)(396003)(376002)(136003)(2980300002)(1110001)(1109001)(339900001)(199004)(189003)(53416004)(966005)(105606002)(8746002)(14454004)(7736002)(478600001)(26005)(68736007)(8936002)(81166006)(53936002)(6306002)(39060400002)(81156014)(77096007)(6116002)(186003)(2201001)(72206003)(66574012)(8676002)(3846002)(305945005)(4743002)(23756003)(356004)(5660300001)(97736004)(117636001)(97876018)(69596002)(66066001)(76176011)(486006)(7696005)(14444005)(2616005)(106466001)(446003)(11346002)(126002)(110136005)(316002)(102836004)(50466002)(36756003)(86362001)(336012)(2906002)(85426001)(426003)(2501003)(476003)(47776003);DIR:OUT;SFP:1101;SCL:1;SRVR:KL1PR0302MB2517;H:KCHJEXMBX02.kpit.com;FPR:;SPF:Fail;LANG:en;PTR:InfoDomainNonexistent;A:1;MX:1;
X-Microsoft-Exchange-Diagnostics: 
 1;PU1APC01FT051;1:GXP8sjr3W9Ylnj/Y90IvQ0pDMyD17wKiqYocy7GeQLT3IELP9eQahsF5hNOLCcj7WstiHIyNyZpOnvtZ2E7m+jwymNqEbCps3POsClMQi+lOhO2V8q2tEDfxnMjobaQi
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18b5bad3-fb74-4c6d-af6c-08d67616e507
X-Microsoft-Antispam: 
	BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(2017052603328)(7153060)(7193020);SRVR:KL1PR0302MB2517;
X-Microsoft-Exchange-Diagnostics: 
	1;KL1PR0302MB2517;3:UhyC6mFeEpZ50BzmnEipWqrqbR/bHZ7Jtnms72ewLxvww9CQMYAQneCr75Hke2IsZvSzKHFEYstIJom+s5Y7V8ov4Qb/y9e6f9I04iS2Er/CoIJq0o7fuTl4/jpyJuSWoFU5Z/ObVqg58NVHMqjIJ0HeG3w/9SW9NqIE6EkF/IPP7aGFKBf1RVQnX9W8el2UREvRq51OKSS9ilfPyPKjVOdaIeOjYaeFSp97ugt1ZxNJe2CmzSjoXdK4pdSKwZFbFv5VMvD5uSyl6W2CJC7vBc7wJNfNXQ/RluwjXaPuRtWzm7Z3XrRR4YRUcMWb0eoYn/vXSxfZF445yzi24jZTl5r4xgczX+rj3hIxmB6JAplv+nsWDTcy6c5fwAiNuuq2;25:3pghEzk2QeK6DDcrwxmU6rYajL3C9ph4HqlGKDL319u0ZpEneLD9KZGZ/V3VyP439Smbjyul/p2qLwuTozpAITH5jxGphIwk05UIb0ltQQCmN3L7i2EZG3N5d3KvSpYKLwwkD1yaO5Su/w9ULlNEv0o6NYpCuPiGgli8DAzMeVwThcK3WuL5/jh6WkxgBDzSmeAboGYn+YroBcROOpFEYs6xRhJy96GL1HsBiRrpMgJCvCppitvjBK6qwSIhtdugLjsFdhULU2Z8P+L7CXHUrvaa9K8bIP3JcSD+bJg0HRN9PpOTgq5CryueBRw00fNxR//Sg7V72kJ72m3ee8ydvw==
X-MS-TrafficTypeDiagnostic: KL1PR0302MB2517:
X-Microsoft-Exchange-Diagnostics: 
	1;KL1PR0302MB2517;31:0jh7eNcxyvrjpld/2+ZoVEhKHJIFrThp4BsjQoOZ1746Cyg8t07O6atdUJ26SKWyRzoGd0UK//tbT+v1w8GFVLtxEzKGs9CE5Br4dYieXNoedPMc4dwuGeFQSWsjsbwliUyGrZmY0y8iR1RPQEgu+8ENY9R1/zAKbwp7O4cmqLnpkG/7oxRKdCm4gPJxu1PEzZ3RyZCZu45mSQtEZvSfVfJVqd/ATnkSpkfw13alRCI=;20:pJ4Ffc0+/fPptkokRVjaHI5Uy+9SKNT0vCwzxonEO4y+t1bvq4+X3ThIN46BBB6+kny7wcuNOYPSicn2mVXKZgqa7izh49h9el64yiMQXSLTp6SV9bafUEmMaNfpzfRDZwpCV6Jcnaotx0DEda3ACDAqDEtPYSVMOirK5ig5rYmx+AffYr4okMd1a76L5P1kRbHKV/EWQFFOFvbvZuob2bU8iPgdvxyzT6vAXtSLhZ8b3HKb/Vmy8fDxWMQl4um4iXZongplskPesYY69jyQYf8IWQVpqKBic03uNUrvMjNXbodUiihcVW4wptpe2g0VyfpJasSOmhIneEeBTkup7cQuMOtWRUCgS9QH/TaU9iu3jnN7eyAVwRgQ9sHexzgaXwiWsMwcLwT0lgR+gIgF9F18O43DcKEahBn2QqvbkV4YI2vO1j3J1/Pso+T2zcB5mRoQZak3uJWrnSCQOfLeaxXQuKLl14k4k7yxEInI7gbY1phxy+IbplBD/P409yf9
X-Microsoft-Antispam-PRVS: 
	<KL1PR0302MB2517EB77C3B912A9AD7D556F908B0@KL1PR0302MB2517.apcprd03.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: 
	BCL:0;PCL:0;RULEID:(8211001083)(3230021)(908002)(999002)(5005026)(6040522)(8220060)(2401047)(8121501046)(3002001)(10201501046)(93006095)(93003095)(3231475)(944501520)(52105112)(6055026)(6041310)(20161123564045)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(201708071742011)(7699051)(76991095);SRVR:KL1PR0302MB2517;BCL:0;PCL:0;RULEID:;SRVR:KL1PR0302MB2517;
X-Microsoft-Exchange-Diagnostics: 
	1;KL1PR0302MB2517;4:TgHlOB/f9awmMNBNQ1D3Jw26i7RhltFL5RDpJfM9IQz9Zc2m4fglZJxO6siyVOm/BqyK8SHGDxvma/J/TDN078kmFgsnlisob5mi20jHxohJ36F8s1ooEXrDId0YY9seg4ZhHc0rXiSrwvJt9oAwRBaMtNBu6BrOPoFS1aHXKeK/VXCp8lif7I5Sf4Y1xqcKux60T7A+HDU9P3sYTr4ejV2VhPakV67Rw3tcNjeMlcvCYhy8C62I844/0J/nBjO2l8Zh7qLeXsl4rxfUxS7tX7bBidKK0C9KMGApZuooFTw=
X-Forefront-PRVS: 0912297777
X-Microsoft-Exchange-Diagnostics: 
	=?iso-8859-1?Q?1;KL1PR0302MB2517;23:H6coJrk87VxX91zy82TEKLjZPkF/PVB/0m7Kr?=
 =?iso-8859-1?Q?OOho0kzN+x5h883MMHxwkSRgXNyi+6lJ8b/004t2u0Ibus4NkYo9e69FqX?=
 =?iso-8859-1?Q?y41hk0r4GBfQxha+x6eHT0l2QrXYwLglCRzbND1vUqcXAGLwlkMyH5h0Uk?=
 =?iso-8859-1?Q?ZIUM/179KDBeT2oN1BmqanIQ2AWskptaFZbVeAqbloV+jRFCi7Z1+9PYYc?=
 =?iso-8859-1?Q?n7LACezWt9T+Clys6Zdz2JCl9drIqYl9PS6T8qrhYQ4XxtRx3EVBJP0sAQ?=
 =?iso-8859-1?Q?jDaLL1QQaQqrxZL9PlwQ8QonMs5um8m4jXim7z/8hPcjdtouXL8G3/tbvP?=
 =?iso-8859-1?Q?ZtqMMTVxR0VYCPLPMNI1AzbhZy4c9ra16XXYx2gTIKUtor7MstU2L7t4KB?=
 =?iso-8859-1?Q?YAOcXZt1PUqOphzGhHvH311U4wJDBu3rmcdimpjsQ8uu52qe4EON+5mnkS?=
 =?iso-8859-1?Q?oS+VemHgATlPYud34FervoWZv1DZXODkdahUm1JETYdxMvIphY0oa9oUy+?=
 =?iso-8859-1?Q?FYqdVZ1J3Sa0qNKClq2d2XRqQYwBXs1pmYTyZlkZycQr0iu00XhNLZtxKc?=
 =?iso-8859-1?Q?zegIZfGf/FZ5gjVXOhhUyOcYw5Q8HC4Aq32nGBxg12/PiZ8Q5iHAFXj3F3?=
 =?iso-8859-1?Q?TBnS8Ola5ckZJ1RGHutorbwoO7MOy0tE6ubI7kY0e2Kbep8RndHODfxYia?=
 =?iso-8859-1?Q?Qsk549sp8+tcDaWpSNUSeO2lRkfkntfxbr8iBuqtmQQjdr+dsF2PTb+HL3?=
 =?iso-8859-1?Q?73p0eigA0yTiVA6DZ1nfUnrpsWG6rKkgNqgxU4EsU5fqcdoYq1ThjPeo7t?=
 =?iso-8859-1?Q?G8Bj6QhHqXJMVSGow2lktbPK0F+jakkLaI8Qf4yuHjPPSVjuFflV1H3z26?=
 =?iso-8859-1?Q?OfgIApgxLAw7SbwvqNEG4+owHCORBxKFmYe3u/JNmfi879kUZwvbA/yACp?=
 =?iso-8859-1?Q?Wuft5JAVxgzsKMhdJCa7lq/mmTwqWG8Lxvc8fqNZbAhziROandk5T2nrFm?=
 =?iso-8859-1?Q?T1shwZk8UIf5LoMn+ykyswAJG6BlaqCq/l3tW7K+8VG9BKtV3HT3vKcMd4?=
 =?iso-8859-1?Q?dVEjncYFDMuwqhOShlcws+eV02JLjfhLqjXmc+U03o7QXyfOozAqWHAT7z?=
 =?iso-8859-1?Q?ro6Ir/P7WxdEMpI+bUguJYt5R+OCVmls0T7nKpKZNV12QJ3ahcjKUPu0I0?=
 =?iso-8859-1?Q?ShS+S0z5TJzGb3uIckPy8dcMKe8+A7IMP0QCHpsDXTwv+/JfzaF+LsLhPe?=
 =?iso-8859-1?Q?21e3YqZnz4Wt2xq32Rab4jn4E8yE5T6TVq5l/5Czwdp0S0nylHUx5sWjck?=
 =?iso-8859-1?Q?fqxSfzJEPUV3/1dGuPP4gd6EL69uY2tAKbdstvBq1TAZpxnXJVcFvUB0VN?=
 =?iso-8859-1?Q?svqHRnKZW2c/mA0tzLY7baD0bCZEFNnWLHdlvXAy35eaVmVQzNb0kPlHw4?=
 =?iso-8859-1?Q?vi0RtBy0LKaeDsGoQjRH69Td9+ITxdNweEaxmtdoG+BkXtxMsm3c5/dU/2?=
 =?iso-8859-1?Q?IllLEPVfwrzKSO1WewFB40=3D?=
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 
	qDBCyv8mvUG8i3lP7M3xrjk9Re67Q0TCELjFsPSzpjrK/JpvzkZp1u89WDmWsVCgCP4drsZSUjxUUm9zUrvA01o5CsRPSMvHDgA/90Ym6wI/tuIm2ABH6LrvCNjfKj7KG73WbJinrsemV7kRp7DzoOpOn4IWQRLUGzXgSVqA8UQWFR5SFxBFcZaw6jJvw7I8YZN6AeeEpTPaUoBCAkLCzH/1rCgnWlK5FwKmbX92QGt4hDJXKAWzBSxnI4oPV0oPyYGwzqoZoiedffYC1RJXqBgeG2gkcHqUmrcmtLXHGTdrCXyww7AeVmhknQEVkDfW
X-Microsoft-Exchange-Diagnostics: 
	1;KL1PR0302MB2517;6:lemqQ+MQ69Vrhawsbd0y525MGmwTyukyUAFdhP6qEhWqRkEAMwAa3hpxeBsTwXzLwCMxlnMYLqdEbRJi3RJRYR45qrNfOUAQ0JXNklRXMC/3xDjf5A6wi10v0vG/AGDeIDWJM80gHG4oIkq/jnwCuWwsDhUWHNHv/hK8bA81w6cTYrRLlohp3IXNAPR3Tiw/nQiQmUxqoDku+mcKYekGK2DuxDOim3QlPyT0TeYG/QQUbKSo8Cl5Q86zkIOeISbe1jMysoOmvDd15MVQoxdlPICFk7+QxdpCUr50xZcoAb1BtyW0nmiVTaJBb/P6mzbAwc7M0u3KAB++Al5MoSnezWQlUGwWF88LIh9IQgwHof02RQ8GAYLf9VXocuP+IagI8TcjGq+ati920wtG16M2hoFNaFQWXLOQ4VZDOyr5CjYXgtgYclbb8s+NPtlzCluKJuUzP/UyOntxbPnZdTBVZQ==;5:HGIFS6MkKml2gzI34542UhC15NrRfMqsxiGkPR26KlGMt7+5dPJspSQLN4ozy3/1G5/Y9NQdAuOK4cdhS3i0lNgStVoW3S9cHKImJYs10fJySIYCQsRUkxg6xJNA3IlEHOZMHrmSZcSb0MTfWZZOn8N1FgKicNe3A4vdAWhAp0I9ShQM/a/RZS6GkBBrKtvKnzMInSIt866XL79EK5p94w==;7:rJzqD+KnBvSy9cQpIt5GFT2wo6Iblj9XnkQOMMRCLyeGaJ8CxYaV10Q63Uc1HvcZte3kgGce2zFbfaIB8fJbVBZPofV0LyTsOdocDs6p5kD2qAHi2MWEwjIK7fEc2H8xubvO9vwYb8Mc3cTTAvm6kA==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2019 09:43:21.8191
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b5bad3-fb74-4c6d-af6c-08d67616e507
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3539451e-b46e-4a26-a242-ff61502855c7;Ip=[103.243.224.61];Helo=[KCHJEXMBX02.kpit.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0302MB2517
Date: Wed, 9 Jan 2019 09:43:17 +0000
From: Purushottam Choudhary <Purushottam.Choudhary@kpit.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fastbin double free issue in MP4v2 2.0.0 
To: "oss-security-help@lists.openwall.com"
	<oss-security-help@lists.openwall.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "kidjan@gmail.com" <kidjan@gmail.com>

Hi,

As per below link Fastbin double free in MP4v2 2.0.0 related issue was repo=
rted in opensource community :
https://bugzilla.redhat.com/show_bug.cgi?id=3D1603294

Issue description : libmp4v2: Double free in the MP4StringProperty class in=
 mp4property.cpp
CVE Number : CVE-2018-14054
CVE status : Not Available

Currently there is no patch is available in the upstream .
Is there any plan for release of the patch or is there any other link in wh=
ere I can find the patch?

Please let me know.

Thanks & Regards,
Purushottam
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.
