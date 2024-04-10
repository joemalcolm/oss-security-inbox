Received: (qmail 10112 invoked by uid 550); 10 Apr 2024 19:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30403 invoked from network); 10 Apr 2024 19:57:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=T51wLoR08GmH9w90dx666FGoABPZwPLLuTtqSK0N6qI=;
 b=mn6U4KAcGVAy+iPgtlhvjfpZeLWMfreQMtZC3NbCLd1+S40qgq6Mzi1FI4QIuxBebx4n
 FoCvUNvSKwAEeXR5rs++ErQRi3EuEQi/BYF+cW7eJdqzDC631YtSRHgi2xWGo8IFmFw5
 IBGg6nAFno4d55b2QFMoGH4+ngtnhGLhwJ2MYh4Ii2gAKmSJ+Zvzq0saMdw+Uc27GmXF
 pMmzs1uDXMYedGJaLyYMFW6nO9O/X9C7E15pgRqKnCtQMef1uPfPbPZ4AEifhex4K7E3
 U/++IEmjK8ZmPss07+JvQhalC85WI5GS/nft/nNTvonxUoKUBcxmrTvaoF+csW05v5yS 0A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Va2I5rHLizPZWUFWoWMg9s5s3Xr4YGrDkxsFRQeR8hZk/EAZFUEgHV8cXeIsyeOx+mriLBWR/Rxjn7+c/xihCx0xPiF6VEtKdGlHweZgb2fcTdeMmpkr+kukJ8+zUh5WIm4QaRRg0cSMbZK869XmS/F2kojrAEGx6fPtGx43dcXeVwr1A6dCGsrmn1B/ACGfUGIKmBKegKnWlZPO+iS7WJKb7UiEYWXCNc1mEe+8R8SIt+OuXeZT0Lv/iGT/Hp8EJ4Af1PCQcESRQTNv1EsoIkvFP8asO+rbt6lwc6jhUYk5K89LPh88g4uQH0uDDeMVgb41AZLuNDx0hVklQHZ1OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T51wLoR08GmH9w90dx666FGoABPZwPLLuTtqSK0N6qI=;
 b=hkzMdQ5QLwYYFcjmJUySsYweDMUyTdqRSpWptbCbvebkiDaYO36ACrZ/743eT3EobZC5Xs01txkcO5efcBj8L9OIDih4GfdJPNVIpr+tm7w74bBaQkSq5qsjhlZ9RmSs/lN88W1ywXx+LfJlk0FrnNx5rny4RL4jcjqZlpAY3bcZ4K6jb8UrSKJ7ttAZOjSGrn4GiDArHbwq/e3Z7MqpZaQ9djM60epBRIfaNUZAMCYUcaY0QDsS/ovir8Z6Xyv4nPBzHVff0JCP5Wi5p2+Ox7xUVFR6xsGukJwqxDwKKidWUgLB8RS4vYeTgGq8SFaxZAar56ZeDCYKDuB8/rFhnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T51wLoR08GmH9w90dx666FGoABPZwPLLuTtqSK0N6qI=;
 b=ty7y4S20MJWlihRfYp4G0zXvpPOJclSVId2C//lRLkBFexyeiNYpKIV3NQS2v4ZRvYq+Nkn1NbTVK8Hgl3RInuw3+zQ4Kt1Q6xVJfvhFweByIpKuGh8DbwwDfZ5JUAKU6eXTAQ0a6FA6QzwDJvsNKUnbz4jSCO6oY+VKQrLteSI=
Message-ID: <9f92135d-e15d-4a2d-bfe4-cdcf9e409ae9@oracle.com>
Date: Wed, 10 Apr 2024 21:56:47 +0200
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Alejandro Colomar <alx@kernel.org>,
        Joey Hess <id@joeyh.name>, Solar Designer <solar@openwall.com>
Cc: Sam James <sam@gentoo.org>, Jonathan Nieder <jrnieder@gmail.com>,
        Andres Freund <andres@anarazel.de>,
        Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
References: <ZhYEpAFolwefRv7X@debian> <Zha6C3RExPyp8iBd@kitenet.net>
 <ZhbYSJXGt-HpcGbf@debian>
Content-Language: en-US
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <ZhbYSJXGt-HpcGbf@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR1P264CA0151.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:346::13) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|CH0PR10MB7461:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gfCs0WsEejnyl1gWCIT+kVKmUn9EKH4JTmMPjWsX9rrx9Ycgc3Cl0Fspy4lziFUeEDm/ok35L//Paon5ygWDjrdp9prko1I2EZbsX9W3Tf0NSWxbtHYWywAHm9KekXDYABAFsGRB/cWuBrJZGoE9AjXlLdF+ejykE3w+brJiVXQui2FYuEG9FUktviOBvn/9oO2p2OTNEgOTTFxIatZtYnGqls2YglgO5dgyt3Q+UwUA9Ry2n8vlQPR1WNBA8Z722AEjdiE2di+XyTX+vi1ecQQZRkm6GF2bLQd3mt6T5xzi3ZuyB6m7gGx5rGygJuuZOmyBhiCds2nzBiMsV9xsu83LawqzdrHIyuwvHU1bGg0o2mc0ONIK9EoYR0UlL+E86/yi5bgAg3/SgNBhtl9zJZsqEc5RfLSSXzN27x7+jtR6gLj3EQYHQs0TNgv+A4NZkb5OkZEoUlwf2xcYoGvBU2Us7B9N+YvchrZIuH7xtkN+U+UjzqvMwzECMYSCPCZgDqEDq1wUWcnWAYnZDgxnZkPT0VLY5D4psuhNBTXY6Xy796ViWxJ+orf/2FpFKP0kHUzEQ2sicQRvyTRcrQxBAhA1wgShLsb+EQqZKhwdq1O9NZ3IBPP+1lyUSBCO8RmY+/PMtu4hjSHQ046uDLIFXrapGktdlvFWSwN9ZRCxi9Q=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cjVGZk1WeERnOVVJaHdMd3JlY25VdmozNUZsL1lkWENKaU80MXJ3U1UyVllv?=
 =?utf-8?B?UXRnSzIzMkU4czV0eGloWVNIQjA5YytHaWs4eTJwMnpXOHdEMnBFdE1rZDhy?=
 =?utf-8?B?K25pdkNwWUc0Q0tPUHloOTc5Mi9ROVpUYmN1M0o1VDlzRzBLMUhXWW1ncXZa?=
 =?utf-8?B?bmc0dExwU0czSU9jWS9xb3RJSlB0TzlLck93bGVrOVo4YndsWHlQU3ZlTUFi?=
 =?utf-8?B?RGFxMkVvOGN2NGRFNHcxRG91OS9tcnFQRy9Fbm83OW1kWGFoeC90U3JMT3VZ?=
 =?utf-8?B?T2tZbFdyNFh4cVR6SnFqcERwWWI5MkVLZXY0eU5nUXhYMi9qMExBc3Q3Ynlt?=
 =?utf-8?B?R0IrWkZQY25VNjd1V04xWDZzT2N5SllkdVFER1h3dUo5WnJCRDRtMTNwc3FW?=
 =?utf-8?B?UzBGRmFyUlZCQ0YvSUZ2dkw4YjVuZFlMbVE2TGxzTkpYMm5xK3BJaWJKazZD?=
 =?utf-8?B?ajZFbys3aHNnSitIaWp4cm5vWG1pNWxvQjRNWm04cW91VXo3cUg5OTFSTys1?=
 =?utf-8?B?OWV5L1JQNkVpY2gvWlJqaFdKMWdtajZYK0lRb296RWxUZVF2b0krV0IxV21p?=
 =?utf-8?B?SGxRem1GWXIvVjF5anAwWHhwUHl6YVdWekNjMTg3Z0MxUkoxOXhvbzEyMldq?=
 =?utf-8?B?dC9EcEprYzZhN0xJVDN0ajhmRE03a3N1SGFqcFRlYnAwWXZPL3FLVFp0dHA3?=
 =?utf-8?B?RVFYUzh1SitkeEo0ZGpzMjdXQTJhVzBud1drbDRZU0oxNXpKTHRlTGR6R2xZ?=
 =?utf-8?B?Rjh6NjNEVVB5ZHRkc0c5cHNSUGZxN0Z2WmlVMDhZWlhqaVhybE00VTZLRkhp?=
 =?utf-8?B?eVdlMmJRMng5RFJWZjAvanJBZjExSlBpaUhOTCtteDdLWFUyaUFYRUh2TUdr?=
 =?utf-8?B?eCsyVWxFbmtRTTJzeGVlRXRxNmFpQkNwRlhsZ2ZFOElYM2ZCV0dQYTcvOGta?=
 =?utf-8?B?SkNiUHU1M05Lc1p2V1lwTzYwVkFtRVpBZGFCVUN5dWlBK3huUml2SVlCWkN2?=
 =?utf-8?B?Zitaa3VQWjZ2WVRzbHBzZXRNYzZNRjMvbm1BMDhzSEZ6ZmR5VS83K2lKWkR4?=
 =?utf-8?B?UzM4MGtWQ2x2ZFFQYUtRRWw0bmU4b1lacWltcWlDQ1BQckwrdjBVK0RoN2o2?=
 =?utf-8?B?UnhyWkRoR3ErM0tjQnVveUVXNS9WZzd1ZTJ2dHlNUFhRdmRNa3BvUWNTVzla?=
 =?utf-8?B?NVNyMFpLMUIwc3lMaGxOVzJkYldNWUl4cXpueDBMQ0hoT1cvVUVXb091K05k?=
 =?utf-8?B?WTVSZ0Y5TWx1ZmVOT2w1YmlySkRmZWg5azNYNTBtNkIwbDFUUDREM0FBd1Zi?=
 =?utf-8?B?T3dkVFY0MXF1MzhUTXJ4elhJdlRYa0svSWZJd3lYMGdoNVFmM0lKbkZQdjZx?=
 =?utf-8?B?VmxVN3diTTB0dE1JVStOYWRLQ3FnbXE5MCsrRFVtZWQ1ZlcxcG10SnY0S0Zo?=
 =?utf-8?B?RDhEN3dra0ZFNkRYQU1hRFd0eXVlaHJOcFFITmlGREVpclNYZ0M0SmphRWJS?=
 =?utf-8?B?cUZqcEtDUCtXNzZ3dnlNVUlYcmQ5SmFCeWJCbEVpN3I5a0x3MVlRdjNrV0Uy?=
 =?utf-8?B?T2k5dFd1MWlRTEsybHpqeFhsYmx1RVdoclF1eEJOcnVaWmhPeEdpejRTRkpY?=
 =?utf-8?B?Q2N3U0lFa25TYjN3OVFGbTQzWERZK2tpNHVDNjJrYVdFK3pFaW5qOWhsYk1U?=
 =?utf-8?B?eEpmZ3dIdXY1ZDRydWlwOGMrTHFScGV3empqVkZBWVQ1ek5ONmhhSVBiZFRE?=
 =?utf-8?B?ZzFHM3RvSXBKdVdYRUUrTXVuNEM4bGdabVExQVpvVXNnOUtrWm52dXArRFd5?=
 =?utf-8?B?bVFtc2Vib2pUTURLS0FMSk5kZFpuSG9WOUlCL2k2bDZkTDVFdE9TdytGZU4v?=
 =?utf-8?B?VXBZNElMSXFPcUs4VzJGeGZOdlNpc2JTcFh0eWdjL3FycEd4WGRDNThvMGNB?=
 =?utf-8?B?YWVGVE5HOUxmQlR6M0FSYm0zemoyUWZnLzRxN29MTnVOc3N3SEthdVNPeC9w?=
 =?utf-8?B?NFN5WksvKzVZOS9jTk9objNrUGZyWno5TitFVDNGcDgyY2FVaDI2TEkzUkVB?=
 =?utf-8?B?WkEya0o3SWtKMlRpbHZVd0lpMGNvVTd4d1pWVzN6YTNVL2xlM1RKbmttK3VZ?=
 =?utf-8?B?M0JWbmZYUkdkeFN2YUlhQyswUG1KMEVhN0cvSitiQys5UWN2QlZRUE5NRStV?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	DsfU8+pk1TRFMCvGVOF2o1aED325+wKFmMYhDf5ymsJtWQxtDK6f6wzCNR1z6ifus6XKI196HlWCvNl2uM4gXSYE57yj9LcX5/fkPxRA+ogPswjoJy6miB1aRQ9K4krSa6xeg5AdP55bIWEyLUiVzPpsJUO0cjnSqsfbMsIPmHjcIEEgQyaZpZW35UET0DXlhXz70SZwlGx+Psrvimyk/In3K8hLtpOZ8T5P0wjm7Y5YzT+Z1e31wROFquVZy10CehqXqJ1IfFZUtupO3LrbOSsQSojvTSF1S5ASHIPt91Avby2X889Ie53zYmVzMtJXStTZAsIFay7kvR5KrFWDQbasipGlg7tH46xOqnouRFjct0l/ycZqiQmwEXpSx71iG4p3TVc0X6OmiG1T8pq9z6vk8tRJ3yAqgsE0C0tHocMoWPWMC8vbb+YsakWu3TdySco964ElEO4fRCj+6Jt3J+1xcaFH3kYJpg0nLK7rxpz8/MwI1rdX3cbAoIDqD6xPqK6DfHiBkNTpNGtvUFDJoGWT/aeqX5aMeBDOYbOXtQKruuLcnT8BjY/OeB2is48/1PsqqLmxQuMf7AL4QVTXujfgsJYpChdpxEzFWsREJEg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 993f43f6-8cd6-4ef7-d183-08dc59985e5b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 19:56:53.4187
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bhFaW0fK+fseuWzt4q2KqNw7PrQ9FT/SnhBtSlSge6cM6SDXj0pWcalLWM7Ifa1oxSLVnTaGjJsS+jBnb+XOBSnFCiFoILa0XrjsNDBayPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB7461
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_05,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404100145
X-Proofpoint-ORIG-GUID: 9RUZPZMGaORfwP8KMCW-RuJUw4sBi0ot
X-Proofpoint-GUID: 9RUZPZMGaORfwP8KMCW-RuJUw4sBi0ot
Subject: [oss-security] Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git


On 10/04/2024 20:19, Alejandro Colomar wrote:> On Wed, Apr 10, 2024 at 
12:10:51PM -0400, Joey Hess wrote:
>> That's a theory. But many of the commits with author Jia Tan in
>> those time zones have committer Lasse Collin, and show signs of
>> being eg, git-amed patch sets which may have also been rebased. In
>> which case it would make sense that these have Lasse Collin's usual
>> timezone.
> 
> Yep, I also had the feeling that some of those might be the result
> of git-am(1) (TBH, I had those feelings today, after the email had
> been sent).  In principle, git-am(1) respects the author date, but if
> some mails (assuming patches taken via mail) were somehow malformed,
> or Lasse had something misconfigured, it might have overwritten the
> author date. Maybe this helps Lasse investigate his emails, and see
> if this makes any sense for him.

Lasse has already hinted at the reasons for why some of these things are
the way they are. Spoiler: normal boring maintainer edits.

But I really think we ought to wait for Lasse's article before
speculating any further about timezones and commit logs: He has stated
on <https://tukaani.org/xz-backdoor/> that 1) an article is in the works
but 2) cleaning up the repository currently has priority, and 3) he
receives far more email than he can respond to.


Vegard
