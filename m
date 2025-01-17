Received: (qmail 13502 invoked by uid 550); 17 Jan 2025 19:48:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13462 invoked from network); 17 Jan 2025 19:48:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=0IU0IiX6IB5KaAOO
	b6bPx9qEHLcgUN7eJ26ibSdfR8Y=; b=Jc6mUfNMbCPVZQWiCnfNmXFMChFOEB0M
	04ByRjmwCQd4jxD6wQOKxJWqfhoM6pWaUoF9GVLigYmsUMYuBvC6iewTNgsa8P2W
	T9Oi5Ng4FP+iVhCae3xzX1XFK92NNoranwJHyjGAK83AB8f1gB1VDsemS2Jog8b9
	j2stziWW4MfmaFdOc7jatLVDlNUQbGSe+B8t/HUZSiCKrYFOYDtY09WsNhKm9Liq
	IFbq8vP2xvsy/mdOg4UZldQdrbW/T3FgdVIRKzWC7anSv7xGdwBjmmgxE06pJNbR
	IXKY9ceqe00JzaR1IxytdscWaiaQYxwOpAFlbW9cs8kNjdjmqZboBg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rw/cEQyrIpmog1HwTk9+ZMWfDSEkwMVJkOCTTtc2pWM+WPOiYJgXtURv9nsUHqtEE+KGC0gPgOcgHyktVhrrrcqlcn/4mvIsNxd4FLSClT9TXPHyJJllzR34ckzFxRuGcJmHvSWV8W+pi4vwmJP7ahy4xK++/0DF35HxuCfKj//GRILsSS447ZQoJ4N9y1FV4cCUoBOzx5HfTW1XIztc5uQ6BDx5JAB0EB1V5gULaBTM3BhyzLttWMO/s2nDPJL0SrBUArlI454wiIvwwVce95jAuxhmbpmH7E6pMBEEL0wXczhb5CQrr1bXW+oHIWsZp3gaAYmdZqpJ04HeDMEZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0IU0IiX6IB5KaAOOb6bPx9qEHLcgUN7eJ26ibSdfR8Y=;
 b=QfHNBn3KX0VM0A2SSDsnAi7c+kkrF1FgGsrFrIBeMl2MBejytljN96y2xtQzcvo6K/x1KE43hpgkzBOHrc6DyvbTT3BLNwMWuYAZp7ezCtOTgYggVq/KPU0wEvW1F8EIFkTFOh1yioOrw/4h88oadM+bixh3ExCUYtZY5s0YvjqFU/Ya+o9Q0gWnyZWuKJWcYbz4Z2WjedH+MWBppN/JWc4wECJiqI+klvZDsYtyvS+f/5W+PRPe7P4RVpTBsR+/iDJ1jtDYYYWhs1moH0psE3cq8v65L0iWWu1g/BK1bKjSQ9Yq+13BH68jKE4e4/z7JVjIEVuTzXDDPLvZtZ+rmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0IU0IiX6IB5KaAOOb6bPx9qEHLcgUN7eJ26ibSdfR8Y=;
 b=pUIQ/lCqMWN+V72aajQozu8inAocuQOdU5qf54vpDub6iL3HgW/wjh471Z76VDXoHMrbU2kwmNDGCkyfMT7Y6edEa5oNiOfmRxo/MKrBBVOBmCPuHmUzX+MqhT1MvI/cuEtVnhYBTWGw/LBaa25rO9peVWU4rHmJ+WaYDr5kdMY=
Message-ID: <85f84da1-b77c-4d99-a529-6876c7beefd8@oracle.com>
Date: Fri, 17 Jan 2025 11:48:14 -0800
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1PR13CA0415.namprd13.prod.outlook.com
 (2603:10b6:208:2c2::30) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5896:EE_
X-MS-Office365-Filtering-Correlation-Id: bb825b8d-80ff-4e99-033e-08dd372fe301
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NytJSE5uMjVVRkNoS2lNbUIvTER5U0ViTFJDWW5RUExUa1p6SVlyRkY0U3Zq?=
 =?utf-8?B?ZW9QSjhPZFl0d25OeldkWkNvN2pYUkJUazlBNFlsMXFweXA3bFF5dzJpUkZq?=
 =?utf-8?B?SFVNK2UyWEM2NEVDQzl4eExQMHp3Um1HT3V0YU0zZE5ubi9naVV1NFJER1lH?=
 =?utf-8?B?MzIwR2dUenk5aXd1aHBzM1dpMWFZRytkTFg1VFUxcVk5RXRVT2d1QkFsWEs5?=
 =?utf-8?B?SWJqN2hvTXNBeVpDUkRnTjNTeHZYNEw5Y2JJZzFEeVFTL1B4cXdlUjVyZmhE?=
 =?utf-8?B?TlZBMGFhK1VZQjJxVlJNckhOdFZXd0VEeGxIdHE3ZFpsellHUlRzN2ZncjNZ?=
 =?utf-8?B?cDRxSDRMU0dZQ3VhNmVkYk5lS2FaZGdsL1FhU0IzQkwwT1A1LzU0QmxLSVc4?=
 =?utf-8?B?UlhVZWVPNHFFVm11MG1Sd0ZDMXZiaHNYbS92M01VYmRYSWRON1FIR3Y0Tzgw?=
 =?utf-8?B?bXBVS0pmVmZ3aGxYZE1GR1hPWE0xcGpvNmNLeXAycHFhS1hDZFJHQ2NRaEF0?=
 =?utf-8?B?ajl2LzRWcVp5ZGQ4TXpIK2FnYzB0VUF2NXc0SVRpM3A0em10bFFkTlkzZkVE?=
 =?utf-8?B?VFQ1VlVNY2s4b0FKUGtpRE5aTFBYb2tuVTE0akhRTmtxRWhJRUIvQWVkaC9I?=
 =?utf-8?B?NlEyVUFrb3MwWEpHaEF4YXhTdEEzc1JKU1FaSGQ0VTlNczl4Tkw5WUZiSG4w?=
 =?utf-8?B?dDBXQ3BpTWMvei82MWJuOG5CUlVlMjZDOHJZcCsvSHBDaFlZSW1SbHhCSXhK?=
 =?utf-8?B?VFRWSzY4VHNJTTcxYkVYWS8rbVpHOXoxNG03MGJGcFBmYVh6bDE0TW1xR1py?=
 =?utf-8?B?Z3NCdzkzVTkrOHZUMjkySVhMeUtpQUdYVkRwdC9OWGtYNkIwWU1FRWk3MjhT?=
 =?utf-8?B?cXZNVDd3WjBoODl0WTBFeW5raUhRSU9FMWlGNlFNSFN4WFFXWUk3eWhzVFVN?=
 =?utf-8?B?UlFjSXZYS3A1bnhJTVdYbHdOVEV5WGIzOVgrbmoxbzJNZXRHV3NNV2RsOFAy?=
 =?utf-8?B?elltZ2V6dDM5VmdMNnJLMGUvMkZpV21YeTdRMS9CNWU5M2tSL0RhU3BWWHNt?=
 =?utf-8?B?NHBoVGJCOFZUbkk4NGltdW9SZUQwSkozT2pUclRXZW50MkxyZDVBOWFJVGRj?=
 =?utf-8?B?am92aTd4bE1ZTDRQdGtHNWZaQ3gyOFltS0NRZ1VxWmV5NWtvZGpRbEZ1dTh4?=
 =?utf-8?B?WWpGanJnMnhaVlE4c1RXcUtHR0FHRm5TN1VmWHRUOVdNUWFuT3AxUUVMb0Jm?=
 =?utf-8?B?NGtCU01GNHFtYUJXVWhwNHFIM1FPUFBhb1ZiRTBTUldHRUEraW0rVkRQNmtm?=
 =?utf-8?B?bjNpcGVWR0RRMDVuRERXeFBrcEN5YmZvNFNuelptcm9zM3JoV3Bwa3NhbUcx?=
 =?utf-8?B?S2gyaUdDZ0l6Nk15UzdyTVp5cVdlMmdDclkrV0xmS3JxTmVZc2graFRKVXFD?=
 =?utf-8?B?bk1Jb1lhd2RKdkRNVkVxMkNaN1YxN2J6UEl3d1pVMC9jVmpRTHpwT21kL1ND?=
 =?utf-8?B?Y0JQWHhrMmtQQUU0V3VzZ21Qb0RONm5FeXNqL3dMZmRMcHUzT3g4cG80QUox?=
 =?utf-8?B?SDlzcjFwTUMzTVIrZTZITDc0M21HVWVSbXg1bjB2YTNsR1pBaUhhajR2N2hC?=
 =?utf-8?B?VjEvMkVXRU9xWHpnVGoyWHNoNFpoRWpOa0xQYThDTHAzWUYwb0NreUtGS3JX?=
 =?utf-8?B?UVhtVHRmZUUxdlA0UzQ2dm5PZUhNNkEvOUpuakFiNnVUZG5FUWNjcW5oT29F?=
 =?utf-8?B?VTdsUWdVTzZ5TDFtRXpLMGJVcjFPTEo2M2UveENzQUw2Zm0vbjJyTmJqd0Jt?=
 =?utf-8?B?dzdkVmd4Z0dFeXlLT1dQUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eWZJYy9xeHIxTmsrS3FuazlyYXVaRDBtTDRranRxemFVc0JTVncyUC9ML3l0?=
 =?utf-8?B?NU50bDJMVEhaaW1hVUlsUjd6dHF3YTRucDRZcGZNWGZXUkZxRmJiaW5GeHJG?=
 =?utf-8?B?WG5zUTNPT3JnSzlOZWpHUDVqOUJVZUdRNnA3OWZHYllEOVlWVy9ZRm9VeW5x?=
 =?utf-8?B?UTVjNXlpUTBnQ3AySmt6TW85bUNpQzNkK2FaSGx0MEk5R0VhaU5TS1U5L0Zk?=
 =?utf-8?B?YUcwTlZXb2NDTTJRajM2L1gzNW9QR2tjZjU0WkRaaHJHbHZGNTVYTlNBY2FE?=
 =?utf-8?B?bVlVT0VDakdPRlEyZFUzeDlYaVY5ZDBDM3BOMlpLcmEyVkM0aENMaWwzckQ2?=
 =?utf-8?B?Uk5TS3dzaG9nVFpyaGZTSTlXTWNydkFZNWl3WWVzbW5JbXBPbm8zV25RZThp?=
 =?utf-8?B?Q0xZbzhOVGQ0NGxJQmtCYjVaUjZmcjlER1kxbFBaZTJjdGpOY0tlZ0NLUmt1?=
 =?utf-8?B?NUtjYVpseTIzaDFlSjFxZEEwSUh6U3VSeE1VejZjSXBIZUdHdmYzalNHUVF4?=
 =?utf-8?B?cXdPcmF6VExyK0ttMGVESE53UjdORDdYeUJGVGdtbGRUN245akw4YjFDZzF0?=
 =?utf-8?B?MkFDdEpud1BoblBnRENHdVhtUEY2bHdHWC9LSUwwM05uaGtFNVllQ2Nvd084?=
 =?utf-8?B?UTlSU2s1VEFySU5BOGZuSUVHZkdzdkFMSE13czNEMEkyK1h1SHRFb2xuS1h3?=
 =?utf-8?B?VHBwQW4xbDJHYnVMZWdmNG1oajZNZXNqcnFIOHJsU2pwc2JGK1A3a3I2WkVP?=
 =?utf-8?B?TFRRdHUxc2RLMVFHamxZZ0hrNmN0UUpGai92RTFGZnN0U2FuY2xuNC8zVTBX?=
 =?utf-8?B?ek9zMk50a1FlQkhEYWZzVmZZY21mT05iSWlpV21OZjJob2J3T0g4Qk1vRnA0?=
 =?utf-8?B?NDJjMkpXTHkxTjBleFU1c2IyMWV0TXR6UHpXbGQ5dm4vYkFkWkNQaFcxS1J2?=
 =?utf-8?B?WDZPblNPUDdYbThDc3FKWXlCQytuRWdoYUFNU1FZMGJScDU0Y3FXc1VlUllV?=
 =?utf-8?B?MzhrVjRYUkpuNmhPUHY0VndPWDF1dUl4NGN2SjF1ZWo3dkg4aUxEV0pnSFFD?=
 =?utf-8?B?UUJ5YjVhaThQbnBqcSszNXBpdXMzK0RHN3FwaEkxclM5T3FDTXkvNmJQWnI3?=
 =?utf-8?B?ZjloQjBDdVhhRkNXaHJTNHE4aXFnMmdWQnRYcXZyR3Fva0lUL3F0VWZDYTBn?=
 =?utf-8?B?T0t3dUZWSmNEYjJYMXhoNVZoTXd5U0cwSXhFc2dCTFVuaVU3V1h1MUhyR0xr?=
 =?utf-8?B?VFU4WlBuNEJSM1hnQndIQ0R1SXh3VEliNUdTenA0Sk0zRnRSYVg5L0IxWVcr?=
 =?utf-8?B?OXFablZXNEx1NURDTm1xVUplZHV6ZG1qcGxSNFB0SmtOMXo1U0Fva0tzeWF1?=
 =?utf-8?B?U1N5clZYNFJNSHZIY2Ntb29JN3UvSGVhemFYdWI2Tk9hbWxWVHNqRmcyOFQx?=
 =?utf-8?B?czV2bVpLbXdiejhaNGc5UWpOTFF1dkF5SU0ybngzNVQ5VjJzYVNpaXExamt1?=
 =?utf-8?B?b0lpYk1tSFhoLzdBWHJuUEgvc2hQMi94dDJCWXlobjN1ZGtBWm9ZcGl6NGVz?=
 =?utf-8?B?ZzR1Y2ZpUGFrU04vSi9vNm5MZ2NTMitSVW5mdFBQYlhiOVN3K1gyTEg1bk5m?=
 =?utf-8?B?VFdKUHUrSmlZdHpTZmNmNEh6U1k4T2dqcXU0SzZSc0oyUDVQbllmMEpzNzZy?=
 =?utf-8?B?ZG9QUEtnYXpkTXRtZC9JSWt1Z05Gc3hoNTVVcExtY2M3NEVHODcyZXh4c3Rt?=
 =?utf-8?B?UmhuQkRyK05DRk5NUFpnUUlLWm1Ua3hEWmpiUUp6MDdkcFJvOWhkV2IxRUR5?=
 =?utf-8?B?SEhaeFdKK2lRWVNrMnJXTDZTakhJekUvMWFZeitRR1ZtTkgxUDZNbDdaWEIr?=
 =?utf-8?B?Y0h1U0xNYlZmYUlSRlNuMVlya05yS1hwbXlsQWRTNkd6UlJxc3gwQWpXaEI2?=
 =?utf-8?B?TUNRSkkyazU5dTFtYS9Mc3hKa3pqZ2RCdGV5Vmt5ZXpJMStQQU9XV1pIUTBX?=
 =?utf-8?B?L0ZiM0U2RXR3WjBEVkFCMzlQRUhXNnlJTWdQQ3krNVRMUXkxbDR4Q1p2UHZ4?=
 =?utf-8?B?aWkyVHU1MzBQUk9kc2RyZktBZ0htYW00ZnU1RGxrbWd6eGVyc3FrQk1aclpP?=
 =?utf-8?B?WXpXNG5vVnlsVWtTdTlXcUsyakg3YWJ2cDhMOWJoenY1YlNOb093ZTdEZW8x?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Qk92xHwOGMOc+CzsLDQ2JPpmQq3dpTMIQTcq9Rm7WcW89eRbJCwY9HkhZkrsYIGlfF2+ZUmwJLc55gbagwqrfWOT1NK23sAQ2gDKsZb1zQkbLY1SAfElnlKnUXI0DPxLnCZbFb7q7DfzDJYAb0AgWlUjUuLcuSsQpqqLYmUy5TaNxe/tdUh2M9TxnJTmHK6n4d6MwLMkrnRWG1aKVj6P4zZE6SAfhYOnCKrZ4pqDhSBSwS8X9VMqI5+6cMMFyaFf2sXYIZQrc00wBPeu1Tq3ud0XmyQXaisqewogRgdyEbq5xo8+zwQaQrIbrtqRzT5Vve57oPDv56S75cTygPSlA8lndMlJacyQKRXJDh5CnF7BXj5WgSF6nx6surxrRzXFSKqVEUuHYrBRw0n9OygvLqverIQzMFRdHJ+mvw8Ri7bHhh1a7b/jXetXBcPLVuoxWklYEdcqhCtzPvbVBK+Mxh8QZpX/giLN+FqeRFbd9pvf7bTdgScWMp+zuMKEkMl18UPSwNEeT/n3GSnYg2L+mHsQzM0+tTCBM5b5p/+Cr61Sb19ZKW18XeYeVETzMIwVrbT5r+L7TnBdY9H0QbMpxHAEViQFdjPxbvwyqy7gBrw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb825b8d-80ff-4e99-033e-08dd372fe301
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 19:48:16.9332
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvV+HBx1168e/aTQNgbPxJzBXbYQN8VtlH7/nElnB6kyeJuTiz2TH6PTZA1ZDqNGgsOw4Gdvy7t/o387930D1brmYgf3tiJ6F2oIhXJpfLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5896
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-17_07,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501170154
X-Proofpoint-ORIG-GUID: DBjrzqGpTNlAVa_LmdqzQSIvo6nzJBnF
X-Proofpoint-GUID: DBjrzqGpTNlAVa_LmdqzQSIvo6nzJBnF
Subject: [oss-security] Go 1.23.5 and Go 1.22.11 are released with 2 security fixes

https://groups.google.com/g/golang-announce/c/sSaUhLA-2SI announces:

> We have just released Go versions 1.23.5 and 1.22.11, minor point releases.
> 
> These minor releases include 2 security fixes following the security policy:
> 
>     crypto/x509: usage of IPv6 zone IDs can bypass URI name constraints
> 
>     A certificate with a URI which has a IPv6 address with a zone ID may
>     incorrectly satisfy a URI name constraint that applies to the certificate
>     chain.
> 
>     Certificates containing URIs are not permitted in the web PKI, so this
>     only affects users of private PKIs which make use of URIs.
> 
>     Thanks to Juho Forsén of Mattermost for reporting this issue.
> 
>     This is CVE-2024-45341 and Go issue https://go.dev/issue/71156.
> 
>     net/http: sensitive headers incorrectly sent after cross-domain redirect
> 
>     The HTTP client drops sensitive headers after following a cross-domain redirect.
>     For example, a request to a.com/ containing an Authorization header which is
>     redirected to b.com/ will not send that header to b.com.
> 
>     In the event that the client received a subsequent same-domain redirect, however,
>     the sensitive headers would be restored. For example, a chain of redirects from
>     a.com/, to b.com/1, and finally to b.com/2 would incorrectly send the Authorization
>     header to b.com/2.
> 
>     Thanks to Kyle Seely for reporting this issue.
> 
>     This is CVE-2024-45336 and Go issue https://go.dev/issue/70530.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.23.5
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.23.5 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Michael and Dmitri for the Go team

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

