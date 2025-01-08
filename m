Received: (qmail 21573 invoked by uid 550); 8 Jan 2025 23:31:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21540 invoked from network); 8 Jan 2025 23:31:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=AAlb5i43tBmbt3HY
	3uR1Shsgjuxyj/+pVSY1RxEd4lI=; b=Ftf0UCt5wNSeAGmBZ3Xc/iqV/HgB+pAb
	xPCVeHTPf7541fHk0YDSrSM8qXow4ceES3C2hxIL6ntfA0qcW30HCB8wVV7MCfaU
	Z7eUsMR3OlM9iVT9wm1deVP3WRTfGiyRtCz3rYi6Hptn19oCcl2448XUVly7R1zC
	yaIfT56FahOZYnLbI/kCH5xcu4/K6o4+hkgDGbjq9yFT2LVjMhPtJxxEY2aivFCF
	l7FbEuy9hwY443AylgAbrHXnnofa1gVLtc7XqcPbRHfdbvRZeUPfLkMEtXCH5pl9
	iNm2bZCoa4b0kfr0kBTUr+0PPSSgZBy48fDnC7YcaUsp5jKbFpnRug==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W7cROBN2lyUE8J47b4Ms91pbFrbN5eEFaIM4ro/vLDTB/vWHLbrTnG6Xvn8U52b1H4/OWiJi5/npcWjg3l4LzDUb5kngwj3Nw8fl+vRVl4Q8yewcDqRnCbNQxwI57OhPLPeGY5zs09mav04KVZKEgrMjVbRBwnLTR/tBZ3wugjWnLNJViRDATxmO7LMQgj9MS7cYmOGcTnOWrto+oJO3kyX0mR0009B9ZisGumW3fITw40wUyu9+r3z6kMw4/j1F0p2AgEPNYTlxJw1fN/pf0BvOG2klnmIJ0cfgpyfOSV8RP3BiS6rxuDnIHxEBctscSOoDtn/amG1igjTjXwD/vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAlb5i43tBmbt3HY3uR1Shsgjuxyj/+pVSY1RxEd4lI=;
 b=TAgADbTBWq/C6AsMztOINiHTRKfR6ezU6mn+P9yborrMvGzMYLywZNXg5oU8fvr+AMkkEOoy0hWtkg5PhkAQDlz/LYUYg41W+wOs9x8Ye2JLWoM+ONO73my71EXqwo4TApa1HhZ/YwoHWdKnJWvpoSMCNuW1bYroewgwZgFDGGSWKrgpV3SRnTpc9kqaD46YJ4maH5ZpOHciCI5biW/uTztpEORkRCrXAej5Eu4459CmjYWF/Rq+VIJtV5SjQWmNkrZHWxcWX2xd9Kabc8dgcTD7lhWHZQtVUN5jIpl8Kh8sUD1ncfwnmNsNGMW9v5AZKm2datuz6ljQ6J516Q+F3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AAlb5i43tBmbt3HY3uR1Shsgjuxyj/+pVSY1RxEd4lI=;
 b=iprUuLfWngBSFQ4tEsLMBePFd1mC2t+HEUAJdZvEYl6fyRVa1cUh/5GBy/rJop39gqcAXbcZyRh2fcfIXhW/iSOTPstG1PHkDdxAz9fwiEHCe1vqnM9Kid8bPPXdIfaovlm5xrgeRg4E8J5zhAzj/HltbEgiHJQhryoppBuRycQ=
Message-ID: <663a0880-a3d2-4a7d-b85d-3d0cc31cc021@oracle.com>
Date: Wed, 8 Jan 2025 15:31:03 -0800
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
X-ClientProxiedBy: SJ0PR03CA0104.namprd03.prod.outlook.com
 (2603:10b6:a03:333::19) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6156:EE_
X-MS-Office365-Filtering-Correlation-Id: 34d58d24-2b8f-4c0b-9632-08dd303c855b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SGpTNktzbFloNjFXd2NheFgzQmJtRkVhWUw5Y2VudmJ6SHhpazRyRWZ0SXJn?=
 =?utf-8?B?eXAzT3RDenpsUjZNNDZrRE5TUURaaFFnMG51Sjk3MGUvWmlWckprbFZQVGJm?=
 =?utf-8?B?NVdKMUV2M0N0eXVzNDBzZUx6dUxWL0E0cmROWjlGbnJwMktiMG9melZHRDdW?=
 =?utf-8?B?N05zRzNhWnQyZ2VCTUxBdkRvbGRqQmhvNzFNQUZSWWpxTEQ4d1pIY2VzWk1o?=
 =?utf-8?B?ZkhrU0NVQW01MXQxU05XVUJLQnNIYlNyZGtodnZyWVNXeFllWXBEWm5NV09G?=
 =?utf-8?B?RTdZV0VxekVTdjVRRXU1QTJJSDNmaHhXdWZpTWNYaHp0dUNEOWhkYWxXWk1X?=
 =?utf-8?B?eS9LV0NkRkpMalJ3VnpUSTVHVDVFR25ERUVPdFdpRnhXQWdiWWxOTDdjck5D?=
 =?utf-8?B?UHVzaWprb05xZ2VWdmFycmpURDZTVDNOaUZnR056N1JDVTlMRUVTYnc4dEx3?=
 =?utf-8?B?ZXZHeXlvWkQyYWpMUVF5TXk1TzNuUjVyTDQ1cHZPMHdNeWRZQzVtMUxBL3VR?=
 =?utf-8?B?a05CQXR2MHowQlRkUnZxSEs4S3lJUHVTbmFSV3h6bzRDZ0xIbitWQUNBTDlo?=
 =?utf-8?B?anRhRjBEZlF2aC9Edjh3Nm1hcEoyNlA5aE1pTEo4ZjZUL3ludUV2bHVsNDRC?=
 =?utf-8?B?WnpUWjV5c3ZxQjJLWE1xd216UVkwNFpZdVVsUVBEdmZLZ0FhUjd1VFllL20v?=
 =?utf-8?B?YjY4SXZHNjlEOVNaSVBJdXMyZ0d0dlNXRUlKRnE2S3pWVEJkWVoydGl0dENz?=
 =?utf-8?B?RlRNdEJjUHdldWJuRXlwWWlxaDBvcWs4T1hNcmVKQ0FiekpUcDE1am1zZTJJ?=
 =?utf-8?B?SFFwLzYwVVdWTExHRGM2Q1RaS3pLS2tuWWlZMUFvL1NISlZ5N2JidVoxTVNF?=
 =?utf-8?B?T3JsUFNwYnQ5Zy9UeWxRWTVVdXNkbXltVlA5Y01ZU2FCWHNidUFXckxmRHFZ?=
 =?utf-8?B?SVhMdm93WUpZeHlLd3phanFMUVB6TzkrcXpXNmFZSWQxdGtqNTg0RGRSUDlm?=
 =?utf-8?B?ZlVyd3lQeWQzQXMrNDREM3ZHSmlUL2xXUHF0UHBOYzdvczAxMEJWSXdRV3c2?=
 =?utf-8?B?NFhJOVY1eU9ZY3lUd3VjM0VneUxPME5pczludjBwM21nRGJnZThJU1RoVlFp?=
 =?utf-8?B?N3BzbFpVMmJhWmIzcHE0c2M3OStTcVdFQ3FKTDNnRzNJL3VFcWJnK0RJTEpm?=
 =?utf-8?B?UXVKYkVYeHlCeEJDVE5YeDQreXZoS1huNnhCZWlBaFJOZFBiOEpPc2txRTFy?=
 =?utf-8?B?QVZPNWo4M2FLWGRrY21WSEpveWV6MzY4MXdVbWwxamhiMUJYWXBja0R0YnNM?=
 =?utf-8?B?WE5Ra0hIbVd3TmNQcTk4TU1NZzhTZDJFVSs2c0ZUTHBVRnZNMzlqdW9WZUVy?=
 =?utf-8?B?Y2FxVy9GbG5VeS9oS2NJcnZCRVBhNnk3YWFnSzdHM0p1VjE3ZkMyOEdlRDQr?=
 =?utf-8?B?dHFaS2U1TTN0R3BpQ2t0Ly9QMmpwUlpOOCt1dzNQbElyNVBvMDIxM0lUbENa?=
 =?utf-8?B?eXhCS2RLaXM3bzJSZm41NHRxc01HTVl1dERhaXMva0V2WlJZOHErWnpXZ0Jp?=
 =?utf-8?B?aWJLZmpoRnVQSmVVcDJlSkdlWWNoUnU3RENoS0ZibTFpUlBVRjVSL21XMzQv?=
 =?utf-8?B?TTZCV05Kd1RETGZUQlQzUHFtaUY5MVFXR0R4OGE3d1RieWtSUVc2RnBQTTNW?=
 =?utf-8?B?ampwMUNiV3NrOU5oNGNLakpiMGFidU4vR090MjY5aWlsc3ZYQXZaQ3lnb0g3?=
 =?utf-8?B?UnRmYjhPdkJWeS9DUnRNdTlnc0lnVzBtV1dBQUkrcUxLbkMzYUIxQXF3S3V6?=
 =?utf-8?B?YXFldyt6U3o1WHFQV0N4Zz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NllwRUZ5aEdJV0JXbENYVDJiaTlBNXlUNEY1b05KUmdZaXh2a0YwNlJwdS9v?=
 =?utf-8?B?NDROTTk5cUtxczJ0Uk5WTGwxR05aN3J3U3QrTVpoSlc1a3k5L01lWEdzMTJE?=
 =?utf-8?B?eHA2cEhRZmRjeXNTc2NQRkJDU3dObXJNK21zTTFNSE1ScE9Uc09nWVpJVjRz?=
 =?utf-8?B?OXd3a0NEcEpzdzh3UHF1SjdtTkZVUEpxSVZ0MHNVdUtmdldJcm83eXQ1WUx6?=
 =?utf-8?B?bnREU29jSVBWMkNTT1g0K0NBNWgybndSblBhUjU4Z3hKTmFVMXRKRDRaVEtm?=
 =?utf-8?B?TktERXBrYmhQOWM3TFRoWXJtaDYwNGVZQkNFQVd6bUVBRDlZSW44UWZxWGQ1?=
 =?utf-8?B?MlFGVjFiUGpWL3pvTkhLYTl1ckFVZUs0cER3WEFlODZxUGJHQUovS01oNjNs?=
 =?utf-8?B?NkdjTDVhd0hiaW1UMHV2OG9kUFIrbm93YkIwV2ZtQjdrTXBSTVdTVUEzZmRC?=
 =?utf-8?B?T3B1Z1NETHBZaVBKTlorK05vdEVYVDkzemI1c3phNC8vbHNpbmtNcFdaakNo?=
 =?utf-8?B?UVBZR05SMGRRU1ZkTFcvczNaN3RRNkVCVjd2VkhHRmwxdzM0Ymg2blJLWEJC?=
 =?utf-8?B?T3J1VVd3dlg3QlVNZW40WVc1V3dRN3YxVTg5YVVpa3FjbjVLODBKWVk1TDdl?=
 =?utf-8?B?KytaNnBZRy9XcnhTeit2MVZHTVF3dGhWaER4SWozVnRwMFB4NHl5VXlvSzBW?=
 =?utf-8?B?by9mN1lwUEo1YmZ2Z0drNGprMTgvZmVsT1hHdFBZMUVZeXMrVzJkL1FSdFVQ?=
 =?utf-8?B?TXppd3FjZkZlR24yTE9NNG10amhSZ2RvR3ZSNC9oaW1vQkNQVWFoVTJmT0ZP?=
 =?utf-8?B?UVg5MVlPcTQ1eS8rb2RyQ1NZMGxHRGtmTEVMSjJlbDZ4dGtnUFBjWjJ0RU14?=
 =?utf-8?B?RUFYVE5VaUhla0lNOHhENUxINnlMaHVheTlCbWEyUkZzYnVLVitxMzZvN3JL?=
 =?utf-8?B?TWJRcnAzdDZ2MHZXVy96UUg4V0ZKbnc2UkdnSlV0Y3U3SUk4am5uNXYzMnkr?=
 =?utf-8?B?UEJOZDRpMTJOekN0bm53VWFnbllJWllqOG1nczhHSWdEUm9HdGExRFhFVWdF?=
 =?utf-8?B?MXRnSkpmUk5QeThvUysrTGpVUnRZWnNEaUhqNUFlRlV4TEovYmJFUktoKzg0?=
 =?utf-8?B?cU9WMlJGQktLMnFPVDZtVzZ6WDF5VnBNeXY0VXlxRWF0OTI0K1Zsd0NJajQ3?=
 =?utf-8?B?bmNJUi9RQ21aaCsrbDNyQ1JsT3pWdklkVDRjYTg0bmRRME9ENkZtU3NQSTZx?=
 =?utf-8?B?RlppRXM0WENXMUFISVo4M0RTWHVxSEl6dUNxVXhTZXBWVFp3dlIvNzF2TlNo?=
 =?utf-8?B?SlMxTDN0ZHBnYTdSNkRPZ1ZmNDVjQXQ5bDhpSldvZytBNDZtaE1aSDRUaVdJ?=
 =?utf-8?B?MEt5L3hQS1Y2RU5iWFNra3JGZDlJVVgxY1J2VHBuQWZSWXlUUnZlSVVkSytM?=
 =?utf-8?B?Y0lQQVRsL09CR3BFcnFud0JGSi90K25SWDlMTUkyUlNGUGRGMDBRVTU3YmVB?=
 =?utf-8?B?UHZjTUJZRTRBbmxlSllPaG9ud3lCU1NVWXJHNk5oNnlyTEx6Z2dZZ3hQclNQ?=
 =?utf-8?B?VUc3SUpEcGI1UnBYQ0VuZDdodU84N1gxTjFUUHpWRnoxU0h2Wm1DOHBjNXR1?=
 =?utf-8?B?cDBPV3ZtbERrNlFlQWZQc01RWXJkT0l1bXoxWkZiejVZRUd2akRNNGxhWEps?=
 =?utf-8?B?aEdtZy93akpJSmpIejY0QlhyT0VpU0NzdHQxaDVwNU9XSW1ZYlNOVjlwVTd0?=
 =?utf-8?B?Ukp3cFErWVdaRWtwS3FrR3crNkVrdzY3MDNXbDRyWHB2SDRjQ0FITGRJQzBM?=
 =?utf-8?B?Vm02ekZ1N2tJWVV1YTdsZEVuNzFwcGVaZ0dHZG5ySGZnY05KVXMrWkRQOUhP?=
 =?utf-8?B?clcxWmtONTl1T0I2UTQ5eUREZFQ0NS9HZ2RYVE9VcFkxa09mRXRGZUZXMjZO?=
 =?utf-8?B?S0ZHSnFEN1RuTlhyaGNWU282WlJWeC9RMWR2TEx3azV2LzdYQnE2MXpXQkNn?=
 =?utf-8?B?S1ZVUDZiWUdkSWhDd21xMXJjNGRjZGZuZDZkWVRPT2t0MXpxVU9SZTBlNElW?=
 =?utf-8?B?UTJQZitYSUdLRDN4ODVlQVBBbTQvL0FHTnhTTnhIZlo3OWhGTkJqK2lVdUtj?=
 =?utf-8?B?akRLMkx3R3libndaU3RRY3hla0NnZi91MG1xUElpLzYwdFllUlpmMXMzdHhE?=
 =?utf-8?B?Vmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	cdODnU/+fRL8aemSWbHScWYF7FTTnmb/sBqtxF2Y5s/hqyDVzLYpFLINYaA3R53vqyD8OjvY4innryUdE+d64PKJO488wgw+BEd5FaQObCPVEwi3PzI2pEaIFwcUyKl7r6yoERSmuK3/miZbM6oyFWOeAq62ZTzT+1Tiz3FmY53D0WGfkrWO9x4kE1jcjGUhU4tnxFTVfy/+5FBPpu9idZHMj/Jg1YjKnbf/8IulfQVViLlZht6qqSzojf3CTEyQIxHUxdBHfIIrjgMyArMaCKhLhZ4E0RBKuOJ3iJFmV1ov5CFZUnudbz8JxYXv6OmBQoMx91zIyg4Kyzr5e6Hc8bWGYfuqK7QPMfaSKczEojcsgvUBQTuBTtiPn7b35g8LY0fHik7yOhmC7LfgYC6HgDclY7zmsf4XYl874rDc6s33HUzfqXnR/O8QVY4CWltAWs1275FiXIZHDzugTTNxVrmKXgc5dEiTjv6+mxhI7z/yNTFsMyRvw1dtihFpBqRxTlkra+hNX3yIGquq/1Z09rR6sq0opfJuiwX0YizqJGGlFvbVELzmBH1N5coek7jnZhybInAJPYyls93s6jYFucyiU4muGHDA06NyJKcIlT4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d58d24-2b8f-4c0b-9632-08dd303c855b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 23:31:05.1408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GHooHsn/LNtT0aKtskfzVT6fMUGHH/dD/TfeBo0DRCVGjviMFrJaZvl5hCJcIv41dv61O0dlLah+wVr+FhsNg4Kg0uGMR72R0rTi/wlc/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6156
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-08_07,2025-01-08_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501080192
X-Proofpoint-GUID: abgTZnjEZey7MyAfMOOCrqD8wJvZqF_x
X-Proofpoint-ORIG-GUID: abgTZnjEZey7MyAfMOOCrqD8wJvZqF_x
Subject: [oss-security] "/bin/sh: The Biggest Unix Security Loophole" paper from 1984

The Unix Historical Society has recently received and shared a copy
of a Bell Labs technical report from 1984 by James Allen titled
"/bin/sh: The Biggest Unix† Security Loophole" - the scanned doc is at:
https://www.tuhs.org/Archive/Documentation/TechReports/Bell_Labs/ReedsShellHoles.pdf

While this report reveals no real surprises 40 years later, it's conclusion
is advice that wouldn't sound out of place today:

    Setuid programs (with the sole exception of the su command) should not
    execute shells.  Further, they should not execute any program whose
    name does not begin with a slash.  In all cases they should check their
    arguments *very* carefully.  They should not call any of these dangerous
    subroutines:

       execlp
       execvp
       popen
       system

    The last two of these (as we saw above) can involve execution of extra
    shells not intended by the programmer.  Each call to any of the above,
    or to any other form of exec should be preceded by a setuid(getuid())
    if at all possible.

    The typical UNIX system has too many setuid programs.

This should serve as additional reference for how long we've known about
and had to fix shell injections and similar bugs.  Fortunately when
discussing other classes of bugs, it's prediction that "it is very unlikely
that UNIX will ever be immune to this kind of loophole" has not stood the
test of time as well.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

† UNIX was a trademark of AT&T Bell Laboratories when that report was written.
