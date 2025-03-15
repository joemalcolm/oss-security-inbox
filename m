Received: (qmail 30005 invoked by uid 550); 15 Mar 2025 17:09:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29970 invoked from network); 15 Mar 2025 17:09:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=1VQW8EMWv9XvMh/R9tg9k81B0iQ1XgQetXzE3zEEuA8=; b=ul
	Pf4yJcAltScvfrCZbruKbyt5JTBGhZgweaXVBvRPsrHr2z681Ph0L16pdeC0wVGy
	ha3xHVg4RBZJrp7UjUEY104y6NYSXODeEgPUAvNic2ntk87hDs31TksbkzDtsAsk
	iwqC2dCUwHJA9e0AYshzMFs9Tzz+3iowiZ2e4mMJQA2cHSkt8Fw61d5r8tGJmEJT
	5CXLTJs0bemlhJaChvwdOXMSGGKCAkyp7ELdtR7dkjJn+4BWykFOd3Q9KblpdXMW
	iFZC3dkPreSJAeBHdXq1a05JFhgdfP1c+/7p5wJhLFoYj/TWSalXGP+7xBZl61wN
	l8v8MnnssMq7J+B9f4LQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6nuYKlHL3FXnf/C+j4J7QUlw1UIWW2lY8F6I9imt3CgJB6GQ8X73vqYftnsJTDqYmOQrRj5B4BOHdrmDSVjRwi1UeRGGm0giWpnJCFhaxDbmrFlTbXWX0Np2pAgD2tysg8BLk3cbw/Y+hgwpNMwQqFuCMW7NTdPHUqaeeO8c1xLgXmkqSE5+MUQZ6K87TI/FNbuvbat2s9+jSQNaaHKtLR0x8mDE9lNZbAttnWguqBDGrSBBpgcaNUHbgq0NtFEPYOHmfImyII9TisLR89UYmShKGQN3aN4s9K9r6bs5pIMntP+l4C8//QRRY9huiv2PXC1DLOXxdYqYlvnfQ4bsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1VQW8EMWv9XvMh/R9tg9k81B0iQ1XgQetXzE3zEEuA8=;
 b=cbRjUvT7CyKYBNvJTGfj3S8rFc/O26aoO2lb2u1xlzIOvWGh1YP1T7NOCiFW9JCz/zu/MczY26kbctoEbYMuNDmZSjSvnxwsWQ6ogrtXRZN3Ev+CTxCc7SZhoSFdRcdB7Ec1m5fpcC5Qt38uNUY8TBWwTzW6wqBQP/IRVn1TWfFH7w29a3lTBtQWPzDuheqfN2sqmyjX6/jCPJF/TJyNcchnPkNi825W8qcAk4xJKr1s7z+aBQuoEkna+UMwu7TlgLEeNhb9REnbfMRKDjUh4ldSX9Ig5q5OGFARsCBh3Bd451GNV28aIMTFc+WnlamSbkAb2+WCvftxImmW07fgKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1VQW8EMWv9XvMh/R9tg9k81B0iQ1XgQetXzE3zEEuA8=;
 b=h2vDWvoovgGXoFvnSU4rRaT/MicGoLTJRmzgtV+nRSscADI4LdLR/HPQmnujO3M07SIuLg8Xxk4kueNnMF829f23f6HFUUszDPsz8RnUIuIxRzGDqO4XwjHV0wzNyESbnm9Fa34b3/dz9r4zeW9xJcI/Jfa7f6U+olWRqPK82zHD30k0n8aR0+bNU3h3tFju1+6KY7BoCwBc7kaT03Gx9UZJD1V7mYWHOLDZTPRjvdecQYfgv41jC7Yv6WA9bhCYcEZ8Hl2F4mXSuorq1rFwbu8RX/g5EmsQg2OXMCYeI5HARxKUvd6/CL1VLEZmzPxp1Uojq77vk74DlINOdzieBQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: =?iso-8859-1?Q?Hanno_B=F6ck?= <hanno@hboeck.de>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] expat vulnerability CVE-2024-8176 / impact of
 recursion stack overflow vulnerabilities
Thread-Index: AQHblRJ4u1BdnKdACECdhg9QJU6AorN0b8SA
Date: Sat, 15 Mar 2025 17:09:39 +0000
Message-ID: <20250315170905.GA21652@localhost.localdomain>
References: <20250314195324.02b25dae@hboeck.de>
In-Reply-To: <20250314195324.02b25dae@hboeck.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|MW4PR06MB8945:EE_
x-ms-office365-filtering-correlation-id: ebb4bf17-34e0-47fe-caf0-08dd63e42bad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?JiMnPbuTbqU4TvIa6822tALgvk0sGS7tivoP8qiYaHbBEoy3mPbJhakmP8?=
 =?iso-8859-1?Q?XMxOOWApEDBBGM+xWRdXMYhq/HJcrMlioR7hdGV91XfSmS2sxacTgMDPA0?=
 =?iso-8859-1?Q?w8DJV1FrYSKNzQpRQtc462HPgkCxktV2UcNUTHG+VnwBL0KoeC1YsOrjbq?=
 =?iso-8859-1?Q?K4nUjCnCxZilDDJsuLU13CiOT20jxAk9+6A6Jiq97OXWE0FFUmdx5avRG4?=
 =?iso-8859-1?Q?tStl6iFFi83IK4j6JPN575kMwZeehxOu942SOmIsvoEzjWS5/EqguLtjnD?=
 =?iso-8859-1?Q?aJN99B011tqec4opu4wMxKtFQrq9JVTuUxQsHcTq5CBZXZiDJI1Rxbnxpy?=
 =?iso-8859-1?Q?9SE7UGzT8rMnYUlt2r9GpYD24yJ2ROK6be1J6aQ7qUBUT+q1050yMgT4Wm?=
 =?iso-8859-1?Q?Crlqfuo//YYN2L596fi2n4JOzep/E79L48lIpobIQpW+KftMyvGQgFMAbp?=
 =?iso-8859-1?Q?EhQRfP7BaT0qahUp3Rw4Y2xmKRLnvtxEx9mnVWfLvuqJZTHRxAGPU3WA9S?=
 =?iso-8859-1?Q?Emh5NcAqnBBd91UNemIGHAb220NehdL/hDP3gTSW9b3FHyNCXU2lN6y8yu?=
 =?iso-8859-1?Q?KzntLOcDBs5gvHpehdMYLO6gYqn0st8/GKhvB6/qp6v5oDjIldBOduAiIM?=
 =?iso-8859-1?Q?AXZ3GlHC6zVlEtGjfMCwyF4WUbT5D0XQKgW6yunVRQeNWkw+NUa8gu8Rkk?=
 =?iso-8859-1?Q?sJJndZyVTo0eN71CbSooyAHy1lIN2tcDU32HWWvYcPwdqhDcTQ5RvLGxfr?=
 =?iso-8859-1?Q?JjFBvUb+nB0nC6xDeoN0BXNMvFsX6v6XkQcY++EXoBwYC7Q6YehravU9zM?=
 =?iso-8859-1?Q?RSXISWPe58zUlB7CAjw4uenwOmMBrRHlgpNEsM4uqq81qyv0rXKRIzHOFY?=
 =?iso-8859-1?Q?DuPGXx7FJjiYA3xgxfPcgCrLTfPwKXXPg9lvbZx6cbhpNSkIJM74Qro7E/?=
 =?iso-8859-1?Q?t4+QMgZXA4OLgBKNqYSCqngaK6aQ1qGrhsnrcFOHknErNN98MtjbGwkfYr?=
 =?iso-8859-1?Q?90gH88eSectiJMPEDAA3T8dctGh178KO0M8hNYb4sCNExe+O2s3h7nDZp2?=
 =?iso-8859-1?Q?eGleAwdUAC8p19Yqyt5S1j0UnMO0/hpJuA2TTJ51O6yMhY87wNahBRwNQZ?=
 =?iso-8859-1?Q?IOOy4FwKDCXYEmpH1gpHumRaQO7A3JBvblrqJfcj4VDPFOdqLeAwcZ1rb2?=
 =?iso-8859-1?Q?xa20yYnp7W6l54DFXe8S7rbISy2f64arDHGXRUsUhAI5vEsBGMqPi5xWVZ?=
 =?iso-8859-1?Q?DhdJG6UKFZvfBxxc/o+8/IMaWNQN+/Xa5e2Z1C7aqq9kesyrCF5/Q1x+J1?=
 =?iso-8859-1?Q?9zW5w2g5T4Jktols9eLzREJrgP11VxLorh4ICkwPc1BLHdtOw/A6NdrNGY?=
 =?iso-8859-1?Q?eQC5IiwemzmHa7a82yQkfNmg0PI8uFNHLa7LHAGYxyTmmufiud11F+RiB3?=
 =?iso-8859-1?Q?xouRClRlkE4kBLVIM1ivqkiNW9lruXn8+NWPdA=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?41nww7ym26dl1Rpv2BbSmYcg5r0aRNgVVq7F9OmmKLs4K4eX9lHcz9UcMg?=
 =?iso-8859-1?Q?jlGFcNCGRV6ymVLZGdgj04wHcjWro7+BzEiGdGO5RvchePxUzF24C9s4po?=
 =?iso-8859-1?Q?rbsuWlzfjlshGu+TaexvhMQJMJK/ln0uUsT/NSkjG6ygY+PdoQ5+nKGWqb?=
 =?iso-8859-1?Q?Rxj+rLIbQDljgguAp27CKuQT6oMqr3mIkUd2OV5Bk4ZQ3xl7RhL8IfWrvp?=
 =?iso-8859-1?Q?Plt8ALxxCyDB42Sdv8u5neu//k4/k4ORH4WZ2NdwdpMnb5o0hs1Rt/ER3T?=
 =?iso-8859-1?Q?xY+lsoZpY0fM2qIIFbV4zfny31qWzqiu1iXQZ5v/3tU/3rJx1dIfu2eGuv?=
 =?iso-8859-1?Q?Dbsl6WwY84vsd9UoeorhfLBw5QExT8xquNfK0dJtQ87+TexwHWhuX8nb1a?=
 =?iso-8859-1?Q?geU0xvF8gT4/FOFKLjyGN8xHRzoBXNyCJbJk2Hj+4M5kuq6YsO4FbyP98y?=
 =?iso-8859-1?Q?CRrLQm6MvMbCc10uBUdop+ohmYZUhDpYOH/xPgjZteb+lS4Y1SuDbb+bt+?=
 =?iso-8859-1?Q?zYuLmQlI8mW9ozusztk0Cb0Ygp7Hjsy8SdfX8vWItdPGKehec7bZmk+NLR?=
 =?iso-8859-1?Q?qQZmA+EbFJC1NI53yk80CTS2qVtj7hqRmm7S0BPs1o9h656wWL73Kyh+uO?=
 =?iso-8859-1?Q?jVQb3XDp+agd9+9Yzbhsxn7qCnZArFVwOIE9n6tSs1rtluMVq4/Kwf7gez?=
 =?iso-8859-1?Q?uChUmUweQwu4DdU+CL3EMsfZpQsk/7iHL+LF8CDOaW4GgMIl+ILhocT9IS?=
 =?iso-8859-1?Q?w8wbxT+zkjuntkV73mBCrCC5GsrxcU5o/nfHFJUMJekopR1x6yL6bTjEhZ?=
 =?iso-8859-1?Q?CF5czN4ZloGlDcC2+rvKBXZP1YzpIMFvwpWScyc3Ha64P4Ax5URyPsxS9e?=
 =?iso-8859-1?Q?CcSp5SbMqkR/COT6MPyWwB/Y+Ty0h62R/9rTRWobf1xcncHg2kMegkVOMh?=
 =?iso-8859-1?Q?98zWfCT5VyfT5iT/FF70Q1xSTSmshhUcHUv8cx0KUQMOuU+iHGnMSeeITu?=
 =?iso-8859-1?Q?j1YaEoEtlAX/5Sc/VBjJr/1mrfMPp0nnFjhq5QfrLMdjS/xbFQcu47mPXb?=
 =?iso-8859-1?Q?rKzg8iZNfdlOeZpaeQm0f9bj3ITOPBM4S+nbOvDRPTKxHrxmdsldg2gj+F?=
 =?iso-8859-1?Q?VU+bjpuZfwA3d3AsubVgHg9bLWOrWdys2MylDaugt/A9hlRq4Nk6LozByH?=
 =?iso-8859-1?Q?8HzV6a6QURT5AKBpgnKICbNS9BcHjSgWYvl3WGD3bsNcDx7io2utrSrfg7?=
 =?iso-8859-1?Q?Rn5LIhkZKXt9pstqIoyp4EpT6AlDr4v1mzx+QAk/deGCNsGrDN6XMX7BY6?=
 =?iso-8859-1?Q?QBo2g0WJOA1DcKyeoJHqIGsre2KuJJAmYWQwkSPW0G+T5vqEtMvEJIKWME?=
 =?iso-8859-1?Q?Pq2SthklDeBK1xXzau9YmC0jwjs/ECC3uwcTA5tBXkvdKO/zh0ScOSf7DH?=
 =?iso-8859-1?Q?YRGb+8/YNr/rOmuPoUDm3yRRXyaVe3iDw4foNXVeEOdzpQrqs2rkEw1BGd?=
 =?iso-8859-1?Q?Go7dTOSud4nyOni2GsFBh3T0T0bdCl1YNjI8qVeHdXTTriz/nSQUIcBPb9?=
 =?iso-8859-1?Q?emd+6WE6GiRx1aP+/YmFY4kQqEvTSFTrRfL5zGSvnV/s6MDD1LqO+3Hc2i?=
 =?iso-8859-1?Q?eBDFi+A3ON0HclPnYD8BuCGj1qgSQNN3h/R5ZKBBytm0awEZrNvdN5OLek?=
 =?iso-8859-1?Q?Z7gYyjYz+8Y/PJglQD0=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0DD1AD358D98DE4D8B65551E8D559C81@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb4bf17-34e0-47fe-caf0-08dd63e42bad
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2025 17:09:39.2611
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roA2NFdkC+dCid6+y8pCC1DkM6I3RvQJq2NQzef5GvLWPd9GouDID2dI7wujcyuxHf+FIx7XvemzCbjr4UKibGSjiPcAjfZgRWAI5DyaI8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB8945
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-15_06,2025-03-14_01,2024-11-22_01
Subject: Re: [oss-security] expat vulnerability CVE-2024-8176 / impact of
 recursion stack overflow vulnerabilities

Hi Hanno, all,

On Fri, Mar 14, 2025 at 07:53:24PM +0100, Hanno B=F6ck wrote:
> I believe from the above that current systems should not be vulnerable
> to this type of vulnerability. I am unsure about systems that do not
> apply -fstack-clash-protection.

We have not looked into this specific expat vulnerability yet, and we
have not tried to exploit a stack-clash vulnerability in a long time,
but maybe what follows will be useful anyway.

The TL;DR is probably: stack-clash vulnerabilities are not exploitable
for arbitrary code execution anymore, because (to the best of our
knowledge) all major Linux distributions use -fstack-clash-protection
nowadays; and even without -fstack-clash-protection, most of these
vulnerabilities are not exploitable anymore thanks to the Linux kernel
mitigation that was introduced in 2017 (a 1MB stack_guard_gap).

1/ Over the years we have disassembled various binaries in various Linux
distributions, and it is clear that at least *SUSE, Fedora, Ubuntu,
Debian, and Red Hat Enterprise Linux 9 and derivatives compile
everything (or at least everything security-sensitive) with
-fstack-clash-protection, which makes it impossible to exploit such
vulnerabilities for arbitrary code execution.

2/ Even without -fstack-clash-protection, such a vulnerability must
satisfy two key (and unlikely) requirements to be exploitable:

- at least one single stack allocation must exceed 1MB to bridge the gap
  between the main stack and another memory region, because the kernel's
  stack_guard_gap was increased from a few kilobytes to 1MB in 2017 --
  most likely this stack allocation must be a variable-length array or
  an unbounded alloca();

- this large stack allocation must not be fully written to, otherwise
  the stack_guard_gap is written to and causes a crash, not a memory
  corruption or code execution.

3/ The last kind of stack-clash vulnerability that we exploited was in
2019, in systemd-journald. It was exploitable because we could alloca()
an array of up to 4GB, and we could prevent this array from being fully
written to. But even in 2019, *SUSE and Fedora were not exploitable
because they were already using -fstack-clash-protection:

  https://www.qualys.com/2019/01/09/system-down/system-down.txt

=46rom https://blog.hartwork.org/posts/expat-2-7-0-released/:
> Please leave recursion to math and keep it out of (in particular C)
> software: it kills and will kill again.

:-) Also:

  https://www.openwall.com/lists/oss-security/2025/03/15/1

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
