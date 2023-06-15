Received: (qmail 3401 invoked by uid 550); 15 Jun 2023 16:40:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3347 invoked from network); 15 Jun 2023 16:39:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : to : from : in-reply-to : content-type :
 mime-version; s=corp-2023-03-30;
 bh=Q8bPUDC3JuK5LlRlgfQVQaRcv9CIeAzhZCPgI5vbpVI=;
 b=k7ApancE4ige8rqAc+3ysLH82Mk9jKE072JtUw/TN+KWlPzAmI+1Gjp/Jz8fJ1FnAXu9
 cfOiM39xhssKUkDZW24e2kOyWiJ4RPAIzHz7Y81T/U0tziUc1IFqMY8EsL8ZWoiPgK8T
 L/7Rj9n/aw/H433qPxuaGavZ9Ib85Dm78z2O1m88UkmTdxI4/zaKTKO/2vw840TawX+P
 nEG9SD3OtrDCFlbk0yj0CWT5QZXMsFKlKbyqEhTlUm/9UKr0eLSn5+oCNCIXPfm9s7fO
 BeEPvgVBjrKqxjH6yPlR2jWSBYKKHzcla2gr4BTkfhvsVfjyqibD/9u7VqO+0ixbukjW Ug== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+EXaF74UJG08B+/HU3DBrdNTnuP8rDms04usIFNS4WbdddE8cUkR4iVFTLTyMCr+ycOIGz6vehTjFbF1Z2ZkYcf6RnP0KwaF7kTDiSxPn3qkBWGN/Ho7VLkDobjeU3IAQM9OupXD1idiZTtCK8DGruHqncV5mpYu/OSN7oXHNi5DB5NWYnhKXvgKKqc6NRd0IwlurdI2fbGK6lcwEqVGhx86zKC2LFK4ptCeuXXQHbXt85o31xpxcjJgYnuDKyIGPTtxvnaIQnyAO9R2EQpWElB6oIw1rP5oJ1t+XM7YSbB4di6q7XRV5QcU3dVASP+GOlaVyvkm/prRpNYY0B7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8bPUDC3JuK5LlRlgfQVQaRcv9CIeAzhZCPgI5vbpVI=;
 b=HLnuqx2vcWeD5I/frg3UVq/fQ90TcwBJxhyKA4pzhf/MaHJu4x/4RiqptqwnPuLRYNh44xxfTbvJfQxEUkGAQLN8zegNPbuMfbsec3zcPRaAtqblnELOSv5DjmuZD0wGKVk9MVJbjaKDW45sMHhPc5TLY1fYlq6giprIEmmsSv/bPoE0ChK+xwhB+G5sFRmDBHmRFHaNvoiZ4yydSH3vaxFuSyxXRpKlaiQsNqwsThK0teArbPmh4fBWSBHvssElEoKWY03LRdPhbN+dxJ3BAx2AFRFWrV++R372YCUtR+02oRiFOzVrkNwPJ7awqXlVY+BOiZXM8gXBLpAJqPVPnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q8bPUDC3JuK5LlRlgfQVQaRcv9CIeAzhZCPgI5vbpVI=;
 b=dXTfbwJrDPoYyAJ5ef5FKIDrPnXVo02At2sQTbxtDrJqKpSesKWzpJ9rTbW4J+Qu/Guw9rkbU1Pi8Hr+YVsKdnBjd5BJVwqvDAJVUI6BDxPfxjSyqZbQLagWCUtT8rwdcfD+0QPv33p9DJ+ZZKr9ra6HU7yDGEz4zkizcVu1sVw=
Message-ID: <cbcd6db9-393b-b4dc-d97f-5924e88dd9de@oracle.com>
Date: Thu, 15 Jun 2023 09:39:39 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
References: <20230615163436.GA10735@also.us.oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <20230615163436.GA10735@also.us.oracle.com>
X-Forwarded-Message-Id: <20230615163436.GA10735@also.us.oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iX5IcbqkEtZZW2w8VBbmduh0"
X-ClientProxiedBy: BYAPR01CA0062.prod.exchangelabs.com (2603:10b6:a03:94::39)
 To IA0PR10MB7303.namprd10.prod.outlook.com (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|CH0PR10MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 457d320c-98e0-4d22-1998-08db6dbf1ec5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8WnzuIFNclO6pFrWp4ruXpsEFcgkH/4nlDmBNnC6Vm6AQJcLolrl7VtqGkC2zEHN6WnadyZniiXu93J8/+9ezDDOSIWjiPQZaGn1WkF712Q1DghANIpxa4d8t/eOQPpjrCkaH+pDiGgAhCS8ZEaPfe6hz0SD0nA67dVEni9l5cGcZzzRGNF4IosY6qog9UbJ3FK1F1If3eZv6ygsVa1hcWLgTcJD3sfz+SkLtYRsOzYjqYN6VNxjicQ0H6IDTVKX5JJhtajGrJtPtDPtE2sBcciacvYZ2mW4x63qTDE9vERoQu+oAdHJw/lGoTb19IK3pZu/n7UbYvF9vx8l24QVglqfeY+q+LmYTwVntROQumPit/dtMr58puK4dseEDZeHCNrEfDtts22JLf0ScMQPmlvxTDiVdD/5kYiRZB4UN6k0Vfa4nxRFdoNJg2D3woGsY+/3G7uLAmYZvtoPMWDXLeSujutkRRt1ZHkZZxZ+eEhk/w9TLBX0Iefi0q9d0cdrGOnFLayDR3mzTraPnG7dgNOxidlTnE5/XLQ4UzLgp5uh6kTCmo8pghM8obU08B3iHp0LDwLSQT8MNCmeWSGKWUNdOsZGP7tuAWyhgCDXLEY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199021)(38100700002)(31686004)(86362001)(31696002)(478600001)(66556008)(66946007)(6916009)(66476007)(33964004)(6666004)(316002)(36756003)(966005)(2906002)(83380400001)(41300700001)(8676002)(6486002)(21480400003)(8936002)(2616005)(235185007)(26005)(186003)(5660300002)(6512007)(44832011)(6506007)(15650500001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QmkwRGFvVjdOMEtvbFJWd1B5ZldmN3V2Z1dpWURHZ3pLSVp5S293VFJzN0lK?=
 =?utf-8?B?UFpVbnRhMkMrMjRzNTRrZGpqYVd4SmY4Z0VvTEpUWmcyaVppcDJWamNFeFRz?=
 =?utf-8?B?MVlsaS8rVmk0ajdXaisvc3pEVm5YYXl0c2RjQkRaaWRJTk9vODh4bHZQOXg1?=
 =?utf-8?B?T3BKaThSZ2hCaFpoaEFYQnYyNWhZNFhOWG0yaDNxa2tTMDFWOVZVQWdFUzhV?=
 =?utf-8?B?SEFQcVR0V0lwRFJ4bnlLRllWQ3RIZENaQWV0ejNNUHZzRFQrUmgzNmtvWTVC?=
 =?utf-8?B?M0paeW1uenB6TXltNUNhMTZ4MUpRZzdPVERHa0kxdjIrU3dnVStGWmN6WlVU?=
 =?utf-8?B?UkZEemJGUUpJUDZHNk1STVJPWTRrTFBzV3I0RmFYMTlXb2RVSW9Fbm5hMFhV?=
 =?utf-8?B?anFwN21Jcy95b3JldVhreG5SQi9yQkRqS0ZLNkVUN2hQZ1pXZG8yZjI1QjdJ?=
 =?utf-8?B?bVZRRjhtOUdsWU1qRjh5SGhlSnBjb2VqOVZ2Y1BtRHRZWEhBZEhIYmRBSlpX?=
 =?utf-8?B?NlJwaDZ6TUwvMXdGemtsaldjeklSMlNBd0RPMGVTR2dnMWVOTTRwRGU5UFVG?=
 =?utf-8?B?ZmNjWnZJVXRDNys3UTJ5SUFnTDVOY1lrcDBxeWRGODVhNW91RnIxeVFISHZF?=
 =?utf-8?B?ckFQMi9xbXIvMDFwUktIbWVBUVFtVHR5M0trUmU4RWdUSlpDZktwWThObWRF?=
 =?utf-8?B?b0wrT1UzK2YvRjRwTTFqMElKY3hpeTBqRytnM29Xd0htVm1FejVjYkk5a0N5?=
 =?utf-8?B?VGhhbzFmbzJxaUVVTmZhaldjbVZaMnpsTU1UeEZRbjNQWitKR3RtYmF1TTZj?=
 =?utf-8?B?Q1F2TWZVYm9nakFxZzRtcWxTZTZ4Y2d2Rm9DcEVwSnp4Q05mVWUwUWxSTnV3?=
 =?utf-8?B?NFV4aHd5MU5aZDVVL295UE5NVHl6WnhrUVJMZ1dVcWhsSWR1MCt5dWdMTnl6?=
 =?utf-8?B?aGhMdFRCenhSVDZHYUFyck5BWU1hT0RNejdXWDMxZFZDVzBRTC9kYldrZFVl?=
 =?utf-8?B?Q013eGp6Z1Q1SU8rL3VHc3BaVWFXbHBpZTM1ZHpGbElabEZIRUozT09laUdX?=
 =?utf-8?B?SjdaYSt5ek9kRVRMMlluUHBXdXJsK1E3WlNMbFdLTFVTSkcwRC8zb3d3cnZr?=
 =?utf-8?B?SHdGWlZON1ViemRLdWR4WXhRKy9GSk1JTWlOTVFBeVpNTSt4NGlJOXdTQXVS?=
 =?utf-8?B?YnRQeE5QbDd6dkRXRnd4Y2NqZWkvTnN3SkNPN0hqWmk1RVFFOVpLdkJDQjhn?=
 =?utf-8?B?WGFXOEZiZjJoeVhZaFRzQUxnRGYxRDV6QXN3V1FqaDdEcjgrZEhDNGpXbms1?=
 =?utf-8?B?V2tYSExyaHVQUDBHSGwzRlp1cjdBd1NLMERHSExSOW44eW1aNjlleVExWWdr?=
 =?utf-8?B?bzV6djIrbE5qZHFDWnFxQ21LUVRPYTYrS1Y0WXZTcy9Xck1LTUtQbS9YUG1L?=
 =?utf-8?B?YXVpeEhVbzdZUndzTUNzYXRiVDdpeHpNZnREakZoVmFEV0wvWjlkN2RoaVhs?=
 =?utf-8?B?OXZFTzdFL0ltYWZBTTErSzBjUitldTVsWFJubTR3NXc0RVNoNkZSNFRqenAy?=
 =?utf-8?B?Y0ZIdDMvTVBiMzB2U2VUVHE3MkROUkYwUy9JZTMvb3Ixanl3dkVCTmwydTBD?=
 =?utf-8?B?VWI4aVQvTEtkUW43L0dkcVVuaVN1ZE5EQnpCNmpNRU53aWs0dTNwTkVRVzgv?=
 =?utf-8?B?aThJeFdRa0oxQkIxbmRsaHdkNGd1N2F6eDVMWU8vZnpDNkxQckhDTlFNTmFw?=
 =?utf-8?B?VTJsR3FwUWRQTzEyT2dhSCt5eW5yNWtudEQ1YTJ0emdmYTEyZ0JmMFBKYnFO?=
 =?utf-8?B?azR1ZDErZXpMellSZmN3M1Yyc21ZeWRJRzl6dHArSm9MZnRTMmJjQ3BQRU5v?=
 =?utf-8?B?Ym5qekdMSitRUE9JSTZ2YTRkWWdhOHZyd2RBRkVobVVNYmNVL0ZldUJsejdy?=
 =?utf-8?B?TEtJT2wxZlFmVFcrYjV5S0Roa2R0YWlJT2loelZOYzZaeEZ6UUEwNmt1ZC9F?=
 =?utf-8?B?Ty9raE9UOHAxUkl1a04zNWN2OEkwSzBtZlVvRUNrRFpsZEpMNThnN1dTVjdM?=
 =?utf-8?B?TkQ3VFVHRlFhdVdMV0RXVjJYT2Vaem1OZXlOL0c4VnNOMFp6alVXTkFzdE80?=
 =?utf-8?B?czEyT0hMZ1d0SlFNRVVYVTRhYkZlUElhc2JpWXdnUVdDQ3lKLzFFMGNSVnN6?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kj72vZ8Wwqvo41wLZMncXcoxxQtw+yu2lxKlXZ45dMuFzwksWENxnKBEEqe4CUBskZ3j8MaT2U7AkPvRP0+uVfnMaLfE9GvmjGTXdnynS1roWO73KAkF9jZONNgiQ0bRWIcamuFsk9LNgKNkjstG3UMrRWDYPmiXAPbrXM7OqLGis6lr8ZXB8a4+HXn7oSMknn2olqo6FQP2KUONmAFFx+t9x0oZvt/OJyqRhJxrXPVKcVcRNf7OjE3MpeVOx/zNV1xKY9RnCD+q5R5uPj9D4zgxY024bGxhxktqYfXdHbtvn7q5ZZFrbMZQ3NsTLLP91ZuALY8MwyZAGmR8iLsLcxgcVXp539etJE42wSQNSTNCjtSvILct//gqJYwTHbzaKAnXjFvE+iFL5I2Jgn54zRtiLBHzq1SCxch9M56KedVIUGGIya/Fgs/z+OJ5hbSb6ZQWSjedei2FBgZfuvf2b48wk8Iu1WRgqZQBX+ttLmKg6Mldll40pVYbOkO9AbW/Jt2t76Snbim1+fASImTyE3p+7bBg+yPkvkAKYE3SEK351qFC/OG+UYfRxGVenrwLZrVgnDgdrPPeiGXNi1+7ndYdXryZV11n3l0+wpSQVgDmgKcZIsGfQx3qEm8KO7A9PvxCgxl8/Iy8zprNFt8BTbe+IdbbRzriBcNH7at5vh9NkCibX8v90uvsEYeOwPF2ekmv4IQv7PclIJmClSikn/OV/1awRJ140Eo2wnxA0IieSFDKH4uq2QFVS8Lv99I9sesWn4vxtuRPT7/evor3ag==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 457d320c-98e0-4d22-1998-08db6dbf1ec5
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 16:39:42.7150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pqur0leX223beYzecgK4nGUP53RYmSawlXKYgu9hrr1ay7qf+YectKvAHfROao1X5DlYQRng84grMDrHrapmVcz54gZbZ3plI+bXl/BHElM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4826
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-15_13,2023-06-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150146
X-Proofpoint-ORIG-GUID: G01Fmd8aW1TLrZc5ISmaqD-wTxkxhBQT
X-Proofpoint-GUID: G01Fmd8aW1TLrZc5ISmaqD-wTxkxhBQT
Subject: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: Sub-object overflows in
 libX11

--------------iX5IcbqkEtZZW2w8VBbmduh0
Content-Type: multipart/mixed; boundary="------------GzorvuTB6AKO3PcTTAlUQRLF";
 protected-headers="v1"
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Message-ID: <cbcd6db9-393b-b4dc-d97f-5924e88dd9de@oracle.com>
Subject: Fwd: [ANNOUNCE] X.Org Security Advisory: Sub-object overflows in
 libX11
References: <20230615163436.GA10735@also.us.oracle.com>
In-Reply-To: <20230615163436.GA10735@also.us.oracle.com>

--------------GzorvuTB6AKO3PcTTAlUQRLF
Content-Type: multipart/mixed; boundary="------------J0E4C0WY2qP3vtVt7x0g4RK7"

--------------J0E4C0WY2qP3vtVt7x0g4RK7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6
IFtBTk5PVU5DRV0gWC5PcmcgU2VjdXJpdHkgQWR2aXNvcnk6IFN1Yi1vYmpl
Y3Qgb3ZlcmZsb3dzIGluIGxpYlgxMQ0KRGF0ZTogVGh1LCAxNSBKdW4gMjAy
MyAwOTozNDozNiAtMDcwMA0KRnJvbTogQWxhbiBDb29wZXJzbWl0aCA8YWxh
bi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPg0KVG86IHhvcmctYW5ub3VuY2VA
bGlzdHMueC5vcmcNCkNDOiB4b3JnQGxpc3RzLngub3JnLCB4b3JnLWRldmVs
QGxpc3RzLngub3JnDQoNClguT3JnIFNlY3VyaXR5IEFkdmlzb3J5OiBKdW5l
IDE1LCAyMDIzDQoNCkJ1ZmZlciBvdmVyZmxvd3MgaW4gSW5pdEV4dC5jIGlu
IGxpYlgxMSBwcmlvciB0byAxLjguNiBbQ1ZFLTIwMjMtMzEzOF0NCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0NCg0KVGhlIGZ1bmN0aW9ucyBpbiBzcmMv
SW5pdEV4dC5jIGluIGxpYlgxMSBwcmlvciB0byAxLjguNiBkbyBub3QgY2hl
Y2sNCnRoYXQgdGhlIHZhbHVlcyBwcm92aWRlZCBmb3IgdGhlIFJlcXVlc3Qs
IEV2ZW50LCBvciBFcnJvciBJRHMgYXJlDQp3aXRoaW4gdGhlIGJvdW5kcyBv
ZiB0aGUgYXJyYXlzIHRoYXQgdGhvc2UgZnVuY3Rpb25zIHdyaXRlIHRvLCB1
c2luZw0KdGhvc2UgSURzIGFzIGFycmF5IGluZGV4ZXMuICBJbnN0ZWFkIHRo
ZXkgdHJ1c3RlZCB0aGF0IHRoZXkgd2VyZSBjYWxsZWQNCndpdGggdmFsdWVz
IHByb3ZpZGVkIGJ5IGFuIFhzZXJ2ZXIgdGhhdCB3YXMgYWRoZXJpbmcgdG8g
dGhlIGJvdW5kcw0Kc3BlY2lmaWVkIGluIHRoZSBYMTEgcHJvdG9jb2wsIGFz
IGFsbCBYIHNlcnZlcnMgcHJvdmlkZWQgYnkgWC5PcmcgZG8uDQoNCkFzIHRo
ZSBwcm90b2NvbCBvbmx5IHNwZWNpZmllcyBhIHNpbmdsZSBieXRlIGZvciB0
aGVzZSB2YWx1ZXMsIGFuDQpvdXQtb2YtYm91bmRzIHZhbHVlIHByb3ZpZGVk
IGJ5IGEgbWFsaWNpb3VzIHNlcnZlciAob3IgYSBtYWxpY2lvdXMNCnByb3h5
LWluLXRoZS1taWRkbGUpIGNhbiBvbmx5IG92ZXJ3cml0ZSBvdGhlciBwb3J0
aW9ucyBvZiB0aGUgRGlzcGxheQ0Kc3RydWN0dXJlIGFuZCBub3Qgd3JpdGUg
b3V0c2lkZSB0aGUgYm91bmRzIG9mIHRoZSBEaXNwbGF5IHN0cnVjdHVyZQ0K
aXRzZWxmLiAgVGVzdGluZyBoYXMgZm91bmQgaXQgaXMgcG9zc2libGUgdG8g
YXQgbGVhc3QgY2F1c2UgdGhlIGNsaWVudA0KdG8gY3Jhc2ggd2l0aCB0aGlz
IG1lbW9yeSBjb3JydXB0aW9uLg0KDQpUaGlzIGlzIGZpeGVkIGluOg0KaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3hvcmcvbGliL2xpYngxMS8t
L2NvbW1pdC8zMDRhNjU0YTBkNTdiZjBmMDBkODk5ODE4NWYwMzYwMzMyY2Zh
MzZjDQp3aGljaCBpcyBpbmNsdWRlZCBpbiB0aGUgbGliWDExIDEuOC42IHJl
bGVhc2UgaXNzdWVkIHRvZGF5Lg0KDQpYLk9yZyB0aGFua3MgR3JlZ29yeSBK
YW1lcyBEdWNrIGZvciByZXBvcnRpbmcgdGhpcyBpc3N1ZSB0byBvdXIgc2Vj
dXJpdHkNCnRlYW0uDQoNCi0tDQogICAgICAgICAtQWxhbiBDb29wZXJzbWl0
aC0gICAgICAgICAgICAgIGFsYW4uY29vcGVyc21pdGhAb3JhY2xlLmNvbQ0K
ICAgICAgICAgICBYLk9yZyBTZWN1cml0eSBSZXNwb25zZSBUZWFtIC0geG9y
Zy1zZWN1cml0eUBsaXN0cy54Lm9yZw0KDQo=

--------------J0E4C0WY2qP3vtVt7x0g4RK7
Content-Type: application/pgp-keys; name="OpenPGP_0xA2FB9E081F2D130E.asc"
Content-Disposition: attachment; filename="OpenPGP_0xA2FB9E081F2D130E.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/n=0A=
Z1KboV9Gq5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2g=0A=
EQfPiyBw+trIppWFRV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdE=0A=
a6f4uLqoNHP+m4yYnzapFuMD/R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx9=0A=
8qUR473l4buXjHgDkkXXlHqdzil1vK85PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwV=0A=
Pb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5vR7PdjM32ZJCN2+aM4dYfNzQ=0A=
xQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJvGAENBHSH1QjpZMJG=0A=
CTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLBido3DtAE=0A=
TbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w=0A=
ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsJlBBMRAgAlAhsD=0A=
BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAUCT2fPgQIZAQAKCRCi+54IHy0TDrxZ=0A=
AJ4ucO4mWDBUEnPni/KikswECcSSQgCeM0sYiNPOo7o6I20jWb+MpeVttA3CawQT=0A=
EQIAKwIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAlF50WIFCRRD2HgA=0A=
CgkQovueCB8tEw7QWQCfSIFVTaBSD0Y07DY3EhWi857g0SYAnAv1oFd9diK8UkPD=0A=
0QMhIKM0gfSnwoIEExEKAEICGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAhkB=0A=
FiEEShk8BtNefGcPpO8LovueCB8tEw4FAmRCzZ4FCScM1LQACgkQovueCB8tEw7V=0A=
6wCdHgVUPrQGkNj9smnlELVVeE5WWjgAoImCxB5V4YvEOUy6ECZtwKQ6Np+pzStB=0A=
bGFuIENvb3BlcnNtaXRoIDxhbGFuLmNvb3BlcnNtaXRoQHN1bi5jb20+wmsEExEK=0A=
ACsCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAhkBBQJa2+OYBQkdpequAAoJ=0A=
EKL7nggfLRMOYCwAni5vIJWdzAq0AZUjH3CEOrt/pLFmAJ9cBVZSpFHbRz3wnf2U=0A=
tO1yilkN+MJmBBMRCgAmAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AFAlrb454F=0A=
CR2l6q4ACgkQovueCB8tEw4bQwCfeZS+xZY/BM3VqmKILu1fVuV5neIAoItLzd4o=0A=
JT1TR9oBznE6XTcpdMHMwmYEExEKACYCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX=0A=
gAUCWtvjngUJHaXqrgAKCRCi+54IHy0TDhtDAJ95lL7Flj8EzdWqYogu7V9W5Xmd=0A=
4gCgi0vN3iglPVNH2gHOcTpdNyl0wczCYAQTEQIAIAUCRpv6agIbAwYLCQgHAwIE=0A=
FQIIAwQWAgMBAh4BAheAAAoJEKL7nggfLRMO9pkAn28Qz0g8P9gddIv0X4KShP2l=0A=
fwgXAKCNDnG1x5eRtMZVl06JxnbbaZX0ycJmBBMRAgAmAhsDBgsJCAcDAgQVAggD=0A=
BBYCAwECHgECF4AFAlF50WIFCRRD2HgACgkQovueCB8tEw7qxQCfSOXeH2tjg4nX=0A=
cu7uewpyXKEOk6oAoIWBOZoMZG4NHGWguD2N+2uftru+wmsEExEKACsCGwMGCwkI=0A=
BwMCBhUIAgkKCwQWAgMBAh4BAheAAhkBBQJa2+OYBQkdpequAAoJEKL7nggfLRMO=0A=
YCwAni5vIJWdzAq0AZUjH3CEOrt/pLFmAJ9cBVZSpFHbRz3wnf2UtO1yilkN+MJ9=0A=
BBMRCgA9AhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AWIQRKGTwG0158Zw+k7wui=0A=
+54IHy0TDgUCZELNngUJJwzUtAAKCRCi+54IHy0TDunHAKCKZyiF/IwgoqYQr4Sj=0A=
puMD64swlgCfdkI2v8kaaFwSrEp3AeYvcT2psPTNKEFsYW4gQ29vcGVyc21pdGgg=0A=
PGFsYW5jQGZyZWVkZXNrdG9wLm9yZz7CaAQTEQoAKAIbAwYLCQgHAwIGFQgCCQoL=0A=
BBYCAwECHgECF4AFAlrb454FCR2l6q4ACgkQovueCB8tEw6whACdFj9U5SQuhv0e=0A=
8BQvI4orGPzUMSkAoImqdVB7sU7Z++djBrj3uJc4m0F6wmIEExECACIFAk9nzt4C=0A=
GwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEKL7nggfLRMOZgYAnRMF9y8X=0A=
wVMnsrTRBRZvVb/oFyhoAJ9RayEpD+vnrkoMIBr4qmpgH1bjOsJoBBMRAgAoAhsD=0A=
BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAUCUXnRYgUJFEPYeAAKCRCi+54IHy0T=0A=
DonxAKCPcAgXNojuujUg5Wqi6v0RBFVSUgCggq1SsVEdq9NDWvXvkeGyNaBivSLC=0A=
fwQTEQoAPwIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AWIQRKGTwG0158Zw+k=0A=
7wui+54IHy0TDgUCZELNngUJJwzUtAAKCRCi+54IHy0TDlIAAKCMjV7lOZDqLaWa=0A=
yrz640AE27DwpQCfcJIf59yAKG1emgy29ajreUU9z6fOwU0ERpv6bxAIAJp5aUlh=0A=
o5rUhpS6ik7spsAQFPRuycPKMNu0J4F0v/OoPz085soV8ytLj4HqCGk2Zamh1jSg=0A=
liZwuk9m7V7Wgxx+nBJawpWDX/eKLObErfDwQ4dfOFvjbXLQMmNnQNaUGIWLPP3l=0A=
8GuBOHMq60Bu+TPgh627vUntL5REQEQqTXIzWC6U10QsDblLwIvdOVSdGF5xl/N1=0A=
myXzSKvrsZwWtoFc8G9v9hcCjhtN1sm9b7Ojc51iZXvcetcvPy5RA6AUW3yEExae=0A=
dUdLnvIF9sjFYIfJWFVYh2AgavnGre6fF+NV2v3zfx3wRT7H9//m4YIDYJmgZgyQ=0A=
ccXegTwfGBIq3osAAwYH/1FiMUMMES5Ilz2nDqId+DCWECAU6wgvIFRcXrZWxDxB=0A=
+ZrnmTCXoAD0xedpfOkRHp8XTVc/9MU+wQ+lZRx2OQ6MJW0XGuFvHm94KZF/8HzW=0A=
A2Ah7U4n0+3sLpk6zWceZq2zZNF0yVTjwD98+xNK1Q9sP8aOKdtg8yMH3hisKR6r=0A=
dW+mfX5q0Q8Gol2hZsFH/qyIhnPzhXDknuOh8E5iMkzrejVXUEn++Yzj23XjP59S=0A=
ObLznVkyxI+kBI9qvVEPfFBDybjHWqLcgRcCpXAzjizEi+/d31iDa2ErJHV4R42o=0A=
becFqiPnoDtiX3IiP7z9fmxM4aWPZZRqvq+1ht5wkn/CSQQYEQIACQUCRpv6bwIb=0A=
DAAKCRCi+54IHy0TDoLoAKCHYRpw/XfyEunw1YL/uMZzl78qIQCdFVcXNbqD83qV=0A=
hW4Ly7hyDL8o0aLCwa4EGBEKAA8CGwIFAlrb470FCRLIEBwCKcFdIAQZAQoABgUC=0A=
UXnVIQAKCRDP3xSIKMZCp9bmD/9050ke3bdx0zLPlUANoTu74vQT55f0a0cXgnrj=0A=
15ey6Ln0S1seHadd0aF3lKpDwUOL0YIQppDhLfWf9gEsQEKSPtHQgyKRbajvz8nE=0A=
Oi8Hz5ovrTqGCZp81XHVoiyEiCWuXxeW7eyN4C8bjxbpiN0vaZ+sgMeMhXA5mwyK=0A=
Fs4m9JPpDe6kd2eaMO0zkcJCYjk0RcNZiPohm6EmeesNbA2zJhXgo+hQHEByojIJ=0A=
5ltWyy5Zacc9dfxVq9Wr3y+lXKd8bMZiklsOPX0L+60yMoYjl1y9tVq5wDtf+iS3=0A=
GvFLpIEOG4hoAT3hkeVvGp/Id8RMj8trZn8AsMC1h2ElHaBKRMfIpJbVCpiW6VJ8=0A=
H/+WedrjiaZO5E41sM2BvQUZK+2wExnzSIcOo+BR9LrSTEJ8WuxIZ9MVT5fhADOl=0A=
O1QkRyv4ngdQsN4x/A6CCFV+YrEVdZ+53zENoJe7LAtO1WAwJmng/swDK4mVrGwV=0A=
O75zVWXL3iCuThQy0AssyoJdKiwDj3SAtNJ2DcdLDG3ZD8sl3Ljbtkgy+MZciu6e=0A=
zxT86Yv11WBa7dskewvrxKTHxOzrepM31Bcz88H7xXA5oLs8n6Dq3jQOV46Z2xLx=0A=
w3fXJ/koHyuwvi6fi7XKswl+mdJuU8y7nAmLeSOgD4N3lkWrH2dOLjAGN9VgYI+y=0A=
V6rn0gkQovueCB8tEw7nxACeNnR9mrdd+VMF32hm6lu54QUhWiQAoJLzrvm3uK/H=0A=
XyfDrNoGAjiyAj+3zsFNBFF51SEBEACh6YzpmNOep9LbGaFvauXoLDHJebSgvLop=0A=
q4TtOZ56vuf+tP2HnQvvlfXPW/9/1+ztvC8gZALQYA9MSWUg0NA4U8ygKegM40LQ=0A=
byOvLopxsMUo0/qEKTzMaoQNSNJM6BAwnRKlfh7FTgBHWwIv7T/W23Uw88FXPDFg=0A=
64mpgVKnOd0W9NDH38veN+VIE0uIAITMADYcul2ZjjAYSEzs8RSVBA0wybS2xNG9=0A=
Yz0UEuzR0IGpNYp5rrzzHN8ALqBHEgkrdcbqW2LAaFzoyucAv3hNSyHWaEcltjpE=0A=
9eNA6g2fM30SA/OtIZ4q52IG9PUzzbY/d6bnVAFLek/frXCzeP68YcRzsLHuuihh=0A=
zuG0Na2epn3KOkmHfVetHC+oQtnjHnMsWZYjLte5Y+xF/JcVB/qJiIB3OxxqMlEe=0A=
lflgetHMVo+b9Oc3Xi3mdmiwXDxYcZXwxEpvH+Hs3SUg0tUGZgtD+Yd0SX4YX5nQ=0A=
a/JB86+9ddQ9fzu9QL9VVeRcifWMVEsaeCD7syuyW24FR3AOj716w81lLJZmYDwA=0A=
6Sh+IU5hvzXQqoRF3Ln72OrOcjZLAfF90Xjb7kksnxp0c95L7citF8wuykV9j6ri=0A=
yOgPCiaax8GRqhAdTQxvG9ommJ4ITo8nyGBFUBd5xn2gcL+JawjxKGUlGivH/zUG=0A=
YzVPDUMk5wARAQABwsGuBBgRCgAPAhsCBQJa2+O9BQkSyBAcAinBXSAEGQEKAAYF=0A=
AlF51SEACgkQz98UiCjGQqfW5g//dOdJHt23cdMyz5VADaE7u+L0E+eX9GtHF4J6=0A=
49eXsui59EtbHh2nXdGhd5SqQ8FDi9GCEKaQ4S31n/YBLEBCkj7R0IMikW2o78/J=0A=
xDovB8+aL606hgmafNVx1aIshIglrl8Xlu3sjeAvG48W6YjdL2mfrIDHjIVwOZsM=0A=
ihbOJvST6Q3upHdnmjDtM5HCQmI5NEXDWYj6IZuhJnnrDWwNsyYV4KPoUBxAcqIy=0A=
CeZbVssuWWnHPXX8VavVq98vpVynfGzGYpJbDj19C/utMjKGI5dcvbVaucA7X/ok=0A=
txrxS6SBDhuIaAE94ZHlbxqfyHfETI/La2Z/ALDAtYdhJR2gSkTHyKSW1QqYlulS=0A=
fB//lnna44mmTuRONbDNgb0FGSvtsBMZ80iHDqPgUfS60kxCfFrsSGfTFU+X4QAz=0A=
pTtUJEcr+J4HULDeMfwOgghVfmKxFXWfud8xDaCXuywLTtVgMCZp4P7MAyuJlaxs=0A=
FTu+c1Vly94grk4UMtALLMqCXSosA490gLTSdg3HSwxt2Q/LJdy427ZIMvjGXIru=0A=
ns8U/OmL9dVgWu3bJHsL68Skx8Ts63qTN9QXM/PB+8VwOaC7PJ+g6t40DleOmdsS=0A=
8cN31yf5KB8rsL4un4u1yrMJfpnSblPMu5wJi3kjoA+Dd5ZFqx9nTi4wBjfVYGCP=0A=
sleq59IJEKL7nggfLRMO58QAnjZ0fZq3XflTBd9oZupbueEFIVokAKCS8675t7iv=0A=
x18nw6zaBgI4sgI/t8LBrgQYEQoADwUCUXnVIQIbAgUJCWYBgAIpCRCi+54IHy0T=0A=
DsFdIAQZAQoABgUCUXnVIQAKCRDP3xSIKMZCp9bmD/9050ke3bdx0zLPlUANoTu7=0A=
4vQT55f0a0cXgnrj15ey6Ln0S1seHadd0aF3lKpDwUOL0YIQppDhLfWf9gEsQEKS=0A=
PtHQgyKRbajvz8nEOi8Hz5ovrTqGCZp81XHVoiyEiCWuXxeW7eyN4C8bjxbpiN0v=0A=
aZ+sgMeMhXA5mwyKFs4m9JPpDe6kd2eaMO0zkcJCYjk0RcNZiPohm6EmeesNbA2z=0A=
JhXgo+hQHEByojIJ5ltWyy5Zacc9dfxVq9Wr3y+lXKd8bMZiklsOPX0L+60yMoYj=0A=
l1y9tVq5wDtf+iS3GvFLpIEOG4hoAT3hkeVvGp/Id8RMj8trZn8AsMC1h2ElHaBK=0A=
RMfIpJbVCpiW6VJ8H/+WedrjiaZO5E41sM2BvQUZK+2wExnzSIcOo+BR9LrSTEJ8=0A=
WuxIZ9MVT5fhADOlO1QkRyv4ngdQsN4x/A6CCFV+YrEVdZ+53zENoJe7LAtO1WAw=0A=
Jmng/swDK4mVrGwVO75zVWXL3iCuThQy0AssyoJdKiwDj3SAtNJ2DcdLDG3ZD8sl=0A=
3Ljbtkgy+MZciu6ezxT86Yv11WBa7dskewvrxKTHxOzrepM31Bcz88H7xXA5oLs8=0A=
n6Dq3jQOV46Z2xLxw3fXJ/koHyuwvi6fi7XKswl+mdJuU8y7nAmLeSOgD4N3lkWr=0A=
H2dOLjAGN9VgYI+yV6rn0ryRAKCQbM+fmYHJdiIJEKRMVERryBqBmwCdFva+yZXD=0A=
OW4qv6rNje1X/ghKjH/Cwa0EGBEKAA8FAlF51SECGwIFCQlmAYACKQkQovueCB8t=0A=
Ew7BXSAEGQEKAAYFAlF51SEACgkQz98UiCjGQqfW5g//dOdJHt23cdMyz5VADaE7=0A=
u+L0E+eX9GtHF4J649eXsui59EtbHh2nXdGhd5SqQ8FDi9GCEKaQ4S31n/YBLEBC=0A=
kj7R0IMikW2o78/JxDovB8+aL606hgmafNVx1aIshIglrl8Xlu3sjeAvG48W6Yjd=0A=
L2mfrIDHjIVwOZsMihbOJvST6Q3upHdnmjDtM5HCQmI5NEXDWYj6IZuhJnnrDWwN=0A=
syYV4KPoUBxAcqIyCeZbVssuWWnHPXX8VavVq98vpVynfGzGYpJbDj19C/utMjKG=0A=
I5dcvbVaucA7X/oktxrxS6SBDhuIaAE94ZHlbxqfyHfETI/La2Z/ALDAtYdhJR2g=0A=
SkTHyKSW1QqYlulSfB//lnna44mmTuRONbDNgb0FGSvtsBMZ80iHDqPgUfS60kxC=0A=
fFrsSGfTFU+X4QAzpTtUJEcr+J4HULDeMfwOgghVfmKxFXWfud8xDaCXuywLTtVg=0A=
MCZp4P7MAyuJlaxsFTu+c1Vly94grk4UMtALLMqCXSosA490gLTSdg3HSwxt2Q/L=0A=
Jdy427ZIMvjGXIruns8U/OmL9dVgWu3bJHsL68Skx8Ts63qTN9QXM/PB+8VwOaC7=0A=
PJ+g6t40DleOmdsS8cN31yf5KB8rsL4un4u1yrMJfpnSblPMu5wJi3kjoA+Dd5ZF=0A=
qx9nTi4wBjfVYGCPsleq59K8kQCYx1CnlZcq630ITy9dB/aHCQry2gCbBwZ2Rsf9=0A=
kr05S8uLhlwW3vRSvRvCwcUEGBEKACYCGwIWIQRKGTwG0158Zw+k7wui+54IHy0T=0A=
DgUCZELNigUJHC756QIpwV0gBBkBCgAGBQJRedUhAAoJEM/fFIgoxkKn1uYP/3Tn=0A=
SR7dt3HTMs+VQA2hO7vi9BPnl/RrRxeCeuPXl7LoufRLWx4dp13RoXeUqkPBQ4vR=0A=
ghCmkOEt9Z/2ASxAQpI+0dCDIpFtqO/PycQ6LwfPmi+tOoYJmnzVcdWiLISIJa5f=0A=
F5bt7I3gLxuPFumI3S9pn6yAx4yFcDmbDIoWzib0k+kN7qR3Z5ow7TORwkJiOTRF=0A=
w1mI+iGboSZ56w1sDbMmFeCj6FAcQHKiMgnmW1bLLllpxz11/FWr1avfL6Vcp3xs=0A=
xmKSWw49fQv7rTIyhiOXXL21WrnAO1/6JLca8UukgQ4biGgBPeGR5W8an8h3xEyP=0A=
y2tmfwCwwLWHYSUdoEpEx8ikltUKmJbpUnwf/5Z52uOJpk7kTjWwzYG9BRkr7bAT=0A=
GfNIhw6j4FH0utJMQnxa7Ehn0xVPl+EAM6U7VCRHK/ieB1Cw3jH8DoIIVX5isRV1=0A=
n7nfMQ2gl7ssC07VYDAmaeD+zAMriZWsbBU7vnNVZcveIK5OFDLQCyzKgl0qLAOP=0A=
dIC00nYNx0sMbdkPyyXcuNu2SDL4xlyK7p7PFPzpi/XVYFrt2yR7C+vEpMfE7Ot6=0A=
kzfUFzPzwfvFcDmguzyfoOreNA5XjpnbEvHDd9cn+SgfK7C+Lp+LtcqzCX6Z0m5T=0A=
zLucCYt5I6APg3eWRasfZ04uMAY31WBgj7JXqufSCRCi+54IHy0TDiRsAJ97uVS+=0A=
ZHPJ6P8o4rac77WTtYgYZgCfdka/GHv4Mk1MfL/MFS41nSdZZvw=3D=0A=
=3Dd197=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------J0E4C0WY2qP3vtVt7x0g4RK7--

--------------GzorvuTB6AKO3PcTTAlUQRLF--

--------------iX5IcbqkEtZZW2w8VBbmduh0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEL328rVsw5mi71RbBz98UiCjGQqcFAmSLPssFAwAAAAAACgkQz98UiCjGQqdi
ew//dcWxzqTSy54fstkzTMZKZ0tOLkSCix3bEn+krY3O6ZMi1mUlHTeN9yAIXmqCbz+5qJ2IeroE
tv21hy9A3rDcdzvBhXd598PSkyAuLXplh1kb8a6BD/N6eWsf/OcY0iQsv+4La88OhpKwgWgpXkvQ
SRB3xo5KdvqiE8wWEDptL0ZI7j4IJsoVdsfRQq8ORgMD4cCaPM71ew6FJ7bEIndFIIqKNxNOYZ9E
TqCI5xCKt6Z1VU6fmiAo2qdvC0K95QgwEO6DkfaCYB0xX0Bj3cr3IAdYpirMq8k688deQ9uKi8mr
+ubRjZ5Yz1jWqsGCFOfQy2jJ6Mfvw3pgMqGAqebglLX7rvcYh526oNIxMckiA2Mxs7XHe6rYxlBY
2f3ohNxbRZegAxOQuV3SVy6QgZkf3v2GmU7RDb9v6q6zZTDr6nJ/MR9w5A6EXTa0WebNKs668Exs
vF8DhbQiYWF6gSaJp89PV0KK769A7MIncD9Y+DfQQJKxE8aQ/CpFO6DHx0LAUEtizYBkG7algqlA
h1cP+n4MObL4g/A0JdTmAulX8ZYUS8sMOLccR7MfWQ23N1benQuvJcJURKaWRl1xIzino9o5KL2j
9z8pG99l/aoLu3EWUm6I1f0r5nCe/wFhDZLwY2UJBaMxsTUXb21cjPSVP4FEUdxRLGO5x8GnpULL
yhc=
=igL/
-----END PGP SIGNATURE-----

--------------iX5IcbqkEtZZW2w8VBbmduh0--
