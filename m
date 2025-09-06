Received: (qmail 1664 invoked by uid 550); 6 Sep 2025 00:29:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1639 invoked from network); 6 Sep 2025 00:29:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=324iZ523PAsQenXr
	ndn9UeDVocwrXGaDlssjVTPnvQQ=; b=BsWcSqhw8/s5TkNi+jv0R83t8YOCo8u+
	VqYI2OZdEWYVBz9kzZ4F1OtJKYH2oAxS6zcx+NXbKduyfttx0Eo+6qAyAVJqLkse
	fmrHyCvf+Y+X+3kMdcNKuRIRokOw0ZJb6JA9K+dNu1Ik7Q1ad6nx2YC23iGGarV8
	9HS6MxxiFF/6iDRevQZpMb8XJSXKaz30fAeYYgjspj45Zy3Uvr3CF4qIrtRYPGJu
	E5b/8P/pxO45mzKvczPxecDQpczHV6SIN+9Z3mCpslsvoGil6bWxlKUOMRIc2nMt
	Qvv/zYgGLALHKLdHS+grI+BLV70D2RkOcNR+ZUA+gTkB1xgicNnnxw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uy3lQdtO7ga3mps3+vKlqx4lrBSXAiaN725SaR/g7um20SyX58PCoYKQI4okwUWhGh0KfUbTQhrqyTWpYTkQ8EjVDP/xaDpECXB1WFYEiIsEO+nTEdHB/cpHvuZc1ao/1bNKTcDYeg30BV/lwMAmhpzYFTV8Eocy98bWlt5abe62kryCJ8yoli8sEsjoSGWKYzbM+4Rb1OMz8RiO9MXG8BbiUdLdGkJQgKzkyvjSDLcG7ePZZaIbdydFywz/KjumOLRIl2LW/aMTMaZ2JaPSnK/dGQmntNEXvStpGQt3ZQ3ycsxHV5ymguVN57UomEMA673zwauWA6D+WshdDGnr1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=324iZ523PAsQenXrndn9UeDVocwrXGaDlssjVTPnvQQ=;
 b=d/Ahj5z7YhvnEnEELmzn9WTMV+t0Iep54y4JDSkwFyZBwCIuEG8YHOupx2QmdpJj9YPTSBs+U9iWjUUJYqn8zxr4D2XIXRJ7xHUs/DwKadeI/9avKct5QDez3Y1t+AupU3dqr/ChEPht9nT1+oq+BIZADbmKZUVCCOTRY7KycJw+ZYK7ZTRwagmRM/7GYvZgMWg20+7/dQjsu+2VGVd9jU5r/C5Evawv+Xw12Q0IGujyYyxDdEFKuLDs7O2cDt6xVtvPZHpYhddlX/72yluia5KIKLC+XPNTeXmmqeQOE0TBj5DU3gj12A7D/mlN6YjQcfqPVoek3/+uceOORLAKmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=324iZ523PAsQenXrndn9UeDVocwrXGaDlssjVTPnvQQ=;
 b=qeiMxdoC9AfLBk94c9rj+Ge4CAxdwIYrARl9dx15Bg70+yKejiYKJGJtTArqFxCyyxPxpd9dS6RJyP26KBiUTQOEhBe6+ZePqAAE5YiUiUE1p4O5KvkibHVdRgqvyZTn2xKShg/MhpjPX6ji/gABuBWz8QjFBQIeYfy1xGI7T00=
Message-ID: <d5189e3b-44e0-4c3d-a36c-18b03f0d9a48@oracle.com>
Date: Fri, 5 Sep 2025 17:29:25 -0700
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
X-ClientProxiedBy: PH8PR21CA0022.namprd21.prod.outlook.com
 (2603:10b6:510:2ce::7) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DM4PR10MB6909:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f1bc49f-c5e6-4466-827d-08ddecdc700c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MG5GSWJLOGdSVDYyN2wzT0FLQ2FqWDRiRmhId3ZGak91UGg4Rm1IUUIzbytY?=
 =?utf-8?B?V05CVFBRMTUrNnVvcmZHMU9KWmN5NnhEMTJIb2ZqZWdyQkVOZFpLc2ZKbzVr?=
 =?utf-8?B?ejIxenNMSUtQUzk0dFZ6ME9acG9Wa09lRDM1WG9RaC9OUEcwa25yOURMNzQy?=
 =?utf-8?B?TzNiTlVxZkpOSjdRdVB1QjhsaVYycWVxUjFlMi9pRnJ6SWN4M2xMYU1sV0U5?=
 =?utf-8?B?enI5SHNoUHdVZHFFQWViZ2R0d09VLzJ1R053VWFkYVZ1c2hpZjlXNUx2MFFP?=
 =?utf-8?B?NjU4ZTNuU3VwSWdvSFNJdnZNT0JVNkdQZW0rY3Y3M0x6cVlMYXBsczZiamFx?=
 =?utf-8?B?VGdUVDlFRUR3MXRRK3phOHo2SHF1TmZXVEZhdy9uR2JiZUNuQ01Lc0pnRGR4?=
 =?utf-8?B?VFZ4MnBYRFUvSGJKQndqZHIxMUdHTjFRRTNmREpOdkJHNlBMRjJVMVU0OHRt?=
 =?utf-8?B?OUJDT1RLaVFkbUxlS214bHByT2E1a3laYk5jNmpKQnhTVGRLWWlmQlA2Q05S?=
 =?utf-8?B?VmMrYnpGTHdOakd0NGg0RVMxK3JjQ1BWbFVpbzhYN0ErZVVIZGxCYXdBOFNU?=
 =?utf-8?B?VFdtQmVHMjcwVUM4NXNiOENYeFhKN01vMm4ySStDcHFRL3VYeEJpOVNqczNC?=
 =?utf-8?B?MVJyMFVvN1JyVkgwM1YxVHZZdDJJYVozcEE0YzNaRFdpS05TUmV3K0lzeXFP?=
 =?utf-8?B?VUtRaEw2cWhIVitQK3plamxwbGFsWUhkLzRiOGc1OWhvRi9Wc0pCQmE3VVlq?=
 =?utf-8?B?STgvdTFqbmN6MXdrVVVVNnpVNHI5M2NTOEVHSkxid2srTmlxTmM0YVZMWWJE?=
 =?utf-8?B?N2dTWjBodzdVR1VnR29wcE84dkl5bWM1OEZ4RjNtQ05LaFI2elQ0VE5XbjZR?=
 =?utf-8?B?WjI5bzBkLzNRQ2ZweEVJRWp2ZlFpYncwY3ZUZWE4NGYzbGs5czhYdHZFckZW?=
 =?utf-8?B?Y2Uwa1RaRk1qVk1vRmdJa2IxT0VsNWN0T1JwZlNHRkI4bEhEUGRFRVpibWxl?=
 =?utf-8?B?cllCWHA3Yy9GeElqbmsySVF0aU1Nc0hPSEF1bERZWDZHNVNJUUh0TXR1NW9i?=
 =?utf-8?B?cUVURXhtT1NOczh5NXhOZEljOTh5Qy84cmc3UTc4Rm1iNGNIR0IvODhnd3Q5?=
 =?utf-8?B?NjFRSnB1VWdRcE9nVUZpZDlDQnVEeDlBbStnUzRhVkNZRXZDWFJBanNmeDk0?=
 =?utf-8?B?MVlKQ2I3SXVKM2I0WnRZa3FwVEZlTVFUQ0hSWFFpVHEwcGZ5NWF4L3UxU1Bp?=
 =?utf-8?B?cHpGOENTWURTbkVBMm1uRDhnRzJMSjRJWlB6dGJTNk9lZC8zVm9nbGVqb0My?=
 =?utf-8?B?TXJUZWtaRzRoelFCRDNIeTVmSS9GcVdVM0R3VGtCQkNDLzQ1QmhxZ21XT2t5?=
 =?utf-8?B?MFFveHE4cy9taXRJeG5GdEhNZ09RY1E0TzJiZjZPZk9vMURLR2VXUWQveGp6?=
 =?utf-8?B?WnBwWG4yVHYzS0JPblM0YU1QSkVTK2hDeXcrSGpHWnd5Z240TlFyYkhpcXVH?=
 =?utf-8?B?ZlZRbWduVG44YVp1VTFmRUJBZGVwek1VRzVlT1VieVc0Z0dOKy9hVGZQU2dP?=
 =?utf-8?B?dFRGR01mRFZwVGJqTVhwNGdJemgvOGQwV3NycmU5RTNHSkYyQW9XeStaNU42?=
 =?utf-8?B?ZUtsQ3BmU1ltYm1JUFVtM09wKzRERksrYVhEeWJKdWRjMlZOeGlmZ2JYdDhQ?=
 =?utf-8?B?ZGpwZU1zdmRUczF2OWRrYXhMYlBrbHluLzIxV0l1UVFXejVVeXpDTFBKOUM3?=
 =?utf-8?B?cnRtdWcvb2JwTlNXaTFJZUVVSW5zV01rSG1EL2FVK3BuQ05RQ2RCalliMVc1?=
 =?utf-8?B?bkdTVjFrYjZOQkk1Wkd3eUNLTFhnU2tGeVVpVmV6TFdydDduSWZ0S3dEWFNa?=
 =?utf-8?B?U3l1djZSTWU2VUhnTWZkMzRiK3JtRUdEcDFTaGg4ako0VDRsKzRESHVTbFla?=
 =?utf-8?Q?F+6vM5QC9CU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dHRDV1lLRUs1cGxNSC94YzkzcURmSFpHMG5NNFpRN1BOY0dwSE1ia0NIenkw?=
 =?utf-8?B?VGhRWWRPWTJ2bmVQN1pQSHhpOFhxVXhueFF2anZQb3FLVURYamsvNFJ5aVpx?=
 =?utf-8?B?czZXYzNRcmE0UVE0S1Q5elpoSS82eWh4UEpUdE14THBVQTZPelNOY0d0dXhu?=
 =?utf-8?B?Ukg0aDJETFJnWDFpdEVOcEhJK2lyQUFHd2lTUnllNXl3UDhIOXJCS0puZU9y?=
 =?utf-8?B?MzVZem5pMm9hdm4rNGdXd2xoV1VUMUh1dUlNWERpYjBLdmtzM0RyelBJYm9z?=
 =?utf-8?B?Q2l2OGFQMGFJZ0E2REdmNDhUdXhyQVlrT2lnRXVyQUdvUVN5Wmw2ckpnK3pz?=
 =?utf-8?B?QVV6UnRYLytEY0NvQitMd3NQVGJNQnFuREd5UTJMZGtQTk5RMnNyMk5OQjJH?=
 =?utf-8?B?eEh3cklTSWhCNXFZYTEwTXJSeStqaU9nZFcyQVhNN0I4N0VVOFVFNjV2YzM2?=
 =?utf-8?B?ZXM5bktBSE5FbGN5TlhSM3FGb3ZGWWtKdnZkMmVScVByRTY2ZFYrSEN2Q2Nu?=
 =?utf-8?B?QmNsbFBHRWlvREg4OExaMFAvb0VFV3d1TU1ZazdMWVJUQjlJRTQzZ1FxQmJV?=
 =?utf-8?B?VlgvOWFPSHZlanZ3UjByaGFoL3orbTl4eXlrb2NHQThHeGxMRkdwNkp0cXNp?=
 =?utf-8?B?NGJGNFNmeFFCc1VvVmJyUVJnR1M1WWJyamRhcHJha21rWTl3RzBUR2lVR0hl?=
 =?utf-8?B?Nmk1S1FjdlVVcHpZb29OZHlYMjhtZk1nNmJhT2RBckhaNlhGa2hGS1BiOG9Q?=
 =?utf-8?B?cGhuUkd1UFc3M0tMeE5nUmpXbkh2bFdwcnVZQldEbjZYdDMrdHZoa0pObURK?=
 =?utf-8?B?eXlvbnQvM29vR0pOalVNcmpZazIwd2lpam9qWnMxVk0wZzRYQmlUNlV6eG02?=
 =?utf-8?B?Z3NnaHpWRDZRd0RyU0d0N1RtWk85bUcrSGVTY2VGd2hmTzFVZFc5c0VTbGk1?=
 =?utf-8?B?bXFBZExSWnd5dXBmYlVvdmgydHlMcXMzVHdwdEZuN0QycG1Vd0RCUm5mNURs?=
 =?utf-8?B?amN4SlprckFUQmtSTHNDNlVaMUljdkIrYjJtMFVkM216a0FHQUJHNUJlYzNo?=
 =?utf-8?B?NVZJQzBqRzdJdnNBd29zWVpSdEJkQ2tjMUhpbEhhRDdUa2pCczk1MTVzdWtS?=
 =?utf-8?B?SXNMWllBeUFpL3JGaDlHemF6V3QvZW5vZDZiVkUzRDhkQnQvcytPdlpsTUhR?=
 =?utf-8?B?ODZmcFhyRlFQNkVWWEh5YlpiSWhBZWlFd09RbFp1d3VQV1h2d1ppek02K0FH?=
 =?utf-8?B?a2F2b2w1cW14VFcyUFBxNGhEd3h1R0JQUFNoT0lDNkVmM0Z1OUZxb2xjaWth?=
 =?utf-8?B?NlRYSW5MOTVucThEV29ZVnVLWjhBb2RVMkl5d3JmSVcvTnhEcmpKVHUzT2xl?=
 =?utf-8?B?QmF2Y05NQ1JPa1JGUWQ0ODVWTVREMnpHanBXKzFRVXdnVVpBNHhYeGF5MWRY?=
 =?utf-8?B?R3F5SlphTXVER2R3REpmQmw1WStUL2FKT3ZZL0dYR2NuWWlvMzRpeDVDY1Np?=
 =?utf-8?B?Vm1QSTR5aTd1WDk1Ni81OHpVMUdlcy9aYnI3Q3JqeVpLd29NUVVKUTdjb2tU?=
 =?utf-8?B?Q3ZlaFdFUUxOODZJRStPNkRRZlI2WmFNRnZidzZpYktVbWZFR1o3VWxMTkxN?=
 =?utf-8?B?QkdBNElpbm9OS3l4SnN1R1Nkb2kxUkR2TWp2Y2o5UVVSVTh0ZnpmVjNENk9t?=
 =?utf-8?B?anhyYlIyWldnWEJpeXBqci9RYmN3eWcxNE1rK2poRlMzcEtqemtLVXRYdkJ2?=
 =?utf-8?B?THMwaTlnMnhjOEVWMjdFb09kQktVeWJ6eVhQM1lPZFlzYWVUZGJyN3ZraldE?=
 =?utf-8?B?bFREbWN6QUErU202YjVWbGl0MExhRVU4cXlLZlkvdENFRjZBL0hvcUVGSFJC?=
 =?utf-8?B?ZGxYL1RERUVKQW0xNkdsVmxRRUp6bFJ5SXZmbGhxd0gvMEFlNHdKbHlqNGM0?=
 =?utf-8?B?YkNOclVBWXVHcExTdFkyV3pHd3pSeTloSlI2YXAxQTJpYmwyZWVDZDVmWHZZ?=
 =?utf-8?B?eEprMFJ6Z1pwZHZDQW10NmVqcXg5V05qUjlranBpV1dpNUE4RmtIbUNjVnBJ?=
 =?utf-8?B?UmxPRzJhMFI2c1AzNVlmVThXTHF4OC9qMmZFdU9EY29YK0lETUlxZWF0S3Ix?=
 =?utf-8?B?REZxZXU4ZEZxckg1dHJ3T3RFU213ODNWM2hiZ3FQcXNaTng4YVJYZW83TWc1?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	+k4i6RT1759CWgolf8PM3Hs7puPq0ZAW2HKolID6yK9PPlovPlXxOHawPLwFqj+4eSfKoZ6NjVRxXanlSLY8GiaruPhRPGFIHfE2rF1jKkoIyEOXS02TiTyBV/hi1Slzw8/GcHrKteCZ7YUTWT3QYVpMBwUIkEcjgJvUdXDdLagL3OhDo7kDp13Ta/5lu/KxBuBB0NHAiDGYhl/uz0VjYqFioMinJhSuBusPYimvle7UXyBjP62tqbwl8zddnPwcSxRL1WAcEyd2ajqHPbHKoFKxwgRH92gqXP/FcMw4uGizvs8CTsmBVWWb1/7vIVzd49Td4AGM5re+iydy/d6+kER94XyfoGbgOZVRQKWcGHZq705EWKNRStpQ+88piRzAw/K8eC6nV3sOWdvTrVkNg1PIBJmpmFXZp5QGJWcOqpdU2wWKJIKFnHSlNSfYRV2mtOFnFj7lo+npAIFaV15fjGJ1jHEvSmMlMssE9oziPG0q1vaZxiH44ZMKmHG07K1W+N6ieQlUbscLeYKGuoZMF02p/LkHk8b9CJpNouGENb6UFtmPRpolh5GpatZWsiPMK4161UajQekk89TCexZhhDVq4y9qeyOCSVrTRI/68tE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1bc49f-c5e6-4466-827d-08ddecdc700c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2025 00:29:27.5296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wtsu5mvEWMGUdhPJb9TuNR28t3eKY8g+vUFfDOHwMuGRdFCCZwtpe6W0unKgWAjdlhTdVEzp3MqoB27fdShyeXgD1QLNO9h4K0jF5eHdyxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6909
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_09,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509060002
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA1MDIzNSBTYWx0ZWRfX3KAt1YZHSG7T
 yAECiNRbfIlWAWRl4HcTEeM1OR7J1mJbIkqIHlzFU5ddS2AFYpvWP0jeg1FqxmuXinU3uFflga2
 95VEvg651m7ftQJXo1WdqV9o1bHMYtsHBdT1Q+eaAf6s7YyFulvP873x/vViQAIwRMu2R95N2UG
 cBIJHw7RQFKh6PIp1RrgvfAEQMQTluX88FCwb9NGxvT2CLVW5TfdAgk0Pkn6rXGVt663lLjgGa4
 3I7M7K3LcfeHd951sP+rDef+95e0BRHX2e724HvEfIw5/0IPhpjSHx1sIN76rUZmY1wZPMqo1gM
 HJIn7Ij+9ZhdNRReeeihXXLTO9Rpe5IG0j+FljjCWdj+zUr6++PbprGuDiiBSDfysAaHhyrx91U
 fVujkGYo
X-Authority-Analysis: v=2.4 cv=K9giHzWI c=1 sm=1 tr=0 ts=68bb806b b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=NEAV23lmAAAA:8 a=mLKua8RHAAAA:8
 a=yPCof4ZbAAAA:8 a=eseZX7rblFYqZ_DPQucA:9 a=QEXdDO2ut3YA:10
 a=ewTM_9iNE6a0vsrYD_ou:22
X-Proofpoint-ORIG-GUID: A0qGT-QFi-gfuiNOzUkAzdB7lx8WMQtk
X-Proofpoint-GUID: A0qGT-QFi-gfuiNOzUkAzdB7lx8WMQtk
Subject: [oss-security] SQLite - Integer Overflow in FTS5 Extension
 [CVE-2025-7709]

https://github.com/google/security-research/security/advisories/GHSA-v2c8-vqqp-hv3g
was published on August 15, and states:

> Summary
> -------
> An integer overflow exists in the FTS5 extension. It occurs when the size of an
> array of tombstone pointers is calculated and truncated into a 32-bit integer.
> A pointer to partially controlled data can then be written out of bounds.
> 
> Severity
> --------
> Moderate - The overflow can be triggered by either an attacker who is able to
> execute arbitrary queries or an attacker that can make an application process
> a controlled SQLite DB file.
> 
> Proof of Concept
> ----------------
> 
> echo "SELECT * FROM articles WHERE articles MATCH 'whatever'" | ./sqlite3 /tmp/poc.sql
> =================================================================
> ==3811642==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x5030000012f0 at pc 0x55eafca6599b bp 0x7ffdd1591570 sp 0x7ffdd1591568
> READ of size 8 at 0x5030000012f0 thread T0
> 
> Fix can be found here: https://sqlite.org/src/info/63595b74956a9391
> 
> Timeline
> --------
> Date reported: 07/15/2025
> Date fixed: 07/16/2025
> Date disclosed: 08/15/2025

See the above URL for Further Analysis.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

