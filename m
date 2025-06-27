Received: (qmail 17641 invoked by uid 550); 27 Jun 2025 19:11:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17597 invoked from network); 27 Jun 2025 19:11:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=6vqC23X9LSd4X5+D
	+Q1KGO+i8uDJy9NjyfJvk5q0m1s=; b=ZuMSsVy76udTy5s/clKSPUlkkOQXNksv
	Smp81fgULUSZeBgSzCFn+osih1TeNnpifbmKYlhGYw2QJILcAvo7NtT/qQo+AhBO
	TZUqzENifU9bt/rLWHl0PV1Iw7empj+nMlIaiJqi52wAiIiNKYfMQMBJyy/UUilR
	N0upfyv8T1VIoxJmIYRM8qAb+QtHTaK2R5IW6uwJbCQZtRJSeW+K62uWvqRk1447
	QNcPHmFaPAfQ2I4gRGBPGswD77oAukdIgkrM2u962dZTjdxQE1jZ+O2Xl25OP4hT
	UF5223nCWSEVfoEn6F0SzWaIlP33IkoZeBEOjOszgbJsR1XRRfMjHA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O1HOwRPn4O4t9ckMSvO+G0VQq+zGXumQVoLnFvVCbCadNcWG3aULgWBL0/95Sgp9vUi3+RosltTLnm2sVDgi7f62jl18ivnUF83ffrMzg0nJp2EA+kpz6WZ3JuIP+4g+RsXBheUR9Ql15gEPnqb7i8V7FrYQ+wyq5XQEH14uIvCXV8Dv1f5paSzn/pk/sUnxt1OqGtoKT2gFkubXz+HdKo/MGTMvSEP+xCcVOFwiEh00iy+afPOow9UQVhCrm5CwLr5ORAfwGpW2jJmBJFxErm9kSVAIaFhZJGK/zLbQVVljCwx9EdP95h++dPn8Pg6DrLE6CKNBXRXxY2igX4jGYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6vqC23X9LSd4X5+D+Q1KGO+i8uDJy9NjyfJvk5q0m1s=;
 b=jucy+uZHqmztJjJIA3IbJdLhcSSU2+0LjmM51DjR0ruFUdYzeAF9GIldy7nh44yI4YzrWwW28M1FykcFTuXmv0hrmmhpVnQsjnCQmLnCYcgyI3i7BZ1pOw7UhLowaNuuMw0twzadKsvBZMJKWEdZJhXMW8ou0zLguTw1rLJlUiqWAOm7IkKdSIK0coVQofxALYxGha2YxCXTv8yiI9lcocZpAKYuKY4AE5dKierz0miDYvzwJNoigBFQ5cmJzsVjiOZAd0Q2IFRRFIDltYOmXkHj4pGWwVCnMtnA1qKqg8AnGUz/4cY3HCHnzIKFJTO3Sae1D3nO8xeQzN5QAzO+fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6vqC23X9LSd4X5+D+Q1KGO+i8uDJy9NjyfJvk5q0m1s=;
 b=ncYyaZ0OtV1Qe00c9XEQPG43oMA7jHYA2KVDzkGpJReIz88WO4MvB8psnUpXypenjiE35fMeY4ccbFlzeMYx6ht0Xa6h99TgLOmYjvG4HqU/pYJX1rOuNOtQqyOqS1f29Miowd5nSonmERLr1HTw84Bf9GbNdiKbFrwNh2flH4c=
Message-ID: <57c3641e-1425-4439-b517-95328ca25f3a@oracle.com>
Date: Fri, 27 Jun 2025 12:11:42 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7P220CA0040.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32b::24) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6057:EE_
X-MS-Office365-Filtering-Correlation-Id: 06f4c580-12cb-41e3-8e8b-08ddb5ae747d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eFk4d05NVk5FTVNWWEZSVHJZN2JPMDNOQ1h4aCt4QzhSa3U1M0l2STZvN0F0?=
 =?utf-8?B?eExIOUNmeE84OEE2RjZCUEtxeWVwUFRiaGdTRGJNbkRKaFRuZFZ4VkFUTFVn?=
 =?utf-8?B?Q2ZZM3dIdEFXcStmcW5jSEVpcmJ4MWdob0xOS2o2ZC9nZkZxZmZHQmVKSUdv?=
 =?utf-8?B?ZFBtOWpETXlSTUVNUEhTWWN4TWpWQ05mbEJNM2RMcDhpVm96T2hHa3JYakg0?=
 =?utf-8?B?eGpsRmJ0WWlPNG54TVdqYktLTTMrdmJFamtsdkxVS01IRjdXa09OaGtwODFD?=
 =?utf-8?B?SVN2MnNCNVhBTDdab2I3aGhibU9YaFc0cHJxVWhQY2dvL0tQOVVUSUNOUEgr?=
 =?utf-8?B?VW1Yc0xQc2E2UVNuM2xjWHFQZDlFLzJlRExTRTY2QXZaNVZtLzk5eUJhK0ZH?=
 =?utf-8?B?N2VwTFZEYll2U0N0NmRweWdMM2luU3BUNFJXYXExcisvTzlNVEV0WUNpdVV0?=
 =?utf-8?B?eS9kOW81bHMxWUFaSFJaRHhTbXVoV1hlOXRabnhKRkhxM2p3b0xOeUJHdlJP?=
 =?utf-8?B?ZmNRVDlPTzIyaGY3T2VVWG9aaGRaMEt5OXZmWFhFOGJQM0FaNm9sT0p1cHVi?=
 =?utf-8?B?U1ZsZ0wzUHpBUERQSlIwYTA2QjY5eG43bEl2aFgyWGtaZDFRd2VqdDM0ZlJ3?=
 =?utf-8?B?YUtCVVE2UnBONFU2QkdVTWV5ODlEK1VXakYxS2U1VkEyMTE5R1UycjVBY2tv?=
 =?utf-8?B?RE5iUHM1dUkxYUcyTjYyV3dQRnh3WTdYdEQ4UmNod095YXFDNHZHZjNST21N?=
 =?utf-8?B?OThMNzcwOVhESWU1V1BzcTRGbHJFR21XWEhTbXNlSUNGRlkvZmlLbkxjNEsr?=
 =?utf-8?B?YVIyc0FFZzdhb2JmZFVHekNYWTh1TG45bTQxUS90QUc1N3UzUWNBRS9KQmQ1?=
 =?utf-8?B?VnVTZXlrUFNXVjQvcWp4bmYwM0c2TDV6VnRQck5SQWdsV2FPNnJteWNvQTZG?=
 =?utf-8?B?NWRhN0thYUtkazZzai9YUStKaEo4SVJMQ2pjYVF6QTRrQWJSRGxDOE54UjZP?=
 =?utf-8?B?SkVvd0cvcTFTR2FtSFB1SmJuOWN1TDBLcUNvamJOTVdlU29rTGIycWl2d2NU?=
 =?utf-8?B?WlhudUtlbHYrc2N2aGJPNkNaaklHbjVaRFY2SVlNaVRaSG4wUEQza0xMRE9Y?=
 =?utf-8?B?c2lvVHJkZGNxR2NSK1B0c2crN2lEWkJWS0x4clZqYW92bXRLSEVvWUsvUk55?=
 =?utf-8?B?RkxBbFhIbFJYL21xS3dMbVQ2bE0zbEpuQlhVcFFBdGdXZ21weloxWXhYTk9l?=
 =?utf-8?B?Rk9manBhSE85SkNMbTB1SUMrZVF0cFpEOEg4aFY3THpZU0Z5enRIcmRiSGp5?=
 =?utf-8?B?YzZFajJOaTE3OVBEbFg4TytYRHBmSE12c2dsd094VGNXbDVXVXlldTlHMms4?=
 =?utf-8?B?VlM4SmJ0RUMrTXR6aFB6TzBVMllHSGhCTkcwMXFLeVpBWEllZ2tDOGlzcSs1?=
 =?utf-8?B?ZGJUTGJHZGpEWU1ZQThuczBPZlFvbDlCMWpCVHpRTk94eWxtMGJsMWh5YXhw?=
 =?utf-8?B?S0xXSUY1YXNGQ2ZaNDg2TXJpOXlVSjJ6V2RmT004dW9sQjA0bG5LakpoVitw?=
 =?utf-8?B?SVNpT0QrbGh3eTJGT0M2RjNYYlJoZC9CVnl5aE9lMDRJWXgyemJWWGlNZ2Fr?=
 =?utf-8?B?aXBvZk8yMERmcytGRW92N0dyYnZuM1pXR0V1OHVyRGF2eWpKVFppQTkyV2cw?=
 =?utf-8?B?RHI3aWRzNi93bjRNeDMvRkJWREJIdUVPcmd1aU1UM2h4ODhDSHlma0tqank3?=
 =?utf-8?B?ZTRpN3Vuc016UnRxNjJrZmlZakp3bUU4Zys5Y3NoQ255T2xWWXVoaGkrQndt?=
 =?utf-8?Q?nnaQNorOn2Rlysgx9kZJ+sFlEWmjRadXpHd0A=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YlZnYVh4N09VL2I2T1M2ek9qSTYxSE1wVWhpd1l0ZlhibFFIU1ZyWlNqVXBu?=
 =?utf-8?B?TytwYjI2OTY5YTZONTltK3o5S3l2Ymc2MEVmK3kwWXdnazBsVTBCOFBaOE40?=
 =?utf-8?B?eDRUa1Y0WDhxb3R2QTlwdkRjTkthNURDUlBXdWdnQXAybXpiT2Q5ems2VkZ5?=
 =?utf-8?B?aUZQUkIyWnNiZGIyYStrR3NFVVdEVFY4dkpzalFBeXoveUxhajFPWkt5Q3pT?=
 =?utf-8?B?WktQRW9OM3hXYzhKYW1HaXNxRyt1a1RZYnRocjNNSXlhbXRpdkRzcFJRbk5y?=
 =?utf-8?B?VzRYdWN1d05TbGZKbGowR05iTzZHdFQyeUxYbjg4WXZpdVIxdUM1Z2t2RWht?=
 =?utf-8?B?Nko4ejI2a2pkQndVZnBTVDdDSDlBaWpDNUZzZmcwYUE0WUllMjdGR0JQZEkv?=
 =?utf-8?B?WkFGM0VhTWREMHFuMUtEQUdkbk1jdlQ3NTBhTWloVWFVRnJHK00zajJvY1gw?=
 =?utf-8?B?Y2tTdjRjbk4ydGJ6VnQwKzgyMDVwTFBHc1l6c0UzTmE5V3c2MngxQklHVXJP?=
 =?utf-8?B?amlodlAramdKRStXcEJwMTIyTWVsR2VmZ0ZET2V1YmFNeTF0ZEhGTUcrUG1L?=
 =?utf-8?B?UWkvUGE1YWF3SEFUL0xaaG1tMzdvVlJKSVhsN01kYXFyUkJuMWk5My81Q2h1?=
 =?utf-8?B?Zkgvc09OQytKVm9NZDg4N29oMUt0dyt4MEMvTHF4U0VtRGlsK3ZHbExpaFN5?=
 =?utf-8?B?M3dYd2RpQVM4dDhPNk1ZOGlYTEZkZCtGczM1NjhqS2FNd2FrM1VqdFV5NEQw?=
 =?utf-8?B?cWF2ZW5vbGRuT2pxT0luNUhVd2ttRHhHLzdDSnJTM3NQL01XdW1TdEF2dVMx?=
 =?utf-8?B?alpYT0ZtRGgxNmdzUDV4TmcrRlgzUFV5VndoR2szcjJvTlcyeFJJSXMwT043?=
 =?utf-8?B?b1RQdVliUkc5Qm9kZFlsRTROQjFCU0o3b0ord2h3dDNGdUtySXB5OUZNRHJM?=
 =?utf-8?B?WnBnazdqYnY5QW9uQ0ZXM2pVbU5tTmMxdm9uZHdsT0RKTzdCOE5iRk9KeERF?=
 =?utf-8?B?RW5ZcWNUWWtCYUZyeHdQQUF6Z1pBMTk3bXdYUGlPaVh2WXFucjlSSDNLdjhs?=
 =?utf-8?B?dG9zQnpVWVJhbU1BWGpIOVpua1VTY1duMkNpQlE1TTUrdW9pbTBoREtncU9k?=
 =?utf-8?B?MWpyOXdNbllvbG9Ma3d5U2hFMy95YXRXbExDanZDWC9tUG9xY0VpQzd3OGE2?=
 =?utf-8?B?REtoVi80S3BnSTFaYWNmSjVacDVQcm55aUlKUWE3TkN6TitmQktPdWxHYUNa?=
 =?utf-8?B?a0xmMXV4RHNOMldoZUpxOWpPQ3RsZUdsOWdqTHhHdzZjTndmKytaQmhzSGt5?=
 =?utf-8?B?RnZiUk92aGtxRElVdkNKU1pqZHBCMHA1cGpYMGVaaDRqVitHSnVoTnZIK1A3?=
 =?utf-8?B?cVdVbTlubWhLTGJqbDRZY2l6UXpoMHR3WDdDS2RkKzQwRFZsN2tQaCtQcEdZ?=
 =?utf-8?B?aXpMczcwU3haWXYzR3ZFaXFGK0FueWZrV2hDeS9ZY2hBQkgvK3NubUhXTUZj?=
 =?utf-8?B?alZuanBpSGRaZ2xHanJxNGsyZS8xMWQ2YmozbmZmWjFyZW9ZTitqWG1lVm02?=
 =?utf-8?B?bGphQ09uKzFDbHF4cWtITFFkWFpBWDQwcEVNRjVYOTJwSjJBZk44S3JOQ3VZ?=
 =?utf-8?B?Vm95WEJQNDdjUGUwV1NLN09TdkNFUXpsRC9Oek13WnBvdnJzM3g1bnB3OHVy?=
 =?utf-8?B?OHVrelJOMEpyYkJUWG9XbmgvOG0vMmJqelR2K0xhaGVKb2hxZmI0LzEzMUZp?=
 =?utf-8?B?cElXalhVcS9ob2pZN0hvVG5CbFU0YTJnTkdXanliaWhTeVJCNTZrYTVFbEc4?=
 =?utf-8?B?Z3hkRWxJQnB6eFhPME5FV1d6aEtSbGYyYml6QnJ1Q2pLeHhvWEljbTY5Szl4?=
 =?utf-8?B?TlZFRXFBVUY0bWw0VEpqdHhVa3orZklWeTFrdnB1bVcrUXBtMlkrUzBiZ0xj?=
 =?utf-8?B?UmRldy9oTnRWMWxIQUhZT2czNldBY2xiZE40NDVqTG9lT1FIaDY1Qk5TcHpG?=
 =?utf-8?B?bTU0ejNYVlM1cFkwc3hpam9pam16TWVXQkZqQ0taZENlYzVrQlhTWjVTV2V6?=
 =?utf-8?B?YTRRaDcvUGo0SXJ3SU9EakQrU3dzUjB2UlJQaFBaSzJVOStJRDlpdTJCcXBq?=
 =?utf-8?B?SklHb1IvUkpTN1Q2Qm5tbFMwV0tRUmJJM3ZNdlV3ZlBpdkJrZTFIandyam5G?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	8cEq2M3zr/qOvWh7mtrruoxjPMF+8v+mN/1TayqdXth3e79lGo3J2cvZ3EuB/0ByyDcV+0okA13Pkq17wp5PZjaTRkh8eRGzVHcJxtMKtCjJtD3lveGBlAjgvWAw3cpN3Ti2qFcjeI6lMpkdt0O/wTrPbwoo1Z5p8GRDaKvpv/f5dwp/9QnCrBi9oCGjEQbAw7O2rGjuaUS3R/4wlrIYnrhiZ/iDOsnj9NyAogAYJIbBP0P30sMYpU/xKbra3UFTqkZC+smo5xKE2HyaEeN7BxJBo4jQjWZN2d5O1AvUb5w4o01vgxQl47fdswa7y1CWOFgKqtvDorzH/3WnsWgjl8ZJBDaRwzThu8NNsqxbisCc3uDOY/T2HCQlG3A/av73gQe9eHzpTDfGWyK0kT5ckgCCyqeZfWGJJ7+e9PAeMnL88xfuU9r6qfP3KHUF9DJi4ZhZa0+b+6dIX9C+SLXxA0JacN+HgxM5yllk8IVogMn1v+2yRouVllQ/WkujngnMx1bA54UO0/4iguHo1ZtiyEScnnpDrU79UB379idG/YMzN3FOd7VsPWlBmtULNh3GoFmvmVuYSdTRCIl7J0LZX4fuMrpuaUSlo069E62JYjI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06f4c580-12cb-41e3-8e8b-08ddb5ae747d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 19:11:44.2234
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3FjaRO9lIZTHYjvLlh8hS7c9wcXHWXTG5/CC+TXxjMXbzcAuVr5ItLq7x8fIV2Am2CD1bFdGAGtl1ltB/6FNMwIyj2FqQBX7vuP/Nde1iw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6057
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506270155
X-Proofpoint-ORIG-GUID: dRtRSlJG7gCHYHBGwphhtUbirwupEpsu
X-Proofpoint-GUID: dRtRSlJG7gCHYHBGwphhtUbirwupEpsu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDE1NSBTYWx0ZWRfX4TemVVMC+Hpi eh7f7PeiXMcI8/reSlyy4B13/l3Wm7+nv+YFtO8+VixL8BB7jR1Tc5xKzV7pnffv6/M6YVR41ec dpzsqKoTJB6XJkamKFYPmaEqDsvNN3IR066vTInj9Xa4ZMFfOTiDzSXd263cKq4gezRos3K3R2P
 eGSdvX84qMoNEMd/aPuW49Usa/p1c5Eme+Osoczomhq7Ni2NimJutCUXoDDRjRNuF3Xp1zs1guC /tFAIojS8urQoNpKm7V6bn6ZQd/3f0u8im3rHtFV2xjcjbQas3y0bWtieddqTMePe48BfnDy08g 81YZRFnrqLISq5emlg13ivtdH5e1YRrh/oln5nWDj0DhKQGCh+lV2iBHz07DyRCdf/c0gMCpCQs
 J84yGL284Kk8D6RYkdn5q3fU1gJNlTeYOk4VtmWlsnuxv2EkPWRtDCTfsmrrX2lEkCsMLGHT
X-Authority-Analysis: v=2.4 cv=S5rZwJsP c=1 sm=1 tr=0 ts=685eecf4 b=1 cx=c_pps a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=nar8ntqeAAAA:8 a=yPCof4ZbAAAA:8 a=HU1OPnRnAAAA:8 a=-zN9l8N_TBMHNet7acIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=RptMqvEBejqe73AKBt4K:22
 a=vQ5cN67eHy2kcvnFvKcb:22 cc=ntf awl=host:14723
Subject: [oss-security] libssh 0.11.2 security and bugfix release

https://www.libssh.org/2025/06/24/libssh-0-11-2-security-and-bugfix-release/
announces:

>   This is a security release of libssh to address the following security issues:
> 
>     CVE-2025-4877 – Write beyond bounds in binary to base64 conversion functions
>     CVE-2025-4878 – Use of uninitialized variable in privatekey_from_file()
>     CVE-2025-5318 – Likely read beyond bounds in sftp server handle management
>     CVE-2025-5351 – Double free in functions exporting keys
>     CVE-2025-5372 – ssh_kdf() returns a success code on certain failures
>     CVE-2025-5449 – Likely read beyond bounds in sftp server message decoding
>     CVE-2025-5987 – Invalid return code for chacha20 poly1305 with OpenSSL backend

https://www.libssh.org/security/advisories/CVE-2025-4877.txt says:

> ===========================================================
> == Subject:     Write beyond bounds in binary to base64 conversion functions
> ==
> == CVE ID#:     CVE-2025-4877
> ==
> == Versions:    All libssh versions
> ==
> == Summary:     bin_to_base64() can run into an integer overflow on
> ==              32-bit platforms.
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> bin_to_base64() (src/base64.c) can experience an integer overflow and
> subsequent under allocation, leading to a write beyond bounds. The bug can
> occur only in 32-bit builds.
> 
> The only problematic use case is ssh_get_fingerprint_hash() in case the API is
> (mis)used and a libssh consumer passes in an unexpectedly large input buffer.
> 
> As a mitigation, the function bin_to_base64() is adjusted to not allow inputs
> larger than 256MB, which is aligned with other functions that process user
> input.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> Additionally, libssh 0.11.2 have been issued
> as security releases to correct the defect.  SSH administrators are
> advised to upgrade to these releases or apply the patch as soon
> as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:L/E:U/RL:O/RC:C (3.9)
> 
> ==========
> Workaround
> ==========
> Make sure the ssh_get_fingerprint_hash() is not used to encode arbitrary
> buffer larger than 1GB on 32-bit architecture.
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

https://www.libssh.org/security/advisories/CVE-2025-4878.txt declares:

> ===========================================================
> == Subject:     Use of uninitialized variable in privatekey_from_file()
> ==
> == CVE ID#:     CVE-2025-4878
> ==
> == Versions:    All libssh versions
> ==
> == Summary:     The privatekey_from_file() uses an
> ==              uninitialized variable which can result in
> ==              return of an invalid private key.
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> The privatekey_from_file() uses an uninitialized variable under certain
> conditions, such as if the file specified by the filename argument doesn't
> exist. This causes the code to return an invalid private key.
> 
> This defect, in turn, might cause signing failure. The bug might also cause a
> Use-After-Free or corrupt the heap.
> 
> Note that privatekey_from_file() is a deprecated function and shouldn't be used
> anymore!
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> Additionally, libssh 0.11.2 have been issued
> as security releases to correct the defect.  SSH administrators are
> advised to upgrade to these releases or apply the patch as soon
> as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:N/E:P/RL:O/RC:C (3.3)
> 
> ==========
> Workaround
> ==========
> None
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

https://www.libssh.org/security/advisories/CVE-2025-5318.txt discloses:

> ===========================================================
> == Subject:     Likely read beyond bounds in sftp server handle management
> ==
> == CVE ID#:     CVE-2025-5318
> ==
> == Versions:    All libssh versions
> ==
> == Summary:     sftp_handle() (sftpserver) can read beyond
> ==              bounds
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> An incorrect comparison check allows to read beyond bounds in the sftp_handle()
> in the sftp server implementation. Thus an invalid pointer is returned as the
> handle and we try to continue using that.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> Additionally, libssh 0.11.2 have been issued
> as security releases to correct the defect.  SSH administrators are
> advised to upgrade to these releases or apply the patch as soon
> as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N/E:P/RL:O/RC:C (4.9)
> 
> ==========
> Workaround
> ==========
> None
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

https://www.libssh.org/security/advisories/CVE-2025-5351.txt divulges:

> ===========================================================
> == Subject:     Double free in functions exporting keys
> ==
> == CVE ID#:     CVE-2025-5351
> ==
> == Versions:    libssh >= 0.10.0, built with OpenSSL >= 3.0
> ==
> == Summary:     Exporting keys can cause a double free corruption on certain errors
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> pki_key_to_blob() can cause a double free on certain errors when using OpenSSL
>>= 3.0.  The function is used by different other functions which allow to
> export public or private keys to blobs or base64.
> 
> The function is using the variable params without resetting it to NULL after
> free.  In case of low-memory conditions when the allocation of string fails,
> the libssh calls the OSSL_PARAM_free() with the same arguments, which will
> likely crash.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> Additionally, libssh 0.11.2 have been issued
> as security releases to correct the defect.  SSH administrators are
> advised to upgrade to these releases or apply the patch as soon
> as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:N/E:P/RL:O/RC:C (3.8)
> 
> ==========
> Workaround
> ==========
> None
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

https://www.libssh.org/security/advisories/CVE-2025-5372.txt states:

> ===========================================================
> == Subject:     ssh_kdf() returns a success code on certain failures
> ==
> == CVE ID#:     CVE-2025-5372
> ==
> == Versions:    All libssh versions built with OpenSSL < 3.0
> ==
> == Summary:     ssh_kdf() returns a success code on certain
> ==              failures.
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> ssh_kdf() returns a success code on certain failures for libssh built with OpenSSL < 3.0
> 
> This is caused by the alias of OpenSSL return value 0 (failure) with libssh
> SSH_OK (0).  Returning success code from the ssh_kdf() function without
> initializing the output buffers can lead to use of uninitialized cryptographic
> keys and failing to encrypt/decrypt following communication.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> 
> Additionally, libssh 0.11.2 have been issued as security releases to correct
> the defect.  SSH administrators are advised to upgrade to these releases or
> apply the patch as soon as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:L/E:P/RL:O/RC:C (4.5)
> 
> ==========
> Workaround
> ==========
> Build libssh with OpenSSL 3.0+.
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.


https://www.libssh.org/security/advisories/CVE-2025-5449.txt conveys:

> ===========================================================
> == Subject:     Likely read beyond bounds in sftp server message decoding
> ==
> == CVE ID#:     CVE-2025-5449
> ==
> == Versions:    libssh 0.11.0 and 0.11.1
> ==
> == Summary:     Incorrect packet length check in
> ==              sftp_decode_channel_data_to_packet() which
> ==              is used in the sftpserver implementation.
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> Malicious clients can send invalid SFTP packets with payload size field set to
> value 0x7ffffffc (2GB - 3B). This value incorrectly passes the validity check
> on 32b platforms in the function sftp_decode_channel_data_to_packet().
> 
> This is caused by integer overflow in the packet length check. But the wrong
> buffer bounds are not used for accessing beyond the buffer bounds as the
> following call to `ssh_buffer_add_data()` will already fail to allocate buffer
> of size > 256MB, leading to the self-DoS of the sftp server process.
> 
> This is exploitable for sftp servers running on on 32b platforms only.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> Additionally, libssh 0.11.2 have been issued
> as security releases to correct the defect.  SSH administrators are
> advised to upgrade to these releases or apply the patch as soon
> as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L/E:U/RL:O/RC:C (3.8)
> 
> ==========
> Workaround
> ==========
> None
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

https://www.libssh.org/security/advisories/CVE-2025-5987.txt reveals:

> ===========================================================
> == Subject:     Invalid return code for chacha20 poly1305 with OpenSSL backend
> ==
> == CVE ID#:     CVE-2025-5987
> ==
> == Versions:    libssh >= 0.10.0 built with OpenSSL
> ==
> == Summary:     In the OpenSSL based implementation of
> ==              chacha20_poly1305_set_key() an invalid
> ==              error is returned if the cipher
> ==              initialization fails.
> ==
> ===========================================================
> 
> ===========
> Description
> ===========
> 
> If there is an error in initializing ChaCha20 cipher with OpenSSL, an invalid
> error code is returned. This can happen if there is an heap exhaustion.  This
> error is not correctly detected and could allow libssh to use partially
> initialized cipher context.
> 
> This is caused by the mismatch of return value meaning from OpenSSL and libssh,
> where OpenSSL error (rv=0) aliases with SSH_OK (0) and is returned directly
> from the function chacha20_poly1305_set_key(). This will likely cause error
> somewhere down the road.
> 
> ==================
> Patch Availability
> ==================
> 
> Patches addressing the issues have been posted to:
> https://www.libssh.org/security/
> 
> Additionally, libssh 0.11.2 have been issued as security releases to correct
> the defect.  SSH administrators are advised to upgrade to these releases or
> apply the patch as soon as possible.
> 
> ==================
> CVSSv3 calculation
> ==================
> CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:L/E:P/RL:O/RC:C (4.5)
> 
> ==========
> Workaround
> ==========
> Disable chacha20-poly1305@openssh.com cipher in case libssh is compiled with the OpenSSL backend.
> 
> =======
> Credits
> =======
> 
> Originally reported by Ronald Crane (Hackerone: tdp3kel9g) via Zippenhop LLC
> Patches provided by Jakub Jelen from the libssh team.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

