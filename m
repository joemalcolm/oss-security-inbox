Received: (qmail 7889 invoked by uid 550); 6 Feb 2025 18:06:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7862 invoked from network); 6 Feb 2025 18:06:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=WTiM2ZCaQPi0SFaBeWS4K2MhmQtSjk6M06uEUMDn/L0=; b=
	BOQ0wHJK9ThIK4MlCqQvdBNUdJafJ9fdaYlvfi95K3O+TGQMiSiq7M5+Kq7Od3Bm
	LgELf4/qlODo/rAgfcXQYfbJvsIHZs2hHGXVcSF6M2d4BgYCEcrqWN0eCsNxIdhs
	7vybTMOjgIevKhnc2IlK5JJOGjhuleEKn0u/3AYrcMqk5eOIgGIzqz/ow37eXdRH
	WRSwaWD4u1Zjxw5VSUbdz7aFTDQfOEbLBScd+TtQ0Z8g3vgv74IwzdWTQffKDPTQ
	s5JMRpZgspe4sUycdYNXbWIYgEiTehaHUDaBujwwxQVNnsOsKi7FZ7cclk8jq7xj
	Hk6uWweKv/xhkJcyM4BBoA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDJRNSaWp5IvaZau22s9sGRG6Fpm+roZcAsnCjo4bFzO3eBDRbCGJTxc0QcYTkY3nyS4jghlp5G5twhgfTjT2Es1mCrDg9q+emSWETA9Y/IPJb9ipA376te1Rn8sQropEb/N2OqVy3WFMM/wERvCUiSVoZZYvfuM+kQ/3kgoT8xqsFPbb2drTmBR8ijqlPhz1mqJPy1gGjvcN1+/hJLRF4GP/uqiryeXbo+cXbZIZlioh7eluADE1CfRMIkG3ztFnaPZ020bKMWP1jMjbD0/ffiL722UG/BqAUzQyNzISbCMWeK/sftxBhIyvDvq0MHJ5ajps9QTkbS5AID6UxSk2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WTiM2ZCaQPi0SFaBeWS4K2MhmQtSjk6M06uEUMDn/L0=;
 b=e6U/mkm+liG/1nsLpM28JkA+HvL0g8pR4SSLvn3vdVhBfA+uC82iqR8hNc9vs2idO3hP8E/IbTcX0JstsWoJwjoALwmB0zkms9ReGN7lHUX4gIf5QqEzzbhIEKlNyMgjbSof6xbPvQtIjlDfQ6o9iIytdc+XZvpQWOWgP8+zMq4cteM1aDrb605P32qWorWCSDZhtURYS+MsiTirmLofJ4N3ctR2FLgeRIiVHZ1nUi8uQe9A+Rt5qmXqyplWjK0GWh3Oc60Kd10KzOeW6FlLnQuGh3Wl1rBo9l/mjV9LRnmasKYO6V7q9jRWf8ssd5O6TCXJGBXvC+ccQpwd1P6snA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WTiM2ZCaQPi0SFaBeWS4K2MhmQtSjk6M06uEUMDn/L0=;
 b=Gfeou/1roYOLizXu1B7+Qxz+MwSym7S9zWMtVAcpVfZA17gcmgtz3IhrtzwlW9rWr51katSBlGN1GCMHQePjgf3SXMb7ISnxf46dVUx70TI4Db848S20bhUcRdvHtL82KnuDKikBcea5x8rOz8Zhw8xBusgbCnUFN5KZlwMlsMg=
Message-ID: <af82afa7-24f3-4b8a-b90a-e0446ded252b@oracle.com>
Date: Thu, 6 Feb 2025 10:06:33 -0800
User-Agent: Mozilla Thunderbird
References: <87tt975bdi.fsf@josefsson.org>
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
In-Reply-To: <87tt975bdi.fsf@josefsson.org>
X-Forwarded-Message-Id: <87tt975bdi.fsf@josefsson.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0173.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::28) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6203:EE_
X-MS-Office365-Filtering-Correlation-Id: 582af067-61f4-4b9c-b90e-08dd46d8fe3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NzEyYnR6elVtWjdDU3hDODhYQmNzUjVHTjg4dktUMWlaUW5MUWJaaHJRcFlz?=
 =?utf-8?B?VkViZHJhTkFHZFV3UGhxNVRXSzF4NGFjK3ZGbGRFSytYeGp1UDNhUUpkOWEv?=
 =?utf-8?B?Vm4xbXFzR2k2RVlwWXZNQVYzdkJuc0JxZzNRbGlhb3JPVEJ0MGtoN1h1TFRr?=
 =?utf-8?B?ajdPOGZrVHpRL09Ic0NPWTAyMWY2Zk9Dcm02UmtKREhFOTRGVndBandwWjQ5?=
 =?utf-8?B?TlBOYTVTajFENkV5TzhnTjBraDNpQkxLaitPTVR2aTk1Z2t3Y29mSjFGcHJ5?=
 =?utf-8?B?L1BFeGZtVWE0WFI4a0NDZmg5WWoxMUZYTlFmUS8vZU5qeUhCM04xTVA2MCtH?=
 =?utf-8?B?YVlYYUJCKzVSaElJeFkxZWYxVHRQa2kwVkluMDBkNXpIWkl1eDZkaW93cmJj?=
 =?utf-8?B?Syt4d2ExdnRDTENIaklXMDRIdko5N3BHR0RyckJJSUM0OFBlbjQ5MlNLY29Z?=
 =?utf-8?B?N3Y5L0FsdnV3eEthemlFOGtnajVBZHJOTnRXb0JuT2hYbzhnVzVCUU52R21l?=
 =?utf-8?B?aXF2SXF2bTRSaTM0N3p5eTAwRmRZL01yZzNPOXIwQ2NGd29JWjlsdzJEeWwr?=
 =?utf-8?B?TVZLbWZWUlpUUndXN3hqblB1TlBuUmYrSGsvOEJQZVNSN3F1blkrb0JsS2hG?=
 =?utf-8?B?ejRSdjVPaWdHVFNJQ0RUT0J3NldTc0lFaGZSOTBqNEtNbnZFbmx6b1dhQWpX?=
 =?utf-8?B?WXBkMEFtOEtzSEp4ZTRVcENRTjRSMUliNEFRUVppTUllSHZhbXhhL1dsaGV3?=
 =?utf-8?B?SWZVNVJpQlZYNXN6TTFhdnhOUTVsNjNETTUvRDhMM1NBSzJGWTM4dERXLzln?=
 =?utf-8?B?bGlxdUd5NmM5NDlDYWtLSTRQakx5VlRlcVJLVm1GR0xpWWFTckUrWUxYRnU1?=
 =?utf-8?B?RGJFVkE5cEgrNnNMYlNGaGdNSDEzM3IxbkNLQW9iV2taZ2lRbGhwNnJSbXVm?=
 =?utf-8?B?Z0hLZnJ0a3JEOXZFMTNKd1g3Nk9pOEpnc0F6ZEtjWENrRERodnhzbFJuZ0Jj?=
 =?utf-8?B?d3dRR0h3TzFBQ3ZrdUI3bEp4TllZSm82T21CQjExcFFSN1FpcWlvajhNYURC?=
 =?utf-8?B?WFhsanAvZ3VyYXNxUlZEeHRNRVZmODc3Q0NlQVZRNmpwR05TNDNaSVByeVcz?=
 =?utf-8?B?cUt3TXBUMzNmSWNlaUZoYVYzMzc0aC9pN2NuRWNFMDFQREpzSExsN2VlbTEy?=
 =?utf-8?B?K1NLWERPRStDcUU3ZGlHbHh5QUhyRCtKY2RFc3FEL3BMbTUvRHZ0TTlua0RS?=
 =?utf-8?B?Z2lGMVRydGxjajAyalFleE5rT3llckwwczFnLzdlMldZRkp0WEEyMHNjbVY4?=
 =?utf-8?B?elhMZFRDNWc4QjFwYTlzN1dwSXVKR2l5Y25NTUUxdWw4Mm8ydDdVeENoNkNN?=
 =?utf-8?B?ZXNyQUZjNHZvYmpKcEw3aHVMTGFrMG43cU12clVMN0dpS05YR3krYUs0VFlx?=
 =?utf-8?B?OHUwb1FsOXJaNlRtQy9CdE9DSGFiNFo5VmNPUDI5VHg2bzBCeTlnZjRVSHB3?=
 =?utf-8?B?UlpDMFB0WkRPSE56a0RRWE8xYlZmMjdId2dlZzJwK1IzbEM0d2ovQzFwaDNu?=
 =?utf-8?B?NU5vdE9kc29pd3p5Y2xJOXU4MzllenVXZTgzcFRSSDVvdG9PeHdva2hWS0U4?=
 =?utf-8?B?VjlPNGZRV21yU1hNaWNhRDVaNDdmamVCUXNZZE54T29NeXl3NkNrUTJQdFNX?=
 =?utf-8?B?dEw2Q252L2RPSHJyNmpmdmJsa3c1Y3c5cUdyYmozSTBIRDFackJDNXgwcHRT?=
 =?utf-8?B?aVV1TlptT0s3Ti9KWnF4M2Zwd3doQmFwR0ZsUFA1R3JubmZYWHZUZTNUZE1D?=
 =?utf-8?B?U0FSbmM3ZjZIZ1pRM2Ftdz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NWRZRGlJV0ljREcwZDc4YXlIc0hZRytxUG9hNzVjelJSNnhwbUJiZ3ZxSnpr?=
 =?utf-8?B?Y0FZK3VtSURrVnVKY0FISmljRVd2MmtmRXc4QkliclNyS25IeEMwZDdVelJk?=
 =?utf-8?B?WXlESU43WkpraE1vSG9tOHdGU3E1Mms3TDA0SzRkWDgyMjFEbnhic2tMM1ZS?=
 =?utf-8?B?cGtnZ3BjVFF3MUhDT1hoSE5QcVBlT1FnelViSjdWMXhsU0ppYy9jTzM3cTJv?=
 =?utf-8?B?T1B0NDF5NkRQV1M5ZVVjMDhvNkwxekdNTnFEVC93d0dVczh0Z3VaOU9laGFH?=
 =?utf-8?B?aHVBcmoyRlZmR2l2a2lkcW8wRE9BUlJKeGNZSjFXM1hWbk1UNkFvdGFnRXdZ?=
 =?utf-8?B?NlkyeEMwUzgwNEx5dG5uZFUrd0hncDZwckVzRitjNnpYclVsZllScERGUWJp?=
 =?utf-8?B?U1VmTE9qbUJ6K2RuVEYrd0V5N2lzZkVXNHRDNGpZc2p4bXB6ZW5XaU5EZHY0?=
 =?utf-8?B?WUNtbncwZ1lxa2MxQVhOVjRDVlY0bG5zZFdSdFErRXNlT3BmakVPaHpuN2dZ?=
 =?utf-8?B?TCt1djlkSm9QZEI4TWdQT3Y5dXJUQTB1UzBhRkFtWnFpaE0zR0xFNTBIQlFZ?=
 =?utf-8?B?SHZWN1Nla0FsWGxTcE9JckhFRDFFdGVabFFJMThmSGFVUFk4S0g2S3dYNGRy?=
 =?utf-8?B?bmt5dFNOaU9yaFhVVmdqb3hvQ1ExMmhpTW1GNm9IUmlzd1BSUjRvZ0lvNGI3?=
 =?utf-8?B?STQ2M2tTQ0FrZE9qNUxOOUttYkI2ajZvSldnUkg1NGd0eTl2OTdpWnJIVE9i?=
 =?utf-8?B?VHBKMjRYNDVBYks1MTBrL241Q1R2T1hhYmtOM1NuMDBpMU5TUXYrN2xKSGhh?=
 =?utf-8?B?d0V3b3lSMWErUEp5dHIvcW0vNGRGaUhCbGNnN3lpNTA1SVlmSWZPWXB4Rm1z?=
 =?utf-8?B?REk0LzVyaFFKa3VNS0pyREhXNWdKcm5sNHlKdDZEQzFHZExzUlNaM1VIMnNO?=
 =?utf-8?B?SVFCMk9hYjNocWlWN3k1SmJhKzFUVjBEbEw4SDJ5OTgxNXEvUTIyR2NLODRn?=
 =?utf-8?B?UkxrdW4vRlE3WkphdDNjR3N6NlRoazM5aERkZmdPRkVuMEhyVGVKeXhZVzVO?=
 =?utf-8?B?Y0VSMUlBS1JDNUZjeG1TV3N3VmJqVXhiQjhBaHdFNHlJYlVxMnFwQmcwTjJp?=
 =?utf-8?B?NGhOZm4vZGpHaWZ5d241QUN1L3FNenpMVjdoVG9zMlV2MnZUVGZDaURmdUFy?=
 =?utf-8?B?bHVJelFsb1R2VFZ3TDlDaTd1MVNOaHgrTWlCVm5Rcndjd3FvTHdKUnF2YTJX?=
 =?utf-8?B?OVJFa0ZkRnZRR0V4d3krbnlUQ05GbkZ5VndPYnFISUowbEQ1d0dqQXZ1SnBB?=
 =?utf-8?B?bzdYNWRPTHVuSGZMZFE5TjRoYS9TY0dXL2hjQk9ZNmE5RFc1SkFYcEZIa2xo?=
 =?utf-8?B?VWRRQ2xUUDFNVll3WVFWU1hNRnRkRGVNTmVmdGc3Tm1sSU8rUk1samZ1Vk1i?=
 =?utf-8?B?eVFkUWp5N2NXVTdFWm15TDJQYUVwMGpjd1RoYkhOZWhtVnlJcEgzcWY5aVBE?=
 =?utf-8?B?ODdLa1JSRE1FRmNSQUx3TjFYR1dmR0gyQURudkFvTmdwRDIzQ3lxOGpNZE9V?=
 =?utf-8?B?RldRZnljaE1VRk02YWF6YnJpaXdoTzNaK204ZmFmRVR3dHQ3WjJEb1JxMVlB?=
 =?utf-8?B?eUExaXhYZ0xZMkdtcGZWa0hOQklWTWFBdHg1b21CUmhzeEZqMjlyV3RhdDB5?=
 =?utf-8?B?NmNFYnhQV3hUR0h2em4ybTRoMk05Vkpxa2lrdkZyTGN6RUptN2VBQXQxYkg1?=
 =?utf-8?B?RkZIYXBnb2YwbzVmVktId2V6cE02b2lDTFZZQnNGcWJpN0lncm9ObUpNRDBw?=
 =?utf-8?B?OG9QQzkzM0ZXWFdpdUwvRXJvRW1hdnNWckkyTUR4R3B3NHgyUjB2VW5MeFdD?=
 =?utf-8?B?d2daZE5QVXZLTU9Wdm96b0VHZjVMbVVkb2N4U3drV3RLWTlkYnhYaEZyQ2x5?=
 =?utf-8?B?OUlSTHB4Y0FyRzdncWlDMkRZSHlCZ3NraG9VN0hKblAyVXZzbW12WStHR1dM?=
 =?utf-8?B?Z3FuWE1ab0lEcVcydzQyWXlFb1Q1TmFoM0pETzNSTFlJT1I0dS9PUWlPZzhv?=
 =?utf-8?B?b3UxQjk4MXdsemZ0OS9Jdy83TDdpS29nMStKNGVSVjU4bmlxYzNjbWo2N0xT?=
 =?utf-8?B?MUw3czFmYmcxNGJCMG9rWEN3UnVhTU13NXBUQ2NUK0k5bHhGekRmenlLMFN4?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mxVwTXPdBmSL8LFRYUIvMYohMP5Ra7JRQGspPNEkb1UmbodhiRTWccK8qeS12WegZFdih6MrlPueFQ9aQ0vCQFDCj2hbnWzd3Apl0qKnGgzPdyTD26l2S5429ehbP3KQFeUeSMy8GLJkZTpd0//rI8AdI7Iv+niwEvn/w+urnwHu3o6BuYCrBqaDpKgi+pmv5uE7ZeRvoARsX3F0WE8qRFT6wY6JssUiOKpp9bGvgLn0+Jt27nLHhJ4WeGxOwXVJqsNzX6bQjvXDxQWpJdwxWtd/GnxR/xaNtz3Tvj7L5ATlZzyuC1AShRUZkZTBqaqNwoo0s/wQ8THdKrVsZw70A8MUXGUJUD5khTW/AaDR/bG7pfYP6JwAuQHOCrE1JC3yzt1baAtreLl/X1r1qpLgsnthY5SHD4ekP3EKgw+6Zp8egPn2/r8GClGLqAO0ewy6pQ1K8S+HC0kuWLKwDnHVN1SGtWKC3lxQElghRpsDW6oKZk6uJT3/mGR7IWd9M5G17X8LxUcRZjGbndPnGo5bC2cZlZhMmwtwpxG+US8NUuWKxpmS4Gciqqi8nyZja0o0lyVy7vxJJ4dxYiIzNqLUuVf/oN+FKBCLnDtbSSrq1y8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 582af067-61f4-4b9c-b90e-08dd46d8fe3d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 18:06:35.0200
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v3Q+heT7ZlK9HpuKx+pSyGG3Z+dhFgPMGuYzp3z0K+4Xnv6f2rkizouMHDiBFbOGBDnX4hVeoSUwKVnIZuIyok66W5HUc/3HAaNgeaCnzEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6203
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_05,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 suspectscore=0
 adultscore=0 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2501170000
 definitions=main-2502060145
X-Proofpoint-ORIG-GUID: cgR4h_vnSqyz6Yf3OKWCsk8ahBuwaKJp
X-Proofpoint-GUID: cgR4h_vnSqyz6Yf3OKWCsk8ahBuwaKJp
Subject: [oss-security] Fwd: libtasn1-4.20.0 released [fixes CVE-2024-12133]

At the very bottom of the message below, you will find that this release
includes a fix for:

- Fix CVE-2024-12133: Potential DoS in handling of numerous SEQUENCE OF or SET OF elements

The CVE record is not yet published, but a writeup appears to be available at:
https://gitlab.com/gnutls/libtasn1/-/blob/master/doc/security/CVE-2024-12133.md?ref_type=heads

It says:

==================================================================
CVE-2024-12133: Potential DoS in handling of numerous SEQUENCE OF or SET OF elements
==================================================================
When an input DER data contains a large number of SEQUENCE OF or SET
OF elements, decoding the data and searching a specific element in it
take quadratic time to complete. This could be utilized for a remote
DoS attack by presenting a crafted certificate to the network peer.
Severity: Moderate
Vulnerable versions : All released version of libtasn1
Not vulnerable      : libtasn1 4.20.0

Vulnerability information
=========================
The issue is twofold: decoding a DER input with sequences and locating
a specific element in a sequence. Even though a DER sequence is
conceptually an array, in libtasn1 it is represented as a linked list,
whose elements are assigned a string name, such as "?1". Therefore a
simple lookup of an element at a given position is linear O(N) time
complexity. When decoding a DER sequence, in each step libtasn1 looks
up the parent node, recorded on the first element, which requires a
backward linear search, resulting in O(N^2) time complexity.
For details, see the original issue reported at:
https://gitlab.com/gnutls/libtasn1/-/issues/52

Exploitation
============
By presenting a certificate with a large number of Subject Alternative
Name or name constraint entries, the adversary can impose Denial of
Service (DoS) in applications using libtasn1 for certificate parsing
and verification.

Recommendation
=========
To address this vulnerability, please upgrade to libtasn1 4.20.0 or
later. At the same time, we recommend applications using libtasn1 for
certificate processing should set a limit of input sequences, such as
Subject Alternative Name or name constraint entries to reduce attack
surface.

Workaround
==========
For those who cannot modify the application code, resource control
mechanisms provided by the operating system, such as cgroups could
help avoid excessive usage of CPU time.

Credits
=======
This vulnerability was found and reported by Bing Shi.


-------- Forwarded Message --------
Subject: libtasn1-4.20.0 released [stable]
Date: Thu, 06 Feb 2025 16:41:29 +0100
From: Simon Josefsson via Announcements and Requests for Help from the GNU project and the Free Software Foundation <info-gnu@gnu.org>
Reply-To: Simon Josefsson <simon@josefsson.org>
To: info-gnu@gnu.org
CC: help-libtasn1@gnu.org

This is to announce libtasn1-4.20.0, a stable release.

There have been 101 commits by 2 people in the 127 weeks since 4.19.0.

See the NEWS below for a brief summary.

Thanks to everyone who has contributed!
The following people contributed changes to this release:

   Daiki Ueno (6)
   Simon Josefsson (95)

Simon
  [on behalf of the libtasn1 maintainers]
==================================================================

Here is the GNU libtasn1 home page:
     https://gnu.org/s/libtasn1/

Here are the compressed sources and a GPG detached signature:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.20.0.tar.gz
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.20.0.tar.gz.sig

Here is minimal source-only "git archive" sources:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.20.0-src.tar.gz
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.20.0-src.tar.gz.sig

Here are Sigsum Proofs:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.20.0.tar.gz.proof
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.20.0-src.tar.gz.proof

Use a mirror for higher download bandwidth:
   https://www.gnu.org/order/ftp.html

Here are the SHA1 and SHA256 checksums:

   ef6a358e16e056476b4be121ed2fb2ce11d791ed  libtasn1-4.20.0.tar.gz
   kuDjvUwC1K7udgNrLd2D8McyukzaXLcdWDJysjWHp2w=  libtasn1-4.20.0.tar.gz

   99a90d178b5c9ced099ec0039b41d8d67cdede99  libtasn1-v4.20.0-src.tar.gz
   47y9GZy7b2wyv+WziXEa8xhMTZL5evK0u1CgrnvVLaY=  libtasn1-v4.20.0-src.tar.gz

Verify the base64 SHA256 checksum with cksum -a sha256 --check
from coreutils-9.2 or OpenBSD's cksum since 2007.

Use a .sig file to verify that the corresponding file (without the
.sig suffix) is intact.  First, be sure to download both the .sig file
and the corresponding tarball.  Then, run a command like this:

   gpg --verify libtasn1-4.20.0.tar.gz.sig

The signature should match the fingerprint of the following key:

   pub   ed25519 2019-03-20 [SC]
         B1D2 BD13 75BE CB78 4CF4  F8C4 D73C F638 C53C 06BE
   uid   Simon Josefsson <simon@josefsson.org>

If that command fails because you don't have the required public key,
or that public key has expired, try the following commands to retrieve
or refresh it, and then rerun the 'gpg --verify' command.

   gpg --locate-external-key simon@josefsson.org

   gpg --recv-keys 51722B08FE4745A2

   wget -q -O- 'https://savannah.gnu.org/project/release-gpgkeys.php?group=libtasn1&download=1' | gpg --import -

As a last resort to find the key, you can try the official GNU
keyring:

   wget -q https://ftp.gnu.org/gnu/gnu-keyring.gpg
   gpg --keyring gnu-keyring.gpg --verify libtasn1-4.20.0.tar.gz.sig

Use the .proof files to verify the Sigsum proof.  These files are like
signatures but with extra transparency: you can cryptographically verify
that every signature is logged in a public append-only log, so you can
say with confidence what signatures exists.  This makes hidden releases
no longer deniable for the same public key.

Releases are Sigsum-signed with the following public key:

   cat <<EOF > libtasn1-sigsum-key.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILzCFcHHrKzVSPDDarZPYqn89H5TPaxwcORgRg+4DagE
EOF

Run a command like this to verify downloaded artifacts:

   wget -q -Otrust.txt https://gnu.org/s/libtasn1/sigsum-policy.txt
   sigsum-verify -k libtasn1-sigsum-key.pub -p trust.txt \
         libtasn1-4.20.0.tar.gz.proof < libtasn1-4.20.0.tar.gz

You may learn more about Sigsum concepts and find instructions how to
download the tools here: https://www.sigsum.org/getting-started/

This release is based on the libtasn1 git repository, available as

   git clone https://gitlab.com/gnutls/libtasn1.git

with commit 6b45b25e94ea538192cc0f97e9ad57171d1c6374 tagged as v4.20.0.

For a summary of changes and contributors, see:

   https://gitlab.com/gnutls/libtasn1/-/commits/v4.20.0

or run this command from a git-cloned libtasn1 directory:

   git shortlog v4.19.0..v4.20.0

This release was bootstrapped with the following tools:
   Gnulib 2025-02-01 c89cd2fbd3b9f3d7c5a146247256599714c91ec7
   Autoconf 2.71
   Automake 1.16.5
   Libtoolize 2.4.7
   Make 4.3
   Makeinfo 7.1.1
   Bison 3.8.2
   Help2man 1.49.2
   Gtkdocize 1.33.1
   Tar 1.34
   Gzip 1.13
   Guix d48da2d21610f9cf5f76cd846703b12beedb1fd5

NEWS

* Noteworthy changes in release 4.20.0 (2025-02-01) [stable]
- The release tarball is now reproducible.
- We publish a minimal source-only tarball generated by 'git archive'.
- Update gnulib files and various build/maintenance fixes.
- Fix CVE-2024-12133: Potential DoS in handling of numerous SEQUENCE OF or SET OF elements

Happy hacking,
Simon

