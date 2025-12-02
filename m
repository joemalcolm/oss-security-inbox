Received: (qmail 24067 invoked by uid 550); 2 Dec 2025 00:45:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24019 invoked from network); 2 Dec 2025 00:45:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=bQvh6evwfN8Q/FXw
	fnM8AegKldpUPz5fasq+ORIf0JY=; b=j773C5dZoGdExad6whE8/DEt82PNgMRO
	BmzrT28lUjqS0R2BGa4nkrIMApLAYKjzGIP46DUqJITOa+QVGizlKjU49bqzrkHK
	7Bb7SutWuPCdj5N2Ap2zvXFRLuVB32Ic9H3lTnhcr+6PaWBMM4bL1UcmyEz3eNgp
	7holTKzTQ+ZGvClTS1RBn4PHx3W5vU5bsy2hFR3AAECrir+nkAmQDdqVa+LNE5qq
	o/poU2/JxefsJF4OFfLyLath0mRGLuw22gXiwz8guao14qH9KnSlohewXzn5xEi0
	rQnjoN+v7xG49Xp8g7qUQEJ4kwjh0+JvqLGrSSKU15jJwcXNaHGcrg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BcPQA/mWqFnfF4dJNejA5nyKZ7FNQfzr98QzJFJ/7tfSTdPCt/CetKP72RGZUgHXwX6a8LiVctzWhR8uzgGhs/iEngHHLMLocRJiQXmasJlThij7fAq/3d45raAf3uP80MAITmFYoILKDzJ7Um9c9hMRais0qhg2SVdwWPqIbaL02b4KC+JUlyA4MlNTZA4w72/vVt2BYztcrO1bbMaRNnCL3QjVsMVQvwtk2awpKRrdnU3H5LfiVCmmh8/QyMG4tYuBam/v/pyJgt0MbhIddS/qcfrE7UhGwUinZgf+3j5g7agObz7pkbbTqBZh+yD1jmc06wiRw8VkRD5oQRRzwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQvh6evwfN8Q/FXwfnM8AegKldpUPz5fasq+ORIf0JY=;
 b=ZfWZ1PKS6YFVmMv34krj2ByVp50/a2+zx1ktDT0xNuv2ruXCn3lz2yaFwNRHcl2wodlleZQvA87qkLQpRqCpSBRqULoYA+pYXLNn3fzvLjL6NWYJAWIUw2kjK/aUoqR2oxT5en31tYBDPqkZ6tsH8Dc9nZF0rwWoJLL3A2euW8HA6CsHgZ/ippbNr2ZDM6xS8zNqhvhLaxOaJAFmf2Ze/+Nom8Xuuu+TqyYxDC727OCFM/Iuuh+kYHzPAQsVGPfaiC0TriLcAZbvkdENdB7IGgS1cylP2xgAfj2i8o/50xaOchMFrKOj+q9pI4H//8PpegbSSbKkoR24Dmon+zNT+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQvh6evwfN8Q/FXwfnM8AegKldpUPz5fasq+ORIf0JY=;
 b=qRBSYlFf+nNmzrP7McKyf003OfY+2jePHKCyXNSKU5shhkI1RusMTfllCSwgOb4KISHHglCAm3pVRGyRawhKlwqrpwULTLMG/XrxypOcEAKPm/oMQCyTd+9ngWvcJjmkeA44LApjYrQ9FYQeE0SUFaL4wO7TrTOxelr1D+poTgs=
Message-ID: <4bc72c0f-245d-4498-913a-146887651415@oracle.com>
Date: Mon, 1 Dec 2025 16:45:33 -0800
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
X-ClientProxiedBy: PH5P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:34a::11) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|MN6PR10MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 3260a39c-60e7-49b5-4361-08de313c1aae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UGFvVkRuSW1BeDJrQmx5cExZSm4ybER3dGJNTmQyUlROZ2dpM2o4WnFtZU5P?=
 =?utf-8?B?a0pxSDBNQ3dZWjB5QVBzN3d3ZTN1WUIvZGsvc0I2OGs2RytPaE5vT0V1UEFH?=
 =?utf-8?B?WFFVZjlZU21oZ2xDUW5yYWlsK3k2YUpQSDRWOHVQOFRKUGZzZnB2ZFFVSHhj?=
 =?utf-8?B?eUZFeUpMUWJTMVRFSHd6OENPL2V2RXBpSG5STGE2WnB6VXZlWG8xdVREOXI4?=
 =?utf-8?B?cnFLZXQ0UU9qMzBOTXBSREswTXVMOUxnZmwvUmE5SlZFNEVmTnh3WmJ1MmJr?=
 =?utf-8?B?M2duV09QWnEySHZvd0RSb1NuMnF0bytnU0NmaHhmZTBUdjlMNDJsYkhFRUF2?=
 =?utf-8?B?RGRLYlFMQVRCejF1M1NRRHFOa3R1b1dDbTZjYm5YSFpnQUwrdWUybUc2VlI5?=
 =?utf-8?B?WnpCRmFlNmhFK1FJN3Y0N2ZBa3FsZE45eW1DZWs5SEJ6QU1XNDIxb3lDTVJk?=
 =?utf-8?B?MG5aY0JLRXk2MS9yMDFOdlVLc3V0VUIzYkh0OHdnTWhuRXhyenFFaWVKVndK?=
 =?utf-8?B?V1pGQS8xR0JNK1hkckFEQzJvS3IrWkxiOVBLOVRaZUk3TEc2SGpXL1k2QjJ5?=
 =?utf-8?B?cWlIY3h1VGZPNHlaODlwOThPTzZZN1ErUld5OFE2VlZZQ2RaYnlXd2h3M0ts?=
 =?utf-8?B?dThxQTd1KzRzcmd5RGFLU2t4M1IvdEdKVE85d1UzTGpFRklvQyt1amROMEUv?=
 =?utf-8?B?eit3L3ZBSXJTcEY1UXl3VEdJTXVFNVhkM3lRL2IwYWRhSjFoRGZrdndxTXhh?=
 =?utf-8?B?S1V3bXRPdS9BK1hINXRHdGNtTFpoblpyY0hkWGhHWWptaCtjL3NBaGk1ZlhG?=
 =?utf-8?B?M2UxZVUvbnJJY295OEplSW5hYXZOekcrSmRLNkNDaVhyWnNxZ1hzRll0Ynpx?=
 =?utf-8?B?TWZBNGVwOWNpN0tybmNraHdNVzR1L0pLdE1lYkFqQlZqa3d4dml2MkFhakJQ?=
 =?utf-8?B?WVdOSUpBTVp1b0U3TENBbnp5dEg1TGtHUFZ3WUVJckphYWlNMWp0Wm1ORDFX?=
 =?utf-8?B?Z3JUcmhkbktHcXo3YklYT2x4ak04VlNVaGp6RW00bVF1cXVOZ1VnUitZT3Fp?=
 =?utf-8?B?VDlKVVdqcTRkTXlKZnF4ci8zSGRIaG93eEhrSENTVVFBVmZwbytqWnhaalJI?=
 =?utf-8?B?MWZWUXVzMGZ0Sm9hMVdyNHdkSDZKdWxFZHJMMzcrMGQ4TnoxRWE0U3B4czFq?=
 =?utf-8?B?ZE8yVEZNbDlQU0lCaDBpeFBXOUZ5UFBhYy80V0ZJUnlkNkRucjFadkI0NXBF?=
 =?utf-8?B?L2xHUjFwY3FaY2VRbGVJOXhYdGVsWGY0c0FCUmM4RUhuTjFqWnpkNSt1MGo3?=
 =?utf-8?B?MTAwQUJwMVh3dEIrYW5Oek4xenlRdEFYa1F6T3BHNUtycERqNU1YYitMUDJX?=
 =?utf-8?B?STk4YnRVWDdFeU5WMXdnbVdhSEkvOUkrM1NvZitXUTJhdnRqUDhkQXFxSFI0?=
 =?utf-8?B?bFBaY2tZTHNkZE0zNmNEVFhwVHpMV2FRdWJ2bXltVjNOaTZiSzIxNDVkQ3FO?=
 =?utf-8?B?K3l1UWRqK2tiRWVjRFdVM09Wd0twbEZYUW5uZUZ4YzJ4dkFaK0ExL3hVT2lC?=
 =?utf-8?B?R2lkbGNCWWNDVnM3Wkp3VTNkbERKUzI5cjh3Q3lRUDh3aGhkOEdqcml4UXMz?=
 =?utf-8?B?eWtVbENaaVVqOU9tamI5Um8ybUpFOEZMekd0NHE0SnhiTkJYSHRGeG1JSnVx?=
 =?utf-8?B?UEY3ODhRRUJ0UGk1TURqdlN5RGM3dXFidG4zdXUrRklEeWlDOXh5ZzVJYzAy?=
 =?utf-8?B?dDdCWDZVK2JoaWkzd2YrVmZicUpaVEJ6cDBnMzRoS1pUQTM0UWg0aGNzNDRx?=
 =?utf-8?B?U2xLY0VtUDcwN2tzYXY5S0J1cGtNcjdidTMrbkJjUzZxNlh6eUFscWtzdWFU?=
 =?utf-8?B?cGd4WjJzd0FGcjN0V3A2UUtVN2RoZFdsMlpsdHJBYW50WTZLVVpDZFhGVGRO?=
 =?utf-8?B?R0hWbk4vRXhEeUxhOTdDaUg4Z1VBcGs0WlB5YXBzR2tYSjN6ZjFobGtYZ21K?=
 =?utf-8?B?Mk9QZGlXL29RPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eW04YmdXTnNvZmxBZS8wMzJGUnVWd2dnVHZMcWN5RTBHVDhySDIrS1FSNXhI?=
 =?utf-8?B?V0NRVnJHZ3FFaU9kL002S2sxRkd5SVk3aWdXclJQR1NDMDZIYU5iQjROMlU4?=
 =?utf-8?B?Q0ZHQXhTa3pOcUVRVlhRTUx5bE16eEdCMEN2MzhnaEUzYlBxWEcrdzUyT2hX?=
 =?utf-8?B?Ti96eVh4a1FTdGVLUUpxNmtVd20xdW1vMS8vK2pPSno4am9EU1lTM3pRaDBL?=
 =?utf-8?B?ai9LVk9lOUtyajFGa3d0QTJPaktyN0Z1Y3FvWVcwVE1qRFVRVSsyMkVLcHkr?=
 =?utf-8?B?OVBPWnduZEljK2VKVGpYakxjZ3gxRVlzbHRGMWQvL2J3ZlFaRWxKUjAyVTJW?=
 =?utf-8?B?TWxVZWlQdENBUThJK0NhWUw4ekRaZ1A0QVlLUjBsY09kMHhsOFdWbmdrVS9j?=
 =?utf-8?B?RUVKelIwVDczTEpYK0JNN2I0dW5teVc4RjR1WWFScXZtQk03SDNZYzZSRmhj?=
 =?utf-8?B?SUlJSjVBWlZnMHdJb2NjekZPeUJYRnc3amYzWTRIcjIwemp1S3IvekRJUHQ1?=
 =?utf-8?B?Uk81S3NXbkJZSWN1UDVDUjM2QjdtalVvWHROMmpDMDBwdzdxSlN4Z3V2YzNR?=
 =?utf-8?B?dFJ2ejF3bWQ2eEtPWEJmMUFjTkpNdlJKUDFmTmhGZ3d3SWZveS9wY1pXYm5G?=
 =?utf-8?B?NFJiZkg0LzRJcmRNVXI5ZDJud3FzNHN4aDRzQXc3dGNPR2pXd21OWDg4cHJZ?=
 =?utf-8?B?elFUcys5T2haeS9LVk0vUFozWTBiMU1JNGxwNEZ4U0J2R3ZidnhKTnpDMnps?=
 =?utf-8?B?R08wQjg1akxDWm1Hb0FJdzZ6eCtGNVQwNW9ROHkxVVd5ZFdQdkMxeVVpQ2Qr?=
 =?utf-8?B?K2NsTkxPRmNiYmxrcjFTem5iOG9jNUNSS3pFMGdrRkh5eTZmUXdTS2VNc1hI?=
 =?utf-8?B?M0lmSHhvTWRZRko1ZXNwczBrT25GU0ZjU1BJRnR6UUtud3lxZEdaeGpJaGhm?=
 =?utf-8?B?c3ZNZ0VPRUZ2bzlBZlB2cDd6MEpTSUl2YllOQ0V2RG1EdVRSdE1LeGFPZlQ0?=
 =?utf-8?B?OEtnN2pMaXVQRU5Mb0tnUjhhVHdKdzN3MUlNTzZrTE1weG9WQTlONjdQTFpW?=
 =?utf-8?B?WDRtMUo1eHV1VHZ0NjVKaTl0eE9JUE8xMEdPdW1FQnZGbzBVRG9PQXpTblZo?=
 =?utf-8?B?UDZiMjVyWkJXbytZcEx6dGZXQ2lmcmltK3lvMWJHWmdaaVFNUEJ3blIrblNY?=
 =?utf-8?B?OVNpSEZSYnRGZklOd0NHWndtZVRNai9wbG1Bekw5NTV0WW1aRzV5MFZzNFRw?=
 =?utf-8?B?eGVmNXZrR0x0SUIwRERKbHBpQ3ppdUFZd0pCOStPakg3a0FpUklrM0tDMUs5?=
 =?utf-8?B?eitLV3NUZ0ZRc0d4WjFIRm1sUEI1MlBZMTZJRGlEd0MwZG1QVG5pK25ZT1Ny?=
 =?utf-8?B?NXdBMXE3bVBja3Y3eWNEc0s0eDV1eWhwajBReVlCZDVzejBoY0dLZk5nVTls?=
 =?utf-8?B?ZDRJbHB2TzJLRitsR1ZsNHROY1I1M1NDM2U0elY0cGVyQXg3RUtiSGYwa3g2?=
 =?utf-8?B?eEdNeTQ3SU0wbHE1MGZ1a1RUdjU1NS9NRkl5WmRkSitSbmZiRzRFcEdVdDM0?=
 =?utf-8?B?ekRlc3l1aHprNjlMM2RJenUyVXZOR1hHTE5URDdJV1J0em9RNnJIcmFJL0Uz?=
 =?utf-8?B?YnpkOHYzNG9XTEFiVWtDR1NQQmNBSHVQVWkwVEZFUStHVTlEQlpVL05YWTlR?=
 =?utf-8?B?Vk9mOXE3WHl0SmFQckFqdUMvQkFwSHp0T25ybGJmNHdXUm55akx3MkJXNkhB?=
 =?utf-8?B?TnZYa2hxbU4ySnM0c0pFNWpaN295em9kRU5vQ0FqVW9LSXpDVzIrNGljY1hN?=
 =?utf-8?B?emQ2NmNIN3QvWUhQejlGN0c4eEpZWk1KZm1XbktnT2txRktEOWRQYTkrM2FI?=
 =?utf-8?B?YXFqRFVMM1ZkUGdiOENDUTdhbTFCbWFkYklXRit4MW9lSmt2NmlmN29naGJF?=
 =?utf-8?B?bzdHMXhleDUwZmltVDgzM3dSUFhVNXcrQXV1ZnUwUVFJSHdIUzltNUlIWnBS?=
 =?utf-8?B?NFNnTTBEbHRqOGlYVjRRTGpWUUxqYVZmdk1YWjR5Nk84Tmp4WkZkUGYyUGFy?=
 =?utf-8?B?cDljSU9VaWo4ZVRucWZBSUpxZ3ZXVE8rZndQcU92WU5Sb0lvNnoyVS9tLy9k?=
 =?utf-8?B?VndRcjdLZkNaWEEyZ0FxSHZPNHp3d0xmTEg5eTdYa21xWUltR3c2MFo0VFN4?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	cHehRDOiZ6MnU0uBPUDd7FqFK3AZsJBEqA+I41MofrbnJN9LZeu3Ri0gGiGaPRM0S9tYCJ0KiTQJHPLB2v713cAmbfrANaw6sRh8PDANFm6E7/FWRnRPsB9OKnh2WHKIgkxehhZyu3UGm9HHITRMKrm1R1Gd8RTqui+M0Ffd/uczxkIo1TPFeQJ6LdM+C8y3Qra+Ugmxve3RSEj0bmJ4wj4RRX1WuwaP2pEdts+jmT+oNXThgspMNQ8lVom16pfbQwfw2qt44myTQ68c0855SZO9PivOsur03oRBcO6w2qDbkO1K3YB9euEXoxtZmrKTegYE+PBCwkcX3ksoL5pqT1cOh8LwPBkRMGsCnFsFKYntY5GDlS0vVKrjlyhaZospJ5R6NEoVeWLzKeQjM7LrSBWLLrbtYt+OoWRt9NZCqekfzfDhCuJZdbalcbaB3TuxDPjMbKD+z8fVTqkZreZtGHAeHmMr9TEl5e5QHcazlTwhJ7VT6Ee/h2KFn6fCzA+tvXK1CDEF9iGHeAIfx5LUcA36u7BbFNpoV79X/CpO8Tcfe3kU3ll1WGdwXZwFaKune50bNzD0I0YFMvAmp/c/F2wLwM3OiOMqbu4x99kcgys=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3260a39c-60e7-49b5-4361-08de313c1aae
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 00:45:35.0182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: whKsofEbuooU1SdAPsydZfzFkDily5X3S0hQjstMbEs0xhBnHDnNH9HA3TZAZD0vXuU3Z/UOz/J6UYw76+amhdJgLAakQ8764mBaEgvpM2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB7544
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512020003
X-Proofpoint-GUID: FooBmpcKWSoV7bF7xrHhtsejCPDHHSks
X-Authority-Analysis: v=2.4 cv=AaW83nXG c=1 sm=1 tr=0 ts=692e36b7 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=6sw20gh6xyODh4BRCJkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDAwMyBTYWx0ZWRfX3cGvVD/hCpUx
 2r9UAvZ3wAxJsRRU9cco8+DzfylpcI7CxsuhcXGmZRYslKAUnTb4KiP+HOU6GZdnlPVXui0h9kE
 zrKtxIm8fjSR3/cj7+Erkz8h1iQk79ZS/mjuEuQdOXqIG9Es07ZCkR/jhAUgl+rUomT9EdJFW62
 LhDdUBGq8JIX260Wr8Ap5TLKH6viBw+xbPMWjyP/+Www6u3Oo1g8MZ0dy2WCTtG3iiq4lvKys2V
 x9HiHZYWBx7H4AUw1757aZgel2KlQNCIS9Z9DKU3Ir/Ad4Cg7Ipm+0fWuRaEL4kTP/520KnbNVj
 sSSeu2SpAXElCD4rTYykITdQrU9NtOEjb0FhUKwk5xRTyoV+pLbTBGGixetTxixC+3MGtTCgz70
 xfxhRngCgWOnOejEfMgXpZhnB6/e2g==
X-Proofpoint-ORIG-GUID: FooBmpcKWSoV7bF7xrHhtsejCPDHHSks
Subject: [oss-security] expat looking for help with another unfixed non-public
 denial-of-service vulnerability [CVE-2025-66382]

https://github.com/libexpat/libexpat/issues/1076 notes:

> Hi!
> 
> Just a quick note that there is another unfixed vulnerability in Expat on my
> desk by now:
> 
>   - It's been reported on September 25th by a human (not fuzzing)
>   - The impact is denial of service
>   - To be more concrete: A crafted file of size ~2 MiB can cause 25–100 seconds
>      processing time, depending on the used hardware.
> 
> My own priorities are elsewhere at the moment. Please reach out if:
> 
>   - you want to help finding a true fix and
>   - you are okay with signing a freeform NDA (to keep the vulnerability details
>      confidential until a fix has made its way into Git master).
> 
> It's not going to be as complex as resolving recursion for Expat 2.7.0 but
> the path forward for a fix is not clear yet.
> 
> Best, Sebastian
> 
> PS: Comments are intentionally closed, please reach out via the e-mail in my
> profile, instead.

[note that I'm just passing this along - if you want to help, contact Sebastian
  via the link to his profile from the github issue, not me.]
