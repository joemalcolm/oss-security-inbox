Received: (qmail 18036 invoked by uid 550); 9 Feb 2026 21:36:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17973 invoked from network); 9 Feb 2026 21:36:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=iK+JrY7xEYsDPwyyZaRxnbQE6yqW9SElpPPCMw60VRs=; b=
	K4a5MaO1yTrPtjWpzvQlJ+KhNeoLLSMqaltOXUHVhR0KgozwLAq70XQtoehUBY3y
	z5oXPvpTNTTfpFM5px8Jf9OgEuGIj7n5whyU4wd97RqJ5N9B6g9KkDYf/7i+MdFG
	w9StjowuS4ob6Cyn4YyzI7cfrecPkd1FAsWWMFnzy8juAXgT1sxHEcRVTEqJXjAU
	c3DPySzccTlSac6No/JoU784jN+t3HyzwzTZhq8hynNgwRtFGnKEm7QYzr7JU+Bf
	Y27/u8kLGEC6BYgtw9FB7WKEnP+VpABwME5u9PnuouIQKpfZ3MQEsiJ61hpWbsDI
	PjapNM4EFaZA05O7PV3myg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pwe7oItAs+BFYXybE9KDuerJJSd+aj/K8bgSkDOP8jtwGvYHoZb4k6jJsdKV/kFhaIrgt7srLuj+zPpqLOHUnpDcLCy8/Yh7ltr+BnEpEn+yIg/Z178toCwPFSeOp2pMyAGaWFfYwgvMAGBWB+ud+iWE80Ht8JvDjZvg6cCm9DGHgpfo/EnS9PnMSILLdQtdHQTmBrfKQQFbpRfZSOzR3O5jHL/iSzDVDKFy0OaOEMgZM/+oGWgLylxlFtR+AI4XVeHSEAydqoynSacNSyTd4u03JQ9WCl3S68lF9hRKhd4QD2w6Ja23/KXe3iCKVrLmJpVXOuF1nQFPfdY9ImN0SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iK+JrY7xEYsDPwyyZaRxnbQE6yqW9SElpPPCMw60VRs=;
 b=omCiWtvqaU6obTGktBTfe5pY4V3Rw5BIOXm3/5kBnnNaVbkmPQujV8HkfjaFcnEr0fVvhaB9Sg/odfmgyqqih9mm9UveFVDyiHmSBRLrcADqOH8TWTS9+mma0njA0480cq8UpCHE8F2yjJuRWw589SnJ87VBnKlr1S5M4lZ8crBOia4ACF8givVmorFAsVgUc0R12PT58TjhI5eE1QNsCREjd63GpKSHqtjAHmV42HHgYG0Ty68Vbex4laSpBCtTBJ1I0r9pyv/xmsUi11Y/YGne0PLbUP7ZePCtfOn3NT0RfOjSprgQe3edBY9F82zmoh7St8hhK5VPfFIYY8WXCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iK+JrY7xEYsDPwyyZaRxnbQE6yqW9SElpPPCMw60VRs=;
 b=IcSRmE1F7Z2tNzJiN4jENGtXiy1hwXZbHxQDPbzDsUx2vIvslmQxF9AkAHLOVIFUBlZ3MRtuos98ggikm6A8bZ875DVYNT330zcvgCJGLQViEOOl7Mn4d98lZ0HleF/Ri4lo7nzEmXCQy0D743n0piES4dmVw4599/f1R3Mr4Hc=
Message-ID: <0ac1a299-042a-4bc0-8f2f-3d2b0dd68919@oracle.com>
Date: Mon, 9 Feb 2026 13:36:00 -0800
User-Agent: Mozilla Thunderbird
References: <CABMV8QNfycuBvhrHyKqP1D6XYe38v2DH_5iK-dvsa2Zav=Lp+Q@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CABMV8QNfycuBvhrHyKqP1D6XYe38v2DH_5iK-dvsa2Zav=Lp+Q@mail.gmail.com>
X-Forwarded-Message-Id: <CABMV8QNfycuBvhrHyKqP1D6XYe38v2DH_5iK-dvsa2Zav=Lp+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR20CA0064.namprd20.prod.outlook.com
 (2603:10b6:208:235::33) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA0PR10MB6913:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ae86b18-2bd4-41d5-6d02-08de68233934
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NlRoUzhHbWpUWktqWnNXWnlKYm1QVHVvWEp5SFpOc0U1RTZ2MGUrT25HSGJv?=
 =?utf-8?B?V0haMkJtcVpYMXRRM0psZVd5a0g2STlKR2JCWUlnL1oyMzBHdjcwQVlJWCtB?=
 =?utf-8?B?SDRBTk5QMVRrbUpFOGFWbzVWbTR6QWhtM3ExQndGaEZxS0NHckRXbnlKTVBU?=
 =?utf-8?B?cWU4ck1HSE9rRngyckw5M3YvWkpPeXRwbm9YZTg5Yk9pR0p4LzhHUFZyd1Np?=
 =?utf-8?B?aFZ6WmdoRkRCZlVYenVJd1NHcnQvZVlHVzg5MlE2RVlkWjhwNW45Wk5TeUtO?=
 =?utf-8?B?Q2NmaEhTSGdobTdxVnBLN3crVVlrNFJWaUt3OE16MUowSXIzTElzcC9iZktt?=
 =?utf-8?B?a0JibnUzU3VNVEpUaWl1TE1sR08rWkJTN01uTGxBQ2wyLzlhMDMxbldOKzE0?=
 =?utf-8?B?NUJtVW5DeVFITTVJVUlBTzliU0hYblJmeEJKK2hpYmRIWlV2Ujh5eGM0Y2R3?=
 =?utf-8?B?TW8zNWx6YU5tYXlNWWFoajJ4aXRkNG1EM0REdGE4cnJpMG0wOVUyY2ltRjFQ?=
 =?utf-8?B?YXlTUWtYTjVma2Q5bndPZVRGVGxqbGJmbUVsRkhodThubi9lTVFHcmhWblpP?=
 =?utf-8?B?bXVmM0pRRFVXZkJsS29tYVl1Vy9XTWFQLy82YjJ0UXhDNkVueVdNdFV2NFh6?=
 =?utf-8?B?VEppcU1idVZMdjErTEdmY09yYVlZQ0puUnYySk51OG10Uy9FcWZSeGFackpQ?=
 =?utf-8?B?NUxTSTdNOTFoZnZsUDBmTXpENWJwZysyRDF6QmduQXJFdkkzbTdlaFF4cXRS?=
 =?utf-8?B?VHI4eUdPL1E5bmVoUkFRcEFWeW93RTFVTFc1RnZxRXhsS0l1M3ovdUJ2ZStS?=
 =?utf-8?B?Q1J5anhoaDlqaFU2SlhDYlNMU2ZnbHh0NlFyMkF1c3RFUHg2NzNEc3NpeklJ?=
 =?utf-8?B?WENjUWFTQnJ3bkxGY2Q1QnY0d0tUdDRHL1pWdXNvYWE3VVpJUmlvVFRzNVU5?=
 =?utf-8?B?c1V2QlBhMlB4NzN0SEl3MkFvWDN5Q0s0NDkyUi9jUVhJTUtvS3J4REVwOU0r?=
 =?utf-8?B?Q0UvaTNBYmVDclY2Zk9nSWhxNmFnN0pueitHZEVGTitTaTdCN3VSM1VoVTh1?=
 =?utf-8?B?TU9DdWpHUVFndnUzQXMrM01vOE5RN01DS0hIK1NYVFc2bE5GVzBtZFV6bnVH?=
 =?utf-8?B?aWt2djhTM3d0cXAzYTh1TmRsYXVJODRlT29CS0FMODJZc1cra3ppTXZMbjNy?=
 =?utf-8?B?RGhrbWMwSXovR0E4cCtOSCtUc2JpY1lYRTk1QzBDZFJEZnErTVdmRnZmU2Zq?=
 =?utf-8?B?MFhjeU85ODZsSTBUYmpJbVcvWDV2USthTWJMU1JxSThNY3QvSUFhL1Y2ZExG?=
 =?utf-8?B?bU40VmZFcDdSTUgwVEYwT2ZHdVMxRUpWUXpMYWtjUFRVNE9zSnI0VG9zWHRo?=
 =?utf-8?B?b3g2cEROT01mWTAzcEtudEpwV2J2VmNuRHgyREkyT1FiNU1rVFFFSU5jVzBp?=
 =?utf-8?B?YmRqY3labGVhRER3OG5laytBN1ZadkNQdkc4c0wydzQzOUx6UUFUeVFjTHd6?=
 =?utf-8?B?a0dObWdaMzBRcEVtTXlXc0JXdk1BSXhxdzBHRnlJU1NIeko3REdmNXR1ZmQ3?=
 =?utf-8?B?L0hWUHNNRTF4Zk9qbU1BYnRGM0tjMVNrODZmcnYvVHNuVmw0aC9QZkJTVnpl?=
 =?utf-8?B?cjJ2MUgyQ0IrK3ZJTHQ0YmNCTUxLSG1MMEJpUDRFVGtzbDlsUEJQNnVSRnl5?=
 =?utf-8?B?K3NpbkRSa1FNS2JyWHpoc2tSTXptdjVFcEExNW1ZVE9pMGNRcldteEJZVHNa?=
 =?utf-8?B?bWxkdjJNbWN6dGZKRTEyOFdkelRxM2FrekNPVjRtcHorWHVuR0JzRURzWW95?=
 =?utf-8?B?aS9RTjhWWXRQUGJ0cGxhTE95UWdWVFBWZDRXd21QbThJbGtGOTgvbmRLRDRI?=
 =?utf-8?B?N29pdEZpYU5iaVVNOHpIZC84aGhDYVNWV3hRamNnZktsdnJLRVhjWXRxVlkz?=
 =?utf-8?B?K2ZwTStiaTFyRWdhdXdCOWJVUUphWHBybEU1NElvcE1HUm9ybFVVdnRpMjJW?=
 =?utf-8?B?UHZpSHN4YnQ1L3dwOUpnN1RxcnhSYTlubXQ2M3BUUTV3RnRrNDVLalA0WHZG?=
 =?utf-8?Q?0k9g4c?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?KytlelBlM05Oa3Q3K3VheHhvY2UwVkZPeGNCSmFaaXRhRWl5cXpuSWlnMEI2?=
 =?utf-8?B?d2lLWlZmSGZWZ2NreTJ0MjZPUm9lUnZuYml6NDRiQ0QycXJrdWlFaW1ubFhw?=
 =?utf-8?B?cDZpYkRuTUxRcHhRWDJQdXBFeFZrVGd2b1BoNG5SbFpjMm8zSjJ3a3VSTlZG?=
 =?utf-8?B?TXFXWThpWUFqeUlyVm1jU3U3TDB3VG4yKzhZckdhK0dxcEFBR3NjT3RzWmtL?=
 =?utf-8?B?QzhlNkpLc2cwVnppMTgvc2JYUU8wR1JsZ1NNU1ltdnlvdXpJU3hJb2Z4Znpt?=
 =?utf-8?B?aS9mS2trSHBLeWR4MzBBYU1aaFI4MS8wSDM3VDlkR3dDQXlEbzMxOXV5cUY2?=
 =?utf-8?B?TThDL0h3ZVBLcGdiYUdTUzhkR0laQytRVU9FK0dsNGhnblErSExieEhhTmJ3?=
 =?utf-8?B?NVN1encyV2VscHJjczFIQlkyZDZVUStNbkhoTS82S1JiZkxLRFF3b3huR0NT?=
 =?utf-8?B?ZldHTnBETzdjQzZ0bUpwVitZSm0vWktGNDd4L3lyOXlkanQzMkt2ek9ja0xj?=
 =?utf-8?B?MWNuWVNUTkhudHg4OEZLMFJRZ1A4R3JEY2UvSUp2Q1RuQTRZc0VjOTduUmwz?=
 =?utf-8?B?dnFDMmdIM09ldXFkeGRmSUh3bElWaW9yUmg0S1pnd3U4Q2RtVlNtR2dkTU5z?=
 =?utf-8?B?SnIwaWppRDdCaVVJWk5Ld0lRRUkvcUNDQ3VzU0NzNERBcGhyZ3JBMkhKbXVo?=
 =?utf-8?B?VTBvL1lhV0phN2dvem0vSEFUcUpWNk5LdTMyYkc4TTVJNGN1QmtGMmVUNmhJ?=
 =?utf-8?B?K1VpeDhjSnVXOVJ0K2Fqa25OR2xkdWc3R3RlVlF4cngzWXE3VTJGUlgwZGhl?=
 =?utf-8?B?TUFhQ1Z1TkNNdTR1Z2ZtbHVEQUZ2UEV4c1lrWTNpU3E1eUkxNGptNVkzeUNn?=
 =?utf-8?B?QWVkVGVsdEoxWGJWTmUyYnArdm93dWlETGI0ZUdESDREQzA1K25vSzdlZmV2?=
 =?utf-8?B?RWR6VzZjOHpybk5ScUdHZXNiQUoxZWRmV3VMdkRxcG9QTEFZTEswWU81ZndM?=
 =?utf-8?B?cXp1TjQ3VjZKS3FMbHZIMnFIVE9qdVc1YXV1MDFFa21aK2pKeXpZT3FyVlho?=
 =?utf-8?B?Zk9ZTGJoZldENm0yb2dQYXQ0Z25teWhLakNFaUI2MnVYTVVYVjRFTTFicU1C?=
 =?utf-8?B?Wlp2K2tZQWpkdFNHMTNEWldQY0Q1UmdSdWlpM2RtT1N6YloxS3g1YVBHemo5?=
 =?utf-8?B?VE4yT0VtbWNqOSswNFBTYXJNak1QLzl5Z05vZ2xaM0k4TnJzYWJPRmczR2Q3?=
 =?utf-8?B?NDlkS29IbTFrYlRDSmNmcDF2QmxncnFrczUyeHN0QnhacFR5eFVMZEF2UDdn?=
 =?utf-8?B?S3h1ZlVYMDN5czFsTzlEYkloaEIycGh3elF0MjZkdXBnUVNjd2RNczJJQmxR?=
 =?utf-8?B?V0FMWjBqQXY3dnJRZWVKaUxaSjV3alFHZHRuNnRjV09ZakNLbEh4T3RDbGd6?=
 =?utf-8?B?Y1FLeTFjaVFtTUFjQVJ1WnZXYnBFNWN6Y2VUUnpMM3VTN3JKQ25QeHpGdmg3?=
 =?utf-8?B?NFlZaXFHVU9HTUJONnZGQWFXZVMzbWQ2c3E2RldIRFh6WHU1ZTJ5eFA2UXIy?=
 =?utf-8?B?cm9ibk5ibWpFUDY5T3Z2VUlBZ1FjRGNQeHBFVUFBbUkyQ3dtOHNKejA2Z2ZG?=
 =?utf-8?B?NXdwRm00UHRmU3FtWjNyQVlEaDh2ck5SMnM4eHFJbHVpaFdHb0RkRnVWT3hZ?=
 =?utf-8?B?V3BaYUltcVUvaFZjUGZLQStlbDFONCtJZ3k2aFFyVmpNcW82bURSU1ErVWpm?=
 =?utf-8?B?QVQxZDREc1VONTU3bTAwbXdlOVRldktUeDFnRGRDTEtFWThjaU5mYThnWmVo?=
 =?utf-8?B?SzhwVklRREcrUHl2QzRYczVWa01jOUo3RFVTYnBuRlpoblBGcUZYMW1SRGJ1?=
 =?utf-8?B?TVN6aEVXdGtJbm9BeER3cWpWcmN4SjdUWjlkZGR4bWdNUTBCZCtJR3IzWmNt?=
 =?utf-8?B?VmZTbktjS2FxVnpQU2pQTHdadmJHNDByejVkUUdiby8yRVNLSllsRHVtMmhO?=
 =?utf-8?B?dUFNZXRKOWEzMEo1NGdUVnd4Z05YYVF4alVjc3R0M1ZzRyt6SURKbVgyZ05h?=
 =?utf-8?B?SjR3T2hQamlRUmlQUFVJK3hXYU1OZ21Lc25qNkU4MUJvbHJGODQwbUgrbXoz?=
 =?utf-8?B?NXZ0aVhlUDU3ZTdoQUZMYkd5VHVDTlJQZ1FYN0VRb1NCRXFucTg1VC9kTU50?=
 =?utf-8?B?WmgyRzc4anVRY3BmRHRHeEJJZ1dzbmViY1RpNTkwK0dCQ3p4dHQ5cTJRdGZt?=
 =?utf-8?B?d3dMRThvSHo4MWl6NlNtaG9lV1IwQzBoNml6aHd4M2U0U3l6TGJWUlBSNjJG?=
 =?utf-8?B?UWc4Z0tCZmYvRHBoMk8waGJ4cHBMckM5YXhoTkVraHpSWDc3WFZuYVYzM1VG?=
 =?utf-8?Q?T5RjlznxpR43SU1E=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	KsWUaCV5ujm4h4ILZILIy9eKk7tLsqHKbtSOC6twnXO8tdYfDiDq2Gt7PxEZ/r+pCybmLRyN78aLL+LcQwg02lB/wzJXkPfKEmZmj9LgcCpzVADSJZXwG3b4RkX8LzuVeIgrn79BhO4fRqt2DEn+sRvt+cmZZzAMlflLW4WoHUPYMP7N0Sdy7962v3yBskrsD0xkJTVVyWC6fa6ibGDpUYBGBaF/rXJQy3X25kEOoGYJxkAR0vgJ3PiBoFGq3ol2bEzzP2m/dn1oRDAWOJnwjUSIKk7JchryasLB2K1B6IXFQn52rlaa3IWk4wA2L4GrQYNHKVIjG5HFernjvzFL3XOU+ciw+0WpgVm7uBW2LuJD57/vgF3duDAMaiKLoI9eAMMhyK5Az37DsClNNSoVnssdvtdokfTLLRKBtQjCwc45uvULYpQx6O0VV7SarPh6DVK8oM5CcwD1fAsYgEMf82tp1XzKTgr7ec+St07kFzUOseYbqijALdAKtZYp+bgyIhI/UTh+wXdxPtzDSzg470Lg/2ETHMKZZw6QUH0RQkKz1th3ZUOcbtuvM0vudE9MepuZ4SJVVnTBki1gUNk/l3CMfr+WGYngn3nd+dQi1uU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae86b18-2bd4-41d5-6d02-08de68233934
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 21:36:02.8873
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rCs+Zfj/YFz9yRJ1OCceTnSFmA5rk0ZSKj1vj6eay3rdMDQzJEOfVh+IXIGGnzOuUF53ZTn76ol5bhI2W/GntHunVd3Ycnue5MaL0A2YQQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6913
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602090182
X-Proofpoint-GUID: cYLw5vh43kmYXwUKw2t8FdtaVpq1bZ4E
X-Authority-Analysis: v=2.4 cv=FIsWBuos c=1 sm=1 tr=0 ts=698a5348 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gHvrztcjAAAA:8
 a=GwUem0DFAAAA:8 a=20KFwNOVAAAA:8 a=mDV3o1hIAAAA:8 a=Dia8y3fLAAAA:8
 a=JU_QxuTPCJWAFp2DOQcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=WxcTniOcZjVTbgxX5Dew:22 a=r0dl5i_q2XGqDZkti5dn:22 a=IMfw9F9M6FCgz0T8TPkg:22
 cc=ntf awl=host:13697
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE4MiBTYWx0ZWRfX8QGbZPVfJWwJ
 aw17kR2OGhKHanEAgfI6bdcPCCNrL3ru/JxtvJnkjlS1lqbBucp40svOKt3BHXQPZb2Ddt96tb/
 3I85LdQ0iUoRll/Aoz7JZhzxhwTCsdmjXIcmfbA+nLys1rDn2FHiM8pUJTDAEfguPz5nS3ETikx
 ulGL6xYQjJkhxGNnJmj5xa0zaJfA2PUAf/lRhIj+zOLitR7PdCdds3soZG13aNHTY9kgNbikKuy
 FM6kmEELG+4jjlJKbRHMbYCbxvRmamfrYSxCh30v8UlMVC8vnyShTdyJctBInVlAC6rdxJnaPnZ
 NCmyvKlfERZMe6yISEuOb37qRa4ZgDOTc5uNeaKnxWJnw10vnA2OVxjhgaowlptKWQCOpzcN79A
 yO8uJ+AL5n255gGPndRTZaxSVGarkKWgSi/+ln0Lz49wc8pZ4ots0Isp9lG/eyhFYD1AOGF25pd
 9UQNubYcSQ38+/OQumB8aq/EfAa3odaIFkyAWGWI=
X-Proofpoint-ORIG-GUID: cYLw5vh43kmYXwUKw2t8FdtaVpq1bZ4E
Subject: [oss-security] gnutls 3.8.12 fixes CVE-2026-1584 & CVE-2025-14831

[https://gnutls.org/security-new.html does not yet seem to be updated with
information on GNUTLS-SA-2026-02-09-1 & GNUTLS-SA-2026-02-09-2.]


-------- Forwarded Message --------
Subject: gnutls 3.8.12
Date: Mon, 9 Feb 2026 10:25:10 -0600
From: Alexander Sosedkin <asosedkin@redhat.com>
To: gnutls-help@lists.gnutls.org
CC: info-gnu@gnu.org

Hello,

We have just released gnutls-3.8.12. This is a bug fix, security and
enhancement release on the 3.8.x branch.

We would like to thank everyone who contributed in this release:
Alexander Sosedkin, Daiki Ueno, Mikhail Dmitrichenko, František Krenželok,
Jan Palus, Julien Olivain, Markus Theil, Maxim Cournoyer, xinpeng wang.

The detailed list of changes follows:

* Version 3.8.12 (released 2026-02-09)

** libgnutls: Fix NULL pointer dereference in PSK binder verification
    A TLS 1.3 resumption attempt with an invalid PSK binder value in ClientHello
    could lead to a denial of service attack via crashing the server.
    The updated code guards against the problematic dereference.
    Reported by Jaehun Lee.
    [Fixes: GNUTLS-SA-2026-02-09-1, CVSS: high] [CVE-2026-1584]

** libgnutls: Fix name constraint processing performance issue
    Verifying certificates with pathological amounts of name constraints
    could lead to a denial of service attack via resource exhaustion.
    Reworked processing algorithms exhibit better performance characteristics.
    Reported by Tim Scheckenbach.
    [Fixes: GNUTLS-SA-2026-02-09-2, CVSS: medium] [CVE-2025-14831]

** libgnutls: Fix multiple unexploitable overflows
    Reported by Tim Rühsen (#1783, #1786).

** libgnutls: Fall back to thread-unsafe module initialization
    Improve fallback handling for PKCS#11 modules that
    don't support thread-safe initialization (#1774).
    Also return filename from p11_kit_module_get_name() for unconfigured modules.

** libgnutls: Accept NULL as digest argument for gnutls_hash_output
    The accelerated implementation of gnutls_hash_output() now
    properly accepts NULL as the digest argument, matching the
    behavior of the reference implementation (#1769).

** srptool: Avoid a stack buffer overflow when processing large SRP groups.
    Reported and fixed by Mikhail Dmitrichenko (#1777).

** API and ABI modifications:
No changes since last version.


Getting the Software
================

GnuTLS may be downloaded directly from
https://www.gnupg.org/ftp/gcrypt/
A list of GnuTLS mirrors can be found at
http://www.gnutls.org/download.html

Here are the XZ compressed sources:
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.12.tar.xz

Here are OpenPGP detached signatures signed using keys:
5D46CB0F763405A7053556F47A75A648B3F9220C
and
E987AB7F7E89667776D05B3BB0E9DD20B29F1432
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.12.tar.xz.sig

Note that it has been signed with the following openpgp keys:

pub   ed25519 2021-12-23 [SC] [expires: 2027-01-01]
       5D46CB0F763405A7053556F47A75A648B3F9220C
uid           [ultimate] Zoltan Fridrich <zfridric@redhat.com>
sub   cv25519 2021-12-23 [E] [expires: 2027-01-01]

pub   rsa4096 2016-09-27 [SC]
       E987AB7F7E89667776D05B3BB0E9DD20B29F1432
uid           [ultimate] Alexander Sosedkin <monk@unboiled.info>
sub   rsa4096 2021-08-21 [A]
sub   rsa4096 2016-09-27 [E]
sub   rsa4096 2016-09-27 [S]


Regards,
Alexander Sosedkin

