Received: (qmail 27701 invoked by uid 550); 30 Mar 2024 12:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20061 invoked from network); 30 Mar 2024 08:22:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=VY3ZYv6PyXvm1YvOdMomdrD6bsPxFNLwZ8S6mwbjidk=;
 b=LTuR7nLUbe+xrziz9xMlkwXDQ71cS4EEtAY0+st3mMCgZ5gzcaZhUH1wn5bZzuSei+xK
 r94l6MJ2cr2+ZnsRaRnqU0IMUOChp/Ji2HfmAzJD3PMD837fHfokRCWGNTP2tKomYz1g
 KG8dNxi8ppwXBL2pvg3f1qhIW6mYM9senMCMLZAIVzipD50kLxLWpDX0RR5DAoAlGi1J
 iFLj2NO4DFT5zY7d/nmuVwefaOBUXklPjKLMWi8FQemLOgMPq3Wj4VK7fFcy86e8Z8N3
 if7QC30pgzjS77tceJea4J1l22QKE3wnUQOn5F9Hn0c9BNQD/ROxjAaJfdZDjJmLbG+6 AQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5E+BRcV9UmKIGpMdyPvSjIuLhxXdqTbA07QXuVack3OtiC2byJBEfenKvQLrfBYU8WdoJ79aQZJ8lKycFJlsYmZP10mUXHD9ANQA3fIlv5xC07WyKSr4X6iwfOtLlxdDrBA59s9icw5ImkQUba3il7fRByScbO9lAHt9Oe2+gYSpUbisieqx0Jfo7Hw77yvfXMyZ2m8NOwybAkFtQdUuHFkPZhVhl4QDhYeDzwFygV0VcH0eBCREFTZNuXxZeK4P7v/zSHxnkijMsMxHdOBHTQR2rmp+O2Ey+6HtCVJQtBv7OQPss+W9RH43TDfiLZVQrEXuSrgrbNNXi6sNcnQnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VY3ZYv6PyXvm1YvOdMomdrD6bsPxFNLwZ8S6mwbjidk=;
 b=dwpDDJe+mPoBnxta6tZ4M3j8NCbSobHi95PRPXhY5pxiuZhhe7TyHtyeiLfLdcrMG/gbt1tRICxmaFgLDeqTjlzy9ArDVLx83mQoxwxelij27Eoyuh4FMWEC+aP6SY5hkr5yESy/A1ub1be9ebJipqL9NMW48OtvyWQiTsGC6+wvICd3sAlaVxYNV/rd6oIrYHVswDBg03Qu/qq+1WQdj3+9S4KLY8fbPXrLUoxVb+mgjmXERFwn4TB7Ua+Ru1gJ8emjrV7OapgD10MapLleOO2sJnL4SFBbW7a1LL5VRyYbDagpa5eLrCPk2jFeCKaAm2jdB/R2lQxeo5prpPEt7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VY3ZYv6PyXvm1YvOdMomdrD6bsPxFNLwZ8S6mwbjidk=;
 b=D1nbV/ZVYq+AzaI3pO6qWVwL+aOtWgT0H8IgQphSic2bOR8MUA+29+NLvbL4klIMoDSX4nvZZmq8jpAiTt3/JQQp3TUKxIgVy+cU91OzudNcr8CZM+h6J/qgfGCdV/q9i21Z9VvEoklrYqDERXM2WKPDjPZ3CaDRAyHz9FSC5V0=
Message-ID: <a2f0daa2-6df1-4030-b9c7-3c28c96f9015@oracle.com>
Date: Sat, 30 Mar 2024 09:22:09 +0100
User-Agent: Mozilla Thunderbird
From: Vegard Nossum <vegard.nossum@oracle.com>
To: oss-security@lists.openwall.com, Ivan Delalande <colona@ycc.fr>,
        Andres Freund <andres@anarazel.de>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr> <16d86f5b-93b7-4c13-8dd4-ffea7d7577fe@oracle.com>
Content-Language: en-US
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <16d86f5b-93b7-4c13-8dd4-ffea7d7577fe@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR2PR09CA0016.eurprd09.prod.outlook.com
 (2603:10a6:101:16::28) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|DM4PR10MB6136:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WNGzcLDS17mnqLcA5vHCE6VgJTGuqLiJR0fIpISwX05oRALYkzi+6aqNzyVx1d94sSMQemfSYVr1w2i1sPFydvBvNbbPaZyzb2/WScc/UjG8eN/qMI9efYY85kmbyfxAnaoA2ghcJczynCn6jwTo4R5MPEXi/JL/UrMdfKJqZo7VtXzU6dQVaJCFG54KxqXQwxRQq3PBq64TvfEZ5BRv3aHNFhLwOq8zR73b3ahC11jZiLgLbp3/7pdoRcOZUQxz7cTe3Oo8OmLRTgxeY6EMb5lq8G4KvhfaLRV65ueLTgx8BJ9FCVKJl8kR5PzD95yMOiVWJHLWCpADpCiPjxJhGKMpw+/Bht4DsAfM3ljj/DKtWJzagU2VKcgNgFU8ttTgc3u6Qnp4rdslnMimXp4iNy862l4jI+n2qTea3h1Ona6Zvd0ycfvqazxJU0D1vG2kG75zAdFlhqp8dZ8S5M5tHShJQ2yCmliqu54odkcxw8RGMWtKGtyW5NM2jNoL/W6rj0xZJvYdpXmyOgH9oDgfQ5Dx0998HzjKsuR5UbkB5sDlowXsDw2bK0fp1ERnG2elVFu2HWwLncps9SCD92R5EgRHb+PYOvc+qSrmVpZZ+8wjNoo3etemw7iixSXHzmeD
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHRXMUxtcmNRVHNSZmVaVHJBbTR0SEppZk5FQmdwUTUvWXdPaUt4eFMwcHU1?=
 =?utf-8?B?Rm90VTJvM1RZVnVac0JJWUdKYUZDeUIrdWRpV2lsZlJpVDZWWjRCZUpsY3Jy?=
 =?utf-8?B?RlB2amluYm4rUzVJSnlpcjBMaUtIOU5MUFowRnl1L090eFl6YnJRSEtOYTJT?=
 =?utf-8?B?VXQ4SjAwODZEdDN3YW1QaTVxNXdGNXhSOU5QL0xwL1V2QXFlV3RJUHRSQ0ZW?=
 =?utf-8?B?RUx1cHFOOU5xK0V1N1RoeTNxRHhYUldsZVc0bkRjY1NIbjlnR3lma1RHK0FY?=
 =?utf-8?B?V2dDeXg3SGp5VGpibjVFQ3F5aHJBak1rVWhickFlME5NYlhPRzZTcmpwNHpl?=
 =?utf-8?B?UnZzSVZhUWpkRXRjYnpoeXl6dVV6Wmp6Z0I4VkdhNnZOU0htMlpMaXRPTHNl?=
 =?utf-8?B?QXBNejVDR21PbWZEL3lJODYxOEU4SmdqWEMyYmtYZVlKNVhFdmFnVmEzOG4r?=
 =?utf-8?B?ZVQwL2U3TUY3WE5UQk5VSWVDQkpaWHEzSDhPcnpkN29MaXBGYkZTUlBCV29u?=
 =?utf-8?B?S0o3U3AycEFrYTVEUEZ2VWJ4SzJkVmJ1SC9HaG1jY1U2ZmpUN0lhUkhOcS8x?=
 =?utf-8?B?U0w3WU1NL05GZXZCTlo0QnE3SERFQTBxTnhVUmNMVklWeXhuWCtmYnBzMVp6?=
 =?utf-8?B?Wjl5d0NVMCtCUnVWZkpVZE5FY1k4a1U4SlJ5Y040eUsvQnYxeDdtblNjOVM2?=
 =?utf-8?B?WTByK2Y1eElyVWtXelFBdUNqQzJKTi9ITHRsTjBJQXpiSnpiV2V5cTBsVEc4?=
 =?utf-8?B?K1pYeGtsdmU0cmovMDlZRTh5akFFTkUwNXZUQWVLbEZENUIzMUNlVEV2ZGdw?=
 =?utf-8?B?YnpjZkhsRnNhVlpSMmJDQndvT0IwcVpyQlZIUjRXYVVTbXJzYUcrbWlWUUQy?=
 =?utf-8?B?NWg1Mk4rQ1ZubEVuNG93THZFWXZhRGV2Z1h5SnVHNmgwdHRWSDZxZVJpZGgx?=
 =?utf-8?B?SEJQdWh0S0F0SS9tZEI0akNUeHFKNlJZd2dJVW4rclIzdVJ0SlZ6ejV0cXZQ?=
 =?utf-8?B?c3hMdUVaRHJkZEZWN3VuUmxzYXB2NXQvd2FYTmNxclA2eHNkOWFrOHhKMUdB?=
 =?utf-8?B?M0xWMVg3a1pNOVA0TWpOclN0MFltMXpLT1pFL2FDdnZvMjAyRFJlTXpWWjR2?=
 =?utf-8?B?TDM2ZFhTRXZoWGo4MUZiaTcwU3JwNGo3SHY4eEZZdUg1aHcxbzFZc2MxZEJX?=
 =?utf-8?B?ZnVLb3FtNDRkWlBrUGJlbjh6cURvQjFvV0pRZlVNNzMrazEzK3ozY0ZNUnJW?=
 =?utf-8?B?dm13dDRMbFBKVkhRNUFWN3dlc3VFZHoydE5UZDE5UTdaMERYcXZnQm9RNzVW?=
 =?utf-8?B?ZHV5aTZINnNvaW5MOGRiY0FzTGErY1JnQ09MamdTaCtzQWUyaDFoMVRlUStL?=
 =?utf-8?B?a1RPeU1zK0YzTWltUWFVaW5UUFBqQUl4dVhVcDFDRWlpbXR5dVJlTnJHdFZF?=
 =?utf-8?B?Yk5mRjc2ZzhFWkNUNzF2WVhwN1Uxa3hQVm9uRkJEOHhmdXIzb0NIY1Q3Z2FH?=
 =?utf-8?B?Tm14UFFtMUlpM0JtdXlZTEhxZ2VwbzJWQk00am53NjBaZmZsUUlwSXZDR1ZV?=
 =?utf-8?B?b2grYTM2NEltaWFVcnVFTkpRbDZDVm9rcC9TQWZTWDA0b3dUdS9oNkM3QVNZ?=
 =?utf-8?B?Mk1EYlFVeHlSdXdFTmoxWi9ja2U5SFV4WXJWNy9DOStWKzVtQkw4dDNVWGdh?=
 =?utf-8?B?aUZYZVZwUkM2QXpQU0lPMlFFdXhOaEFkYXg1UWo2dUlkek10MWxMU0tDMTQy?=
 =?utf-8?B?T21FeSsyYjNqSGhjM0I5M3VBUmxoWXZONmxMTThBN2hMV0VSY0prR3FZbzN4?=
 =?utf-8?B?b2RNbWVHQlEzcm1KMExEUnJScFZSc1VYcWQrdWtERlJlT0E3aGtIeGVFaHhG?=
 =?utf-8?B?RTQzcEJIYUFEaG5hNG02OTN3eVhYcC9RTkJTbktjMmNKMFMrMjZCSjhJbDBQ?=
 =?utf-8?B?Y0I3OU56MWlNclJoY1ZacHVRTXgrcUF2eWJRaktxVVFuZUlwWGhvZDFnaVdi?=
 =?utf-8?B?QVF0VHh1c1d3WE44QktPbDl4UjVmYmxFSTYyWnE2am1COHFBRmMwK3Z2YndB?=
 =?utf-8?B?YUJCM0Q3a2tBNTVuVzVIVVU2K1FRbGlrSldoZjlWb2Y0aklJOTZzY3dzQmlu?=
 =?utf-8?B?NWZvMndsb1FxZFVRalB5QWNjc2swSFFTUzVHakJwV2F5YnI1M2hQR2NMVlEz?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Vidp3O8al44df8H4pdSX/Rl1jCPvPHJbaVJ4Um7pjA6i2Xe0EPBdCeKFHedGekOuy2r/78NBN+GPdfIrYWzZ5tIDQl1I3DXDwxJ6T6LDlJQx9q1hqaTVQXGbiED428S6XgphBvjaFS4kU/Vryl2/dVigKEHiOW47PW2TG9rWauAIWkBh/nSoxKbVzF3qEETjWeIWqbuGcjocmjPhqN7vyrufIm0dOjOqPOc1cCuGvatAWfj6DGOshAb3csxmMwymV9Ze8lQb999k9LUgh2HFUnP43P5fFhTvY3zXWnNBS7fFl29onDvJMpgBtriCbL508OaLFASej0kiCm7JWpS3NCSKYZNGyYG26VCS8ZxbEsueyoxhZgC1d4dcAyV34ULHt38F5IKI8RbAO75FOOlXGfyQwZF59nSMzlb8xnPBO4DWFOV0CnaEid93m3VJMFQjVAFyytxOfEK+qvKlczWKUqerEmeZXeN4IS/DoaITqVc0f6yascNi5cn5oNhGqiYAv/ciXfqo18D0NJkN8r1DlvsZ4ySTSYuxz8Hj9i8JmaO/6HFlP2QdLOFwiVXB99Stqc1vSSchQbUZoFka5pU9/p2VOH3S1AAjTpb+XNYeY5c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f53cb8f-6bd6-4897-5011-08dc50928116
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2024 08:22:14.4731
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jp9N3oyw3xiE8WT+2UAYNq4Drrj9J8Fx6fO0wGLjv+z6UsVRE1f9v04MdqAettIyh9xFM4HBvfUhNAyh0DowYmrw5HVpZGV14oanb4tyong=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6136
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-30_04,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2403210000
 definitions=main-2403300067
X-Proofpoint-GUID: ccPFBWQGsiflRoN_UoFFG5FFJxkfXa6i
X-Proofpoint-ORIG-GUID: ccPFBWQGsiflRoN_UoFFG5FFJxkfXa6i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On 29/03/2024 20:32, Vegard Nossum wrote:
> On 29/03/2024 19:54, Ivan Delalande wrote:
>> On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
>>> For which the exploit code was then adjusted:
>>> https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce46289a3ff72a7b89
>>>
>>> Given the activity over several weeks, the committer is either directly
>>> involved or there was some quite severe compromise of their
>>> system. Unfortunately the latter looks like the less likely 
>>> explanation, given
>>> they communicated on various lists about the "fixes" mentioned above.
>> Knowing this, I hope the recent kernel patch series involving the same
>> person to some degree will get extra scrutiny:
>> https://lore.kernel.org/lkml/20240320183846.19475-1-lasse.collin@tukaani.org/t/
> 
> I *think* this patch series is safe and was just pushed to make more
> people upgrade to newer versions faster
I retract this.

A HackerNews comment/thread [1] points this out:

# Set XZ_VERSION (and LIBLZMA_VERSION). This is needed to disable features
# that aren't available in old XZ Utils versions.
eval "$($XZ --robot --version)" || exit

That is indeed scary -- exactly the kind of thing that sort of makes
sense in isolation (xz --robot --version outputs some environment
variables) and then just becomes a gadget for exploitation if xz were to
start outputting something different there.

[1] https://news.ycombinator.com/item?id=39869715


Vegard
