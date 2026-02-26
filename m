Received: (qmail 11490 invoked by uid 550); 26 Feb 2026 04:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5150 invoked from network); 26 Feb 2026 04:15:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	jan2016.eng; bh=+yOF+P/LtDKtpjUSuqLdCNvP47F1eBHt6/K94VHJ4CU=; b=
	WABYVQDsM3KAwvB0Lt/hGl98x9we/XDM/mrDRq/V2lsWTXLeX3MvxXiutfq8abLT
	41EOa5iX8CQEzBkRmLNg9JHMneZJWBZen7+AE3EO8jV57unNm5V/pcHeTXk9ePHW
	De962OA2HvE84Q9gg4/RvsDx8lK/SlQzp1EKB8bzZO27X7JpW1BPSZ3GRVOpUCRU
	lreKmzWRpz+yVbYcgZAvbhYUz+qO34Dxx9X+DkPxnbSb/Vuh9+M61hP032bZOfav
	8Eo0w8ujAEBvuvoj1ufeqXiidW+vH0YQSbqoKMlMjNWqt1EA2H/FC3jTZbd58SUa
	/ve8510uKw2cQcgN1qmMAQ==
From: "Liang, Zhiwei" <zliang@akamai.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2026-27900 - Sensitive Information Exposure in Debug Logs of
 Terraform Provider for Linode
Thread-Index: AQHcptIQ82+5v1PtoUaeTnY9+DxlQQ==
Date: Thu, 26 Feb 2026 04:15:38 +0000
Message-ID: <IA1PR17MB6672C522030B3E26462685A5AC72A@IA1PR17MB6672.namprd17.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-reactions: allow
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR17MB6672:EE_|DS0PR17MB6605:EE_
x-ms-office365-filtering-correlation-id: 0c0e3f28-7a9f-46a1-a7ad-08de74edb267
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|38070700021|8096899003|13003099007|7142099003;
x-microsoft-antispam-message-info: qBWyx168/SuFxrzeqtr1eY7eKtenPV8k3MUR+ZzcPQ+X6HeSlxYPqezHVaVOuFhNwZIE8kU5K3Ri4h8xz4WVv1f7aYQTSpc8NHJ5PY7xylcof5OFRpny1x5IRAecI3ZE2XzGg+ADv/rfUCSqLoMZXx+4I9bhUbZ5tvTcjmk1VfKCvCYcRcQB75FzPkFE+x0D/8SipYyPzh24fLgwsdmNHBXlh/JvhRO4IOfIsrCeY1vbR3jgY3jdTTf4XMpEhbfULkeh93MjWMZWOgszXAk/zfPLnIcsSTXCgSMmNmdxYZSTOEeTFYFSKq5zRUdn54bgjzcJS99a52HTair5n3WDLhzj2U81CdJiJWMnB9c/VNC+2DFmwN6d9a6b7ILdaGBkSZ5xCQqIRoEptmzsic3KY/ktci1co6LFR0D41GuZ61ctR2MZjrVSj9n7Nboeh4gP/221ga2UHqzAB/DU6VVqbOxoXVkX8tx52JGCNbfrP7RIT9rVs8e4Nb1B0UzCKr/T6StJ9GLs0QCeaEwbLp8PFp9FiyMjUKNolT41j6MEFwMgdCAVef4gYOqG/wwJUW0ue3DVfmZZ77rgvtnMGBLAK7h3Af+erkHSmirmVHjawOavp15P/9f/nsiTr+l/GEKbB/wrbypRFUaDu3mvq8Eof/uLo7bZBrnmttG1bKUYF7ZMTM0bREcSc1whcaUkfG2pQNu5lG1807Ti4KSl+adt0Li6oehyosTcTb4ADLm7aghFsfv+BvrL5RVgLkFRnqyE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR17MB6672.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700021)(8096899003)(13003099007)(7142099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+3Met94khEbgtIKvSg0nNpCRdmDwv7YmrVNtHXes4KHrVbvnjLonRCuPv440?=
 =?us-ascii?Q?nz2RA4vF3RvzSl8mfcXVCfALYD6t9RBALLCjnt5MVbjAxYmO9NFhju8kCQqD?=
 =?us-ascii?Q?Jb5xaoS93oKEsWTQxIYra4a9RETTtnnDd89TfjyEOOZbPmoRzxc97Y2/KKeG?=
 =?us-ascii?Q?og9W0o9r6ZOjoZluAmAV+0fbJfQqUaki9wqmj+KvCu7djKpQF59tTw1OoAZk?=
 =?us-ascii?Q?ddLMuXKnStnWcm0067GQwG1YSviUroNOkjdChRTUrceHlwIBXxDhcc2spV79?=
 =?us-ascii?Q?1yfRoOX15yr4TNyxnPtNZq2yCOuOmpt8uslNY2cdxfIDX8gKvBcc95kNZ2Pw?=
 =?us-ascii?Q?9K2GYJEi3uN3g70wqbzaGQYwceJn7wmWkOdVr4jUlg0iJzwjD3tRED6LpBjd?=
 =?us-ascii?Q?iIQSYqGo+3Sqb8iTMdQ0qOflsNhJO9VhWEZZmRyb2CC8V2MyU/8KgjZIsUYX?=
 =?us-ascii?Q?HxKQzBlCyza8MLk4MCQyQClTMLzh4UO6VTfSiBdXPtUoKgUO6AEiK2wSZr0t?=
 =?us-ascii?Q?ISFvEOdDNl7nKszXQ0A8UV6QIGcD0M4g6Y56LPD+kC+kxJic4YjdbEnYhQfJ?=
 =?us-ascii?Q?W3SiQeI531fqtQI4jwfcJIETf7woT5qYmcr5c0Fsd+yhYjwH3M1H5F7PI9cB?=
 =?us-ascii?Q?ldsK0K93owZh0ks0fyTt5/AFX3jfFTh63hhPEriLMjuGqlDSxgBhxO0ZAxY6?=
 =?us-ascii?Q?/WYtd0PfzsEJ7f+Ko8lbQQsvVbSM9gsjDSub3Gmbgqrswl+bXEkdAhMltYDz?=
 =?us-ascii?Q?vM7tt3G+DZF204LlHbwg3VdZRk45OmBPBDse805venpnlb9ZvAX5oJcHH8DF?=
 =?us-ascii?Q?luKVtUh0zNOMW7KgJCGz2oDoAB13Lswm/bc3ajSQVogB96xBYJoVrOWIIDt9?=
 =?us-ascii?Q?i3uozryr8DAhg8E4gB7a/MtFU4qzgE1/gwUs1n8lZWESkkdTcNN6bW/PzPlx?=
 =?us-ascii?Q?t1nmg8ZMss/d2Utt2rPdX33HtA5MiQJYevmbMIepRbcJVNn2kDOXCCruzuQG?=
 =?us-ascii?Q?5obKf09UEI/cil92EIKZkPLPmqKV3F5umvV9ILfvA/rx9snOkZMOfpKfODV0?=
 =?us-ascii?Q?WUBLYnVuGWddmjiJ39q74vwKYjs4+9hrXS7kmWAMRpqllcXOrXnjn9mI5JL+?=
 =?us-ascii?Q?n5IHl8bXtA8JYlgZrRrKtyn+39hbQH1p+egIHZfNxari5TByslm51xJYtG5z?=
 =?us-ascii?Q?/5Ihf5hksUIwPfZzegvDe79tjB1JxW4IKfcfT7mr+0MmhL2v2o6vJdewwG/B?=
 =?us-ascii?Q?bfmIqpvUiN1Sz7GnwqR1T39sp9aPThUUwjgiMlkusxsnQ+dJjEoHzQ1SWN+o?=
 =?us-ascii?Q?w+41uKlPphx/n/mY2132xgE0TnDSsZ0/XxV76v4lVa9z1peuHnpqjS7LZsRY?=
 =?us-ascii?Q?ep1Mdo6ZTPf4s1njSzQIW74oMz601P+COIvdBhSYS7kU9Fc9t1PP6XMMl7hb?=
 =?us-ascii?Q?uec7G1qltLWVtni8Yxs5WgkdrpbUaqAycS/y7/iSwPbQmE04k9KRSjbqOvhC?=
 =?us-ascii?Q?peweK3Nvnkj/Manui4+JVjBUkeD2Oqs1XKv7pru9Gc0coRxPkftzGGjaAmHq?=
 =?us-ascii?Q?x+incXgL9p9TN5eTlvsjreSYHG3IKVW1c3PkF5uN1FPPURDBNUN1RmuxM+PE?=
 =?us-ascii?Q?I4FIgzesgkk+tUHQElkVlzExqtcmOdRvyNhTrXWnHYT7oJEkeOUVe84vwlwu?=
 =?us-ascii?Q?1ppEJxEAxgcRKKKkweZN4NOUwBeFX0vKyQmzEzGHZHT/TMEb5Bl+T/lfWK5B?=
 =?us-ascii?Q?IgEzbn/gg7NiFaFX+kwIm5vpV3ZNeRw=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y91/hVSqeS5mUSBSTchrE/DuoD9ld7AJ5hL96+PTsFwVnpEZpv9PFQPWVH7o0jal0BQc38HDIAqsJbdx7TQfrlVfkoTXlKrGfn3aF1XjcggLbhy2WP6ZNPvJN3zw6dLZqbxlWJZO3+2VxdIMKxfePJ8kmPtJ8t3YEw4I82IpbtHH7VgL9HeY5D/1FJK3uXQNq5q6rODXTipgVEO0oWrX8ssfDV7YWC6O1uKtu7iIVHkS949LIZipSP8HMjvTnEPzgwApEidHJaV1Zo1plUqXvJWzWP0UoeJHm7C9JB7mK8zdlBFR0qlpoIoKBBkbw+62q+f+Jpazqvqhl/63XpgQEA==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ln9FW2In+wJTTsWFfh0F6j2lCSJ7fUyF/HzF815g/8E=;
 b=iuwrv4PB4/VuRkOnQECw7zq+mRqjDuwhL1ADi/44jwxOv4+0BQxTeXowSRyn9htzr+jSglaPixBcBX1tFL8+QTy1rdhRkKJyDzJyTpoYHY9cWqVSsFUlghPjPll+kxlgl9PzVDeV32UYqKSytg+kd8CdxePhUKXYWh79bxHGuJn8wedPva6CDeog7ZDO2pZ936gEZh2LjJYPBRsT2fpDtjbFLfHGBjUq0d114AWi+UUP+eH4Ax6ezXieVrQsZcUkvKP9yiNe3I1g8pTzvpdt/FxswdRyf5sUt67/MMA808aBixbMFpLa0ztkPGqLzQcRmFsF/7jFRsMhKzch+Q2IiA==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=akamai.com; dmarc=pass action=none header.from=akamai.com;
 dkim=pass header.d=akamai.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: IA1PR17MB6672.namprd17.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 0c0e3f28-7a9f-46a1-a7ad-08de74edb267
x-ms-exchange-crosstenant-originalarrivaltime: 26 Feb 2026 04:15:38.1865 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 514876bd-5965-4b40-b0c8-e336cf72c743
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: X3S6piN9V55KAewOKeAbNHYz954ezTevrYGsbFBkzG2quFshWMuf/JxzIvJf34nRJRDxUrMyPXp028bJNicChw==
x-ms-exchange-transport-crosstenantheadersstamped: DS0PR17MB6605
Content-Type: multipart/alternative;
	boundary="_000_IA1PR17MB6672C522030B3E26462685A5AC72AIA1PR17MB6672namp_"
MIME-Version: 1.0
X-OriginatorOrg: akamai.com
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 mlxscore=0 lowpriorityscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2602130000 definitions=main-2602260032
X-Proofpoint-ORIG-GUID: CW_fn-9ZGmFvCwSpshDIIFbRoTfdlDY9
X-Proofpoint-GUID: CW_fn-9ZGmFvCwSpshDIIFbRoTfdlDY9
X-Authority-Analysis: v=2.4 cv=YsAChoYX c=1 sm=1 tr=0 ts=699fc8ed cx=c_pps
 a=NaJOksh5yBwW9//Q5C/Ubg==:117 a=NaJOksh5yBwW9//Q5C/Ubg==:17
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Ifg-1AOnLHOf1gn6spyb:22 a=5uIk5skAYop0meUMGpPt:22
 a=2P3ekKS5AAAA:8 a=DRIpGtdEAAAA:20 a=NEAV23lmAAAA:8 a=8wZv-R_Ok__Ng3VHHcQA:9
 a=CjuIK1q_8ugA:10 a=pEUuhiu-hq7y_3O6:21 a=_W_S_7VecoQA:10
 a=7_7siOMi9rZwXhHGJV96:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAzNCBTYWx0ZWRfX0PWA9YAQE3pR
 0VVXOhkOFCTQU9qa0Xjx/UbftwWiNessGprFfuVJQt0bRYCbaJsxdo5WssBlmNj8+l7CSdtl/3p
 AK8uQAIpP4t5DTvPLmp96cYU25m1sMSRV/TPcuo0fy+I8xjs3WqYxhp67gHiTjV8FeBGxeCsupR
 Fi/d07IyJ8HlbAppOYWZkUTG4VIIF2xtgGLVMYWJ6dTkBzfdEl3IFr128pHH7CALyhD5DyKTsxA
 FE3s58ipaZ+wh5xG/pqpPHwyAvuCBVNbHV6TFFfmEGcvotDPhTA5ONY+xXe2o2vgoiiIGlkXDj/
 Ww4V19K/xMenOvke6AN45oN2fdjvsb6zfyGIZ2azqcjhT9rC0pQg024PJvYPI+E7a+K755Pt09O
 I7dRbDYX/378p2Qb8V6CircAUCd93VQPn4JdMCWEG1bUh/8AoM9IebhOmm5gsssCgqLjiteiykD
 TMUTr9X9ZhAgOrt7FvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1034 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260034
Subject: [oss-security] CVE-2026-27900 - Sensitive Information Exposure in Debug Logs of
 Terraform Provider for Linode

--_000_IA1PR17MB6672C522030B3E26462685A5AC72AIA1PR17MB6672namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Impact
The Terraform Provider for Linode versions prior to v3.9.0 logged sensitive=
 information including some passwords, StackScript content, object storage =
data, and NodeBalancer TLS keys in debug logs without redaction.

Important: Provider debug logging is not enabled by default.
This issue is exposed when debug/provider logs are explicitly enabled (for =
example in local troubleshooting, CI/CD jobs, or centralized log collection=
). If enabled, sensitive values may be written to logs and then retained, s=
hared, or exported beyond the original execution environment.

Specifically:

  *
Instance creation operations logged the full InstanceCreateOptions struct c=
ontaining RootPass and StackScriptData
  *
Instance disk creation logged InstanceDiskCreateOptions containing RootPass=
 and StackscriptData
  *
StackScript update operations logged the complete script content via Stacks=
criptUpdateOptions.Script
  *
Image share group member creation logged tokens in ImageShareGroupAddMember=
Options.Token
  *
Object storage operations logged full PutObjectInput structures containing =
user data
  *
NodeBalancer config create and update operations logged NodeBalancerConfigC=
reateOptions and NodeBalancerConfigUpdateOptions containing the SSLKey (TLS=
 private key)

An authenticated user with access to provider debug logs (through log aggre=
gation systems, CI/CD pipelines, or debug output) would thus be able to ext=
ract these sensitive credentials.

Patches

Update to version v3.9.0 or later, which sanitizes debug logs by logging on=
ly non-sensitive metadata such as labels, regions, and resource IDs while r=
edacting credentials, tokens, keys, scripts, and other sensitive content.

Workarounds and Mitigations


  *
Disable Terraform/provider debug logging or set it to WARN level or above
     *
To disable the logging, you can unset TF_LOG_PROVIDER and TF_LOG environmen=
t variables
     *
Or you can set them to WARN or ERROR levels to avoid sensitive information =
logged in INFO and DEBUG levels.
     *
See Terraform docs for details: https://developer.hashicorp.com/terraform/i=
nternals/debugging
  *
Restrict access to existing and historical logs
  *
Purge/retention-trim logs that may contain sensitive values
  *
Rotate potentially exposed secrets/credentials, including:
     *
Root passwords
     *
Image share group tokens
     *
TLS private keys/certificates used in NodeBalancer configs
     *
StackScript content/secrets if embedded

Credits

This issue was reported to us by Hasan Sheet via Akamai's HackerOne Bug Bou=
nty program.

References

https://github.com/linode/terraform-provider-linode/releases/tag/v3.9.0
https://github.com/linode/terraform-provider-linode/pull/2269
https://github.com/linode/terraform-provider-linode/commit/43a925d826b999f0=
355de3dc7330c55f496824c0

--_000_IA1PR17MB6672C522030B3E26462685A5AC72AIA1PR17MB6672namp_--
