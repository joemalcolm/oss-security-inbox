Received: (qmail 27678 invoked by uid 550); 21 Apr 2025 17:00:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30689 invoked from network); 21 Apr 2025 16:52:37 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEul6AYl3c2yXNWdNgesPu9KA9+peMH7NrvG5eXGz90goA4+5davllFs4um9nBSlA8K1bd4w2sKe4O6qxXW6rUHhuamzQ2FHqsMkj/E11BXCzDM2vYF1C4Mwvd2xmTKCCuAuvgwOww1TaqGAhWyHkiKglEnwsMAgq7W7PDNzHvFwNUrX4Js1rXPZhuAh88d9xHAPOOuW/ECWQP+SkCDEtab2s9O2IwrD9QRzVFij+M0AaVOtK5tVgOt0++3F1Z2hwTHte6oo7U2Z+0JumhVmKXl9pYCVONTmaPCVKb60mB/x38lzccFeZGeOkafmlObA9vngujtaC1bClY5xR6Bnyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/n86dIC5NuVn30o1pN9IBc/gvssZMz+zcZ2n69CqeUs=;
 b=Z9AmCbIxEUXkAhE2Y4zSDgWzJ3g8RFQwv7efyVYdHwBvkXd2v3wLsQ6GmLxWbZW4tyQJqCXjRbqHWQYc6X+zTh3+mI+jqmiwNQIzTt5P8ZQAJMm3Nd9spAym3xwrQhR73vUCTb8BYuc3tsZk5NFAk+o86qz7Yo53gS7NpfLTUDjsdo6X/Jw1z0Aqitc2S/ZIU0zWbo5pewmD/UbEr+59mUGpLhoFwemcatSZY2fpNjvLetLl+enkzO0U463txrHUnVuzV3Bqrz9046+uZcdGc0RG5RXdaujYvpqDQCeqKl2vusqRnIF5gsmc5O14Z4rA2uPXcfb//GgErnBYlKy2RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thomas-ward.net; dmarc=pass action=none
 header.from=thomas-ward.net; dkim=pass header.d=thomas-ward.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomas-ward.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/n86dIC5NuVn30o1pN9IBc/gvssZMz+zcZ2n69CqeUs=;
 b=UnxJvsA5EjMPWERoD44IMefbuPYhp914LxAcjRlq4xXxwtIlc0M6L6v1eS2t8f361hiMliuKdAksl1APuUvvHk2LQNSmkPSCHRMtYoWqt9YmiDvUtPP37qL/Z6Dvmu4Bm8Wls7e5g1rADgv6fwUk7R+48cbVrlWpE2fWo77x3vHZgGZpjnAbswipW9q+mHBhIJWA5pOE7UZ2HtWSz/rGH3u0ziCMF3AVwav1n6SHtTJyCsmogBhmTJ3QzWyosctkVP+DC+djblK+yDQJA9WDFLH1yEFwIgDVo6Z7SrtVaBWUm7/bKT9LR5ilStIFHnxLoMgITQJefklHytJst4Jclw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=thomas-ward.net;
Content-Type: multipart/alternative;
 boundary="------------c9cOuTXDqHWNpearoGSmCXS4"
Message-ID: <43f96a10-24af-423b-bb21-f2f4001f5ed9@thomas-ward.net>
Date: Mon, 21 Apr 2025 12:52:24 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
 <ewvs55pqvqybv7telryghfmp4sypf2rcjximilprzn5a3pkaie@vcsibbkueub3>
Content-Language: en-US
From: Thomas Ward <teward@thomas-ward.net>
In-Reply-To: <ewvs55pqvqybv7telryghfmp4sypf2rcjximilprzn5a3pkaie@vcsibbkueub3>
X-ClientProxiedBy: BN9PR03CA0677.namprd03.prod.outlook.com
 (2603:10b6:408:10e::22) To MN0PR19MB5948.namprd19.prod.outlook.com
 (2603:10b6:208:37f::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR19MB5948:EE_|SN7PR19MB7139:EE_
X-MS-Office365-Filtering-Correlation-Id: 8243d235-a940-4243-3347-08dd80f4e47f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?elRKc0Z0TVJQMmtYYlFMTnpqYW82U1NBMjVkdXZOSlJaR29jeUlQaXlIb016?=
 =?utf-8?B?WE5OWU1jWW9GUnpjbWp4SHBVeURGKzhUOGRidWQzaEZOaG5hb05yd05VQ2VR?=
 =?utf-8?B?bm1YMW1pNTV4eEdwQ2J4aVpodXkzcSsyNjJHejF5V25vNncraXoxalJJU3h4?=
 =?utf-8?B?ekJLa1AyWDFpaHhwcys3Q1lNbDJEaER0RFJJTk5mRnNLS21mdkNLeWpqTTFn?=
 =?utf-8?B?NWFiSDZhcFhrQ3ZINys3dW5YSlc5a3I1MHVxN0ZHcHByckZqVTF4NHM1SDlY?=
 =?utf-8?B?Ui9qRXFGYUQ3OVFINzlyeGV3cWVHTTZiYWxQWEhqUFVxSEJQRjlta0lKVVF0?=
 =?utf-8?B?cjRMcSt0VjRQMVBWNnBJTW1OdEdGR2Yxd1JGTVFCTE14anROVnBPUTRLMkRj?=
 =?utf-8?B?WW1ZUDJmMG5uNExVeDZ4eEg0TVBWNGpsTUY2VXNTV1hFWlRRQWtGeTArYTVM?=
 =?utf-8?B?S1R1L2NwbmJtOUhEc2w1RnZlMUY1YVAxQ2gwVjR2cTY2YVY0WEExaHVYL1c0?=
 =?utf-8?B?TW5LUmpFZ0dTZGUyOVlPUEZJa2h6c1ZiMTJLb2Q0a0ptY3hReVIrYlVHTy9y?=
 =?utf-8?B?UEJCLzJ0MmhPVkxhUHFhYkFIRmRQTUd4WGltWnFMcmZtQ21taWRaSUYzSG51?=
 =?utf-8?B?eCtBVTZ0ZDlxeWNQOFpxSyszUGEzWUw0VnFaRnYrTVA3SmdRaXc1UytvK25Q?=
 =?utf-8?B?SnYyQTdKTmhhc1ZCTit4MzB4MmM2emVvTDhMWTJOdHoxbUVwbnNhUk1NeFdu?=
 =?utf-8?B?K2hvcS84VTFjL0tuMGI5bHMxdkhRWHEyR3BjQjFKdkhsU2gyOXIyaTJQaW16?=
 =?utf-8?B?eCtCTEFjSmhXNVBOL2t3am9RdjJvUXhCdDc4QXJLMVNnZmR6MTFldUNqdVNx?=
 =?utf-8?B?MllsUm5wVjNreFQrUk5hbVJramFweWwyanFqeEJ6c01WSC90U3p4Y1hBQVNW?=
 =?utf-8?B?YTh2cnhQL2w4ZUo4a0I4OUJwUStMV2JZeVMrNkNLKzZTL2pCb0cwL1NvZUMy?=
 =?utf-8?B?Z1NkZ240Q2NJMUN6Sm1jdnB0NTVMVEJvcm1yc3JpSTl4MEdtZXVMTGluVmJq?=
 =?utf-8?B?bVdpTy9nZkprNnNDdzlyVzFrejVrZ095Y0lXdG1qaGpncUxsVUlBVjZ0aUx0?=
 =?utf-8?B?QkZqZ3ZoNG9XRHZLL1pSYjBidHdsdUZhWnUwbDFEcHpXWGVNUTlaaWUra1Jm?=
 =?utf-8?B?dXI1OFd4SStjdVlCVjlLVFhyNVNGMlYzekxSaUYrbVo2VkhSd041MDl4TGhJ?=
 =?utf-8?B?RHR1c2ZRREljQXJVU1FDRTdZRjlYWTFuOGN2U3dxS3d1Wi95ck4zSTNza0RY?=
 =?utf-8?B?RFk2RWlPd2J0ejhISlZ0ZzJSZHhhRzcxWElyWTVLRDQzTWkyY3NaMlcyaC9G?=
 =?utf-8?B?T0dURjBBUm96SDFHV0Z0VlRPVlhndHRJaWZiKzZNSXR0VEpWODdZVm90enN4?=
 =?utf-8?B?eEZGUFVYd2xXZ256OThDUmdjdEtPbVB6SWdwZTBPczBKN1EyZlN1WElKbVlC?=
 =?utf-8?B?MlhrbkU3NVovU0VHOFR1YTF0ZVBsTEw2V28rQ0VDNStISGVzZ1lKNVBaRzhE?=
 =?utf-8?B?YkhhMDVKbktFQVBuRGQrcGhBSGJHeHhnTWlSNXF2NHVNT21UTUZRMkxCMWUy?=
 =?utf-8?B?MlhITFBmMkZBK1hvTUhKaStvVUkyV2NYYUJ1VFF5SmZuM1M5aXpFVElMRmlT?=
 =?utf-8?B?VzNiZ1FwQWJuR0lFQWg4RUhrcStrSXZhSEFaWkVDTlhRYUFicDZwNmhqUm1L?=
 =?utf-8?B?Qk9jd09aamlaaXhKcnRsWGNtR1UweUsyektuT0xERU93bDQ4a0hiVzFocm5U?=
 =?utf-8?B?Zi9yWERqV2Q4ak94bkVzRk1ZUWJWOE43b3phUVhxRDhhVVJXdzZ5RExwRTI4?=
 =?utf-8?B?V2t1eHpaMnVwWjVYVUFmaFlTMzYrVjhWWVR2RThCS2JwWmNSZ0s2Y3lQYWhG?=
 =?utf-8?Q?nb893CkC9xY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR19MB5948.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ckRmMGkyWFo3eGZVNFA1RER2Y1FDZkhHWHVDY1N4ZWtLdFR6YmRWb2w1ZmpG?=
 =?utf-8?B?Y3pSZVdSRTBSZ1VKOGV0cVpoOVVJejlUL0g4eGZrTmE0Q1ZwbndFYitYbzlL?=
 =?utf-8?B?VTl6M3FrREwzeUc0OWpQbE0xRUxNWmpCc2NBbFEvWkV6Ri9LekE4UEgrRjZO?=
 =?utf-8?B?ZnlOUW5CYkdNdXFBUTlIL2NPTk9SNlJjQ1VCdzhCZWdzdlJ2OEpiN08yaGhX?=
 =?utf-8?B?TVVVVlN2WHphNTZrdVVldy9BdWJhMCtoYTRJeHFKQjYrT09FOUJrMHpZdzFu?=
 =?utf-8?B?Zm9jb3pQZ2dpOStXTjNtTU5tVUxUdFkxSVhSRW9ULy8rZEtvSGNpMnFDUngx?=
 =?utf-8?B?MkExa1UwdzdIL2xmMDFlaE1ONE1SRWhCVjlGdFIyd09VbVFKNndRK2ZKYVgy?=
 =?utf-8?B?QStrNmU4VWFPNW1PZHptUjdRMU5nL1hIdlNMNEtIY01hRUNMQXNRU1pwZHRq?=
 =?utf-8?B?U1RPN2ovSEFvQm5KQzdDUmhFMmxEUEpYVFdydGRhODVpekhPdjc3eUFha0t1?=
 =?utf-8?B?elZkRkZRaktZdFdRWkZSZ0N0TDV1MEVocXFkbTcrMXE5OENYTGVSNmVkemI4?=
 =?utf-8?B?SUpuVk5QTXUraG5kZVFSSHN0VitJZzMvekRxSk92dWwvWlRNdWxkNURqSkdH?=
 =?utf-8?B?UU9NaTh4NTcxcFlxeGJXT2FLcjMxYlZPemNBZUgrWDVEU2pqVWh4K0w5RG9G?=
 =?utf-8?B?aGJjVW9wWDRoT1N4eGVBQkZ6VzNrbHEra1gzeUY5ZXplZThhNy9pWFFLT0Fu?=
 =?utf-8?B?WDBlSmJ6djEwcHArL0RvekpmYTk2d05Ob0xGMG83MmU4cWNSQkdkWnJ2RWRn?=
 =?utf-8?B?aytSbTVJdGVwdUdHNGhjNmNuZ0l6aWRiSWg0WlNXWktYN2psNmVFUGRsVmNm?=
 =?utf-8?B?Z0ZHREJOU2VLaUN5M2NlTVJ1bE40RDJkVFZtSnV6akRlOXdJWWJIQ1VRVytw?=
 =?utf-8?B?ZXRCWm1KbnZYNGlFTldMTXZGay9JLytGVlZ2SnhFbTFwTE5GS2hoODlKakhV?=
 =?utf-8?B?dTBydndUY1ZrQzVsNkt0ODNGS2NoYkJwU0d4Y2tPd0tqejN0WFRDZU9YeVpK?=
 =?utf-8?B?b3c2YnZGK25mUGE3Z2tWZmtkWjJibW8xTDFXcU01VjYvQ3JXY0IxMHptdExC?=
 =?utf-8?B?MzM4aWVZK2gyZm5ZUjVzbDYxT0dEL3M0MGxGcmlFVnh2L0VvTWN6d245M3Jo?=
 =?utf-8?B?VEp6aFBpSzg0YTM2aDYvNmtDazl5UW96MlRIdUVYZWExL2JWUThKWTIzOFF2?=
 =?utf-8?B?WlRzaGsvVk5JdzZ6K09nZExqclN4UkhDdEx5QVU2QlUrU0o5OVN6RDhySUI2?=
 =?utf-8?B?T1ZqTnZVMHQ3anFQV0hIektyRXlMTzZYOGRUK20zeVFFWXNmcmRIdlB1bTl6?=
 =?utf-8?B?em1JM0lIQUhJWktHaXR2MU0wQWttRG9ESDZaVExkWng0My9BTmFrbWJMTmZr?=
 =?utf-8?B?QWRadXI0U2NxRDdaU0hDKzBES0JSV00wT0N4TTBnSWMxZVFOQXFaZS9BcUJN?=
 =?utf-8?B?WCttVllXbmlGalhDMm00WWo5Zk40TkJvcjMyVEpla2ZzeWpXMERObk1zUEc5?=
 =?utf-8?B?NlVDUU5ZZTlGbnJMTnlhYUlPWlVvOXhiVU1TUENxQnZsWTdUeXRKeFlOSXFZ?=
 =?utf-8?B?c2hsNWljbXJWWmE2eDIrVFRxU0hSeWZvaXdTbWdkZTF5a2gvb29TRHBLLzVl?=
 =?utf-8?B?V0xiQlpQdUdiM04xOHdKZkVuM1VRVjB5c3RwNFZlVWd4TCtGQmJTTVlkZG9o?=
 =?utf-8?B?Q1ZWVXZLdk9hNS9OK0R5czZ2UXpxdlJoem4zb3RPbTNIWGRhSVVsSCtHRkRZ?=
 =?utf-8?B?NXZkbnJVYzVUU3BIVHhaL2FZMEp2MitWOHRPMENOSWhVRW1nWGhzdlZkSFRp?=
 =?utf-8?B?UnpIcy9pd3ZteHczcGIyc0p0V2E4Y041ZU4vMEJNNWVZOTJzNDNyTzhnaEhU?=
 =?utf-8?B?bjhxQnMxK1JVM25LN1pobkdISVF4bExNUmwwbnM0UEd2T3lvRUtWMjl4eW5U?=
 =?utf-8?B?WjN5NDE2TkVkTGVYeStZTmNGYTN2K1FLK0JZSzlQc1BtRk1seGd6eVdQMWtQ?=
 =?utf-8?B?WkdGNE5nR0JGcTRiMFh3dFhmOG1tZ3kvb1FTQ0U4cHlCck96U3I4RHBSRzc3?=
 =?utf-8?Q?LxJaKfSZhlPee3ixIdQk2fiz/?=
X-OriginatorOrg: thomas-ward.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8243d235-a940-4243-3347-08dd80f4e47f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR19MB5948.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2025 16:52:25.2030
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3f231ddd-e974-424c-8139-40bb3167ef6b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8i49mX3Jw+Byy0C3Bi4LxhutwCyUmD4Ea6RMPM56FJfnEKYUs/APxHnGPN+6ccU7uV9QzJM98Tw7Xut187Q8Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR19MB7139
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

--------------c9cOuTXDqHWNpearoGSmCXS4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-04-21 12:48, Valtteri Vuorikoski wrote:
>> Are these vulnerabilities due to modifications made by the vendor (cPanel LLC) to
>> their distributed version?
>>
>>   -Valtteri

Direct quoting the CVE:

> *Affected Software:* GNU Mailman 2.1.39 (bundled with cPanel/WHM)

I think that this would be a modified bundled version based on "Affected 
Software" specifically mentioning the GNU Mailman 2.1.39 that is 
specifically bundled with cPanel/WHM.

Especially if you can't reproduce it in pure MM 2.1.39.

--------------c9cOuTXDqHWNpearoGSmCXS4--
