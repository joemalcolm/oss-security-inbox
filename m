Received: (qmail 25696 invoked by uid 550); 5 Oct 2024 20:14:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5262 invoked from network); 5 Oct 2024 19:37:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VeWIYCtNdMz3kS+YOMLlvEV8QqTZRDzWSDM2zgHSTwxFDraUx7H7BEX3aNzgVTOboq+UI6wyuPKj5VkiyEF1rrbLvrH3MJiPkn18fMtrDXgmGdYPJE8ZGOv9r8tgyU3wEbP57ipBXXuxbkWYlicFDfnxrH0eHOrX4lNGdX5DZS8Bp6JG61ICBqlegMmBQyMgpdnC949mwiBO0YtOEGXtLHNXRS+61lfE8egklDuXzqW1p+xKX3KJMRnlrkt2UeKSRetG6YF3/fWKMk68V2mo9REgVZD3bnd31UvLPT+aqDw2Kg22XT11C6ny8r4HbHP1NFCr56i6yYgGVcPrSHncBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AWxUDQWFjEiF/4cL48EiWrvrS9KfXkmgh01GoE5hWM=;
 b=M1PDsykcBOrmlhTYHMhN3Ckj4XMtIfYSmUoiLKDjZX4ATSsPxQFrF9lfCuYJg2iOmr7Sw+pBNEg58+ty7qY/YoAkLFhp8QVA142Vs4H20hP0GQ3FFe2JK1Sd95HY92PvAB6mweP8ovMSHqrzJdTF5v7TKZU7ibEjQAWjdXNSncQjRfXzJ11nBX4Jieies1E76MYxRP0GOZmc8qF+T5bwCB3V3pUJGViJNwvPX/8WUJ627SxVSY69210Mb4NtVqGC0DinUwjJ8yJl4Hig5btksvHS9InO+uGIIVNWMCAqxkIjqoXtloVzlDdz8Is34bIoKgb33So9AOMNCdyEjAQ5Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jvf.cc; dmarc=pass action=none header.from=jvf.cc; dkim=pass
 header.d=jvf.cc; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jvf.onmicrosoft.com;
 s=selector2-jvf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AWxUDQWFjEiF/4cL48EiWrvrS9KfXkmgh01GoE5hWM=;
 b=qIs/b4AtGjjQzMp5Udy8hX2MkNGoW8hE8lckB5UKFjZGbSuE61IfZbmLQItSQAf1awCELnlKMkx/bLwFZqMIGw2vbGvLBSzht0laZXxIwloYOl2OfwBP4EDa4hSGZF8y5mipN5vi2C5dMe4Vm2Rt2pZ7G9UlQ70/Ldujlk3Nm3o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=jvf.cc;
Message-ID: <867c72f3-eb43-44ff-849b-ecd451a50f6d@jvf.cc>
Date: Sat, 5 Oct 2024 12:37:42 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@jvf.cc>
Autocrypt: addr=jay@jvf.cc; keydata=
 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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kKw94cbskpj9nMmfOn3MQVLJ"
X-ClientProxiedBy: BL0PR0102CA0038.prod.exchangelabs.com
 (2603:10b6:208:25::15) To CO6PR19MB5340.namprd19.prod.outlook.com
 (2603:10b6:303:137::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR19MB5340:EE_|MN0PR19MB5873:EE_
X-MS-Office365-Filtering-Correlation-Id: 0076e434-f987-4ae9-275c-08dce5752f05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZFdvYnROVUMvN1F4dlJwYUg3Z0Fzb1BhYmVDcHorVlkyZXI4WUJDWEFuZjBy?=
 =?utf-8?B?Y05vS3pDS01Hc1VYZ1AyZnpaUHhmZTZsQWJWMmc0dWNrMVhvSks3YW56Z24y?=
 =?utf-8?B?OEk4ei9CaVFsblV2ZWJrZEpYUjY0SFkyUnVxZHY4c1RoTFdOM1BBRGJadlQy?=
 =?utf-8?B?cFZKak5HRmhYb2hzeGV0SVZ0VDg1RVlGVGlPQ1N4WEhWM0o1QmMwdlk2T3dV?=
 =?utf-8?B?UGh2QnM5ZGoyMHE4a0VVblNnNWt3UjRQSlVlMHlTWFpOcVhHZ0srZlFaSUQ0?=
 =?utf-8?B?cm9RRDA4MmplcDNIYWozZnBrSm4zZGszMDFob1FJeEJrNnJlQWRnTkxaVnFq?=
 =?utf-8?B?SmpXbVFKRXZ0WkZrRzhuMUs1Z2JDbEVCb1l5b2UrTERXemdEMmUvK3c3c2lv?=
 =?utf-8?B?OGluQ2crQWVHdmhmdm5YNmtSRzF1aHRMZ1hxQzJlVnN3ZVoxT3RhTTVQTmFR?=
 =?utf-8?B?M1JueW5sTnBXYVhmSGwzM0N0UnFOT3JONmRRc2RRRTZ5VWdmQkl5SmtJMlhL?=
 =?utf-8?B?blNhN3g2NHhzeTBuMDlacll2V0dGczhKanpYTkJZMFIwalRrL1gwL2lsT3JM?=
 =?utf-8?B?VGIyLzRoQXBGTFRwbm50RXVXNGxIcldZWTJkSnYvSkljWWFoRzhIU3BnWUEv?=
 =?utf-8?B?KzJnUXpMbXRtRVE4MmtIcUEydEFaRmYrSXM0TC9aMXowbjQ3MEFmZkR1VXRG?=
 =?utf-8?B?TEhORk93NVVpU2FBRW45aCtzQXR6OXh4aVAyMTAvNko1T2NFRGc2NVFEQnhk?=
 =?utf-8?B?WVVmaVR2cFBJdWJoTkNSMC8wZGtNODN2VjdaT0w3ZW9uMFltSGttSGp4UU9K?=
 =?utf-8?B?ZFQzNlBUOG5VM3BuZFdTaHVTMlhIWVVyTDhwZTE1U21sU2tIWlVUeWdQR1A0?=
 =?utf-8?B?dUZjOVF6ZGc5cU9LdXVjVVNyaTZnNEE0cUYwRGdpcytiUTJKRU82aTNpTlNN?=
 =?utf-8?B?N0NoWDZrUHN4V3NYU01hRFIwQndtOVBFSXhab0lHQ1NYbjgxZUVqV1JwSkFD?=
 =?utf-8?B?VzdJV1hld2d0Z25PdmkzcEJRWGkxOFZXRVUrTGkwUFpRWUVKU05HR251Z1lL?=
 =?utf-8?B?Q09rbE1DQ2MySmo1MXFQMmRLdHp2SzM0UFM1QzJKNXFNc2ltb3NTRy8xZEw4?=
 =?utf-8?B?RVNDT0dBYUFmUTQzRlJwUVBES3gwZUFCZ1NCRUpXckNyM3lkUDNLeHRDYTlL?=
 =?utf-8?B?QTUxMXVxaHA2VGdzWkxVSm15N3Q1Tmp1MWdyeFdLbTFGSDdIMEtTN0lpYXdG?=
 =?utf-8?B?VUZkOHZqVk1mUkU3UWZTN3BOL0RpZlc5V1RXZ1VnM015Q21wSmpKQ0RzN29V?=
 =?utf-8?B?aFU0Y1VNUSs4VGhDRXZma0hsUWJLMDlGcExpZ016bUJZOUttN0pWekp4S28y?=
 =?utf-8?B?Ly8xUUgzNE1NM2YxMVE1d1dWUXV1N2RvVUtUZk5laHNOWmxHOC9kRFdtR3cx?=
 =?utf-8?B?NDd5S2l6Nkk5THJXQ0E2VkRhU2VWWm5rVjF2eXJUSWVXU0phZW1qckpIeU1I?=
 =?utf-8?B?Z1VGZDE1OFdJL3c1ZXNkK1BwcGFBWHcweDJqVkRjc1FNUm9Kd2l5a1ByWkNz?=
 =?utf-8?B?MEdHZ3FlbGM4YmFUUFJLM2lNYVlFd1dMK1BSZXdvYkhKeCtEd1JMTFNQMjRT?=
 =?utf-8?Q?8vEWgApWizZAfKCCWoNsHFNO/wpcaT2MoOLwoKO4DMRQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB5340.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SkxFclloV0pIbFZsUXUzcjVXbzRtUlU4UEZqSnhqeUJuUHVsSnQ4V2tLSDk3?=
 =?utf-8?B?dEdDL2tpRWVBM1F5WGF0S2NKY3IzWVU4WVQ4V2RMWUpTS2ZnOStCY05iWDNZ?=
 =?utf-8?B?Q25QSXF4Nkt4S3RTcnJJTmlLMm5nallJQ1BqZG9XdjArc1hwZWFpRHNOUTYw?=
 =?utf-8?B?bzJyc0tlMjZYVzAxc3ZCUDd1U1ZkK3pPVEZlRkJCcUtteFpoRDA1UmJRNjZD?=
 =?utf-8?B?LzlrZGJzQ3R2R0N5UVd1MWhyRnFtZHZrbGt3Uk5lakRQN1FlNEh6RUNFczUy?=
 =?utf-8?B?YXdlRnR3QTVCOFp4cmRUYmVTQ2loV0N0Znh0NmZValZsY2NEVDI2T0wvdW9j?=
 =?utf-8?B?cm5tQlpGRk9WTk1BQlREcXA4bFBxcUhSSlk5K0xLbEpEajhudFMzMVFyTVlC?=
 =?utf-8?B?TTdwM2EvYXFmOWlxd0lOc2dEVHNpdjdFUk9rNDA4emxmWm9HMSs3MGp4QXRz?=
 =?utf-8?B?cktqRFZCd3VFVWhQOXZTbFBIYVZaTWI3c3pSejRsajQzVmhRcWozaHlERWl3?=
 =?utf-8?B?VnBTUHZEUHVRb0RWMmhMNzN4N0kxTEQyTUo1cWQrTmpEZGUyYW9ZQkVjMjVV?=
 =?utf-8?B?UWRDV0NueUg3bHp4SlpaQnZyWDgrdVJMY3hlU01PaTg3aE1Ec3JGQzgzMHN4?=
 =?utf-8?B?TVA2eE5UNGEzT1U3eXVrOVBib1h4NTJzRHhpcGN2eGZxN09rQjhIbFV4U0lW?=
 =?utf-8?B?M0k0RCt6YktpeEpoSFlJL2k1SmFNZlhwaHBteWpjRFlwdndGWDJnVFJxZDAx?=
 =?utf-8?B?ZWQwTGFwdzN5ZlZqZ1J3WFIyM05GNGxibHVQZ3NGcTBtTlFVR2NaQ2RXUGpB?=
 =?utf-8?B?WElKTmRvOVhkczI4RWxCekE0aWk5THdhZ3l1emh4dFduUzZRRnJYN1FXekRB?=
 =?utf-8?B?Zm1HSkVRMUFtQWNDVEFTTm9Ub1pUQUozTFlJLzRwK0tKRzZHZDRMc0Q4eUpR?=
 =?utf-8?B?YTkzeGVvSHM2UXNGYzNweUNiZFE2anBSUmtIaXdGUkVXSDYvY0krVEJLMTIv?=
 =?utf-8?B?bUphZ3drT3JLdGdtWDUrMjN1NUJuV3FSa2J3UmFpb2xqM0dWYU55bVNBYjJQ?=
 =?utf-8?B?MnRhUVN3MlV1SXNwOXd4MWI5Y3F5MTBqTVYvb3RiTkJmbGNraC9ZKzNMNDln?=
 =?utf-8?B?L281Z0FFbXpvWXhqZkpnVEk0M2dLQlhvYUJtZ2Z2VWpOdTRRWnJuM1ZyWHJJ?=
 =?utf-8?B?R1BOa2NXaFhoREFPKzBJVWQ2VDBaeEZYTmpKdjVkR1plL01MMFlBRUVlNGxx?=
 =?utf-8?B?UjIwMkZXckFzK21oeGE1TVZFaHUrQ3NUS3llelBvdktBdzhhWFJjM3E1aWd5?=
 =?utf-8?B?TTk4MGI5dzFZaHlCNGcwbG5MMGQ4dTFOM2JhMVBVaStkWTNmaGRkZUJiSVRD?=
 =?utf-8?B?YnpId0I5c29HWVduK2QrZG5WaXpmMGVDN1AyZGZjQ3JSYXdSVU1yTEd2K3U4?=
 =?utf-8?B?QXdiZnpraEdGeW9vb2RBdS9rVk9UY2w1eVUwSUxTVGtKTFFCV2ZqVjNpaVh1?=
 =?utf-8?B?Z1orR3d3VjNseEozckRQWnR6bHdKbGxvMnhEQXdEOWV3UTBZYUVsYlRmVXVy?=
 =?utf-8?B?akdtRkdYT2NPLzJibjQzTnlKZExRWWQ3TGtZTldvQm9xeFk5cFFUVGRqWmlS?=
 =?utf-8?B?VFN0c0tpNnVhTzlUYXRTY3lGeTdFUGdpNlQyc0VXYUxFUzBGS2Zja0NtaCt1?=
 =?utf-8?B?aUZrV05ZMjdhRTB5VzRDR3Z0NVJiYlYwRjhxWHRVSUJTQWRpWnhZWlRFcCtH?=
 =?utf-8?B?N05mWlhxbFc0SFh3RXJFVi9iSlhWVmdhdHNERmxQSWFFcVVHaElIUGIraDhx?=
 =?utf-8?B?WE5LUzNuTVRWOWlQUVRSWFdXNTRWaEJ0anlFRTJaczIrM1ZSUHg4dFgya1d0?=
 =?utf-8?B?OG5OOUxVVDNLYXFPK3J0SHJ4UUQvMk9zZElmVUNqcjlYWGsyZGZDY2xmQmdU?=
 =?utf-8?B?MjAwT3NBWTVQdno0TlhVUFFsWWZQZ3IyZE9sZnJhWldwd1N6bHNVZDZTMksw?=
 =?utf-8?B?d2NCTm1wQkhXNFVhRG1SNHZ0YnFFTDJZZml3VzB1SUlvV2JXM0FNd2Y4TWhB?=
 =?utf-8?B?dmpJVFZLTVNaUUFJTkM3akJCY0lFUnlJNmpiQT09?=
X-OriginatorOrg: jvf.cc
X-MS-Exchange-CrossTenant-Network-Message-Id: 0076e434-f987-4ae9-275c-08dce5752f05
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB5340.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2024 19:37:44.3438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3268b97a-2d09-45a8-9816-8dea1f44039e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7W3HT4sARnn3vqrFPJUUyhjTeDRFWgek4EmffyFDnqCfkFq/p2PJ+JXKnHXnQTS7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR19MB5873
Subject: [oss-security] OSSA-2024-004 / CVE-2024-47211: OpenStack Ironic <26.1.1 fails to
 verify checksums of supplied image_source URLs when configured to convert
 images to raw for streaming

--------------kKw94cbskpj9nMmfOn3MQVLJ
Content-Type: multipart/mixed; boundary="------------F8VzJX00wHTtTwMC3sI9IFmD";
 protected-headers="v1"
From: Jay Faulkner <jay@jvf.cc>
To: oss-security@lists.openwall.com
Message-ID: <867c72f3-eb43-44ff-849b-ecd451a50f6d@jvf.cc>
Subject: OSSA-2024-004 / CVE-2024-47211: OpenStack Ironic <26.1.1 fails to
 verify checksums of supplied image_source URLs when configured to convert
 images to raw for streaming

--------------F8VzJX00wHTtTwMC3sI9IFmD
Content-Type: multipart/mixed; boundary="------------olYtl0ptX5aGY0N4gyWH8Ofa"

--------------olYtl0ptX5aGY0N4gyWH8Ofa
Content-Type: multipart/alternative;
 boundary="------------M4G0oqhh3XgT1clb9tjxZsf0"

--------------M4G0oqhh3XgT1clb9tjxZsf0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQpPU1NBLTIwMjQtMDA0OiBJcm9uaWMgZmFpbHMgdG8gdmVyaWZ5
IGNoZWNrc3VtcyBvZiBzdXBwbGllZCBpbWFnZV9zb3VyY2UgVVJMcyB3aGVuIGNvbmZpZ3VyZWQg
dG8gY29udmVydCBpbWFnZXMgdG8gcmF3IGZvciBzdHJlYW1pbmcNCj09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KDQo6RGF0ZTogT2N0b2JlciAwMywgMjAyNA0KOkNWRTogQ1ZFLTIwMjQtNDcyMTENCg0KDQpB
ZmZlY3RzDQp+fn5+fn5+DQotIElyb25pYzogPDIxLjQuNCwgPj0yMi4wLjAgPDIzLjAuMywgPj0y
My4xLjAgPDI0LjEuMywgPj0yNS4wLjAsIDwyNi4xLjANCg0KDQpEZXNjcmlwdGlvbg0Kfn5+fn5+
fn5+fn4NCkp1bGlhIEtyZWdlciBvZiBSZWQgSGF0IG5vdGljZWQgYSB2dWxuZXJhYmlsaXR5IGlu
IGltYWdlIHZhbGlkYXRpb24gZm9yDQpJcm9uaWMsIGluIHdoaWNoIGltYWdlcyBtYXkgbm90IGhh
dmUgdGhlaXIgY2hlY2tzdW0gdmFsaWRhdGVkIGJlZm9yZQ0KY29udmVyc2lvbiwgcG90ZW50aWFs
bHkgcGVybWl0dGluZyBtYW4taW4tdGhlLW1pZGRsZSBhdHRhY2tzIG1vZGlmeWluZw0KaW1hZ2Ug
ZGF0YS4NCg0KDQpQYXRjaGVzDQp+fn5+fn5+DQoNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9y
Zy9jL29wZW5zdGFjay9pcm9uaWMvKy85MzEyOTMgKDIwMjUuMS9lcG94eSAoaXJvbmljKSkNCi1o
dHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85MzEyOTQgKDIw
MjQuMi9kYWxtYXRpYW4oaXJvbmljKSkNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29w
ZW5zdGFjay9pcm9uaWMvKy85MzEyOTcgKEJ1Z2ZpeC8yNS4wIChpcm9uaWMpKQ0KLWh0dHBzOi8v
cmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzkzMTI5NiAoQnVnZml4LzI2
LjAgKGlyb25pYykpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvYy9vcGVuc3RhY2svaXJv
bmljLysvOTMxMjk1ICgyMDI0LjEvY2FyYWNhbChpcm9uaWMpKQ0KLWh0dHBzOi8vcmV2aWV3Lm9w
ZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzkzMTI5OCAoQnVnZml4LzI0LjAgKGlyb25p
YykpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvYy9vcGVuc3RhY2svaXJvbmljLysvOTMx
Mjk5ICgyMDIzLjIvYm9iY2F0KGlyb25pYykpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcv
Yy9vcGVuc3RhY2svaXJvbmljLysvOTMxMzAwICgyMDIzLjEvYW50ZWxvcGUoaXJvbmljKSkNCi1o
dHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85MzEzMDUgKFVu
bWFpbnRhaW5lZC92aWN0b3JpYShpcm9uaWMpKQ0KLWh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3Jn
L2Mvb3BlbnN0YWNrL2lyb25pYy8rLzkzMTMwNCAoVW5tYWludGFpbmVkL3dhbGxhYnkoaXJvbmlj
KSkNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85MzEz
MDMgKFVubWFpbnRhaW5lZC94ZW5hKGlyb25pYykpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5v
cmcvYy9vcGVuc3RhY2svaXJvbmljLysvOTMxMzAyIChVbm1haW50YWluZWQveW9nYShpcm9uaWMp
KQ0KLWh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzkzMTMw
MSAoVW5tYWludGFpbmVkL3plZChpcm9uaWMpKQ0KDQoNCkNyZWRpdHMNCn5+fn5+fn4NCi0gSnVs
aWEgS3JlZ2VyIGZyb20gUmVkIEhhdCAoQ1ZFLTIwMjQtNDcyMTEpDQoNCg0KUmVmZXJlbmNlcw0K
fn5+fn5+fn5+fg0KLWh0dHBzOi8vbGF1bmNocGFkLm5ldC9idWdzLzIwNzYyODkNCi1odHRwOi8v
Y3ZlLm1pdHJlLm9yZy9jZ2ktYmluL2N2ZW5hbWUuY2dpP25hbWU9Q1ZFLTIwMjQtNDcyMTENCi1o
dHRwczovL3NlY3VyaXR5Lm9wZW5zdGFjay5vcmcvb3NzYS9PU1NBLTIwMjQtMDA0Lmh0bWwNCg0K
DQpOb3Rlcw0Kfn5+fn4NCi0gTm8gb3RoZXIgSXJvbmljLWFkamFjZW50IHByb2plY3RzLCBpbmNs
dWRpbmcgSXJvbmljLVB5dGhvbi1BZ2VudCwNCiAgIHJlcXVpcmUgcGF0Y2hpbmcgdG8gcmVzb2x2
ZSB0aGlzIHZ1bG5lcmFiaWxpdHkuDQotIEFzIHVzdWFsLCB3ZSB3aWxsIHByb3ZpZGUgdXBkYXRl
ZCByZWxlYXNlcyBvZmYgbWFpbnRhaW5lZCBicmFuY2hlcywNCiAgIGJ1dCB3aWxsIG5vdCBjcmVh
dGUgbmV3IHJlbGVhc2VzIG9mZiBidWdmaXggb3IgdW5tYWludGFpbmVkIGJyYW5jaGVzLg0KDQoN
Ci0tDQpKYXkgRmF1bGtuZXINCk9wZW5TdGFjayBWdWxuZXJhYmlsaXR5IE1hbmFnZW1lbnQgVGVh
bQ0KaHR0cHM6Ly9zZWN1cml0eS5vcGVuc3RhY2sub3JnL3ZtdC5odG1sDQoNCg==

--------------M4G0oqhh3XgT1clb9tjxZsf0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p> </p>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <pre>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2024-004: Ironic fails to verify checksums of supplied image_source UR=
Ls when configured to convert images to raw for streaming
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

:Date: October 03, 2024
:CVE: CVE-2024-47211


Affects
~~~~~~~
- Ironic: &lt;21.4.4, &gt;=3D22.0.0 &lt;23.0.3, &gt;=3D23.1.0 &lt;24.1.3, &=
gt;=3D25.0.0, &lt;26.1.0


Description
~~~~~~~~~~~
Julia Kreger of Red Hat noticed a vulnerability in image validation for
Ironic, in which images may not have their checksum validated before
conversion, potentially permitting man-in-the-middle attacks modifying
image data.


Patches
~~~~~~~

- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931293">https=
://review.opendev.org/c/openstack/ironic/+/931293</a> (2025.1/epoxy (ironic=
))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931294">https=
://review.opendev.org/c/openstack/ironic/+/931294</a> (2024.2/dalmatian(iro=
nic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931297">https=
://review.opendev.org/c/openstack/ironic/+/931297</a> (Bugfix/25.0 (ironic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931296">https=
://review.opendev.org/c/openstack/ironic/+/931296</a> (Bugfix/26.0 (ironic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931295">https=
://review.opendev.org/c/openstack/ironic/+/931295</a> (2024.1/caracal(ironi=
c))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931298">https=
://review.opendev.org/c/openstack/ironic/+/931298</a> (Bugfix/24.0 (ironic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931299">https=
://review.opendev.org/c/openstack/ironic/+/931299</a> (2023.2/bobcat(ironic=
))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931300">https=
://review.opendev.org/c/openstack/ironic/+/931300</a> (2023.1/antelope(iron=
ic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931305">https=
://review.opendev.org/c/openstack/ironic/+/931305</a> (Unmaintained/victori=
a(ironic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931304">https=
://review.opendev.org/c/openstack/ironic/+/931304</a> (Unmaintained/wallaby=
(ironic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931303">https=
://review.opendev.org/c/openstack/ironic/+/931303</a> (Unmaintained/xena(ir=
onic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931302">https=
://review.opendev.org/c/openstack/ironic/+/931302</a> (Unmaintained/yoga(ir=
onic))
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/ironic/+/931301">https=
://review.opendev.org/c/openstack/ironic/+/931301</a> (Unmaintained/zed(iro=
nic))


Credits
~~~~~~~
- Julia Kreger from Red Hat (CVE-2024-47211)


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://launchpad.net/bugs/2076289">https://launchpad.net/bug=
s/2076289</a>
- <a class=3D"moz-txt-link-freetext"
href=3D"http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-47211">htt=
p://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-47211</a>
- <a class=3D"moz-txt-link-freetext" href=3D"https://security.openstack.org=
/ossa/OSSA-2024-004.html">https://security.openstack.org/ossa/OSSA-2024-004=
.html</a>


Notes
~~~~~
- No other Ironic-adjacent projects, including Ironic-Python-Agent,
  require patching to resolve this vulnerability.
- As usual, we will provide updated releases off maintained branches,
  but will not create new releases off bugfix or unmaintained branches.


--
Jay Faulkner
OpenStack Vulnerability Management Team
<a class=3D"moz-txt-link-freetext"
      href=3D"https://security.openstack.org/vmt.html">https://security.ope=
nstack.org/vmt.html</a>
</pre>
    </div>
  </body>
</html>

--------------M4G0oqhh3XgT1clb9tjxZsf0--

--------------olYtl0ptX5aGY0N4gyWH8Ofa
Content-Type: application/pgp-keys; name="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Disposition: attachment; filename="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGFpBPQBEACaRxGb+O+Ypgxi2gg3bfkxuejyTGUYJ3dwXkoFnZvaSeq7Nx6X=0A=
4+vEd20x/9vjuwdbXB5w3Tb4N9oIAGUpukjzVX3rBZ9TqkvOiY5KpJf8lJVCJupp=0A=
lfUkxurWEvwdcCv9KU7HyFSKcMdmFIOGPzbg4N/d2gF52HIKTQBorI0dMAoKsBXu=0A=
Wfb1/rK+C8wcY3gecqLgrjEdOFsQETFFSUs8Egn3Z81DMoNucBVZWnz+p7R6nhlr=0A=
Mt9gXNBEZWPFZihteE6EovP6BXSotdyBRmmxAOBCaZZsA4CIzZoK9cb84N6y1PQH=0A=
AAl4W7wCoakiKByF9/0gCIIbYWgauJ5oD0kQTNgwNDcygQnTdrs7UQ6GUlaT4Cgf=0A=
eRWydLmmv8LvJyZOqFQs+3DOUTagTYZqsarfBBQO9PaeZvKbz3s5Dsr5QCeOMIVy=0A=
4Te4tNRNExut48cp+n31ZUARCAlQHAoKiswELCkOgnKzSEVJ8PEeIYP8Up5zoWfK=0A=
4/SaqeVrY3ziKl8RdOGW2zW7WikfgWODIp5L6erTnT2xRGGcikDbShkGzOQCIkfm=0A=
XPzp8HmSHumIEO002KzCMsRX8jQphEPtC1QXsAwDpyYMTPjxPIvVtTQbrtoJoYCV=0A=
uzDiETsB9VWvNRXn687uvVaFL96aui0hLO79basRPiekRp33IlXuEaxVdQARAQAB=0A=
zRlKYXkgRmF1bGtuZXIgPGpheUBqdmYuY2M+wsGUBBMBCAA+FiEEvF1YmsGLSYuW=0A=
qE+ta3XZObQkxtQFAmFpBPQCGwMFCQeEzgAFCwkIBwIGFQoJCAsCBBYCAwECHgEC=0A=
F4AACgkQa3XZObQkxtSXQQ//VwFbzIE2x79AhX3wHReYH+6UR0qe+QuTl0zd3vp1=0A=
sKukkbU+i3J4eVHmVXdTI2rFE1WH9TbTaEBM3qZJgXsQEQ5+im+eyZFfZbGgZLJW=0A=
yig3uKOogS0OrxOjRwjlDLN9Orcl4de/HA1zAVrLRV3zfg8ZMj6zXrv84L54lZ5e=0A=
9C7mD5oS8Ge5enFrU9kEdHNjqzt1PCXCeA37/HRJoR+nzHmcSzJyMMxQdo0cgiaR=0A=
HYyu7LOJFL5qR0jLEmZwEulmd6fMeU4Tx5eMx4o6O3diTmGyeFs/UDGWn0qcMDkh=0A=
9T00Qw1bLOv/yFrpCMjEyryR7hJ53HYtLqEkvn/7lClrp2BUsV8XjYqexnB6unr3=0A=
0/RduC6koXXUHAZpk/+mD0WEdShFNuiFlOn8BDjBvk5k6j2VlEO3uH0BhWUBfY+b=0A=
ahWiLgWUhupK2Wd8qLYbE9VDj5jvcKVt7qonBuguDY43aXyf7gnm3u1pprGuqTcW=0A=
yRijHeLXLHNZg2fCUjQ0tdto/YblvNexrEDxjK7nzgmHR7KDTVFcjG91yrTrO2/h=0A=
mREQSN5WWk50q6n5NLBSMWyDuzOxG0baOuKZrSCnMamFNjMPvAnCdqe1HoNq4b7H=0A=
b9FheqJulqQFLEhGN33KIummGYTjJBYnz4L7c1F0iqlvEVO7MEir+a63lMWh6wIa=0A=
rg3OwU0EYWkE9AEQALHcnXwEWn5WF3y47vkl4ASUisl1QHSlYrs1qlsBmqdbQzo5=0A=
TOtupuGVk9G7jqo1J1Iu+ejI+uYCcU1jPYH5H+PJ9AK5qcM6MGniwJNaopHmvUgE=0A=
RwlUcxP99IH4LGS2npnXSxIrSYfYBXuDUW7vbW2Ksj5XfXlBMd/6PE4b5kljOABB=0A=
9SWFw3eXJunaV7h2tLnewqFU/sbZHLhDkAER7vwlXyTMDrkPTCyOqfweFZcn2iRD=0A=
52/LsoL4hlpcGZz/mSV/sQJBoiM5op+3NWKKe0V4RkJ+lgACQG4jzC5jyN4XOk48=0A=
tQF4ZHqyy32O+HRH4xRXpOAmxiZzvXLPUqSmI+uNnjyO5tzFy8K/hzL/3YtXQyxV=0A=
GFYtmtILSnQORO/a37oreb5RQm8jvvq7R+Id2/BmdekGcxQn5l6gn4+DVyp5EW/n=0A=
7wXKz5bdt74OFk6RQafb24RHsNbJehIHWDuK2PO5FS6T3T5S2il2khGg2wu6xh5v=0A=
XyWtB3eW1skdOWwt/M/HFinesaCkvHTUJwTKk6BnQUzpKHyZcGRuQ+pnT/5xJumi=0A=
6AztsXU29wfyaoZK1o6foRRk8ojpIVZIUZyR7cV2BXzewwKyv9HihGa+P4atcjPM=0A=
sGhVh6cJXxKS1xKdfn8iBD7ngS1LIOhDKzjQrRD7Pz/Q0SxwYgYrz51AdH7tABEB=0A=
AAHCwXwEGAEIACYWIQS8XViawYtJi5aoT61rddk5tCTG1AUCYWkE9AIbDAUJB4TO=0A=
AAAKCRBrddk5tCTG1Pw/EACZaea6M44KlVYViW5G7obSd3vavB64IolK45WpkEEW=0A=
fd5lthEjtak52KIyDfy7l/Kquur1/s3Ya4Ij46XUIF8QRuQLC9Mw/nzZkhj84WDv=0A=
LqMtE1i0q1TeI/+jCRxTQdhvUjzrxa/LaHGfBpLdaC7OCoLu1Mo4Up+SsJyPzTCd=0A=
9B+zeG2mDH91uuE9NC8sXg8KjmKsUzm0WGcs5XBvSJ27dOm/JSRIdE90iiL6jxS3=0A=
FLcyz79/KznqtYsNfZJnL7u5/lW5CkrZv8Xc13oFGSAheZXyyH3sTyESB9oLLapl=0A=
MdK/IWxynTpLpX5cBtuIRQ/OVmonot10X2P1Muua6PfFXkCM2NBAz/kBp0ymtB0x=0A=
GWzEV/7pzbgoFG+jDrlkGpzGvd0EPyuicuQwTZARAt5H5s7HqJ0gPqx4FLwoLbdj=0A=
3WUVP8ySUdw8T2iMvIVQSiNGiY+3H6AJj5U4q3Qk2kK9QIVBK4wT2D5XJTkM+SP/=0A=
z2tr1UbrehZ2gUaB6qH/loM+QCIqDS+7FMylC5isHPeQTazggF9naNI/sxFckogT=0A=
5Gc1/Bg/0708xjmRYyo9EORAvBjTVh1u4lTvrY4pbtYKpMgot+KvSpE97Rh6Ulix=0A=
sf1Ly2oRfWFDvNmglD8xPLSwQ0fUxvFvqa3pBG9TpFNN62Sy82CoCPrSWw+2Lf3b=0A=
8Q=3D=3D=0A=
=3DUVNq=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------olYtl0ptX5aGY0N4gyWH8Ofa--

--------------F8VzJX00wHTtTwMC3sI9IFmD--

--------------kKw94cbskpj9nMmfOn3MQVLJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEvF1YmsGLSYuWqE+ta3XZObQkxtQFAmcBlYYFAwAAAAAACgkQa3XZObQkxtQB
Og//XhtastssF/frLbZKPKCE+JKpdRS5jwtxZp0xIYV/y5aAns/g6G0oq8tN8CodI8+NqjnuE245
oxAfN/ghsHmye7YQV+1vj+/EbM+c0BPtBYe4fA6ZVQtNdUHmMT5bdnCaWAI1unD4wabUbq1tMxH8
0zqJelYzukl7yJCEBqanbbVu/b4kKZ1+c+CWa1aNsBd1LUH/0nlIySiIEfs9yqvRKBZ97AtXa4bg
mmwUeIG0X2AWiOq6zrQlNLA3DVBSUvj0fs0SUWfecI8s3j1B88uMGJmRysdbHLK2nK9Ip6fhFm9i
gMlJ8JTsy1RKHAJdCPJ8OGklHYOTemMGDwGU9mvSAdUt2wQj5YxOqkmgATOV/V9lGQvisWUX4kEC
HkhcaWnqisbW1votI9Q18Jgw4WeJclenVvnL8Qa+7xGJsy/010xiZ+EO/DTubLdYBjgQXXQhv9Ny
2bepozSyGk6EMmUqfcB+X59/OQasmxo6bk5CknpT888F1ZbORI4rhC9Q9p+Qr/xoPMi5PTv6oBEs
lkOXJBMUksJTSkPUx08IkB5cygt4d6wGOt0+zjIs7MwjPyRPu+8RO73jgJTYdBxLPJq8vlJzNx/W
CfMG+NtQpZSpF9MrwLFrzOMNTLwwl1X4d2Z6Zcy35jmkNZX5inQOITNVD1Tgbfj/+rQ0tU8Qmr0O
ehc=
=soLN
-----END PGP SIGNATURE-----

--------------kKw94cbskpj9nMmfOn3MQVLJ--
