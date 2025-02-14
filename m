Received: (qmail 7451 invoked by uid 550); 14 Feb 2025 16:47:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7422 invoked from network); 14 Feb 2025 16:47:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=mNgv5enTqzMtHBByx1c2WZRy2q2bS8+VGU0YiKkxpSs=; b=
	XtpTpQZWE5GHDtN0rMQpf46To0weO9AEuYz+vsCd59j3pzMrKewvedUaaFg5AC3F
	WkKNqX1DM/Rmm4DQIz3fzbn2jYc0Ia9SO9i3teTthgiSE5nrL+DOOD14oJuuInF6
	gWnD4AZlQ8hMI5liTHYN6H8gJaNZTDi2Qk84v8K0+8YRc73VZyUIDi1kjDyMkVBJ
	25qEZHBeqeyLwxRM4PAkWGYIQokDBkEmNxV9o8G511Gi0qvWitmdxc5gOv8G9x2q
	dqVavihJwFvXR99aOOqa04v5d7BHDkVCZuA1wuXfYIHH+wu1ifHXl4OVBODl+yc3
	4USA0Www1/MLrIMNXYVE1Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEb6AXaL183GFdx1VlGWlyjIJCQCZZ4XQXMKoMG1lm4vniBtjA/GvNTl3LzjRiSOCUbHhrZ/vxZxNyOi3oexzkck+sc4/8bgvSL604FBg0m9Rh7ZZh/5H2BOf+8VXKk5giWuOYdm998+xix0vH7zjeHW9k2v2YCmPCdkyvkLed8JXTpBQVDeSa6wSja49ORLcbc3UB4oSySP04nuDDKdZ5wpi85yMY3AavQTUrbVDsM/qYfnkUfpwHRTHh/G6jIMqc/96s7kn7VvVw8DXXTwNakb2xcPwyweUQ6rZU7wf1Q36ySmGSO9c9G3fXJz/wVEEzldNmn9y6aHGTYJP5IOQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNgv5enTqzMtHBByx1c2WZRy2q2bS8+VGU0YiKkxpSs=;
 b=FyDkgDMmpP/f3Eec7Om0LhJqC10Jw9WlHgRUfCClVae0FS35fyicwoh7iDgrZGpynjsxClrDFSrnLdwJeMKO0mS8/+KtYE5nuf7W0DX1/iOTMTNFzXtsaR4KrzrcgEMOsgdvHYnWN4CatbwuZELA26dpDEWphXAtdjCmBia8un3CLvQvd0GVnZ+35aO7OrVO9OIdN5iw0W5hA/8ajClTmMAozSQTCCCi032R5ksMIFpLNVS/gZlMfhgxFuT07E3tOGOEvPHm9zqdqp6D1zLFEPNF+RQFWlEPUbi92rfgGshqrSeC6gVtbxXDgCaTcZ7aZEHzwBBSmLYzKeoc8BN4Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNgv5enTqzMtHBByx1c2WZRy2q2bS8+VGU0YiKkxpSs=;
 b=Fvt+uJUMpw7FR5MGqQlmzfGDWic5Dg8dHLsUHWrAIxaKSXMJ4miogQdh0Ev3gJzWdHuBA2dNKcjQPr7sgM5PbL0Pc/qXRMDQjT4/aM5RzQR14s0dw+dzmqqILSnmuTOhQi17Q51xopk36c8dukfDIDndFdvmqhCFe7J3DXOTvvU=
Message-ID: <d0ce97e9-4e35-4845-9f66-440c40997ec2@oracle.com>
Date: Fri, 14 Feb 2025 08:47:06 -0800
User-Agent: Mozilla Thunderbird
References: <CAADqWPRUu8xRHuc5Q-n+HaDbYBixZGCmJS4sNEo0i2Z6RR6YDg@mail.gmail.com>
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
In-Reply-To: <CAADqWPRUu8xRHuc5Q-n+HaDbYBixZGCmJS4sNEo0i2Z6RR6YDg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRUu8xRHuc5Q-n+HaDbYBixZGCmJS4sNEo0i2Z6RR6YDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BLAPR03CA0143.namprd03.prod.outlook.com
 (2603:10b6:208:32e::28) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB6864:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a738097-7207-465d-ba62-08dd4d173873
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bXhndCtZeW5sbmErVHR1WXNhNzF5S2xPSWxtSHJPVUU4S0hEMWdBVVBZQmJN?=
 =?utf-8?B?T2xsRVJKWnQyK0owVGNxZ2hzKzM1YUpvT1kwMDRuUDRTVGxvcU1UbTRuQWpV?=
 =?utf-8?B?TFFBbGNES3BIUFF2OXdXcFNiNkdFL2NSV0kwUGNaTU5jUmF6TGZGTW5MdGRU?=
 =?utf-8?B?QzRNZmtJUFZ4S3RyeUQxVEJndWdHVTJKVFN2bks5TnJhWW9OODhpQlNYUnRh?=
 =?utf-8?B?ZVc5U2NLeUd3cWZxcTc3MkdGQ002UkowWHlJWFNqRHYrT093VjM2emNBZmlv?=
 =?utf-8?B?QTdLaXRMY0dJY3p3S0FUK2xSbTdTa3E4ZG1CRUg1Yk0zWjlPRnFHTGpQTGgz?=
 =?utf-8?B?R3crYzJITnpRcXhyWlAzb1pKQkhHQ3NWVk9qN08ydmMzbEhucDhTWmh1SGov?=
 =?utf-8?B?SGRjOEtvb2p0UHNwNk1tbThtdGxPaThIT2g0eXlxOFZFWjJTcm5KMDdNS0ZZ?=
 =?utf-8?B?WE8xRWhzTHcyZEcwd014SEVPSnBVVUwzb3Nyd0hEaEFTUW93TzNscmt0dXNN?=
 =?utf-8?B?TG5lMnJHNThRbnk2T0xBcWtFdzhKbFFyWEgyamF6c1YwOTMwZDVYUjhjSVhy?=
 =?utf-8?B?Z3dXaEpsc2dXVkZzYk5yTnU5Tm1QVGY2Nnh5Qnl1UUhyaEltUGxBVkV2QWNI?=
 =?utf-8?B?dVQ3bERqZk14NU11Y1N3R2ZsMEpjcGZHS3BuZ1lVeWtsYkhscDdENHFSSlRR?=
 =?utf-8?B?RmgvMTZBYnRReC9zcHVINDJSSFlCcTBaVUFYdUphUVQ3WVQ4SXJ1MURXd2ts?=
 =?utf-8?B?WTlKQXN1b0NiN1libm5CT2ExUEF3YlhIOUV3WWIyQUQ1WUpOdDllOVpxVDBj?=
 =?utf-8?B?cDJlU28vVVJHQ2dPYzdONkpOZlIraVZGbnIwOGhvczVkNGc1SlhaMjlET2Ev?=
 =?utf-8?B?VTdyeXdrTDlGdGQvK05xdExGblIzMGVlcUNIZlBkdGNXTUhZeUFMd0dEb2hB?=
 =?utf-8?B?RUl6ejg1LzVsTHpLelAydGNzVTRCR3kxZjBKb29SY0V0OHZzczBhTnl3QUNp?=
 =?utf-8?B?N1YxQ1VDSGpaU0pWa3RaQmt6SkNkeDBJMWdPQUVYWUtGT1hVYk5vcnpnRW8v?=
 =?utf-8?B?ek96ODFETVR6L25ETk5wUEYyaDRvWWM3dHdvSG51eGRXNDhxVU1rWEczSWc1?=
 =?utf-8?B?bGJ2a1NzVExoTFdCMUNmWlMxUFVyZTU4andWN0pyVnVRZExudlZLY1pkQXhF?=
 =?utf-8?B?M2xmQm9hNUFpN1hEdUFBdzVVTk5LZlNIQWFaU21meGVNcGU1WkJCMUxpMFo4?=
 =?utf-8?B?V0xTQ0MwNERjc29uaDB0NGQvelRKTVdya2pRRHg3R1pVOERKd1pTNVVHWnEx?=
 =?utf-8?B?TnY5eTVabHZodXFBQ2YxQ0VQbGhnWm5sRFEvdE9iZzdQNG1KdjhGOW80TjN4?=
 =?utf-8?B?bklMS203RkxTVmJWQXh1OE9IRVR5TlNKcjNpNyt5K2tOdE4zM2Uzck9GUWhn?=
 =?utf-8?B?eEpnTXlqSlZHTDh1a2hDTUlsNWRPNTJ2dmsvYWh0V2NoSzdXcXBzbjZQQ3h4?=
 =?utf-8?B?K1lQbjFGRks3aWFWK1Aya3c0ZjRFRzNDcVlzdndVOFprMWY5S3BsLzB3TVV4?=
 =?utf-8?B?Zk16eU40YldqZUFMWjhoMklPbXVIQW5VS0ZiTnZpUlVYVlpkRWpaOUdEaUxU?=
 =?utf-8?B?Snl1RUhBbHFDcE9VcmZxck1jQnFUYkdUNzRwb3JVNndnUER6VVJDRUZzKzFE?=
 =?utf-8?B?NEpsSGpMUUY4bFlTdkRib2RmelEycXR3cHRGSlNxRjgraFBkRTc2M21GUWJR?=
 =?utf-8?B?RjhQQ0VZSHJLeWMrSGJjZFkvc0hwYThZUlZZSmlCdXowQlM2YnFOVUxLejBj?=
 =?utf-8?B?V1QzQkpTTGhyZUowL2M5Zz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ckFIcXNlRHAyeGwxWFVIeUxKRGx4UzQrM0xCWUJBUHBNYkJGZldLcVRTQUgv?=
 =?utf-8?B?WndDczlSWGpya2xhY1Q5UjU3ZDZwdUpNWW9vMk83cXVURVljWDFhMWx0Tk1P?=
 =?utf-8?B?Q0pzWEx0UVJoY1Q3KzcwSmF4Tnl6V3Q5T0JSVXE2dzd1K3Z4SjNGSis3Z3Zi?=
 =?utf-8?B?OHdNdVVxSzRDZTMxMi9JTE1DMVpqR2pYNDBpT2VqVkkxK3pMUElrKzB1bWRo?=
 =?utf-8?B?WXRGcXoxU09Bd1FWcnRnNFlhVlg4eC8wakx4ZlJiQWZ0eGMxejgvclQ0RGJX?=
 =?utf-8?B?dVRsTm01QjZSa0JRR0FlWVlORk15cXduM3pDa0x6WWpMK1V5cjZLZ0tNRHJr?=
 =?utf-8?B?NTFlVURGUEJ4TWpzcHUvV0pVTFBiYXdhMkY4Mi9IbTZ0akowRWxSenZQV0hX?=
 =?utf-8?B?WGxQVGErL2RzTDBxcDRqK3VuMGlPVjI0dDdFUFN3b1plYjFmbXUrenoreHEy?=
 =?utf-8?B?dUF6MmUyazdGcGlRTTN1K1FJSHoxREMzYU4ybXROdGVZSnlNV1Nrbkw5QUl5?=
 =?utf-8?B?bzk1QUtza3lLeHpXaVVGSmIwZzB6bmJvS3hnSkVwNUM5QXVCZEp3dStwMmJm?=
 =?utf-8?B?NEZHWUwxZHh3bWYrUmgxZk9YYTdpOXZ6bUlpbW5Ga3h0RVcyN1pDQnlRRmFK?=
 =?utf-8?B?MThuMlE5TUZkQlVFN0RReHBmUXJwM3lWMUxydndWNDloQ3c0NEl6MDFWWEhL?=
 =?utf-8?B?V0sxY29GS2V0TmJRQlVMQjZybmR6eTVDV1ZrSVo2MVN3dEhUS2w4Qk1ibERQ?=
 =?utf-8?B?MWx4MStQWWVFRnVDa0NveTcybHJlWHZkMGtQSSs4Tk9OWjVvUTJ0bE5DSGlB?=
 =?utf-8?B?RmFhQ0JNVlVvRWxROFRMU1VCZmx3ZzdSQ0w0UWN5TjZ3OTVnRlN0WTl4dEZR?=
 =?utf-8?B?MnlHQndISHlORW5lMlRiOVJ3dG52Njhhdzd0NkxpWlNQUDg5ZjZoNXlrV1VT?=
 =?utf-8?B?a1I2aHYxTjJ5dHhTL2tPZzQ2cWRlOHFiWG8ySlVCeDFHQU41b2FDYmtabDJO?=
 =?utf-8?B?TnNJMzJ3elVjZDhXVFo3WUpUaXRTeVpxN1lqVzVKSm16YkZ2VjlTclVGSHFI?=
 =?utf-8?B?dzhFWjgzZGYyb3Z1YTBJVmE2Tlh1eU5la2dQeUZEU2tIZ3E5dlZxN3NBM29m?=
 =?utf-8?B?Y0dUTVc4MHg3TnJTd0FDcW56R1QxUis4UW1ySGJOakF2SUMySFhKQk9JajNv?=
 =?utf-8?B?NVRXNUR5N1g4UmJSVjRQTEJ1MGcwcEVtc3ZmKzEvSTFGajVBb2J2RjMwV3hD?=
 =?utf-8?B?NFVRdFoyWURrdXBVdGFma0lrTHJaTitoNkNKUWRUdnI4bWxwL2VVTWlPMHhq?=
 =?utf-8?B?SXNhYnZXMmMrR3NMREdOUUdsMVkwS3NqRHBDVHAwSDQ2TXMxY25wYWxCdlo0?=
 =?utf-8?B?N0dDdzhZeDRSKzJmZ29CcEtlRlhNMnpFd3FlbzlOYWpnbDZ4RllHc29iZGNV?=
 =?utf-8?B?ZzIwRmY1NmtDMTdRcDFoOWZsZ1FZUUVoYkZBUWZXaXNMMkQwK0E0RlJ2QkZ4?=
 =?utf-8?B?YTBtSlZoOUlqUStYY2hFTXJSei85TEhUT1hUbko5K1F4TGF1NXJic2p6Z084?=
 =?utf-8?B?Sk5tVnNnQjM0YjZxbVlWcERicDF3dEVNczNaZ0Vleng0YnJEWUdoSGY0cnlh?=
 =?utf-8?B?Vnd2VU9BYzB5TlhEWDNMRjJvL09la0tXUlhmTmozRHF6ZC9LbXd3N3Y2Ukll?=
 =?utf-8?B?eURvMjh3czljeEpPeXNMRDdFcVFxOXRNQklzcVlZeXFGRjBDSmhMQkxRNjlJ?=
 =?utf-8?B?b3Y4OWxkVndXZ0tKanBGUXRScnAyY2E2d1ZDVWc0T2ljU0dGNzhZMDF4VEtj?=
 =?utf-8?B?SEdGRllBblllZy9mQ2pkZGhlaHcvQlQ0UHVaa0dTWTIrdlJzMW83QVZFaktN?=
 =?utf-8?B?STZDNjBaTFNTYkNkT3ZqNVFPWVE4elREbHhXVXNBWnVOTGsvemd1RE5DSlJh?=
 =?utf-8?B?MjFOT3NKaExnUkJ1L05BQlFrc1NMbGR6VUpnVFh3aEl4TDhKOTFDcUNYeWVh?=
 =?utf-8?B?REt1RmVlU3pNdWNaVFo2U1FYMUhVVGpSRkRFdTdTZzdXS2h3VTk4VVY3bXBo?=
 =?utf-8?B?eDBYREU3RWhsTEUzNmFVZ2o1MFBsajI2M3dRa2xqR1lWZHQ0RW5mb2wveVBY?=
 =?utf-8?B?bkpLY1lGVWVCSmpVMHZsemtPZEh5UW9lc0J6Y20xcTM5ZXFIMGs0TWRWMEpq?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	MTXjZ9mJ79tybWerwbPK6H+5padSKCtDiZGJFVSRfAhSJoLN2sKQGMTVzIjabQ6CDYXlqgrbQtR/LXarj5PhA/JWGu+i8zwRNYCmJCDk9g8KPQPNEKKHNGDk3NyX6Ui2/MLWeLrWX6Tw3DikuhpT9rGxrpRZlI6Om8WR0RRh4ot6B35hhW5b5cg5fSwVGdgcphi/au/4RZWCMjPhXKINJIzjB4cqxTmbbmE18ACB2k+CcqZQ6PC2mrmKQoLLw5/UCLalYMTGNhD6u8hIIXHvVklXyHGHZOeG/wi045hXcrKgSONkRogGhvCpVFHYveCzd/rR6gXI+nmmHmp02YzpFGBowqoWuWyui8GohFI2rfZMsCrbwXJAR4wkxHyvUeTGfzXhfRQjrFASj9uS4q4XeoJbRireTS+BLEJTpfuOECVbzm9wV9D0S3iO2yJQ5y1kUOccgTx58pc0k4J7PHUHpcGWzkh8f5raVURSzLwYLZG/Dnn5JX6gGQY5XAdJH0e/O6jc04xynxuBhBtmMHylAUtvMCl81umWL+38Te0g/PBkQuFwsJZc1vB57cqRP6ur0Ok9t7bqnk5khycjdDuqSMIl9mrHW/GiKP2z5NGtrbU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a738097-7207-465d-ba62-08dd4d173873
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 16:47:08.4983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OeZ9QFGXFbJOE2MDbuWT1SAYH2NSlp7Ff3RP4LiseHMx/f1DjJ7zd1JJdV38T5SJzhtBNCM9GzTQNUBCaR3b4qn9XUlApKsFP5PJNo163GQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6864
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-14_07,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2501170000 definitions=main-2502140117
X-Proofpoint-GUID: BSB38yzboJpDG7pGW0BdgsEf0HYA4u2j
X-Proofpoint-ORIG-GUID: BSB38yzboJpDG7pGW0BdgsEf0HYA4u2j
Subject: [oss-security] [CVE-2024-3220] CPython: Default mimetype known files writeable on
 Windows




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-3220] Default mimetype known files 
writeable on Windows
Date: 	Fri, 14 Feb 2025 10:16:45 -0600
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a LOW severity vulnerability affecting CPython.

There is a defect in the CPython standard library module “mimetypes” where on 
Windows the default list of known file locations are writable meaning other 
users can create invalid files to cause MemoryError to be raised on Python 
runtime startup or have file extensions be interpreted as the incorrect file type.

This defect is caused by the default locations of Linux and macOS platforms 
(such as “/etc/mime.types”) also being used on Windows, where they are 
user-writable locations (“C:\etc\mime.types”).

To work-around this issue a user can call mimetypes.init() with an empty list 
(“[]”) on Windows platforms to avoid using the default list of known file 
locations. There is no patch available yet, the CVE will be updated once there 
is a fixed version.

Please see the linked CVE ID for the latest information on affected versions: 
https://www.cve.org/CVERecord?id=CVE-2024-3220 
<https://www.cve.org/CVERecord?id=CVE-2024-3220>

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3/lists/security-announce.python.org/
