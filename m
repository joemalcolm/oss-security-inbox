Received: (qmail 15544 invoked by uid 550); 18 Oct 2022 00:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15520 invoked from network); 18 Oct 2022 00:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=vvOramR7mq/obzG5dIecfqGfieSUQDol/SIXxZIBNYE=;
 b=E0AgyI8ou7E3Ojqr0dQerqgQcCzO14yRmRnq8wvY2+kzQC4XlHvrMvKkyBGYaDeD15mw
 VSvk/gmNw4NyMDbXXb1io5nvlOrV0QEfRNrJgEwMt61h3OE7Xj4cIevjod8Jj2Y7J9lt
 uQrSOxi7RaK4vkM/kNcOlPqE/IQOKORwHpwQ3kKa5RCyYRQ4u9IIcF4D8SeK5/H45B6Q
 jBwIcIoW2WwLvfo2NJTCZSeM/vCRG2pCRAHdwhWEmvVG/OBy3RLSVdrQ/MZ+27cGXWYM
 0rN0A3/uSyQRIJPBhoeGF0vYQvoJ5FUFKUZQ0zA4aXb/xO+sSTSbcD+yKIkfgM8UaWjk Dw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7dCv4GqquSYTvo8paUc40c1FxFI8dw/HHPf390rgC6TXhDeaL7hRzGEs65CDu4C+Kf46W++3t57nQuKpbC5njkm+q6YlWJK6qFkFjdRCdCSccJukwki48Pm3QdJTRYWYBVbhr7PFIHOW1jDPh48tUo4zY3/7rmeZU+kZ+JAlaaZ+Zc698158jH39htIMArXFdxIddT88z7eOz5fU0Tph3A2tm4FtO/bTWKR3eX5TZSps6BGrCeI3KUUfDFml/jsDrpN6V2Aym3CyfJGs7CBumgcFPqbMIJhVoTcbg5VW8u/GyX519Y6g51VK4VhcQKH8zylGfTXHQz+rim85jaY7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vvOramR7mq/obzG5dIecfqGfieSUQDol/SIXxZIBNYE=;
 b=OGu84d8p22YCzhOrO32up5sx/5NtLTv4BVmu7fhNMee+6E9Ikhrp0X09h4uwwXErh+aURRy9CVMH5loDlRfg4im8ajU7epc+HDz8Q1XnlUYFCaq8fTY/YVk3Teh0GwAhfkxohHWdmCiYdcbHcOz3j3QBmno5A86at3qjvmqlVmq2XWVxy6McQCd9nfmlQR/o75+0xGpojkrrRvnLJCNKGzxO2P2KexdEKPBPaaiEnABdSOVOBkTaKGqCdyUZ7mcZ4uyyKbkMXgZM4qYQ5aYKM8d5uo/lp2e65Vb4pNVn9V8eX2iMPaNPi15sV6knkoOjNLRgjc/FOJ+TVKmBg8ODjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vvOramR7mq/obzG5dIecfqGfieSUQDol/SIXxZIBNYE=;
 b=TPUR6OAwwJ6tm/7K1WvJs4dDLX8vWvtWBPiLybBOEbyRtNs5sdA4E7mpptMxDX2UKW8c/uc1/9FwFCXpPcTRorXQjVmDLMhU8w6Z6cYyI3WAMovTanE3YaVmAbvFPcWzIWxgX8264WGy+O3LyAS34TtEDk46Ocsfv5vaKgDWFAQ=
Message-ID: <d39aa380-efd7-bb01-c6b4-06c5e2affb3c@oracle.com>
Date: Mon, 17 Oct 2022 17:44:06 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: oss-security@lists.openwall.com, "Gary D. Gregory" <ggregory@apache.org>
References: <630d1a1c-8f32-65e0-86a5-8863e6d86614@apache.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <630d1a1c-8f32-65e0-86a5-8863e6d86614@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64
X-ClientProxiedBy: SN7PR04CA0210.namprd04.prod.outlook.com
 (2603:10b6:806:126::35) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|CO1PR10MB4449:EE_
X-MS-Office365-Filtering-Correlation-Id: 783048e3-ac4a-47b1-c08d-08dab0a1e011
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/iHEpRX3SyP24XgURJfTOkB3M7Qxm1ygU2uiCEGkMbkVLSXLlArkVRdyojnIXwNgq2Eearpm6dHlUuUlPA0UpXXZaua/zjebmAr2rfPi1X7M5Dx/zaVjHKaqGneK18yLLz0w18XoL+KeJlfnvxdAdLdo+CKYBMsKGy+k+7bjd/FtGYG3IJdggJIZv/bnOxCVU5uXid290lNsXXIV23Hu+5qC9a9zoTsjQAv2nxKKovoa0tMZlX9HyFcDpPvQFxk6Y89BImUbGFrIg5oZN0/ldFuKk/QbsKcofPxpRQ4PfpQg+Ll4oVMN+PjIONZeuAb24NRk96WNYa8/CyT5Rgdf2aTyrG1AvHce+OGP7RPR9NsjfaxXnsswOmK0iLlR+7pcAl9ZKYIOEXVcr2fntgdi91AWSyOUdfnE5go92yrpMftjIJqUY/SLeZFhNSUtPnr8P9e6L2JNlylkgyL6TLzPaA0U19s1nR6w3Pa5/tN91Y/RSW+5Wh4X9TDcQD8IEe85U8bLbgPHTepp3azANW+0+jL7ae0MpxmQlmwxx3G67XMDnwY4dcF9QgHpXg9FI4fCerg6B1HQ5DilZ0YxB5Qx59jBnKJz3ArtslRJgOSX613YeLe4WrL7pOHJPgi5TTwtwm/BTNK9Y9oVCANi0+UT9yppcnTNA+O52mRFGrsjk4rq9/2Caa0BMqP/3NUdCiWagANu4XCAkwKj5rE7XFkn0hVDKzfu5xdxRDWZ8m0SDSQ7d7HTMK3BmfyWck4ysYLvatcaN6+AzQd6ozGHmmY+9XpaQ6xSwY4qZseIDHZYPAV4gP+EA14nEfV6AMKm5fDc
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199015)(6512007)(38100700002)(6486002)(966005)(31686004)(478600001)(2616005)(186003)(15650500001)(316002)(66946007)(66476007)(66556008)(8676002)(6666004)(6916009)(36756003)(6506007)(5660300002)(53546011)(41300700001)(8936002)(26005)(86362001)(2906002)(44832011)(31696002)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YmQ3U1g2SGJUYWlwN21ERnlQSzNkU2xzdG55bkQ3a2ZNeGc4TlJ6OGl5ZVhw?=
 =?utf-8?B?eVdXdVp5REdXTHM0SHdrN1V5UUpLNzI4eEQ2NlZxY09jZkVQRDhEaU4vZzcy?=
 =?utf-8?B?NXMyY3RpcjdzOVlFVklMSzNaVXd2dmlsS1NhV3FJL3hxSVI0NHVlcm5Gck8r?=
 =?utf-8?B?MHh4bkxXNUdwRWVwTG9UR0pEQ0IyYWEyWkd6Yi9rc0IxU25MVjdTNWMrR0NF?=
 =?utf-8?B?S0tGa0NKTDlqck9CRTJqczlndTdUcys1ZXhucDRobTF0RXI0aUMyeWNTeWEy?=
 =?utf-8?B?UnkwSnUrUW1pN2VvekgwRUZQRDlWSXNRQkpMZDNrSEx6a2M0ZGJGbDlKSDJ0?=
 =?utf-8?B?K2YyaVVSaGZFbmtiMklOOVhha3BlOVQwTHM4bHEzeDJMSU90WmtGQXUzMWtL?=
 =?utf-8?B?N2tpL24rRE1EbUJVSFh5OEpHSW5XbDFDaTJaWWIyUGdkZHltSlNUSXEvdEU3?=
 =?utf-8?B?RnMvcGFMZVMraW9uVGphUzNjWXl6NTBhNE93WVdnWXBteTk3M3RvQWZNRVAx?=
 =?utf-8?B?MlBxRlVSdWdWL0g3SEtxOThBNVhtNk93NGhMZ2xVQ0VSSGpoUW1hcFJnS3FN?=
 =?utf-8?B?dmFxVWlqS3p4a3JSNEJZV2g1TXpwZUgvMmxEeHZ2czkvK0ZGWnJUSlBKMlJz?=
 =?utf-8?B?Q05OYk9Iak5IM0ZFbXJWaHMxWkFibzNycWZlU0xFdUpERUR5Nm1mK3plem16?=
 =?utf-8?B?bWZjNWVKZWNHK0ZRUUkvRGgxdkhHcGJ4QnpYZnYzZGJNTStiN2o2Z0lpNHRp?=
 =?utf-8?B?ZlRxYTJtc1c4dDRtMzI1V1VzWENIVTRuTEN2QWdST0QxVEl0SjFURzFDN0M0?=
 =?utf-8?B?WlpZcWJVbCs1SDJpSzcrNnVzY2o1YTBOaFlFcmJjeFNBazR4T0RBVFRES3FX?=
 =?utf-8?B?cDMzbUU3MmkxVjc3L2wwdDRzTVdWRVdueE5PNVhWYkZYc2FlWWxwR055RHZR?=
 =?utf-8?B?SEREaHhKYk5BT3lMMTJ3TXBoT0pYUEtOOTBwUW4xUU96WmowUnY3M1F5SXNV?=
 =?utf-8?B?ZzhrMnI1c01lTHhnazR3SEdLUS9aUjB5a2w4VS96SEVqVkxtVTNtQWZGbEZr?=
 =?utf-8?B?V2FKRk5ra3Z1V21mR2NneVpRMjZWeEpiT3VmZkNvZkZ6VWNwaExKS0RlTUZy?=
 =?utf-8?B?OW1sNGh6NjM0NXF3ckZjc1diZmREaUxwdXUxbHdxZFBmT0VOY1JVcHFpZG11?=
 =?utf-8?B?SXlmdEhmc0hIbDIwN0lScFN2UGRTd0NLeHUwcnJlTFlUMmtPVHhIT0xpTk1t?=
 =?utf-8?B?Zk51WXpITm5JOW41a3dwMGdRNmcrVUhrZ0dITmQrdm1NckJOR05lSTBUNm9O?=
 =?utf-8?B?L1RsMDFOckpqWlFuOG50WDY0RGtHT2ZyR0VEWGdiUFRUbnh3UjJPZWJCVmFC?=
 =?utf-8?B?ZzVGaytIempBUU55bCtuUHNYSmlyL1VWTktMMGpvb0F6V0ZvT2RSUkZtUWU3?=
 =?utf-8?B?elhFWXZzTlkrVmFVREthV011WDlHZHZYV0FNcGxtV2VZa1g4a3hheGp0OXhQ?=
 =?utf-8?B?OWFEQWhqTmpnQm13V3lpb1V6QjJQTzBQdXljVmFtSUI4U0JnUUN2bmxRanJ5?=
 =?utf-8?B?eWIxclBhV3NzbUdKQ1pCZk91YmZwMCtEaFk1c042R2NHM0F2N0FLSUE0bERI?=
 =?utf-8?B?K0V4SytCS3F1LzVSOXZNNExCWU15c0RiUkVjMVNLUWpTS3ljQ09KNVIrOFhq?=
 =?utf-8?B?bjdwSHNDRktYU0RRTGQwMDJHcUdoOEZIZkJDdDI0WHZ0d0NzR0pDTXJQditU?=
 =?utf-8?B?dVBCZ0pqSDZZazAwbUh4YTZIN1BmRXR2UW5CbCsrZ1NsZ1JUejVYSWl4L2hE?=
 =?utf-8?B?VFdtZ1JicGNiSTh5MFl4d0dUNUNRQ0NOU1FJajVLckNVaEFiNlQ4SWpkdVIz?=
 =?utf-8?B?L2U1NExrUDB6TDQwbXliNFNXN0F5ZWdjc1NsK1orQW1tS0owS1diTnZvSlZQ?=
 =?utf-8?B?MWdDMEZhSSt2dDNmNC9GeDFQQWx4bitKMVB4cnpRamY0Yjczb1hBMmY3ZjVC?=
 =?utf-8?B?LzZFN1dXQk1aZ1VESDFXam1ScURETmhXVER1d0x6WklDczVGVFB3UEszRjVG?=
 =?utf-8?B?d2M1d29NcURJbEEvaWdSN0JBRzdqN09MU1VNOXkwNEpRdGtiY2tCYm93QjRr?=
 =?utf-8?B?MEZDeld3Y0M3QjBvRzJjb3Jnem96SktJcFR4ejJXSCs3QlVBRit2Wk9MM3JU?=
 =?utf-8?B?MWc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 783048e3-ac4a-47b1-c08d-08dab0a1e011
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 00:44:12.4172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRlpmrGFgIXRCK18PEjRAKMrpg/IP2CzPCXGQGVH1g+NOba5cFnJM2tb5gG+hCYY7Y9rR480SyoB4AaufOOqO0tZE61AHXrm8nSOBhiEZ0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4449
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-17_13,2022-10-17_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0 mlxscore=0
 spamscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2210180002
X-Proofpoint-ORIG-GUID: 32xVLdkZVl7qu-KxZE0NZDxGuNvq-4o_
X-Proofpoint-GUID: 32xVLdkZVl7qu-KxZE0NZDxGuNvq-4o_
Subject: Re: [oss-security] CVE-2022-42889: Apache Commons Text prior to
 1.10.0 allows RCE when applied to untrusted input due to insecure
 interpolation defaults

T24gMTAvMTMvMjIgMDU6MDksIEdhcnkgRC4gR3JlZ29yeSB3cm90ZToNCj4g
U2V2ZXJpdHk6IGltcG9ydGFudA0KPiANCj4gRGVzY3JpcHRpb246DQo+IA0K
PiBBcGFjaGUgQ29tbW9ucyBUZXh0IHBlcmZvcm1zIHZhcmlhYmxlIGludGVy
cG9sYXRpb24sIGFsbG93aW5nIHByb3BlcnRpZXMgdG8gYmUgZHluYW1pY2Fs
bHkgZXZhbHVhdGVkIGFuZCBleHBhbmRlZC4gVGhlIHN0YW5kYXJkIGZvcm1h
dCBmb3IgaW50ZXJwb2xhdGlvbiBpcyAiJHtwcmVmaXg6bmFtZX0iLCB3aGVy
ZSAicHJlZml4IiBpcyB1c2VkIHRvIGxvY2F0ZSBhbiBpbnN0YW5jZSBvZiBv
cmcuYXBhY2hlLmNvbW1vbnMudGV4dC5sb29rdXAuU3RyaW5nTG9va3VwIHRo
YXQgcGVyZm9ybXMgdGhlIGludGVycG9sYXRpb24uIFN0YXJ0aW5nIHdpdGgg
dmVyc2lvbiAxLjUgYW5kIGNvbnRpbnVpbmcgdGhyb3VnaCAxLjksIHRoZSBz
ZXQgb2YgZGVmYXVsdCBMb29rdXAgaW5zdGFuY2VzIGluY2x1ZGVkIGludGVy
cG9sYXRvcnMgdGhhdCBjb3VsZCByZXN1bHQgaW4gYXJiaXRyYXJ5IGNvZGUg
ZXhlY3V0aW9uIG9yIGNvbnRhY3Qgd2l0aCByZW1vdGUgc2VydmVycy4gVGhl
c2UgbG9va3VwcyBhcmU6IC0gInNjcmlwdCIgLSBleGVjdXRlIGV4cHJlc3Np
b25zIHVzaW5nIHRoZSBKVk0gc2NyaXB0IGV4ZWN1dGlvbiBlbmdpbmUgKGph
dmF4LnNjcmlwdCkgLSAiZG5zIiAtIHJlc29sdmUgZG5zIHJlY29yZHMgLSAi
dXJsIiAtIGxvYWQgdmFsdWVzIGZyb20gdXJscywgaW5jbHVkaW5nIGZyb20g
cmVtb3RlIHNlcnZlcnMgQXBwbGljYXRpb25zIHVzaW5nIHRoZSBpbnRlcnBv
bGF0aW9uIGRlZmF1bHRzIGluIHRoZSBhZmZlY3RlZCB2ZXJzaW9ucyBtYXkg
YmUgdnVsbmVyYWJsZSB0byByZW1vdGUgY29kZSBleGVjdXRpb24gb3IgdW5p
bnRlbnRpb25hbCBjb250YWN0IHdpdGggcmVtb3RlIHNlcnZlcnMgaWYgdW50
cnVzdGVkIGNvbmZpZ3VyYXRpb24gdmFsdWVzIGFyZSB1c2VkLiBVc2VycyBh
cmUgcmVjb21tZW5kZWQgdG8gdXBncmFkZSB0byBBcGFjaGUgQ29tbW9ucyBU
ZXh0IDEuMTAuMCwgd2hpY2ggZGlzYWJsZXMgdGhlIHByb2JsZW1hdGljIGlu
dGVycG9sYXRvcnMgYnkgZGVmYXVsdC4NCj4gDQo+IE1pdGlnYXRpb246DQo+
IA0KPiBVcGdyYWRlIHRvIEFwYWNoZSBDb21tb25zIFRleHQgMS4xMC4wLg0K
PiANCg0KVGhlIGFkdmlzb3J5IGZyb20gdGhlIHJlc2VhcmNoZXIgd2hvIGZv
dW5kIGl0IGlzIGF0Og0KaHR0cHM6Ly9zZWN1cml0eWxhYi5naXRodWIuY29t
L2Fkdmlzb3JpZXMvR0hTTC0yMDIyLTAxOF9BcGFjaGVfQ29tbW9uc19UZXh0
Lw0KDQotLSANCiAgICAgICAgIC1BbGFuIENvb3BlcnNtaXRoLSAgICAgICAg
ICAgICAgICAgYWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tDQogICAgICAg
ICAgT3JhY2xlIFNvbGFyaXMgRW5naW5lZXJpbmcgLSBodHRwczovL2Jsb2dz
Lm9yYWNsZS5jb20vc29sYXJpcw0K
