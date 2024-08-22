Received: (qmail 24421 invoked by uid 550); 22 Aug 2024 18:57:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24398 invoked from network); 22 Aug 2024 18:57:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:references:from:to:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=9RB4TFjZYtMY2QlnRoD+QGtyg4WSYwEIvYGJTnOkJb8=; b=
	R+J86+BwQkBM+uRULuNY83a6w76TtslwrYXZPzIzlVWlpbcWuWXfOkX0s03Abwnu
	+7xVwZ0rcezpdttrTzvGVWSRapXymsNxntOMqVDQDR0FNlxfQ6caV5ILNvyGUW2g
	QFLmSUBGv9grVrWO57+Q4vLQan6KdFAPyL4A5jLWeiddYSlqwBtRg4ev9MY4GxjR
	Kv81eEejxeBAomsj2TeezV58rYHe6RfW4d6AtUztdFflUhr7pnOFC1/b76ZOfc+Z
	SxTzdfwBMFMprDHRxC3RuZ3KFDHmzjmOkPtnk4wrJ57Ar+3lstzTAIoCdGsIIXuc
	zIIzHzF1SBP5zbzMyLmBWg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RFby2yP2U37kHV1FpXeQzw/xQ3jeBQNlTI5+KlnyrAM0KjmgkyOIj39U7SlQfe2E0/weDZdQSnUSco/gx9Cxp20s5zQal0Ocoy/oMWBztDCoDwnRKlLrD11lnbAUUdzVFr/tybX2tV2Te6amwnoyjrXwW43/m5kYz5IRfPJjzBBNnmX0RDsmHJAHNh38+4aYZ6gLZ2IwyBIqrEG/UY04wUs4KEIySiTJdidlEM6Ic8mfeJha4NtyRhqpt2etyjxn+XNmJVxsi1nZ9skZFy67/EdK4Qv1ZG5XA7MCqy1HA1HomViInjLUbjdoyamWrWfD0PcP84+pLJ+adzfNk521SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9RB4TFjZYtMY2QlnRoD+QGtyg4WSYwEIvYGJTnOkJb8=;
 b=fvsEcwBc0eCfum7Wy3aG1GluGFSVDA3SuGTZjBaYcqad0eosYIk0h/o4rJDI7C3n2fUgirpqmz0I1lDjc9WDt01VdeGnKbi2zTlYWi/iifMrClkX7VHWTZRDTX/k/TUHEB3OPJUVlIRwuAvLQziUxHNsLL8t0RmY705Z0FNJK6r5FwgbwrTUMYXJVSoGMpOhNasBVajFB8X/b0ixQx8FWvVe7sB5NQ92VDRTVje8NfG3R6ayqYIQq8Q4XOZD3iHTCIoIaS/+dqSXl+myM+ILbv9cDpYMp/tkbgPaXYANqlPAZcYYkicP3sg3C/K6aPVWle9tsPq3rJrB4EBFQPb1Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9RB4TFjZYtMY2QlnRoD+QGtyg4WSYwEIvYGJTnOkJb8=;
 b=Kj9sB5ZmRJT84n4KcP2dyfaBnn05b+Zdf0zU6uRD5lBzz5UtC7icQ+WdshfpxXyUokkowEv8zwU0rOxet5mqKCFCRVYQ8pOkzyjqSmYNdEuJuA2dlxXZrBY/MgqcSXpcvA4LAo0zht7VIAb7HE+0U0nj3f6JFpZA+isOpu7otao=
Message-ID: <aafef56c-c8eb-4c11-9c87-cdee03f97616@oracle.com>
Date: Thu, 22 Aug 2024 11:56:35 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQNv110yAGhdYGYi7FyzpO2MB9v=sQWsV_cd+=XmB-FUA@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <CAADqWPQNv110yAGhdYGYi7FyzpO2MB9v=sQWsV_cd+=XmB-FUA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQNv110yAGhdYGYi7FyzpO2MB9v=sQWsV_cd+=XmB-FUA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::32) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5730:EE_
X-MS-Office365-Filtering-Correlation-Id: 68d5226d-fd8a-41d9-50fb-08dcc2dc2623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YmxrUWxxcmNaZ3c4U3hUVlhUYjdDVzlzYVEzUU85NGwvRGRCRzBLZFhqY2VM?=
 =?utf-8?B?bWlQMGFvYkZGamZjT1BNMitGN2NHcldkb3RwQjNqOGV2UFNYMVRJQUdrTXVE?=
 =?utf-8?B?dGlPRUluUHZQQ1pwZXQwZ2dVcDN0amhwVWVyTXdJM0VRM3RGNHZ4WHdUOE9i?=
 =?utf-8?B?TlZVTGtxK2wrMi92S1V1d2cxZmpCQzVoSW9ZTTYrQ1FEM284RHh3L0lpKzg5?=
 =?utf-8?B?TERjUGlTZHRFRGpnZ3U4L3dhdlFkRzc1MFVNQnkrVkkwcTEvQW1KalBnakhj?=
 =?utf-8?B?S1dhNncxdDZzamtKay94dk94d0VDZE5xR3ZGcUlBRG80RU9xNnp4RGJPRTBE?=
 =?utf-8?B?Nnk2cFgwN2pVZVFYMjhyQ1FkS2RDZExQcHlhQm9ZQUNOYzNjWll4TldTa3lq?=
 =?utf-8?B?eWs2RWcyTnMrWkIzK21VTE9EcUdzS0w4ZC8ycXhzWFJDZU5HYkdzMHpiZTJI?=
 =?utf-8?B?ejhBVmswY1h2WEROWXFVUzNzQWt1Y1JRbmJGMUdZdkJ3VzhqVW1BZ0JrQXF2?=
 =?utf-8?B?VHN6VWg5L3ZGMWM2Ulk0SzJNNWlxUkVxK2JTMG1Hd1lIYmhMZTdIazR0NGd5?=
 =?utf-8?B?clZyYXAvVHpHRi9odnQya0FiUXZTY2hud3FvUVo4dWttZ0Z0YyttdEt4T01q?=
 =?utf-8?B?cFpvR2xDb1ZQL1ptVkR2SU5NZkZnRFBudUNYbEljY2t4TU0wSTlyZ201OTAw?=
 =?utf-8?B?NG1jUnNyY3I1K3BudkR3a2Vud0tmalRsZXlGakZyekxlaUJDWncwejU4OUtQ?=
 =?utf-8?B?QVMvTFprdGdLQmJGamxmS2dhODRyUUJQb2R3R2JydXl3RlpZUEFMMGVGOUdC?=
 =?utf-8?B?c2cwOTI2cGlVanplYmRpcjBLUTdDa0s4SVY5K3E3Nm5ZVkM2SnZVY1BLQzI0?=
 =?utf-8?B?MU9idlllbkhKeE81a1RQZEJSRWJ5TkdMckRCSzRxNlpISmJxM1BLbnlGK2VF?=
 =?utf-8?B?b3NGN21ZbFE5TWdiNk1HWEIya3J2M2MyQTdqc0llMzlkc0NWQ09GRUhnK0ls?=
 =?utf-8?B?OXlMNE8vWVc2dGpaU2FzMTVSOWRhUnFEWDFZTWNaVmdmMXZyemV5cm84YmdG?=
 =?utf-8?B?NGlrUE00aWUvYXNQQ2dqdjVnQUc0OCtTVk05VUx6M2FGaXlNNGUrSERkWlJT?=
 =?utf-8?B?M3EzNTUrNm5zWGtteTdON2UvZlJhei84RXJQZk9VTFUxZ3pkV2pMNjcxWWtU?=
 =?utf-8?B?VDFLQm1SRW5CbHF2K0k5akVITmwxeVV4RElqT0ZFUlA4Mk52SFk3eVVBNnFX?=
 =?utf-8?B?Wko1bFl2ZFQrMVhJenMrUUEwQXBaemRHZjEzRE9WRWZZQ09OLzB3aVZTOXVU?=
 =?utf-8?B?QW12TTVHV3Mvam1OWDg5WEdYYnphWThZV2pUcEpqdEVtb29GR0ptK3lCN1Vp?=
 =?utf-8?B?UnlNaXlVdTNsSCtkV0gwR1IvZjlUQ2d6czZlQmVtMFVlK1RHaTl2QmMwRThq?=
 =?utf-8?B?RUZSVmFQSHRNb0w2ZW4xc2ZxdEVUN2I0RWFaYSt2L3ZiajgyZ2xHYjFiVENh?=
 =?utf-8?B?YU15K0JWcFFOV0lPTGg4d1dZZ1R4U0ZuVGFmWE45cCtNU2s0VktndisrVmd4?=
 =?utf-8?B?c0JnYlBTWk03NEM1bkxYQ2pVdDF3SDczMUZyZkIzcGxHLy9jVTR2d0FsWVZk?=
 =?utf-8?B?b0lOQUowSldMZlllTTJ0bFNrSWdlVTRZaTJqMWNINUNPT1Bjc3VtMnRXTk4y?=
 =?utf-8?B?VEtHLzNrdTZrdURGZnNXTVBzUktxejluVEpteHlmSjZwT0JtUi9CZHlUTDAv?=
 =?utf-8?Q?F6MKe2xzDjegd+aeMkHUOlHNM24ErjewZmGAV99?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?d2FyQVVscHFQNElHcGF6c0dkempvbHdHaVdXZ0lJZS8ycGlxc0lreXhFcUps?=
 =?utf-8?B?OWZJZnBTeVVXM1hMRFE5QTI5K1QzVHpNbU1FYUVRMXlaSTViSHRqdkJhV0tS?=
 =?utf-8?B?VHBaaEFTWGNCeEtMbkU3Z090QmFZcElwR2YrUkRTT2kwb2VSQUdzQ2tMUjdL?=
 =?utf-8?B?V3d3WFFxbnhPbEV5eGJ5dlZVNXBDamJjNlpMZDhuRDdncXQwVGREUTdMN09Y?=
 =?utf-8?B?Y0V4WStBd0ZaNGlmN0p1WHJLNGZjM2M5bk10ZU5GbW55SXZIaGVITk9VTlZQ?=
 =?utf-8?B?Nmkwaml0ck9nSkk0MXd1eStWaWhnVzl6dTkwSmlLcWowRWdrSENLYzh5OVo2?=
 =?utf-8?B?TXhqcVhaaXFVb09weGJibVlwU2VNeTJNT29XNnlXL1ZacHgxMGVBWmUxUUFC?=
 =?utf-8?B?RXJNWTRJbURoQk9pR093NkVBZXRqandTc01OMnN6QVI2TDRCUFRXVjdhYlJN?=
 =?utf-8?B?Z002aHg4ZGVNMDAyUm5KTm12MGZZYWVlcmcwT1lJajVhR2Y1RGdDbEhiaHB0?=
 =?utf-8?B?Q0krdG9adUVLSDE2V2hMMExXMG1leXJHdkdZWVUxK1lKSDJ3L2Q2UGxSV3VN?=
 =?utf-8?B?REFQeDRpTjNiMTMwRk9zZG5zK3VxUHhDYTdVaHNJVjJlQ2RYTCsweGxPT0Ir?=
 =?utf-8?B?K2VtV21NTlRlajM0RWhSc0ZLRncwVk1ndUwrT0RzaFNscC80Zi8wRFJLUG5G?=
 =?utf-8?B?VUFwL2RHYVk5N1RoTFZvbTZvMnpIQmNHVThHNFFST2JQVGxDVkVmNytxMm0v?=
 =?utf-8?B?K0NJSG9oYjRibU1HMDliK1kwZHBrcFRML2ZPY1JyNnFMbnJNdXRab2VMZThD?=
 =?utf-8?B?cXhNZmowUU5LeWJiL2JjSDZNb1lRSzZSOWZzMWJyNWpQMys0SHpMQUNuYkRG?=
 =?utf-8?B?TVBicmlwakdjY1lSTU9COGRBVlBSaWd6dkhuUjNQbVo2cTc1MVZ0elVOajhJ?=
 =?utf-8?B?N2hhdFBrdEVmcFBLK2xVb3NGZXRHYWpLSGtTZDAvQlNuQ3FWaHZhaXE1ODBl?=
 =?utf-8?B?UW96T1p2ZnJONS9uTzl4elhkWDhwQ2pqdGlscEdxbC9DdEFNN0xabTVGYlFU?=
 =?utf-8?B?MXAwUjNwN3Jtckd4U1lTOWZpL1VDdm5lci9LZzdrMlYwTElPaitzd3lwTWRp?=
 =?utf-8?B?TXQ2UmFQa3dMVWxXaUVpdXhGZkhiay8wQndrbXo5bW82U3E3RDFVd2FNTy9s?=
 =?utf-8?B?MFoyVnlaWXlXU3BYdm5kRlRvVDIwakJFMmFxOHZTOVMyTSsyS1VSN2svU2ZC?=
 =?utf-8?B?UWhCSGVBenpVdFNGNXh4Wm9ncVJvRVVlMG1yZURBbEJRTjJZZUZjdU5BVlVX?=
 =?utf-8?B?cnY5NjdzckFEanhEWWJPTENNVEpCaU4xRmpFTnp2dTdrT0o1YWlyTUpFTTRI?=
 =?utf-8?B?RkgzdklRNTJ6Mkp2dGIyUGFFOGVwWEJmSll1TkVZdE5TanE1Q01nbjFoWEVk?=
 =?utf-8?B?R1gwU3luZ21uQmppY2JjOWpLQlBNWVZQbGZLWlI3Wk9tTVJYekh5UGZQd21M?=
 =?utf-8?B?S29nZEM5YkZsN2l4VE4wNlMxUXpuVHdINldPRTFzdzdoZTBvSUFJb2VGRXdv?=
 =?utf-8?B?M01ycHEwa2drQlMzSHBNYjBKZVJXY2NNUEVMM3p0djBxZm9NdTZnWjZaN1lD?=
 =?utf-8?B?SU9xeHhkeFhjZlRvdW9OVEdqSlZoVlNzV09wS1g2ZU94ajljSGtLVEFnWWs3?=
 =?utf-8?B?RTRYc04wUUsxeVN6cG1UTzBiYTNuT3BDc2t0citFclFNSW43cHhySytBM3V0?=
 =?utf-8?B?a2tBSnBsNVY3NE5FZTFaSm1oNTdKQTB1SmFYK0tlSm5DVjN1bGFCbnB2d3Nh?=
 =?utf-8?B?c1hiMkdLNFlDRFNVZlo1d3pzZlVTSFR5NDlZVlYraGx5Wk9QSXdWcE1zOTFw?=
 =?utf-8?B?TjhTRWxtTGp3TnVuSEpVSXdNT21FWXhGbmpwR2dLVzFIUmVlMExiUzhNVG9a?=
 =?utf-8?B?T3Z3NDJ3cWF1OTczTGdlWG5PSTd4TFlGM2ZDRHZoVktwbGlKbTBzLzBlSFhT?=
 =?utf-8?B?U2lJR0d2VVMxa1Q5QUV4YzBjcUMxUG9MSFN1NmF5YktiN0NlSi9ZOXpmVkV4?=
 =?utf-8?B?bCt3b000WExMYmlRYXNnVkgvV3R1VTMwT1UyZlIvc2JNWC9UODB0R1c3V1ZD?=
 =?utf-8?B?dVUxZ2c3NnBQK1RCcXUwUjhWNnprSDA3TGZQWDJ5VTIwbWhjanhUZGJrcUxO?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	PlvkEo4QYPtddRhHe9Prpgg7fh+nRJ9K3CmMELFMUurI8HG7flo7EiZVeWi9CzLSFwX+Hde63ZOoACKPBaeD/2rnh4nvhhqnPSDjGv/KFLCy54yW24wLxYChSUhxSlb1mL/6IgyLjQpNyVC1Bs6rEeM32F5gOxUBSFMjR5e8cE/URtdgMjSwLQcmI04oL/6y1c7NI5qtBDN3AMz2bi0fvES++BqONIprLguDCrxUNGKFeQzyqAUgQURnANKzxbKeonm9dTIfsfE77lyCl0KTSXXb/fkVj/rVT+Qy0UOticEeAMHTvEQ6GwYKkdJBLBjPisau1IkvMExpVXpCVfdCM9CBlBLvsJUhz4eF47izqt1aCpXlGbzNsqk73Qe/xI0lz/uGM6E2ciR4xj7hlrCd8h8hpz0Aq0U/QzII9/wJZeIMMZgRzMDZqkuLvvXXSSSiRctqVGhOnjH+0yLSZgAPNbFLx5UgW+D7Cf8THa+KHeoanmUEP9c5a3P/9JZCN2dGT24fUQjdcDDg1snMAH+kurQfbQLE+7sFIP9QZGbVHSqQ5PGYl7AzSnLXPiTB6Fk56vXSfzxozSQMJVbx1jOLiEDGJF0w7IZ1ju7C1fXJXQw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d5226d-fd8a-41d9-50fb-08dcc2dc2623
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 18:56:37.0336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/Gzu16NwZErMUUXIuLz3G/5A7BlMIvhJtsoI+lVf/Evq6qvzHvKlyx8vJNXdjmgDwSPHIU72gA0AGiRw6ieVZHMFZjbFq3PvuMsV0nmcM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5730
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-22_12,2024-08-22_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 spamscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2408220142
X-Proofpoint-ORIG-GUID: ACoyz-kBDlN_fe1WJWCjvfDSvTQao6i-
X-Proofpoint-GUID: ACoyz-kBDlN_fe1WJWCjvfDSvTQao6i-
Subject: [oss-security] CPython: CVE-2024-8088: Infinite loop when iterating over zip archive
 entry names




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-8088] Infinite loop when iterating over 
zip archive entry names
Date: 	Thu, 22 Aug 2024 13:40:20 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a HIGH severity vulnerability affecting the CPython "zipfile" module.

When iterating over names of entries in a zip archive (for example, methods of 
"zipfile.ZipFile" like "namelist()", "iterdir()", "extractall()", etc) the 
process can be put into an infinite loop with a maliciously crafted zip archive. 
This defect applies when reading only metadata or extracting the contents of the 
zip archive. Programs that are not handling user-controlled zip archives are not 
affected.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2024-8088
* https://github.com/python/cpython/pull/122906
* https://github.com/python/cpython/issues/122905

