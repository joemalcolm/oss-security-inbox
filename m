Received: (qmail 9596 invoked by uid 550); 3 Sep 2024 17:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9566 invoked from network); 3 Sep 2024 17:35:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:references:from:to:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=0odGkVCTFkOxMNQiLsmCBfEwngew4roQQnTxoLAzymQ=; b=
	C/vi6HDOkZSTtdSft6CpYW2AX7jzjgnyBWXoPyBQXSGvof1XvavwyzgXkB0ZIA79
	Hjv9/dJLflW3EMfL1zKgqMbn5xOzfQPJNaAMKXDExeA3qxhKy+g7RmTuhhekkGYz
	ipfXWTYR8GtHdZcIzRnCQ9OqPvE7RXm8Mg/iMH2C1zQIK23QH7WnxTU03edotB/z
	D6oiSYcidt90lPYGsBKSCcoLbcZNYfdIGReimo5FtKDXdQh7RgsfEnsD2RkrD2T+
	vbTtpeE2Ind6ohdgSr9+uo28bLMHVCB3xuZzpikcX4nCFueY4jJDI+ziaph3hDow
	d8f/Rb2yvM3FZS1zKsc9iA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eb+dm9GsGyT2F9Y+n3hHG4IkxHPXQUzNoyrF3uktvWxDv4zvlm0dBSo4r62byJnadCj3oOiTVrxUjs+nDSjcbxUTgfb4vx/bZLfiU5G9R+vU+Sk53h1vTceYMn2t/66zoVvJU5JKW0l3jq2AYw6/hpVPNGZWmN3jhKMBUaxYPo/iWt0BoHUDt8E6WuKb/QsMowPlyPKeRJa9jS+moEmcGoaKFv9iWet/78HV5D86dr15RKtW2bADp2kkDg1peJfEMCTrHaIM0zGx13r7XmH3XkvHdhSA6PjKK/0RAkviSMlMhWeiAbCViy8CCRkSVJCUdYhnVkGwHxLuP4H7LX46Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0odGkVCTFkOxMNQiLsmCBfEwngew4roQQnTxoLAzymQ=;
 b=RFGYUo2Jlyp3pBrpDTs4K5oCZhsivFO9stFTJJs3sBoRUrYEnuS5/GJJlkOXL7wOa4cs6id7P9V874He6mwTjLrUwD2o2hFOnlcSGWRE+ojFe9XggAab8PDm/7i9C0IfTy8u/1E7Po//osHJPDex0/TgWevpwwKa5j5vmEb6DLebthqrLkZCR/lDRTY1e/RZh35i1S8UiARPigMmsGY5nVHtiz5Xqp2BGe7o9g9RkRKhg+bmfvk9cBDDboMBiVBMLwGu+xtdpXD3PemsGq7xyhPYraeW7klgXSgg31/ttzfGnSF4uz5aiyEgWrnJyeth6Mhv5EO21rBL6o2JB3zkww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0odGkVCTFkOxMNQiLsmCBfEwngew4roQQnTxoLAzymQ=;
 b=PAzBiObionP5PXsJrdYNmypuvmVTjf907R3BKzbDApjkJI3SJWEWoMT51LMl4kySg8KAaSajXwSe9eaB1sNFaIYboU+71CgsjVIgLFxrwuF6lXGxuwD9Lv8BVT0WpJr4SCbpAFNyMH2GmXmpbSF+hHixKnD9OgoLhpO4eBV5MK8=
Message-ID: <b330440a-3d8b-4452-8cfc-20d95925ec3d@oracle.com>
Date: Tue, 3 Sep 2024 10:35:35 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPT5OSOJ_BPQMBGwUrijkG-jX5meC0U_WD_cdTheXG7ynw@mail.gmail.com>
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
In-Reply-To: <CAADqWPT5OSOJ_BPQMBGwUrijkG-jX5meC0U_WD_cdTheXG7ynw@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPT5OSOJ_BPQMBGwUrijkG-jX5meC0U_WD_cdTheXG7ynw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0190.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5707:EE_
X-MS-Office365-Filtering-Correlation-Id: e62fe4ac-ac15-4763-e6de-08dccc3ed214
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WXhvelp4TFFTQ3c2bkF3R1RpK09DR1dFNE9NY0FqdzdleFMyUVkzenRpMFJI?=
 =?utf-8?B?Q09jNG9yVC9ZZmgxS0xlWEZFd3ZTd1daclloOVZyKzVUUENoZkJaRXJ6eGhV?=
 =?utf-8?B?UmJ2cGF4MVJvaU5rOWxmbWljTkJZNFNKcUxaVmFTQ1ozOWhLQVhPcVBxSldp?=
 =?utf-8?B?SzdibjBxTVpnMnNERS9RYlVGWUNvbENuTW5iTXlDU2ZFREtKT2s5djZkVTk2?=
 =?utf-8?B?UWp5bFA1UUlWUUVGNHhqaVRLRHVXeEdqcldZSVZoa1FKeFUvaTJMai9zMHFx?=
 =?utf-8?B?eExtN3A4N1o1NmtMdzdFS2NMTFBoVUFIQmM0R1F4VkRUWUJWaC9pTHNzZnor?=
 =?utf-8?B?dXArQVd5T2MvMHd0Ukc5aDZxUlU1VjMvaEN1U0RkeVdZdFF2SzgwK1RHRURD?=
 =?utf-8?B?SVo0enNzYnExQk5RUWc1WmFvdW5hYzJUWFNlUFBhc0VpT0RJZklxL3NvdFBZ?=
 =?utf-8?B?Q1k0T01TZ0NUc28zMHFKQlR5eG9ieWNWTVluL1NPZm4yRXdiQlFseXZRT1Bl?=
 =?utf-8?B?dG9IVXFZaEdQM1Fxa2VIVGpRQXdOaXVHN1ZGV1dKVnV4a3JTOEtGQS9LZXNa?=
 =?utf-8?B?MlJiYm5seDZ1cEJPcDk5ZW9sRXEwZmx1NGpyc0o4S0FadUwvNmhMYzNvakVx?=
 =?utf-8?B?TWp1MmZCK1JMWmlWQ2ZISVNiMy9CcDVHTTdDZHpKRXJpUEhnQ0tuR0w2S3BP?=
 =?utf-8?B?WjQ4N3IzYUZHNS9FRTRuTmRKZkpCL1ZJbC90dEw3UzlQRWt3RFVVYk9GUzdv?=
 =?utf-8?B?djFhR1ZQS2VYQXlKQk5qQUtQQjN2S0FYaFFjSW9DZHJaVXErT3VkVGRtMUN0?=
 =?utf-8?B?RWtGc3hBdXNOUDlTbmtwMWNQYllIc0U3bVh1KzcwRWhnWjhqaTVXVE16YVc2?=
 =?utf-8?B?ZjlJeFdKYmlLOUNkUG1ieS9vVUdlYlFVUGtaVDRXU05tOERidXRqcTZkQmx5?=
 =?utf-8?B?blNXSlhlZFNleGZHQU11NFIydUdEYVNQSDBqUnBuaXFOb2hvQUhrNEJYOWQ1?=
 =?utf-8?B?UTRQam5FaDhqVUZoYmVQTnBsYWJxOXc5ejZkaGJUc3lVYlhiQ09kSXF1Y1A2?=
 =?utf-8?B?RlpFeUFyQjhpNXBYMU1RWmdpdXNUMnpVbWppS3haMUJJeW5FWWtQaEJKSWVt?=
 =?utf-8?B?bDF2RkxiRWZHRHI3aXJIUWo2eC92aXdsRll6dVZqRWh4UndTS0ZxNmF4VTFy?=
 =?utf-8?B?VmwwKzAvRGtMclJJRjdKbjFLYzFVUTI1UFZyUFo4MERXZy83K1psZC85TUYx?=
 =?utf-8?B?eGhIQnBocjZVU3ZJSVRqbFR4cE9SdW5Kb25PRVNmRU90ZTd2eUFYS2s4Y1dK?=
 =?utf-8?B?Ulo1S0tKYW9Qc1JKanF6VklRTDA2NlMrN3gxcHVLOENoWXBpdHdXTXNnTmRy?=
 =?utf-8?B?YzAzaVE2SWRKUU9ZU2dzYXZSdkQ5OXdOa1F0eHBwdDhEVVhoODFqTm1Hbjcx?=
 =?utf-8?B?cUhsN2hySnMyR2w5c1BaNDUrVVhLaEF5VHRWdENPbFRZVk91VlZPTmdlOHhL?=
 =?utf-8?B?OEdlOHpxRlkxcGxIUUpwN0RpMnN5cmhKbFZLOUN2Y0doOEJIZ1VnaGxSVXhU?=
 =?utf-8?B?WW9ETlorYU9CRU1abktLS1FLVFNyYlh4d2l0dzM1WjMzUmFwTE9BamtZeEV6?=
 =?utf-8?B?T2NuRjZaTkNVazk0TGtDcVVsUWFBeW9kL3dKU2k4MDVqSng4a0RCbnk4My9M?=
 =?utf-8?B?cGVIa0xVNmNWRXhYTEdDT2FBYlZTQjVHbVFSNnNyMkdyWVBkbmdDSHQvNGVS?=
 =?utf-8?Q?nct15bM76AkOEB5c48+YgKVtOBvWIY8EmIwbrOI?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TUdicHhZV0VUTzIrWnl3Z2I4aXpqQjBmdDNWWXM5dFBROW5uNm4wZEt1bTJp?=
 =?utf-8?B?NHk3ZjhnUmhUQ0ZYbEV4TStiNWdET0JrYkRBWitFbWM2am15dEVzb0xLNmN6?=
 =?utf-8?B?ZWE1SXBWMVBoaHVwbk0ydWVtakZ3SHZ4OUcyL08yS0w5N1UvTHlYTWx2dFpE?=
 =?utf-8?B?MlZQTzlESVZMTTF4TWw5emlPN0RUdXp1U1lxZXl6R1M5c2NNbVVicERzNUkr?=
 =?utf-8?B?aEthWTRhSERCK2RHSmYzL0pkU1kzQzNzTUd4eHo5Slo2TWo0c3doQTlxL0cx?=
 =?utf-8?B?UlFGblh0Q3dLY0xSOFZQbFJyZ3VYM1VSQ0M0ZjdselAzMllwT1lWZlh6RlA3?=
 =?utf-8?B?Nko4Mm5zRkFjYTRNYzROSGdFNDlCMXdweC9udGZsSG0yb3FuZ1UrUE03eS8w?=
 =?utf-8?B?M2xyRzJtRHNwK2NlcXFIclVGQWFDcWFKdnFreXA5Q29hMlN2OGpVMW5EZis2?=
 =?utf-8?B?U1dWVzh0cWlTNTR4V0FrZTgxYzloZzFWRStyRnFmVk14YnY1dGtPYVMyU0NU?=
 =?utf-8?B?eWpleUFSb2xBVm4xS0xBdEt0bnFmOGs2c3BZdmMrOE9CUVRFZ1o0NFA4Mm1w?=
 =?utf-8?B?Y1FDTXk2NmJycFpYV3ZWNmNGN2tETFkyNDNPR1djdjdTdDdSYTZGRzBDQ3pO?=
 =?utf-8?B?bTkrUWNtcmVHMVpwbkI2d0RoeEdKTlBxOC9JZVF0YXRMUDBmcFg0Q0tnbWY4?=
 =?utf-8?B?RGVZQ2tycUJOMVdmTDZlQzMzNzVwcmg4bGZYYXpPTStFUW5UTURObmM0S21I?=
 =?utf-8?B?WVFMSXRBUzBHRnpyWmxlMDRnL0Y2T2JwRDNJQzhsWW9Zemo2cGVNUENsM2pV?=
 =?utf-8?B?N0FhVnROR0pjZ3JucW9sOTdlUUlaSkRMYmdTTEJjOGZBTmpKM09WeVVRMVd5?=
 =?utf-8?B?ZjRmanM3ZVpUbmZEVkZBNldKa3AzcFpNWlkwUUZ6b1hFeGVLcWo1b1VjVnBG?=
 =?utf-8?B?Z3d4MzlxRnhnYXdWeTQrM3RtMUR0TEkzSkREWWdCWk9uZWk5R2RKRXNzVFFx?=
 =?utf-8?B?dzB6UE9jREpLbGxrQWJHYjg2OFJOZW9tdXUwYlMwTVhiY1ZtQU9PTlBmRWwv?=
 =?utf-8?B?cGw3eDBmVE5mL0V3YzJyMVNWYTE2QzFWWTJtTVJ2WGJjaWRNOHJWTE53S09B?=
 =?utf-8?B?akVVM3lOTkdJRUVlRmVZRURuWkdjMUFKaURWVkZjbjJ5aUFBNmNielJlT1Zp?=
 =?utf-8?B?L05na05iSU9YSE5WdW5wUHZOVFJXd3pobVJVYUplZUlSK3JoRG8yL1JUOG9Q?=
 =?utf-8?B?ODFWSU9nU25IbTUweHJzSStwdlRTN25iUFdLTkN2ZEhMejllcEdzM2tTc2hE?=
 =?utf-8?B?NjRCVmNpR0lidmoySGFSKzFDdUJqdUhqMENlM3dpVkpHNmpxSmF1SEZ0UW1N?=
 =?utf-8?B?OHFyMlZvcDFxQXFiWTNPaFNJZjJ4SGtDdmdOWXphUkRaRGJsZnNDT05LYkdM?=
 =?utf-8?B?QUlSMElsR1F2QnA3NGNaWVBXdjdZOG5ieDcydS9qdzlkUjh1SzRNSFNBNERy?=
 =?utf-8?B?bWRnV0x4N3NoY2tDamZQODVKekdoSlhzZnU2TndlL090ZkZzQjNqRnpZSitL?=
 =?utf-8?B?RjBZdUxINWYrcG8yM3ZwREhuSzMxN3JsTmh3RURyelhXcW5pSFFtSkREU1Jw?=
 =?utf-8?B?bUFsQnlKTEhJeXBFTXFGa2lseGg2QlpySHMra2FIOXl5WGUvdTh3OWwwUVha?=
 =?utf-8?B?TE9iUk9qWHhVSEwxOEVDQlIzS292azNHU3lYT2lvbkxXbFZZYmVINitDdktk?=
 =?utf-8?B?ZmZNMzlBK0VlbU1KNGFBVDhNeUwxbUM0aTJFVC81elM5Q0JtdklSOVBqSGlG?=
 =?utf-8?B?SFZ5K3RaTkZiOXpoYjh4L0l6SE9hUFFHbmZuZGNkRjZjK0dEZS9KbSs3VG1n?=
 =?utf-8?B?RHQ5c2U4TGdQNHZBRWoza2dDYWorbXBBVHpGVlRKSEJFL0hKRWFyZG9FcXNs?=
 =?utf-8?B?ckVlNnZET0x2bnhMQ25uMTV4eFZLQWlhNElnWmxjS0xaeDVob0l5L0szaXRQ?=
 =?utf-8?B?SHY4ZEpaQm9tOHNPalhTMytHVVVMYStpTGUzdEd5OW9wUXJBRG9BTmMrYUwv?=
 =?utf-8?B?ZS8xbENPeUwwYWt3UkZRNDkyOFlDV2kvQTMrNUw0NXZTbWhORkhKUGo0aGdT?=
 =?utf-8?B?bXQzZTNZN3RKN0U5aGRraEoxQU1lOEw0dDFHcVdvMzU2aFJhSmJtbXNUMmNk?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	K9R4iXMTN/FYCnxcPmdQfO0TL4FWoxoIYRIHZAT0C28AGvXKYtMxpJG9NCgS2DDCW6fxD1byFxIdbVOF7GcmPEqWxBIBgMt+dQcXjhhNgPSuHIFYRGyStlkWvvPZ1lnkg0AeB1VEPCu/eGjzy1ZH4s6uAfmRUFH2U8hdvtUpIMcNI9gUIS5F3gTiESQLf+wrs3bKrBrqx4PYF2nUJzNHPlYcQf4Jav8mn0yjKjOu/HsRNKBUrGAZnjv1QdhJl9dgtY55jKhaOiqOuei6H+jm54DE8BWok4XYzFvE6CmnSJ1/8lS5Y1kf75Nws55MSquIBQ4/Az+cKD2g4IhQ9T5rSE+Q2tr9BYj2up5EwtPnwUZcwUl9bAiaFwTo3n+oCUdKLv8uWLRLONmEJB7bdzeeZSqzfTP+AYR+ZhrVQzmGQy+uaQ5Wlm6C2LATaWed447oJbAqxV1AuI/BTR9ZbDWUGJC1BcVsz50Qh2FbWFHg1xApRVlehY4CfU+WFFOrP9X1Y/H2FrnkyVoRu1LGFGKRShsqHoWQUavCJpqYhgHp3okmkzVCAbzAe/GrD5z7g716AxWCMDPwtLrY8j8gGTjatqEj5O3m9sWZaurSeZ8BSpA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e62fe4ac-ac15-4763-e6de-08dccc3ed214
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 17:35:36.5930
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gWvtyH9x63syoiaRLtLbRJe0WLfks1+3HU2k7kMxuvBfr8wzaETsLJXdQdA2EsSarSmRUHvzUgHo5IL7LGI3XlTaaN+X1Tps9NFIOJxAmEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5707
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-03_05,2024-09-03_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 spamscore=0 adultscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2409030141
X-Proofpoint-GUID: zyCvrKU6f4PXF-foDaMpgmuk_cqO-xZX
X-Proofpoint-ORIG-GUID: zyCvrKU6f4PXF-foDaMpgmuk_cqO-xZX
Subject: [oss-security] CPython: [CVE-2024-6232] Regular-expression DoS when parsing TarFile
 headers

The CVE record currently says:
  Versions: affected from 0 before 3.13.0rc2

and points to https://github.com/python/cpython/issues/121285 which provides
this slightly expanded description:

"Today the tarfile module parsing of header values allows for backtracking
  when parsing header values. Headers have a well-known format that doesn't
  require backtracking to parse reliably, the new method of parsing will only
  require a single pass over a byte stream."

and has links to pull requests for Python versions 3.8 through 3.13.

-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-6232] Regular-expression DoS when parsing 
TarFile headers
Date: 	Tue, 3 Sep 2024 07:30:02 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

Regular expressions that allowed excessive backtracking during tarfile.TarFile 
header parsing are vulnerable to ReDoS via specifically-crafted tar archives.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2024-6232
* https://github.com/python/cpython/pull/121286

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3/lists/security-announce.python.org/
