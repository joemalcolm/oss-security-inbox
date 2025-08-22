Received: (qmail 3156 invoked by uid 550); 22 Aug 2025 22:17:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3123 invoked from network); 22 Aug 2025 22:17:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=bcZz9gqjE47jOy1b
	fGoFgiinBq8i0EkeMqnQzZ3/aWY=; b=HIM8O7Z8fBGGOI1b+UcPnl7U7welHMcU
	6voeN3G9XAbRYnOYqJ+kpELKD4LV1hgh8NTMHmzvc4cM0z3S2dkalpcYeyYAwWB/
	Vc7u65SwczEoMj9J7HNk4kG6JGm3nZRkKTK9FBJwRQG/gp9VATFaSuuz3eVY5fdm
	cTU7PVZIpN38Xfg+OlTBTKOpeNt8U+mPzDzkgriRqF8FlVYUPqTgxA19WithK7M/
	/knl1z1hyfdMU0up2gx58kuyg0OPUA8EITqm0C4D0V/FUqlXsQ9jViUCES+PCZU+
	C8kKxbI3He2oANWAG4zlcmnZrSndjLULOvh88rLaQWcNh13AB67z8Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRT5hCufqOETVu5VXBeTKWuWlOQtqc6mJJ/L6JGrCnM0DPaWH2/YomC5UcOYYB+ojeIpNQKJkzO+3yGFgCpV+M6q7HdmBQjZXD+WvQLYhweE/cjckGyeDzjQbIM2HHFtRmYwjSIQtYWihw+DLsB0IOycoIwUCQRCFgTZIk7X7XxO1fd438oxJVu0Mtl2kzSNrh5peu7+9xZ0VdxlTNlZN06n7btkzuPkBlgD+29Ng6JMmgv8VdBlSFNMgUOSrSgY+b4otVsHDzNOXHBqW75KzG8WHCs0LCe4Fo7kQUC8VE8ppYuuknWdq5MNSw/E+jYIsm/0xAlLYkw+Hk4pYNupaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bcZz9gqjE47jOy1bfGoFgiinBq8i0EkeMqnQzZ3/aWY=;
 b=YQ1oHYoJSd2zeNSIUP1h2V4KBErwGz47lCZqrYnzmBC7F2lQuP1ODfdApt+ZCjzfmI8ulXwjIP8jOmJZr4CiUchDYuZvtbW+LfBW6TZUTe0UxYJkTXMSPPKjgq9J0+n8wUlI29ozdgYQJiVntG0Bk2N6amECdEAbsAn0op2Mlsm81+ZGSt7ERlfdQNoMUePQplIH7B/twN7n2nsjy0bNNM7PYGV4jqjSPyqvlEvKkvZiJT11d3rtzrfcrWZaOGomfakGzLxG6ekfb240f94scHfSfFptM+EEmyFvGrzeQ6On9y2mOi1w+PJs/9MagL9nBAGiXuKA33F2s7y1REFe7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bcZz9gqjE47jOy1bfGoFgiinBq8i0EkeMqnQzZ3/aWY=;
 b=pxZdGSfHKTtr2A5qxYNAHRDpmmj/tLdEpqO1qlhiQzhj7tI78PYZArI0qIOYd9eliilgDgDbuBZ7GwohlSockB8PNux+SaAMkY1DZIA8BMA5M72JiLDM4Po1irF7d6vnC99EIr3QbXQmv4hkAIXkmI/DW8DVhx7Tu8uGF4DdQoc=
Message-ID: <1264abf4-fd7f-4892-b9c4-864e4d21a742@oracle.com>
Date: Fri, 22 Aug 2025 15:17:19 -0700
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
X-ClientProxiedBy: BL1PR13CA0441.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::26) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|MW5PR10MB5850:EE_
X-MS-Office365-Filtering-Correlation-Id: 82d9cc14-1aa6-4eb1-b2aa-08dde1c9aa60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SGRRdlNibjZlZ3hJWlQrVERXaFpxdzJuRHZSRHkwTVhweG1qU3VkUUdJRUtj?=
 =?utf-8?B?ang2UW1FTWdGZktqSzZQVGVLbGFEUHZZcnlwWjJqZ05KT2o4cjVUMnZGMWpz?=
 =?utf-8?B?Mmk1VGozemxia0VkNUc5STJEKzkzVC9YTjZyb01OOGh0bmo4UTNBeGpPK0FI?=
 =?utf-8?B?cW1pajY2NzlIYkVFWVZ6dWdXelJ0dTVja2xDRkVYWnRFcVNzeE5lN2FxK2FV?=
 =?utf-8?B?ci85ZG81WDgrdUw5dS8vUlh3eW94VHRNbXJNcDJLcTBNMFlFWDk4Qi9HZEhW?=
 =?utf-8?B?SGRrNlk1ZmdNKzJ1S0VQeGtSaDM4M0RnK1YzYklqOEwvQ3RkamFoMXd6WEU1?=
 =?utf-8?B?SDZGT3BMc1BEZWZmOVV0Rlh1dG9TdTlHOGwrYUdHNGJ2bC92TXpjTG1hak53?=
 =?utf-8?B?UUtiQzNhSG1pbi9OYkVHaDdaaXdLWkhGeWVDRVdyeE1WS0NNQVJ1ZWdQQU5H?=
 =?utf-8?B?YzBFYkh3YllRSXFFK3BuUVJhSXdQcHFpZllJc0ZIdGVPeGF1T0YwUmhJTldw?=
 =?utf-8?B?WnBmRTl5QVEvTTB2WGwwQm5hM29tTGUvWGpydXdHdnNBV25INnRFSFQvLytp?=
 =?utf-8?B?VEJlSldHVFVoNy80ZDE2d0Q0UjVHcUNtZkhoMUp2WFQ1cWZoUFM3eXVWY2xo?=
 =?utf-8?B?Qm94bTRyTjNSd3BJaXVJMzhQU3ROekc4MngvTDExdHMrbWMySStsd3FjVVpP?=
 =?utf-8?B?aGpJUzJtbEZiTjQyUXRkNWRqdzZhNU1SdVlXdDJyTU1wcUo3aENvejYyNzgr?=
 =?utf-8?B?MWRHdTM1OUhWa0tlNktWakxNMU55NVFpMXdlTFlMbkIzMEdta0VvcE1IV3Vk?=
 =?utf-8?B?QXJVeXM4akVUSnFxcHMrdVRlMmtzRzZLNVhJT0VLUVhSSXAyL0FQL2o2L2Vm?=
 =?utf-8?B?R0VveFBWT1dIbzRmWm9MTk9sckIwQXB2c1JJdmtWbTNMMFhkNGR2Q2hkYURK?=
 =?utf-8?B?d3pRcjVyY2JyZlhZbHIzQ0FSL2VxRlJtWHdoVzVseEdqM3g5QkxwQ2x6eThK?=
 =?utf-8?B?T1NlYVUwVW54ZHBtcm9lalFSRmFrM0xBZVNDWXZ2dVdZeFVFaGFoTzlVWlV2?=
 =?utf-8?B?V05kTG94ZmhOcmpLa3pLaEhKKzQyUVVaSEVZanlXY3FxYm5QRUYza1MwS2FZ?=
 =?utf-8?B?bzVJV3NuR0FGWVZwU0RNUU51MGFPU0dhZ1V2RllEd3JoZUZGMUFDd2MzTzlM?=
 =?utf-8?B?S3dmUlJ5UDZJdDkySlFsRkdYRythRU1HbC9qMWhxWlFwSnZ3R0hHMHhIWm54?=
 =?utf-8?B?ak1xcGtDb3dZYkFKVW11c0FRQWtVQndodTVVck1kdDRtNWpMOE5UNEpJam5y?=
 =?utf-8?B?UkJqZFdNSi9VUlNPM2dvazBmRk9MdHovNEtOZnFyL0RRdGxlMDZMVHk0RHZE?=
 =?utf-8?B?OHB4T0VUZUY0bEFNTUZyMlJoMm92dkNNczAvd0JjZ21ZR21Cbzl2eGV6cTl4?=
 =?utf-8?B?d0lneno4ajV6U04yV0tCNG9WMjQ4dUkvbTN4VXJLeTh0MWVnMUhxZnNCbEl2?=
 =?utf-8?B?YjJHZDhCKzYzVjRDOFM0YitoUEhQRjk1Qm9QUHNSWjhaS2ZxWmJ3MThDS1dK?=
 =?utf-8?B?dXB4L0dXQXd1dTRhdDVudzdleXFRTjdpaUVWZmVhdkRUZU1obHZ0UXZ0dGtZ?=
 =?utf-8?B?bm56aHJ5VmxKTFJGSmhQMTBnZlJLVjlZNFR0T3ZnQmdqUGIzb3JVSXVqVkJ1?=
 =?utf-8?B?YnJqekx4RUFFZzdpSys0clMrQkZRR091dmV5RzgwSytlZTNEa2hremNKc0Vm?=
 =?utf-8?B?SWVYU0lHQmpFQlJXWmsrYmlZVnNOditPR3h3SzNvNUdOS2dlUTR5WlJrM3Vl?=
 =?utf-8?Q?MHh4BBbZqiFLljISSEAZUefjVFJZpxsN753cQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZFcyZkI3Zk1tMXFMVy9sUHJzd0c2TG5mOVVqNzAwVHVHRWw0S2tRQzN0WHB0?=
 =?utf-8?B?bTIzU1FvRExjZHNMV3hPSFQyL21GNmtkdjRXcG9RbUJJam9MLzRNb0I1YWZH?=
 =?utf-8?B?ZGh2R24rbmV0dVBTNk4yQjIvZ2sxbXREQ3Fub1lTWVVhaGQvMWVrVWJwTGJu?=
 =?utf-8?B?VEh3QTY4RTNGRm15ZFhtaUdDRzUyY3JweVpxVlFROG4xN0VGNU1USEtjTXBw?=
 =?utf-8?B?QTljK0xLOGJ4VHlJWFdjNWhLbVFUWDNHM2gvbkVkMFh1amlvRzdhdmZudDR4?=
 =?utf-8?B?Rys4c2V4SW1OYTRuSnJCWC9CaktZeSs1RWVDY3lqaXJHamFUdzRRbi94WWo0?=
 =?utf-8?B?Ym5YU01scmJnTTV0cHE2bHZyVzduSlFtVkdXQ0pYemNqTUdZdDd2SGZHbzZh?=
 =?utf-8?B?c1JBODZnQVNWa3g3NFpQRS9DMzI2bmpvREFpakpUYTdMWmFWeklkb3oreWg4?=
 =?utf-8?B?Ty9DZ2xvbDYzM1RHa1FZekp5ZWtPY1BCZS9JOFRMOUdKYmloVXJlYzBtYVBu?=
 =?utf-8?B?MkY1U1hsNkdRZ0NVTVFjWmVlQXRYUC9wMk5FZmhnRDk4ZkVCYVFZL1dQQmJr?=
 =?utf-8?B?R0c0c0l1N3pPbWxIMC9ZUUIyWFNpeUVjbXlJWUFwK2pMYzBTektya21DSERr?=
 =?utf-8?B?bnNDREg0b213S0JzbUs5blZJWDVZUTA0dkV6OENlYmpzSmdDdDNVTnhKQ1JJ?=
 =?utf-8?B?OEVIN3RDdVhEbmpjS3dHZ2NPM3NlcFlZeXNrcy9PT1oxM0NZdWhlZWNXbXNC?=
 =?utf-8?B?WGM2VHhqdmxsdjZVRkpJTHNyaWdZbjZjOU9udUhjZTR1K3dXNTVBZGVKd3Iz?=
 =?utf-8?B?eXJmazFUWFJaVUp5YmtUTHVESFBZYXFFQlB4cFlJNjF5a0R4cHc4YmREeEla?=
 =?utf-8?B?VXI3TjBnYWJVT095cDZoU0VHMk90Y01ZOHdyZS9oYXprdzdqaHZrRy8zeXJF?=
 =?utf-8?B?UGhuekF1LzBETUJTM1AwSytucnBxQVVmaE5kOWw1Ty9BUGZMeDQ5eTlQcERM?=
 =?utf-8?B?ZTBFU1VoWTVBM2JORDBwMVJ0NUtPY1phbUdCSVRraTR1VUJpbHgwNE9FQ2F2?=
 =?utf-8?B?eDNDTDN1Z0VtNlo4T1hMc2JVK29jdDVnajJ5YkhGaDh4eDk2cnZjS215ZnRt?=
 =?utf-8?B?cTFvYytESFdaK21Tc0dVRjc5cStiNXVmRE5IUE9td3IzcG9LOXAxc3YwOStu?=
 =?utf-8?B?WHZTNXhxcXJUdVRnNmxVN3hRbVJ0Y1pVUmIybzhRMERqQ0xvQ3JvS3FRL0t0?=
 =?utf-8?B?VWVlYldLODZoSG0vVE5YQlh6V0NzRzAzMjJmU041alRQMmZ5OGtSYy91VUZO?=
 =?utf-8?B?QmlpZjBDN3pkRHIrd2oxTy9pQ21CMEhoZGx0U0x5WjJqN3dlVXJ2TmZxTk5B?=
 =?utf-8?B?TU1CT3JFak9uYWZwVllKTDRyNDVTd091VkFaMSs3UkcxUXJ4Y25rQVRYR1Jt?=
 =?utf-8?B?ZzVtNXZtVC9ZOG1xbldIMXZ6K1lDNXFUMGF5bXdBaTU4THVZTnBqNU4zdlF5?=
 =?utf-8?B?ZFNtL2lqRWc5azFROW9aYnc5VVc2UldObmU5R3QvT2ZFWFJiN1NpNm1DZSto?=
 =?utf-8?B?b0pBSWFLR29PUHdkNVdydncxVGo3dXBvZVZHTmJaTXd4WUVBRSt0Zm4xODJT?=
 =?utf-8?B?a2thNkdXY1ptM21zMkpJY0V4Y2dMUTd5NGxyQUt4MEpzU2c1UzE1NzdHenBP?=
 =?utf-8?B?WE5DUlczM3ErSjJNWnNlT1lQRHV1S0xSVkhLZjhoa0VCV2VpWjNQYjJSRUZm?=
 =?utf-8?B?bnNNb1NUSnZTUkFKR1pyTTdBTHFCK3ZmRVRLZjFRWmp6Ti9Zb0tVS2tYb3BS?=
 =?utf-8?B?UVV4NXpCU3VEVHFsb0NOaXN2L1l5dnlkTEh1emc5OTNwSUx6dkRBNlBxZ1I1?=
 =?utf-8?B?RTJ3Y2RqRUVzOExHRUJlVHR1Z3cyZmZUWS9xNXpMQlovQ2lsTnJUamxQc1RS?=
 =?utf-8?B?dm9lSmNQbkpWT2ttUFpVNFFWME9hcHlwMTdzeDhualpiS0d2dXk4RjJONWJw?=
 =?utf-8?B?RDZxY3dFeWJmcm03TzhCZ2FIMjU5SnpqRW9WdHVwTnJ2WVdZYlRmL2wweGFK?=
 =?utf-8?B?ZGQvaEUrSnJydFVJeWNsMWVuU1pKc0pnNFJpQWROTlVzdkNVMXRPT3VaZVFt?=
 =?utf-8?B?RC92NXhDY1N4OU9aN0RZaTZ1bFdBVDhqM3JiSmhHNDhmVVgzZE1RcnRRV3hK?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XFu+TwoInx1opiG6yPnynGHAvUewK39r4hQZokd5UWm9qnVUP9w0Idhpap16qTt2CAb1uJNz4/6BWbz8J6O44AyCKWpvyIeQp1DqNIs3txuqi2m2tBvTifjjMx7E3tcByoRfDfHbr/4TrM4X/fJ6LHGeuuDQo16z79r8ydzH80TL0lvHNgNL758eTCNw0l7H8t+sPj4ht4Geh9y/VO70fyniQye6azHW88NP30PA0jRchEOsmC1MERKyUkTM63VsTLcZ3OHkg0k/QQY2VFc683CToWx5Lz+M4VwAhPTbCVK+Isba26TXHi9QDSq6LmpFysHpBXYgkO4g2V4ZqRtfmahJ3xcHVZnWQVakhmUXHjgYXYMgsVx7gKTtnahMRd0HENI8719oXRx68R/JQ0jTAat3Qms3gV+otoeaRJnfG2ZgSsbR3//poFNF1fHvofbZyu5DQGmi5kkQQGuuikWPsE58meL53jHGjzwJEU+De55IHkiDJj6/OZlQCd7BzA57eDxmunqiLq6opKAOVAMIUuHsxlmKw82FbT9crts3ni7mHxzWXdcnyj6RgjY8aJ5pmGc/ErxQDc6BqtTGk56irobqdxxEbEGkGIkOZR6D2fE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d9cc14-1aa6-4eb1-b2aa-08dde1c9aa60
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2025 22:17:22.1747
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Lpd38t0ZXR4y/BU+D/NXofQDnMNeZZMtZQWsKxjDYxczojfE+4+RM+h+cd49EbaEW0ojtMqdTHZXukj6IJwK9KkGjymZjBOfCrP99+EzCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5850
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_05,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 spamscore=0 phishscore=0 mlxscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2508220207
X-Proofpoint-GUID: A1mhhYeKqFwfawns7NxQREGC0L92jhO8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfX1ZrGCGM3/kKv
 o3ZQbXlXFmwcAjRyZmak2e44sEQ5HPeaB0CluGdLCcDmhyrrnMFYXNH4y7znGhBA3mLS3B3MNms
 9pVMFAlrxnULwFgg1WJH8iPqFeldl1Iinhp6bAMNnqG2w+q2Np6D2IWQdxhPLLQ9/XMsZs9pdKg
 Z3kQgTqBGwk2FFrXzAbyH0pOnn12m5EYH/7Xd0fMTmw9vUFAVlw43u5PnwHkwZSuiUh+w7NDtbl
 TbWFwswbMbySoFJEx3MB03qZCy69nFG1ltEzhR0NXeCugvBgdY5SDlM9z+F0edm3VwRoPA0ebho
 HUPJ/c7CSB6ky5t9neG3RFn4hWjKavNjPsfXH/OPFybBKymHQ8LGwoy16SBN+c3eEUpMc9Xv0Q3
 GAamAY8HX2W2CyuJsiPNGbZ56lImDw==
X-Authority-Analysis: v=2.4 cv=C5bpyRP+ c=1 sm=1 tr=0 ts=68a8ec77 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=cH6R9-kdAAAA:8 a=gGW7WVDVAAAA:8
 a=Gz7s5_CCAAAA:8 a=xNf9USuDAAAA:8 a=yPCof4ZbAAAA:8 a=a_ThUZH6VNjp8sSNpoYA:9
 a=QEXdDO2ut3YA:10 a=PAKoEE2EGnIA:10 a=xlAGkRsoKS0vztMnlInW:22 cc=ntf
 awl=host:12070
X-Proofpoint-ORIG-GUID: A1mhhYeKqFwfawns7NxQREGC0L92jhO8
Subject: [oss-security] CVE-2025-43023 in HPLIP for Use of 1024-bit DSA Key

CVE-2025-43023 is a bit of an odd vulnerability.

https://support.hp.com/us-en/document/ish_12804224-12804228-16/hpsbpi04033
says:

   HP Linux Imaging and Printing Software - Use of DSA Key

   A potential security vulnerability has been identified in the HP Linux Imaging
   and Printing Software documentation. This potential vulnerability is due to
   the use of a weak code signing key, Digital Signature Algorithm (DSA).

https://www.aqtiveguard.com/blog/how-a-vulnerability-found-by-aqtive-guard-in-hps-software-led-to-a-fast-collaborative-fix-and-shows-why-cryptographic-visibility-matters
further elaborates:

   ...  while working on improving our analysis engine and without actively
   looking, we found an insecure and non-compliant code signing key (1024-bit
   DSA) for a widespread Linux driver published by HP. We also uncovered that
   the official installation procedure is vulnerable to a key spoofing attack
   which can lead to the successful verification of malicious code for software
   running with ROOT privileges. This vulnerability has now been assigned
   CVE-2025-43023. Additionally, we noticed that a deceptive key that makes
   use of this vulnerability has been published by an unknown developer.

Later on in the blog post they show the 1024-bit DSA key is used to produce
the hplip-3.25.2.tar.gz.asc signature used to verify the contents of the
hplip-3.25.2.tar.gz source release - suggesting that there is no bug in the
code itself, if you are sure you have the authentic source code, which this
less secure signature algorithm may make you question, especially as they
show collisions for the short key id specified in the verification instructions:
https://pgp.mit.edu/pks/lookup?search=0xA59047B9&op=index

They state that HP has signed the packages now with a new RSA 4096 bit key,
and HP includes the key directly in their docs now, with a full fingerprint:
https://developers.hp.com/hp-linux-imaging-and-printing/hplipDigitalCertificate.html
instead of telling users to download from a keyserver using the short id, as
they previously did (which appears to be why HP's advisory says the vulnerability
is in the documentation).

The blog also notes that some distros have patched their hplip packages to
rely on the bundled signing key instead of downloading from keyservers:
https://sources.debian.org/patches/hplip/3.22.10%2Bdfsg0-2/0036-Don-t-gpg-import-but-rely-on-installed-signing_key.a.patch/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

