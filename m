Received: (qmail 5444 invoked by uid 550); 6 Sep 2023 20:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5423 invoked from network); 6 Sep 2023 20:00:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=OtDg6Z6rBZ+TCbW3rrYCWF8eLFN8CshEYDrVvhJOk1Y=;
 b=rxj016SKRsaCf6659TyHE2tgLOZV9LHz/a/4KNdOJvpBGMop9yTUEHL1pUP88ubxxdbv
 0nozxMfTJy+a27x3qMmVUn5CEiUb6c1TA+M83Q3vZhsYbpTP79UDzIXVf/BghMZVoRt5
 l5bYN69R61w3s6INAneN1uz3oxk4ylp7eHYYpI8WMXyMQN+/PkDr6s1V0h7V0fAWFu7V
 yKRh9fDxYFHyINl0CCJcq58noMe/fuI9ukC3Iq144yx3nvPQApfxYCj/OD1zWnx5JwS1
 0d9f41gr5B9+n37i8QBUbMr7mkfgUlaye5A/MZDRqbSSiAx1viyqfs/C87ph5PSMU8Xk 9Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7hWwlMwbaEWndo8WP6dnjYjy69pg446m7wdDesjNSXnGofNuMcgR70PJDaVAB+K46B3weqRDXOiLcJdu+EIf0iz7fJ1EsmYadKgpoKsHrZxGwZIwGv6Fb4rjqCSRQODy2MPSLUUfZ7Ptcze+8C8m9Cr9TTpqxBSVyB3ZsIxtsKcbt29sCRSUGFpZPDNITNKWzUui9PMsW9bXiqnJNSl5F695RP1PKeMr0GX78CGKGLagxIRICGewwtssNPWYAhrjvaP7GOIb+CdNimhtyauCZ1MVJSlaFFG/0ZaN2jdVSKVyXKZHO9Eww/JSH1ri/PdN7sddcwDNnCmBgvIMydLXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtDg6Z6rBZ+TCbW3rrYCWF8eLFN8CshEYDrVvhJOk1Y=;
 b=au20kuT5dQKu2xjVkgFil41yss8VbKAA56rDBjDkTO3gB8KaP9q7XNx+IFTGE0l4cAUK7zCdc2b6cXKwrF8wz6wk3k7RyiOAIA151FfPiSOTr6q5sXDhGix1wCRMRYvFstEacQrAUsbCk1cCpK2Vu9LaGaeDA5f6HvHCUQCNYljcEYGqBfOI09f0nG3hc/rKPg/lJyXHjrE6gaTJ32N3MnrGCsPy2B2cvD1+mOQ5bseuIZ9T2WYg5Z6yNQvYZy4fN7FbTmzod9bz7zHHVgsjd+MtW/RoPMKEH+hg2AGczg0bercdwD4/OBYQvH5lay5ui9Y/4jN+uJIiIti+oJqwfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OtDg6Z6rBZ+TCbW3rrYCWF8eLFN8CshEYDrVvhJOk1Y=;
 b=KqPgDJLxm5Op88NaJBuh4SZIe+Wu5kgAjGgWUFuW3/JWE4EJP1tz5lce+HD8is6Gdam92SIHjTCowTNmuPOLh/8XZVWQPgDJ4lSUUS2AaWFJ0Do9V0/gp09e/UkHsv7U75VU5r3D4Mx3NOs8kWpKnyfPxdxKdIaafrW/Na38k2c=
Message-ID: <a7ece13f-db08-4379-8733-6bf7d14a2c89@oracle.com>
Date: Wed, 6 Sep 2023 13:00:05 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <73b96607-5080-939c-d354-33da849d195d@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <73b96607-5080-939c-d354-33da849d195d@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1P222CA0181.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c4::28) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|PH0PR10MB4744:EE_
X-MS-Office365-Filtering-Correlation-Id: 790e639c-d469-43f3-fb84-08dbaf13decd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t/hO60sYY6+Lx+8iDN4yjqgbSVCFMO5SaB9O7bdja10Sk6aH3Iv8oZQ0mu/6J3Bzttu0jwA2yx2Ot9EZ8g4cg2Httk0l80B1KR49vQqqaUcona1QkNIdwqPlU2cdtrcBbOMk+ZNVVe0+MX5qePVjMisGd2KtyzGg2d6AFp99CQo1aPvMJ23ky5QfKVE/F+IIGiVECP0U7qUZP53L10vBChdQEAe12JkENOqra2JwONFFcMZ/6OD/S4akMCUkW/yBh14CjnuUqbWnnpvbCj+Eh0IGMENNwJzkYYtdaTlK4rAsBNbYpems3nfh6A7Jbvz3gs219n1AjT/qoFgGM0p99lRs6Oc1J8qJ7jCVEMxFnJLMJsrdXGKHPBoVf+XOFWNfzH9sROmmOsQuNlaB4YmUH6ylgeGt2HscdkWjj4W81y9hnh3lLDqhew8eX5GK0wGuujWgUcaJYdtm8XKyfHMsal1dNj+MP58OPXD60wLtbf6aiDE1muOwUMcmTS4EYqnp9M6Eoxbe7BJS+QlYkJKqkqBz6XYqZwgOHiRCVx19Yba0Zolu2nJDw0WD+qlKtCGjtVHdU0fgcbAEU1/UGG3uq9qwiI3+9H8H6+Jcc5mm/JU0p5IEAJ9Ssv5/mgOr67jtsKcl2v/Kkd6ZNd+HxmK1AQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199024)(1800799009)(186009)(6486002)(53546011)(6512007)(6506007)(6666004)(478600001)(83380400001)(966005)(4744005)(2616005)(26005)(15650500001)(2906002)(44832011)(66476007)(66556008)(6916009)(41300700001)(66946007)(316002)(5660300002)(8676002)(8936002)(38100700002)(86362001)(36756003)(31696002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2lkeVhFSEZNZkRBRTV2V0J0K1dDNlNZS0tHUmd6aWNMQ3gweVJ5WWRGS0J5?=
 =?utf-8?B?VjMrZnZqaGNpbXNCcWo5eHBMVVVMZVE0M3dwZlhRc200MTNuVnhhbm1ZWDF4?=
 =?utf-8?B?dUhnVC9la3RRZEVYN1Zuc2FTeUtUWjlGaGhnYUVwL0tHV2pzTFVXcVRBQjJy?=
 =?utf-8?B?N1BRQmRNWEVXbFhFN2pCb1JzcHlxWVczWm55V2I1ZDlGUi9XYnFwc2lxelRU?=
 =?utf-8?B?MXVEZHNNY2VHdzhrZjljWG0vbWpMcTdWUHRlUURpYkljZWtoT05Fc0lkaXdX?=
 =?utf-8?B?eDZONUhmMlFFMmZwdUdWZW14c2dGQVBCV1IrQWFxem05WkIrdVArRFEwcm9i?=
 =?utf-8?B?WkFadGhpd1VsTjl0S1dmK0xyTnk4aVFXNXF2VDNlZmZadUg2UHlvVzMyVEpN?=
 =?utf-8?B?VTBIdSsrVml5NGdUWFRQYUFzZTRLQXEydzU4M2JpRVpkL3hlam8vWDVPVTFt?=
 =?utf-8?B?ZTRTVUUxVEdXaHcreTVMMWFHRXgxVnhPbmxyWUlOZUdGM3BmZmlBYTV5OWIv?=
 =?utf-8?B?bUs5bGJ1WWdaYmdqblU3c21XbVpEaWd0aHlucTdTTmJIaVVUYVJzTWwrMW1i?=
 =?utf-8?B?RzN0VU5YODlDR09yVjVkcFNtUEt0bU9PNkhOUnlXUmIvNE56aXl3QStiNzBr?=
 =?utf-8?B?Z2d1RUo2SmlCVzAxSVhkK3J0Q1duZVFFRWRTeDRxaE84cFp2MHJZSXdueTFa?=
 =?utf-8?B?blN6WEVtV2dCV1AyMXlxOTFaZzg1eDFqZXpvYzVKMk03Ylo3WFFpTEtQUDF2?=
 =?utf-8?B?RkovVkFwdTJGWWhOWkZ1VnJ0K1REMi9Wc2lDd0oyM1piM241ay85WU5wakNr?=
 =?utf-8?B?S21FRWl0bjVsZVcvWDFqTTMwelBSWTRuM1k4MCtvbUZBb1J0bFd4QmdhTkt4?=
 =?utf-8?B?WEVjT09jSFh1RUlDNHJEdXlvd3QzMkt6blRJK0Y5cHdFSndmWU1rYzc0TmZG?=
 =?utf-8?B?ZFNRbW9xNjZoeVF3aTVYSUhiRWwvTngzOFZ5STFwUU9iL3hQQ2huM3VnT3No?=
 =?utf-8?B?a3RZWmRmMm5wcERPbXM3eUIrS3htZUpOaHg5Q3RjL1cxbXByNmNVTS80UHZl?=
 =?utf-8?B?c1ZlajlyaktkOERJZ0pVS054UTI5TmIxOEJaTTg0V0tBS0EvbTZRRzYzejZn?=
 =?utf-8?B?ZWQ2WkFscDhFSHJLaTlhaUQ2alBJcURXdVgvMnZSZzZmUHpWZ0U1N21sWDVI?=
 =?utf-8?B?bys0UHhNNDdDQUtNKzVyM0NMaWtDdGxUUVo2Q080cWVYUUtqcUJKdjN3L1V2?=
 =?utf-8?B?VzQyeWh6bS9SMWZOclJGdHNsa0xmLzRlT2M4dlJPSEpjWG91aG1HNjZKRDNE?=
 =?utf-8?B?dU9ldWNFQ3hxQjlUUDVWWWNNTDd6VFNWM0tjSzkyTld6SDZqSnRxek84WU1M?=
 =?utf-8?B?c3lZcEdJejQ4ZmpXd1J6TXgyNjJlWVE4RE0zUlh3WGpEK1FoZ29xekpoZllQ?=
 =?utf-8?B?S1NSdmlsdllaR0h0VXNwL1kxZmFXYnlwUVlhVFQ5Y2RJeDNDOE56YzlPKzVP?=
 =?utf-8?B?eVdPK1dhYUpGR1V1ZXFkYW5SakNwTnNTOWFsdmIydFdYY3g2ODFVKzNVcWFs?=
 =?utf-8?B?TFBoOW85aWRmUVRUUTh3c1M0MEI4cmMvbUEzMWlGUkVxK1ZuWVJDaldpcnZG?=
 =?utf-8?B?Z3IrNXdrc2dvS0x2V054RWRiRk5rMHA3Sk9uN2hua3YzRnYrdFF5UUFKOEIv?=
 =?utf-8?B?RmYyeDFHTFJ0TW4wcmxZRUZBS2ppSGtLUW8yZXRzTXVoSVJGNmZ4cklMdy93?=
 =?utf-8?B?cXZwSUpCd0RJT1MrN0tSSjdFdW9rVWFTQU92d0Z3NzVRUkhIZENjRCtxWXhl?=
 =?utf-8?B?U3NWeTRWMkJQQi9LTllBR1F5cW9HeWxVQkVmdFQ0d0swLzVMbE1UbjNrWHEx?=
 =?utf-8?B?SUxGQnNzSE5hNU1DQ3IxYTRWUkgvb0Z1RFRZWjc5NWwwOHprYnVtcytvZXNN?=
 =?utf-8?B?Uks3TURtbmxmZk1rZXNndUpGbVNha1ZoZmFER2tBWnYwbU9sbE5NeHVmaVA1?=
 =?utf-8?B?NWNsV3ZIZ01DS1dVM2Z5eEpXZnRMYkU2ckhuenNqSFBma05WRlY2ekhMTzl1?=
 =?utf-8?B?dFo3QmZaZ0ZzU0F6d2JmQ3BqSWUyaEtBcnYyMTlFc2lmS0FUZ3FqMXllYUJi?=
 =?utf-8?B?aWtKVlFKOC9CTjF0aVBBdjluMmVuYXg5dWs5dUVHSGRuTVdEalh3UTNGdnNP?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	hUVh2AgXNnPozpvcf4UZGQaxd3WAw+jtqIRrFZsUVx5lB7IYLkKNx0VgGwXXXTje2PZ0kmWyY3+lVQUhHg1JWNWGrVzOIaFIV6lRKrS8amgeEjpi/gFnSGiCn7pSqAJFl4/mx+q4YV0CWLNYMJbnHRMCkNjcBP5QDmR0CQmPcJ0joTf/y0dI2vZ55zPudZF/xfUx6u5onE0p/3ux8ByDlPUKXChtlj13wDqtY51qqy4aRhVntWSCH5Mn5GgDuijihz17c4VyO5HTrCE36IBqabFnOKEuEcY3Q6vAgIh7A9x9TlDOXw8ZB72nORmb4RAqsenmLxvjdL801OrThxaIopiAQZWkvLwIVO7FvmCYpnn3T0J3PwRLNviIkBDDTcUU67PvCLa4u2EeYUKz426DzCYX5fJatK/t275TOIIS6DtFSiTN5m5hB5TzfrESoaHbWZxZzCtSDv+iXtqlMDuT3TRS9fFgT9hZjFaXoaqV2FOV7EFE2dzohlWo/MpMvIIIVr5NdYdHIpD4KRDIYMxNsNxyZ6WZK/tpYuFk57CehLIDbVenjseO6BKWmjjr/eL6EMnhtHlEiJ9auLqWk9KYK93knanl7COFz7gsIbZh0RKouuKV+Z0pT0KJgevFL/sVq3SBhTVdV/H2RUJEVxe81lY76x/LZKsZfLKDXdr8x5D9ma155zWSaFJLdUI0Ak2eYHYkzPj5yIfrLBLakNN2cWPuF2sofwuhZ7z2lsLyCx8WJtAt3NV2eivhC55DQv9+76V9vx7aOWfDocumKxhK7Q==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 790e639c-d469-43f3-fb84-08dbaf13decd
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 20:00:08.3304
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a6nXcyCSzhRUWrFpGYpZi3M33HtJ+vSAol2KIbanjWK9BUDT69Kd1s7t/lwpAjN7eXydJ1MZzsH5TZgTrHVCUyEdvusnP8OZL7M2/ChV9e8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4744
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-06_06,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 suspectscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309060173
X-Proofpoint-GUID: lXchkzNqh3o49AOSw2EyQ_EyTaXf-HTc
X-Proofpoint-ORIG-GUID: lXchkzNqh3o49AOSw2EyQ_EyTaXf-HTc
Subject: Re: [oss-security] CVE-2023-38633 in librsvg: Arbitrary file read
 when xinclude href has special characters

On 7/27/23 13:36, Alan Coopersmith wrote:
> I haven't seen this go by yet, so for those who haven't seen it:
> 
> https://gitlab.gnome.org/GNOME/librsvg/-/issues/996 reports:
> 
> CVE-2023-38633: Arbitrary file read when xinclude href has special characters
> 
> This was reported by Zac Sims.

Zac's writeup on how the bug was found is now available at:
https://www.canva.dev/blog/engineering/when-url-parsers-disagree-cve-2023-38633/

It points to a root cause of mixing two different URL parsers, with one used to
validate the URL and a different one used to load the content from it.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

