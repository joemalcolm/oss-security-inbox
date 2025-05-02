Received: (qmail 16235 invoked by uid 550); 2 May 2025 16:25:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16210 invoked from network); 2 May 2025 16:25:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Bf80gMYHf2CbA/gs
	SPBCo1bberN2Jr2Xp/PwNiTJC9I=; b=ZOFoiTybSDOSZMcZ8YjX4wOoPK4Z1+SH
	zCvv0XJ7iEhljDEcqGZQlZnD1guFzWy83FgsiA38yx/TxJEq3AoAUAZOog30sAwd
	Bgbpxx/v5L7FVTf5t4n/uw4UvRnEKl4mrTx5thzzjwLtPTXYQuCzI93XRF/lhDFo
	yQDCCfzu+ECCLg4yxVr4s63+K59k7fWWtPV5SRCdeiTb+B//1WIZ7vf+jP+liRuL
	ih7EEGlvqOXdA/LAszVvvLuuU6Ge6wHr4ksi2QRCNnTQ223nDxUeuwoeZFp/KNtv
	vt38pMM/l9SczOZ56mQOOgQV4mElKyB4nAsxDg9ELFWoUPsPhDgtGA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HmsMxnxlLZnHwFsuWzhllVwQUA4OJ3U7aAuQ27aaT9VEOWpA0B5sZ25LFTvmpdJlolMU9rb/tGM5rPR0RFpq4aqRSevwJp8R3su5phj7bXDUaWD4zSheLR7LKv5ljvu8+0HQjyixjpQuQ15paaJi9kbBxv1sX7XpaofKKoHSaUyDBfAIBwuQnEXvhsLdaSc1Z4W3xDfmdNEaDZBN8ftrRMcYtQnE6mhKbDB4T8PyjxNuPDt8qihemw92r0Cy9+xzOygBSNBd+U663akSp/KNXvviAzrusDZ1Eb4MPaTDZhfAK3BolA4/JyNy6Ox1eyvzcDw4B+VO88Qlef8Uj67Ltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bf80gMYHf2CbA/gsSPBCo1bberN2Jr2Xp/PwNiTJC9I=;
 b=SlTZZdTL60+YwdeJeVf9KNpfMu+G0WHhs0mkIxBye4oK8e/sYiCURq/8yhDqZV7Us/zBZcerE8Yo0YHUbk1kKUBMInavQZV4l7BOVyz2IPj0GGy9mM1OKvaA3VZtt4txOIgvHHJbQdRRb57uD0JFbAm9iGNmDFAnEVJcsGgbdZbGtnpj5jMBq2vemYU93t+kdAljtGmyRAyFlw6nTJ1rvwT8Xcdod9BArCb3Ey0FIEtiqjMAjxSeHF00zCbKVLVABIA5igccBLvQnvU8Z02SMZKkj0rAhvEFqq3H7/OXF02VLESKyC5VyiDzBb/REnPTgQOMNdNwRVA8D05utid3Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bf80gMYHf2CbA/gsSPBCo1bberN2Jr2Xp/PwNiTJC9I=;
 b=tP+LGDjE6gLQCO4HS20rOxFVeAxhQAUKNxQ+/3pWwHncL8UZ0KmDFXJqI/BsBU87u63J5Cus5UpSv0DLnGlSSteXrXhC9Ez5G30+uUSoWf4qrHM212uF9OewztM5MhnZIbvWE1/pkbRcRNAchOFSQjRj5kZdfZgf5KGW2KDgJ7o=
Message-ID: <d56d1694-7625-4c73-889e-222afa21d2c3@oracle.com>
Date: Fri, 2 May 2025 09:25:34 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1P221CA0019.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::20) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB7832:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f5e78c5-3da6-4784-9a4c-08dd8995f819
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?enhzUEFCMW1TSVl5VENJaHErOUpCMWNyRlpnbjRKK2dXSGl3WEoyTVV1OU0v?=
 =?utf-8?B?Mkg3STFITW5UQkVYRVEvR3hSc04wZHdEbXlaNXJaNk9KaTlYN09WMUwxaGdJ?=
 =?utf-8?B?OTNkbmxiVXBnUTNVTkwyeUp4emwyeWhCS21jbkNwRmhCRGVTVVZna0duNURX?=
 =?utf-8?B?Mk5CcFg4YlF0eVZydWx4MjVvb1preHNidmxDanpDNGxHNEpQT3B4NWRXZFR5?=
 =?utf-8?B?OUxDL1FuZjg3WmtmODlUWXlHdUdRQ1RwRzBoRGJOUWFCemVFU2UvRldBMkVK?=
 =?utf-8?B?VVRpZG5LWEEwNUl0NGRYR2FTYlJ4d2dtVEt2dXY5d0Jpak9oeDVuQ0lpcWQ0?=
 =?utf-8?B?U2hKWkVDYy9HT292UU9mRjFHbDN3cGxzbVBVckwzSFB2QlhJczI0MXhydnBw?=
 =?utf-8?B?UnMrdWNtK1Q0bVZUaFptdHlZSU5laVlvSUlEUzhjS0gzRWloVitWdFlMUXlL?=
 =?utf-8?B?THlIRnpVQ3JqMDY4TDJXT1hhSmNQamxuaURMdHN2cnBRNzh0cXpYeFpqNHhV?=
 =?utf-8?B?WUorUFRZQm1DVXJoM3RicVNncW1KaUZmR0Y3MWsyZE1MMVhsZFhGa1hlQnR1?=
 =?utf-8?B?RTNoK2I4WWZxY3c0VjVyVUswRmlUMVNMSHloNFlYSkRHVVEzaC85TzhjSVE5?=
 =?utf-8?B?UVVaZ1g4NmhRVG9BWDlqTUdyUEJrVUltZEN4LzEwQlBKTUU2YmtZOU42Qm9n?=
 =?utf-8?B?ZmtTblExeHRFZ2lkMEdzRWhlVGdaVUJSam5EcHQ3bHN2MzM4dUJ4U1RaNUw1?=
 =?utf-8?B?T1YvZktxUisvZ0liazVtNDdpTFBEc28zaHE3ak9UamZNZ0ZIWjNDdk1TQTdJ?=
 =?utf-8?B?K0poSDVvMk5kTmhRRjZFWVJlMnRrb3BCWUxPT2l3MWZhUE9LTGxnTFRhL0Vy?=
 =?utf-8?B?QW5YOXQyYnVLbjlsQVhadFdjbk4yNm1qZ25sekFMdTQzc0xQV0FrMzJYMDA5?=
 =?utf-8?B?UE91WWJIQ2YwSlZyMnROOWdSUG1pNDY5QS85MFEvbk1uRW1BQlg2K0hRUTlk?=
 =?utf-8?B?OXRHQ0h1b1ZRdnMvL3lMMjc3Z3VBOHN6MGpnVUlWNHNzQ1R6bjhHTG5jK3I1?=
 =?utf-8?B?dkxvWVA2Tk5VMEI3d2cyNmlld0dBRzY5VDJOcUlKLzl6dS9rQ05LanduRDdW?=
 =?utf-8?B?aVlyLzNkZEx6bEsySitJSEdPYjFqN0k5T2VlQmgvLzVPam9GSStMWWFZMzVT?=
 =?utf-8?B?Ry9DNGd2MjBrS3Foem1OSmN3SVdvQjFjbDByMDFGNzRicHlMb3dXbWdHcjFx?=
 =?utf-8?B?V3FQYmc3SE9kYTU3MjF0N09NZmNOSkRsZ0dBbGxJaXl4MXNKaEtTTlFiUlJU?=
 =?utf-8?B?Q1V2Q3lDWlJrRDhIOS9CcmVFLzhvM0ozbFNtYUJ2K2ZEMUFWQ21VVDA4cm9s?=
 =?utf-8?B?T3BIVHZsSHVTWTJib2FBODNDcjBoUkVobmtDSmc2SkVNTU9RU1VnSTc4OU1O?=
 =?utf-8?B?aHlPOCtmREZUQ3l5NFRCb09sNEgvS3RsQ3U0K3dDckI4YmhCWThDZllGeHNh?=
 =?utf-8?B?OVRIUVFxSnZPSURlZVpnUEY0WXYzamtNV2FZQU9UZHFaekNNajBEWXNaemw1?=
 =?utf-8?B?S3FQZXUyK0ZEbjFaZnhmTEIxV0hOeWErdGJzckdXT2lxM1pZc3poMFMzRnR1?=
 =?utf-8?B?amdHalowNjFCOUtNWTJSeUVQTjdqa3lyZ2U1VktWMUxibjJkQTl3YWJuQzMw?=
 =?utf-8?B?YXZSTTBqeTV4S1hFVWxsOGovSXhSL1A0aGx2R2pramg3SW1ka2NBVElUYXA5?=
 =?utf-8?B?aHlCemxMRHkyc0hiNkRPTkx1L0crMFBvQUY1T0NlK2svQkRmL2hnRC9PNkNS?=
 =?utf-8?B?aXFadmt5VzRDeUZINUpsOTc0OEh3UGllbHMzTFZwY2dLcTdmQzllUmtCLysx?=
 =?utf-8?B?MFFFZ0s1ZXVDazN1TTdEbWU5NlhHbVo1T0lKWUl4ZXpLWVQ0LzUxMHp4Qmc1?=
 =?utf-8?Q?1t5UjbxJj2w=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WjVIM2VYeTExTFNPMVBzWk9uSjk4bjRSY1VpUDlldnd4K0VzUTBnNUJYTnVS?=
 =?utf-8?B?ODBmSit1N2p1c05xWmZwcDByNkFDY3dOeHRkYlY2bEFVcDNsZnhpSm5qYmNh?=
 =?utf-8?B?bTEzN1lHSjJobjhxOVZyY0pMUWdkUExXMDdhRFpuQ2RVSHo1eGxUOFFOUlEx?=
 =?utf-8?B?RGk5NktuaFRZcWYrdlhoSEtIc3hxcm9qdmZvdFRrN0tPV1p3UGlXNjhVZzJn?=
 =?utf-8?B?L2E5WTZTeTFZM3dibEszemJVSEFRM1d3QzFrc2NsTnlOb3ZuUmJLS0t4VG1r?=
 =?utf-8?B?OTRUMEI1RTA0SDJoZU1LSWNoV1ZxT1UwN2pZa2VMdzc2bUNaYk9EVFBIOCtZ?=
 =?utf-8?B?dS8xUzk2c1ZhTW82MXp0ZDdqNnMxUzlnM0dSd3lSVHdxYmVOUGtZb3FWTXFk?=
 =?utf-8?B?ejQ1MmEwTkNhbFpsdk9uTzVGSHdXTk91aTRVNitWS0NRbUVQYkJuVnJlS1dH?=
 =?utf-8?B?blhNSjRDOHBIWTgyRTZuYXZOZmtpLzh6NTd1VDF2a0NJRHJHZlh2ckhSTDZx?=
 =?utf-8?B?OVdZU05NWHVmVmh1T01lMVFLQTFOeS8yNk82K3NzT20xa0k2eXhua0tqeG5N?=
 =?utf-8?B?cXR1V1RDTW1SaWlJZ2R1MUp2eGY3MW5lNHpVVkQ5TkV4a3l4TXIyQytNT2pQ?=
 =?utf-8?B?YkJ2blBHMkEwRFVEQ04zbWFYN3pXVlhuTm9tYVFJd21rcXV1ZVlWdXg0K1dE?=
 =?utf-8?B?S2lack81L0RJNmFDMGRyUUcveXpocXE4YjFsTUZ2V3E4K0NPcHBGTnpCT3cx?=
 =?utf-8?B?eUNkNHVGK0lrVDBKeTlVbDc4YnRmMko0cHRBT0o0NjNXT3ZOWGFiRFVSU1Z3?=
 =?utf-8?B?bFU5Zmk3cUcyZnRPeVY5UkFzcGlVQmJhTCswSjg5c1ZxN1JPdGpuRUdpdWdG?=
 =?utf-8?B?cktZSThVMC9tY29PMDdhb3pESzZwRzdOdTNHZE82Rlpjd1pOcENiYU9zZGxa?=
 =?utf-8?B?NjNCcjFUNWdYUXF3SkFNWWFwUjU4c29vL1AraUFaL2dVWkh6MUU0Y3duSUdY?=
 =?utf-8?B?eThJNXFYNTBEYmlyVUZxdlIxbC9DMTU1OGFnSVF2WUhXOTJPS0tmL1VsakJv?=
 =?utf-8?B?ZnhBY2QwMlp2YTl3NmM1c3hIa3MvNzlnK0syNURYK0JkMmVycVJJSWRGY2NY?=
 =?utf-8?B?dk1FSlRGdWJsYlBQbDRBOE90cEdXS1cwWmppVkwyMHVSa2tkdE5pV1FZK3Mr?=
 =?utf-8?B?NnVlVngwODhDbXFqMzdrdFphaitjNytsZ2tqYkdzUE5Oek1Kd2lmdXQxNmNK?=
 =?utf-8?B?K2pwUW5CQmV3MDVQdnNqcEVKU0xEaC9wdEd4L3ovMEZiWG15a3FWRVd2MDVK?=
 =?utf-8?B?enRaRWNrNktwTlczdTVxQ3hHNWsyUDE0UUx2SENlc2g1UWpIWGxjT0FteGxP?=
 =?utf-8?B?bEl0UFJ0NTNhT05qRFZPMW5SZnFtWGNleElBVlp5MjErc2piYStQY2dJZFFh?=
 =?utf-8?B?RWlPMThiSzhacWlRbzdyLzU4TTd0UzRnTHBDTkRPb2xmNmNlaHFOWERxRGdM?=
 =?utf-8?B?SEpUNTNpT0dQWkhnZkhERWx3dFZuSldENTFEaGJzMmdzSXB2UnBaNzhIeXlx?=
 =?utf-8?B?MXd1LzhTdGpPV0ZtZEFaN2JMZ2dBYUcwUm51QnJKS3M3aGJETnZUelRTR1JE?=
 =?utf-8?B?M09kRm1EY3BUek50WStiUHpDVy84aTQwU1BOekVoVnhuZXBMNTdsaVlYNm10?=
 =?utf-8?B?YzBkaTVYZ2pvZzJJdFA1eWYvSGlzUUlPdVFqYzlLYlVKVHh6UTV5MUMwd1B4?=
 =?utf-8?B?b3htcDEzZVY3cUZCVTkvVnBaY2pYTkY2ZldaRmF2WVJzZWdyT0h1K3UyeUI3?=
 =?utf-8?B?Y3NURDA5TFNCVlNpNm02TzlLM2hPM0NlNVFvQlM0LzkxbTBSRG1hQXpGYXQx?=
 =?utf-8?B?aGYxU0t1SkJIQnFINmZFd1BJR0JrenhpMUpLV1Y3dWZlZ0J1RjdvUHF5ZjQ5?=
 =?utf-8?B?VGlLZ1ZoeENFcU5acC9aMGRoSU9VaTcwQkhwejd5NHBwNU1ZMk1wanZSMXJi?=
 =?utf-8?B?bFh5TEI0bmR5cmxTZEsyY1ZiaENBdkJPRitYdWJLOW11M3pyUE1WSnFreHR3?=
 =?utf-8?B?aTJWNDR0Z0Z6NlU0L0w2K1JwdHYyRkFod2NRWVdlZk8yRnY0VGVYYnJjMGpE?=
 =?utf-8?B?ZEU1VFdpQW5Cckl6czYweE5nRE9oMlc4djZpWHFyMGVDQjdWYnp3MWo3QXY4?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	sX4DW3zG62JHQu8rFU79DkfPKvmMrQZTqxrIt3/6JErlGRkGTLftwHLtVZ8uWMv7G7sPYladehr6X3CgZ7U2s0LheYL6PI43ot04tYq7qbT9S0zKRQXATkOqtNLI7NsGT/+nqiB4cOYPyG8Pc2TA69yR7zDdDlNCDGGIpx8r+JeJbhCo8kGLww/eOTZ9V35BWYMY49MwjLia6wrJW9IZZyu3YXPdwivA2Eold4DRkkBth01IAWdgxGXIKD10eTCYlKNzjtL2Igex8+9AncAWfvAzFeh8e4kMBRtuYQyZTc7TGIFUcZboNy+ovRvQxNHTp7dKcjNzNjH3wb68bO08faRRjtybVEeu/MqfBdGIvQ7JdDCAA39yosl8G0tGcjxUScN2jPr5kh9l8DmrrhSp3QtRV4FcPBXnboAy8evZ8hiDS256MseRH256CW3ggkEN41a24EHQrGWcB1LHLO2/OT13cX6DZAVmhi+WT74smFwvu5EFWKHzfloLRhVNw3PiJ+dXOiKTgkLgT67Bx2Y8xkmgHZ/O0WV9dkt2dtz8ed96eMZy7OH17/T0NPWbRXlXb5pL1RkmLGum4Q27wL2EPzQhLmtI+CkA1L0/2TDHk48=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f5e78c5-3da6-4784-9a4c-08dd8995f819
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2025 16:25:36.3738
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Q+4hroRefpcTYSiXDKHGofvSy7ch1nAF0uMDwLPVg6GTdb55UlmhGmeQv+KW/annUYgD//elVFRohRzw0NPW0x5lOqf5PXMFlIUvbSyQcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7832
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_03,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505020131
X-Proofpoint-GUID: zpfqO9LB3E8hDF7rFLifN1kSDJ1rWcEm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEzMSBTYWx0ZWRfX1OAXyhEqYBCh Ek20B8I1xd26lFiCaFQtLBQ7ZKqYQg6HJ5X7IFKbsAh+rX4jPe9yXpW0jZ0IZEg5/MKBEPVtho7 yM2Mbcus0yLgTiRYU3fBuCeKN72uClIJUNz/6eZH266rlDpGjgwtItchcUrxc1m7ytqANmUJTpu
 G6ogPUK+082r7I5MnAmuowyc5VmeeYDASIthejDPuj4qt6cODrwu1BQySFRceHLbs2MbjmVomU6 kAlfBITW21HIa/ayUCAj70HeRK+Ei9IOEMqc586UQ/k7fQ3KqbOcEFIRc4qxLCsHa5Mk8d9GS+3 alScGdGsl2vkFG1CUCbAGWoAD4ZffOopUXRqgkN1KPE5y4whpBgi2hM0OUySN4lHguYiCSTxzDM
 /AR1Tj+RXFFbTJQAhzcBiu6BdWzetCqC7B18fjB82YwFtXoEzLO71TIP2uOjthASJnPj6+nX
X-Authority-Analysis: v=2.4 cv=ZuHtK87G c=1 sm=1 tr=0 ts=6814f204 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=xNf9USuDAAAA:8 a=yPCof4ZbAAAA:8 a=3JPJKrpQaO07jd5O60MA:9 a=QEXdDO2ut3YA:10 a=QrW2tTIiCi4A:10 cc=ntf awl=host:13130
X-Proofpoint-ORIG-GUID: zpfqO9LB3E8hDF7rFLifN1kSDJ1rWcEm
Subject: [oss-security] CVE-2025-47153: out-of-bounds access in some 32-bit
 builds of Node.js

https://lists.debian.org/debian-lts-announce/2025/05/msg00003.html announces:

    Node.js a popular server side javascript engine was affected by
    a vulnerability on 32bits architecture.

    Build processes for libuv and Node.js for 32-bit systems,
    have an inconsistent off_t size (e.g., building on i386 Debian always uses
    _FILE_OFFSET_BITS=64 for the libuv dynamic library,
    but uses the _FILE_OFFSET_BITS global system default of 32 for nodejs),
    leading to out-of-bounds access.

[I thought this was interesting to bring to the list since I don't remember
  seeing _FILE_OFFSET_BITS mismatches assigned CVE ids in the past, though
  they clearly cause differing size calculations for 'struct stat' instances.
  One can easily imagine _TIME_BITS mismatches having the same effect as 32-bit
  builders start rolling out 64-bit time support to prepare for the year 2038.]

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

