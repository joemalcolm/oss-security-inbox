Received: (qmail 22490 invoked by uid 550); 29 Apr 2024 15:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22467 invoked from network); 29 Apr 2024 15:57:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=n2VrlTr+j5D8Kze9rhCeJCwfOs1Hu6YoE68XmAv6rM0=;
 b=kcwkUn8x4Khyeoz/ldEI8zIouVCMxZqafR56awIejxqL2fZsyY7T2RLb3I3Vi3cNM1nI
 3lOS3rNW3DIVZX5q2LE/O4yQJ+HsLdvFld9eEO2pZYMIactQFF3/bMjk6WrfcDqNWdx9
 4lTVywxMmjLGNb+usZiRTDjY8tCfMuR0B9c7qixL6h6O67VAEbASIqJdhrKPKSA5N2L2
 ubT24UDJgJXRAQwuJGhcEPv8DVmsuZqQ2+H7UvXTzpCVM2we6DQ1UPCgy30VvHjKXrC+
 j1/5WrOZtKF9Z/MePm3lacXP1rG4wduqduaatIx+MX6DCo4LjhvdMzQR91fhluwyc9v4 0A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXXOyNruNp1kXWFT6fdBImtB0KzZdhcP6ey0L7cn6n36KioJHCKf9sF8krszka4mFk/Ud44STNQWHVMhrYvh1Lok7LZiYLQXOC/bPYhtz1zV72yT00K/xyfKlmZr10AfhHZbmNUdlgZhc8uG/CIyWIodUm2uHqopiFOTegNZav9lNnsR3OyLrBBUDp1X5GqiTh6/uz9FhBLCux2+MDHj03tTrPssRHwDzCMSQ0rHgniAvXVdCMRvsW1HMh+u4Uh54oUEH5+eNWba1VqN4EVEIck8NOTCYhM12DHfk0BnnrV1Al/HtnAEN5NxzMQ9y0hoa0rUxXt1gzStyIRHgMiuTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n2VrlTr+j5D8Kze9rhCeJCwfOs1Hu6YoE68XmAv6rM0=;
 b=e7CY6CTv0o5JeixTyEFiXqHYpWOs5zdWpg1ZztwPndHG2QjFE7tXd/B+RSs1yQVSJv8tOQerwh4OHF0RgrKEzIM4YDh+3Q4QHgolWCy2nwvCjaWSCSlSbHyUuUn/6YlpgiPFJ3sAr+u84wTGxUYv5FpAOt8O4/ilRxtJ/RaKU0bi7ObYNV7Pxt/PnXWlcNQHSyccvHyBGX7HtYhLbBKedEhL7KRN6D8aZsKaN9xQw+tWc7rl+YENSaXUVCiKgEDJ10HXZW9/IMm8gCEu0+C1ugrArmX3KnxLnKOq130i6d0ifRfNq0bzVduJrAeeWVaDRKeyZ03j2302A1AoNuowAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2VrlTr+j5D8Kze9rhCeJCwfOs1Hu6YoE68XmAv6rM0=;
 b=cKwlIP4OQsMSFTchXEHTffo/TssabTCw+xCF066/Hh/wo4oqiOVdUey8xOsvDKNtf0auM/PdnKZ2i0kRTZNyZtXfV/wwOvkZInsSxercK7aBaeQHrERJdKTV6Vw3UYV6U26HjoDAYA4bFF0ecV2scBBT507lZwt+26dX7pCl11o=
Message-ID: <47457baf-28be-4178-8df3-1cda61d8dd47@oracle.com>
Date: Mon, 29 Apr 2024 08:57:13 -0700
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
X-ClientProxiedBy: MN2PR08CA0006.namprd08.prod.outlook.com
 (2603:10b6:208:239::11) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5628:EE_
X-MS-Office365-Filtering-Correlation-Id: f3029b1a-7725-470a-2d95-08dc68650ae0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QWJ2aEwybnF1QkNuUTB5c2ZiT3hOK2ZTMHRlV3plNU9rKzAwRUdkNklpRENy?=
 =?utf-8?B?ODc3eEJMaUhnOGhDMWN5cW5vQ240a0VJdVFOUnV5bjF0YWVISzN1cGRveXZx?=
 =?utf-8?B?WW15ajRMdU5QYkMxYnZlTHpxdC9nQ3E4RzM4aVRMOG5Fanl6c0tScDBxenYx?=
 =?utf-8?B?K1NCUW9KcFVud21GU21uelBTRkV2UGpzTTZDSERrVDYvWSs4MnVnaHp2clV0?=
 =?utf-8?B?a2ZxbllBOFNSK1dJakRWalR3cGVjVm1IQlBCbkxycnVwbmpvR09JWk1DNTd3?=
 =?utf-8?B?UW9Id0poZWY0YWlxUWZQdUJ3b0x4MEhLL2hmWVZRTnFWejB3VGhnTk5lQVEv?=
 =?utf-8?B?c1NVQUVHcjMxa3RsU1NENE84VFh4ZVZhUlZZTS9ROCtOWklVY3dVOWlocyt4?=
 =?utf-8?B?ZENvdGtSaExXc292UFVZODJuZXlRRXl0WHA4MS9tK2pseHdNOWZTSnVLSGdn?=
 =?utf-8?B?Vmh1Ym90TGRrN01BUnptZmxlNWdHOWEyaW96aUtDVjV0b2dKbnFOSDZHWTFF?=
 =?utf-8?B?VXZ3WTN4WWR2d0FDMjIxaHJtSjFnV2ZNdmpxbzdDTEVnY29NR01qYmdPL0JG?=
 =?utf-8?B?WGxKaTc1YlR0SCtoTENWeldVRTlza1RiMHRUMlBNdHZVWFdUa21WejM0bGZC?=
 =?utf-8?B?MnBERE01ditxajB5TG5zcmY3bzhidi9jMEgwZHlSZmw1WCtRMit2bW1ib2Fn?=
 =?utf-8?B?bjhYcGpjL3BUL1h6MnhiVE8xbG5XaVNGVnBrY0hYRUNDZ0VCaU5MNTZ1MzJ5?=
 =?utf-8?B?eTZKblFZcE1oUVJHU2hpQU03VXRmV01XRkhoOXVheGVYYU9mVkdPdGpIZ2Fn?=
 =?utf-8?B?VXpHTXlETDlMWm0yQUk5THpnZzJnZDhWbHF0ZWdKYlBhUmlhaE9Fb0FkcHIy?=
 =?utf-8?B?RkMwMndvbEdVTkczOHFHTXNoeEV3djBXR1FnT2tsb2NQRW5GaWZyMDFod0w0?=
 =?utf-8?B?TWt3TXNCQ1hvVFBvc2phelBWUW90VHV3SDZZbVRqUkJGUkdESVU3ZVF0aEpq?=
 =?utf-8?B?N3RaVEpiNDMwVVpRZXVNRjB4V1R0ejJhc2JldFluTmprd0pyY296VFcxME1i?=
 =?utf-8?B?ZjZLck4wU1EwZk5VZ0VkakV5ai9lbVNZVFR4T2FMcS9MWXJnTmp1TVlFcEdM?=
 =?utf-8?B?eERGa1JhdldQRmRmUzZFekVhaGpxVGZOcS84Qll5bzh0dG9jelBoUWw1YWFG?=
 =?utf-8?B?NHdHdE5GT2Vxb1ZuOHBTdWMzSHBDdGdHTUcwaW5Mek1Id1JwaHh6TWZlWGh0?=
 =?utf-8?B?TmwvNGwyWjNYTUJlbFJrR0hEaSthVUdhWFY5UU5NUlRpeWN3NEJlTU9ESnV3?=
 =?utf-8?B?c0tkZmVhVzJoMXdCT3ZKVHg2bm4raWlEVE9SSENGanRoTUZDNFUwK0U4SEJz?=
 =?utf-8?B?NDI3eWRKWlJhZ29YWms0ZlpaMWhkUFIvWklLU3NkVTQ2ZnZ6TE1oSlpJSEtj?=
 =?utf-8?B?SWhxWVAzWC9aazN3aFNxNUd3VEZvK1haTXV4UVVCUlVrVUVucWF3bnl0Tllz?=
 =?utf-8?B?YUo3OXFzWTl6a2t6TTh6NHBGU0JWVEl3VStUVFUzemEyWFZ3WWZ4eUV6Z1gv?=
 =?utf-8?B?Z08zR2hvYWIxeWgzOWR1T014M1JUZ2lyY1pIT3RBeDJGeTloY256QVZnTVB0?=
 =?utf-8?Q?hE5vhD4XR0MOUaANH1lbf5OzcuSddSKSP4x3bDBXzAOM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VFdnaUErMExIUVZXUXgrUFdISkNGdVN1blgyMENXNC9mWWw2QlBMc0RYNGE0?=
 =?utf-8?B?TnhIN1RWd2xJTnJVa2kzRDgvQ2twT21Wb1lkSmw4TTFQWElGRnEwYm1LRVRS?=
 =?utf-8?B?NW5QR0ZuLzY2QkJrMmdkK0s5MEI3SWtYY2Q0NGZramhnQ2ZneUlDTXpvc2hE?=
 =?utf-8?B?QW5pS1JHTXZ2d1AyekpRV09LaTkxNHIyK0V5UnFkdkRGTHNTUE5uZmJadWdM?=
 =?utf-8?B?Qk55ZmpEcUVnVXR6cGpBb0ZvSEkwRnYyWnZ6Y3FIMVRMeldjenQ0MDJ4blVT?=
 =?utf-8?B?a0lRNDQySEROYUtZc09tWU82SWpJaEc2amc4WUV3U0lpQmttYUFJZlJnTVhY?=
 =?utf-8?B?enZJMTJSK04vbzJ5ajY3elpObW1BRHpLZmhtcjJPaEl2OVpDS3N3MnJSbDJq?=
 =?utf-8?B?c2F4TzNYejNtalRia2s1TDB5aFFsb01LZC9rbENReUJBZG82ZDEvVUR1eVhj?=
 =?utf-8?B?S3E5UzdzdTlaLzR2cFBTUEFOQ0RNZlVFWit5ZjRQV0thY2hUc0hzRGlvZ01v?=
 =?utf-8?B?YmZRLzJESmVIVi9GWTlvTmsvUDN6b0tXQXJIZzl6MEtLdHRwTUg1bDd2emJn?=
 =?utf-8?B?N0U1M1psdXRndEI2aitHcHRjeHdIYnVpbmRkdzNkVnVtVDRlaFd5NEtMRUFL?=
 =?utf-8?B?c2ZET3drS3ZzaXlMSTFheTNSNGhPanZCeC80dUk4Ni9WcDZvTUJhU1g4WWky?=
 =?utf-8?B?L0QzK3BVV09tcUluUG5GSis4WTZQM1hIdS94VzBGSXJ1QjJsRTFPbE83WXcz?=
 =?utf-8?B?YU0xS1lGQ3R6Ui9Ga3dhTlEyV0I3RkRRdzBDUGZIRy9Qd1NaVFpCZktaSHRw?=
 =?utf-8?B?b0tIZVZGL2kwUUl2MUlFazN5SnAzWEpOb3lBaWNDbWMzcG9NWEEwb21rOXRY?=
 =?utf-8?B?T2dhcHpkckRVZ0tTRDRQZ2RONW9aUUlxZ0JyalRSRHBnZnVOWEFwTUk3NVFE?=
 =?utf-8?B?UTE2N09UWDZEdTh3azZocTNGSGhhVEZPK0lxOFBQc1Uxcjd3VFJkeEFSSGlp?=
 =?utf-8?B?NEJmcGRVZldUU1FvMFhUNDE1MGZZWnk4em9PUXdGZnh1VTQreTlEcWlQcVZU?=
 =?utf-8?B?VktRekpRb0JEaXdhcUMrRk1ObGJtTVpObzQzdVVhY3F2d1lEaHJDNVJEZHRP?=
 =?utf-8?B?UklMVjR1MWYxRnZIdVRQWHZGZXJ1ZndDZ0E3em9xdjlob0dvRks3VU8xTjB1?=
 =?utf-8?B?Y05HOW5sNkFWNTY0OEhBeXBmUytzcVZWR0ZjZDhpc0srVmVDajJNcEpYOHRW?=
 =?utf-8?B?Y3l0Z21VelVrUUdDeHlDT2ZxcWJhVFZUd1RQMGJOZWl1OWlhYTlUVm9xMDE1?=
 =?utf-8?B?WGhBV2x4enFYU0U5QVhBT2R6UkZRV3ZtWnlpOXpDWE91ejRaZ3NEK2RKSUdo?=
 =?utf-8?B?TzFsQ2I0WHFTRm1xdHVwQ25oL3cvZXJVNW5NdWwzT05Bc3E2Z0ZFNWR1Lzlx?=
 =?utf-8?B?TzJJQkptbEtKSnRVMjJDT3lMMzZnS2VZTklwUGZPU2h5SDNjbG8yZVRrckVs?=
 =?utf-8?B?RXdVUzRDQ3YxK0JyTnMzVGFlSjRyMExxLzhuT2liajRaTCtVeXF3Y2ZmSmda?=
 =?utf-8?B?V3RSY1kzeWNKWEdvT202cVFqQUdxOEpyNHYvaVBJdU1ScjRUOXBMV1ZEVm1a?=
 =?utf-8?B?eHBPYzNZZHZyczQ0V2daYWpERDZkZXpnTndaV1IrbmlzVEVzcmZJWWRwZTQ3?=
 =?utf-8?B?Tm1DWDl6cFFoWkJ1aTQxL0J1V0phRFBDU09LdFNadUtUU2pESTFWZTVqdmdj?=
 =?utf-8?B?K0dmZ1FNSEJXdTFlSnFURHRZanVOM1JVMXRSbVpIMUVkclNzTlRUczFoOWIx?=
 =?utf-8?B?RWpTdDdIYnk2QnNqYjhDQkJxVllucUlTd3dHZ094VWo1UUR4eTM2dG5lTU96?=
 =?utf-8?B?RkJlQnU3bWJ0Y1lBR3YwSU1LME5nL3RFVDR3ZU1vQWhydlIwdUFYOE9zZGRm?=
 =?utf-8?B?Z0gwWjFTeWFHMXRPMzBGT1lTSTVXMVBINnMvTExGR2xGY2xNUTlSUUVocUl3?=
 =?utf-8?B?V1VVNjRyc3ZGdUpPeVRIR3FFeVVTU3ZOZDRBdEFxb0hpZWMwVDQ5SVlINzJ2?=
 =?utf-8?B?bXdIMjlQYVRydFNSN2J5bzlHMWJtTEJUNitUYjZFbE9kdEJxMkdBRXFsVVJT?=
 =?utf-8?B?WDJNYk9OVGphYjJmUzJ4VGMwTkVqVDNBbW9Mb1pVaFFYSWxHV2lvbjJaV2hi?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	G00evD5jdAbhXJ+e6sd6lLv/YzGXeIO1lOpNEklNCSXdzc4I+SKVnzwz18YjEWtmEA2k3dHpTQK+DVN+i6zbgZU43NXwVI6BD3rIKULOTG+urwO0XOC3BJeNkuUFYHj8RB2rL5z9ioEe332Vsbyyn1vo60RFq2+Lk5cQsR4eFUhnKJtrrVSLmThyX1Y0yRQSR7xncBbN1O5dmRfg7Ux44eKEcRvcpJQ/2QJ0rQouxg3DJhs5x6P0PwIqBhidUNViHeUkhQrr75pWYriw64y36ncdpBSJBnwvV01KlupcKs3QO7pPRtmhvf1vRZMjxH9JLltbBEMwWwVnhWQNC+lZ1MX1g/7OlCNc4EK0CjFk8P12zgQ3FBPtflj3utUnRgAyot0Df0eiHM6EiRNocYhmZd31qG5q7gntGYxSKw/OpYB4eqaI87pUps8kfBMGpdGJ3iqw6AjgCNuo7amSbtkN4HHL/UmOxzInTepwrReF8+bcaQpPQHbX5MaUXHZ0exN36aaE0Q7ejoQu3hvu1lN+Ah+/Y/lBTnBJHijlJmZ+c+a696PRGJebe/xSmuKDLTBlC2Y32FWDNdaeC2zze0QdimrwgasjwCdr5r6jMT3ln/g=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3029b1a-7725-470a-2d95-08dc68650ae0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 15:57:16.4304
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HztNrdCmX9zWZvnvuXdzgWqiD2KJrNyRqc0OtoQNRN1jg+dMVn78yqmmaUP5Z7xRApfs22MYthGMDYVSzxmJeV29GurxI/5Kcgw/SPTDVHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5628
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_14,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404290101
X-Proofpoint-GUID: RBeM4oIjqRtpKgFaqXtKJAuqWly30IMS
X-Proofpoint-ORIG-GUID: RBeM4oIjqRtpKgFaqXtKJAuqWly30IMS
Subject: [oss-security] CVE-2024-27322: Deserialization vulnerability in R before 4.4.0

https://hiddenlayer.com/research/r-bitrary-code-execution/ reports:

> HiddenLayer researchers have discovered a vulnerability, CVE-2024-27322,
> in the R programming language that allows for arbitrary code execution by
> deserializing untrusted data. This vulnerability can be exploited through
> the loading of RDS (R Data Serialization) files or R packages, which are often
> shared between developers and data scientists. An attacker can create
> malicious RDS files or R packages containing embedded arbitrary R code that
> executes on the victim’s target device upon interaction.

[...]

> Our team discovered that it is possible to craft a malicious RDS file that
> will execute arbitrary code when loaded and referenced. This vulnerability,
> assigned CVE-2024-27322, involves the use of promise objects and lazy
> evaluation in R.

[...]

> After some research, we found that if we created a promise where instead of
> setting a symbol, we set an unbounded value, we could create a payload that
> would run the expression when the promise was accessed:
>
> Opcode(TYPES.PROMSXP, 0, False, False, False,None,False),
> Opcode(TYPES.UNBOUNDVALUE_SXP, 0, False, False, False,None,False),
> Opcode(TYPES.LANGSXP, 0, False, False, False,None,False),
> Opcode(TYPES.SYMSXP, 0, False, False, False,None,False),
> Opcode(TYPES.CHARSXP, 64, False, False, False,"system",False),
> Opcode(TYPES.LISTSXP, 0, False, False, False,None,False),
> Opcode(TYPES.STRSXP, 0, False, False, False,1,False),
> Opcode(TYPES.CHARSXP, 64, False, False, False,'echo "pwned by HiddenLayer"',False),
> Opcode(TYPES.NILVALUE_SXP, 0, False, False, False,None,False),
>
> Once the malicious file has been created and loaded by R, the exploit will
> run no matter how the variable is referenced

[...]

> R’s serialization and deserialization process, which is used in the process of
> creating and loading RDS files and packages, has an arbitrary code execution
> vulnerability. An attacker can exploit this by crafting a file in RDS format
> that contains a promise instruction setting the value to unbound_value and the
> expression to contain arbitrary code. Due to lazy evaluation, the expression
> will only be evaluated and run when the symbol associated with the RDS file is
> accessed. Therefore if this is simply an RDS file, when a user assigns it a
> symbol (variable) in order to work with it, the arbitrary code will be
> executed when the user references that symbol. If the object is compiled
> within an R package, the package can be added to an R repository such as CRAN,
> and the expression will be evaluated and the arbitrary code run when a user
> loads that package.
>
> Given the widespread usage of R and the readRDS function, the implications of
> this are far-reaching. Having followed our responsible disclosure process, we
> have worked closely with the team at R who have worked quickly to patch this
> vulnerability within the most recent release – R v4.4.0.

https://stat.ethz.ch/pipermail/r-announce/2024/000701.html on April 24 announced
the release of R 4.4.0 but does not mention the CVE id in the list of fixes.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
