Received: (qmail 1328 invoked by uid 550); 20 Feb 2024 23:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1289 invoked from network); 20 Feb 2024 23:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=SB6ZoMZ3pBRDcr3ytBGtUbDuIRPGkRvEDimGzx6m9VI=;
 b=hLMFZDtsBbWgOu+TbXSWWzZJgzNq/HawfVgt/Yv7myzhcCgZ1y1YYD8e4sZEyQck0kqP
 t5YB7DIk4YajToLvwjWuUVmClNQfKbsGv9ZA4UjG66YqERfjae7UmR3kOd86cY01DWC/
 u1J8kTVtVmMtspyQXPFnbO60wp7qRaWP4jT/PzvaEvpIUoF79xOw28qxRkSg3TVVySdG
 ux0xvIKUNEpcdrTaTbztm8vIHg4lV7oQvZuE4N0YTZxXABu2dZCzBww2b2/MlDswzbHO
 5ZP/bD13xwn9LBj0fi7m8C40NNIZYM3/Lk8epd15tC7xSuhDXVCWG66nQFRQRrQJ02ip hQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K21YRK7jc0mNDh8ordfOHlFHFfNNuPka33ZxXloMJYQC6J1P10EuA5EFnwAeHrgvAF2+w4pc+syFIypxREbFiJ5tOmaKCfSZorsUCnZl9zDo7ZICHzSdRmAokYWpqY+xnhZqZdgsnAJPrFzAH2R4NE2ToVCsVbMJZEx1VpUdRZaRfRIc399u5Rw9D6oMUpIkU3tgrgYvNokL2WjnJROdQU7hzNgCEvyfA/9dglwJ1CXrXmh+NoAFkLXMC6vpDQCrP7xR7S6LxYaMogWWD6jrjZYJzXafmvZSvlyFtQKRS3R1T4uJBqhtyTQzzFxIT71/BinuZc4hc0waTVdH7iNjeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SB6ZoMZ3pBRDcr3ytBGtUbDuIRPGkRvEDimGzx6m9VI=;
 b=CEHXkS2YGLJcJHo6YC/r/EVKsDA0/3aucyaUeTIIiYHd6cpSqH6lqBVXsTbXJE/NWpItoLwFkYFx2hLUKoRvCvfH9U2Nk0yDPqTrReWCd/a8OkfCLWZ/qjtnGxgOWIa8ouXP57pZ8c/fuh+1zUdf3sW//lQmplx/wwdZZJKgoh8sbWKw0+CwbIQYe4ivuKMrH14swmBHiI7L2uLgMyCk7TM5UVebH8r3eHguIcYI7pMcEF+MgdJ2AWCD/y8yL0hE3NtshvOmuhkjahHSeG5x8dxRterJNUOiG7119HKCPvgDYdKSd4rmkeL3RGezXwa5o+kZ4b5eknmNcU5RTPLuKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SB6ZoMZ3pBRDcr3ytBGtUbDuIRPGkRvEDimGzx6m9VI=;
 b=K18yKmkjRJjyblGRg8s5jGrs40hw3T9dZhEbX5D23iKMC1l3s2PQxCqyie3LVpFQAkAeExSRTlZmNdfQktqXVjURhbNJojfxARdTbBjnkTXahTp0wo3o6XKsco/9mxAJp5SmT2xqVRWInUkJLu3vDaN99XOL2piC5KH+rntkT3c=
Message-ID: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
Date: Tue, 20 Feb 2024 15:30:28 -0800
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
X-ClientProxiedBy: BL1PR13CA0217.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CO6PR10MB5649:EE_
X-MS-Office365-Filtering-Correlation-Id: c8e5c029-f5e4-4292-f5ae-08dc326bee10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wa/f7lgDrRHYAx3MyN3QXTyoSSd19euE/cPRFAIHN9gCkAu5e0JYQ5uANL6iBfrj7JRPBeshzX5efd/PvANG9b+sTCKP3SnBLT5CwqjTqw46DLxg8S4iEjecXNVK6+akutuGe5Ioou/09pLmctImc/NPlVF5+Ty0Y/h3iRDkf9uuSyNtowWBAS8Tz8Y7WKO/JdfqVPJAPV8NPk6tc27Ffdkr9b3z3WmRIbqlKftGuqJrQm7nWyXwXX35KSyzFmvPzhw7CCbj0oAN7PVWG9a26f3RUWgmvhYOsWxJKXOD5bfbWOLw9rgunWp4Kv6Ww5I3Ils4vGq26IrYQE7MzuisHx9u5SFz+iDPM1Yh5ynVc9Hqp8+SPsUFGUxZtY6d7a7A8MH2Ku4xRZzfQshRGvXifQR4kSSOAfxB3jSoAUdAA/2k1csw1QccYbxqhf2M9UhTgHviBtA7P+CH41++NDrEdOuyQrBqeGDo+WpjZncGIBFDnFnQhRGAYxGPEPy0RjO+k2k3igyPpEFDgM0x6sxZvg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TGJHTGt5L2IzNzMrNWtJNGVzUnQ3cDFKeWlSZnFXMzRxM3BoaHhRMHFSZWhw?=
 =?utf-8?B?aEVzdFNjSHVudDVEUWhEZ0FXMm5ndGpqVnlkNkJLUDBJYVB5VVpaaGdnajFM?=
 =?utf-8?B?K1hLMVY0Q2RhV3ZaNTRoRk1WR3NqajJzNnp0KzFUUWpGbnI4TkZJUGVzdW5Y?=
 =?utf-8?B?dGhVbmVUM09YRUFZTHcwZXFEckQrMTREQUZWNlNxZC9QVXB2YWpuVExYQmcx?=
 =?utf-8?B?RlN1eElvN04vaWF3VnBjQUp5SFVWYWEwVERTQjlzN1B5MGFETHkxV3V3Y1gv?=
 =?utf-8?B?NVg0c0dRUHRSL0FaNE1GeVRnUHlaK2U1TEQ2MEF6VlpGYkpoN0lOT0lNdENh?=
 =?utf-8?B?UUJMRCtUY3dUMjAzNHJjNU56KzZUd0pnQ2daajZYZ082M1FOTCs2T2RONjdv?=
 =?utf-8?B?a3VBMk1yNVhkNVJyUzJJVHZnOXJ0RjZvRVF2RExIbFlzRk1ublAxeGtiRjZU?=
 =?utf-8?B?cHIxelNPZ2puTUo0bVVRUlpvRHcwL3M0eHZrb2MvUjJYYVVvQXcrNWErSUxD?=
 =?utf-8?B?cGNBRm9lVC92L3FPVG0ySFIwUHpYbUNYUXVGWURRRy9TUTNMK2JubmJ1RUFO?=
 =?utf-8?B?MkZieDVlS1RGQ1dxM0ZTS3JFZVpOckZYZzB6aTlPWE43STZrWDNGTGVRMUJx?=
 =?utf-8?B?UlNHVVI5am91OGw3ZW1jYnN5eHlJQ0plUEp1MjNrT3YwN0RWZWZJMzl2dUJD?=
 =?utf-8?B?ZVI5d2doN0NTeko3blNnSzBQb0FzMlNacUxiT3c5bFZGa0h4eTBFNC9YeFhG?=
 =?utf-8?B?RG5pellWZ20wdDM0ZjJhRHJUMmNoVS9udnN3WmpDMDBwVlVSQ2I3L1phc3lk?=
 =?utf-8?B?WE1tN01FYVlmOW5zc3FmVnF2Z2J5WWZhZ2NCZ1FOMjdqOWp1UlNkVGRtaDI1?=
 =?utf-8?B?bmg5bXNmeXd0Vk00SHV5SEtiV0pqWWNUK0lLRTVpM0xrbmR1MDBibkZJQjkv?=
 =?utf-8?B?NVkrdEdiMmpoYldyQ0tuTnBlcWxHYTR4YmVhZmQ2NU9Veks4SzhBUzJScnNE?=
 =?utf-8?B?ZU9FcUR2YVhuUXBaclJOa3dSY3FaVDh3cHJlSlVCblNwc1QzYm9naFJDMTZu?=
 =?utf-8?B?QmowdGYxTnFrUTZQMXhHOEtMdlVRTDNES2JZMEl2djV4bk1Cc0tVaFZTWkIx?=
 =?utf-8?B?bkpDWGxlY1pBYXEvenlSaWRaMXFkUEpEK1AydVZXQ0F6QVFiWkEwK3pNcGZr?=
 =?utf-8?B?N3ZhZEFlTVIrUk5vditiRmJhMXJwRCtlRmJJQkJ3MTV6TExhM3B6TU56TDQ2?=
 =?utf-8?B?Wk5NckZOYldWUWxmMnB6YUJYY25PZ2pLaUFLMlE1NEEvZTIyUUZpQWR4RGg4?=
 =?utf-8?B?MVVkUnZtM1ZDTmdCZ2k3S0htbFQwSG85eUoyUEw5a3QrOTlMNnRRYnlmRlFI?=
 =?utf-8?B?ZWVLRCs4TWhvN2VuWW9YTzBzTC8wT3Bjckg1ck5sdHJiSFByUExmY1lydG1D?=
 =?utf-8?B?ZWxzb3hxZDdHMEtsb2JiZnNyV3JEM3pNK3BiK0NKaUNsT0pVUG5qM09qRlNQ?=
 =?utf-8?B?dDd3WXFrRFlHaURJSzBleWFjdWswS1Q1WWJCd0p1TTlLWFdEQ2FDS3g1WXl4?=
 =?utf-8?B?UUJ3TnVMVVJzTmo3MWFvN0ZVbXk3cXJVMVdOYmVMcEJkZXh0ZWNEQ0w2UWZa?=
 =?utf-8?B?RTV0Uzh1cU9CT0FISVNrNGFZOUVoSGZCVUVWaU1CZXFmbldXU3l5UHFiTmlE?=
 =?utf-8?B?aURJTi8vWnEwWnp2ZnpmMTVlUU84aHhLdjdvcEJXZkxRMlFGbExjOUpvcVNB?=
 =?utf-8?B?cHI1RlpRSjBVb240Q2xtaWFsNzZQY0I1YTJuR2N1VVR3RzlpTFZQUHI1cE5J?=
 =?utf-8?B?bllLbFVEdmFXZmpUTnNwWU1kelVTZG1QWlc3WWZUQzZIQVdTTlVlZE43cjZU?=
 =?utf-8?B?TU5sdlkwdDViNUs5R2tPb0dCdFJxcjk3UXN3Y1ZuclFLRmNQR1hsNXQ4STgv?=
 =?utf-8?B?ZEtKdkFjbUxkZE1XYS95ZXpuMit4K01SOVNJWVV6dERkdjliNW1YbjNGMDc4?=
 =?utf-8?B?VDBlc2tUWmVwMGlyUjZ3blI2OWg4ZFRHQnJQOXM4K2RmWkdPVDNUenNlZ1Yw?=
 =?utf-8?B?Q0M2ZU45cVNIaEUwMUVqL0IyN0FOSXRDTVhYdWx5RXNDcG9vZC9GNWZDRGs2?=
 =?utf-8?B?UmMwNG85MWZqNytiSkVzeUJwUTB2UnlHdWJ1cnBvcHAyK2NaUEt6UmozOFlm?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	x0r9t2K/iE2Jsc+kjDo2oQU008pITfC0+iGEKRMQkPZoKc5wR6uM2thllretulNccih9LnN2jcMEoxA5nWtSxJZsw4g8CzIYRbFIs8i7CGl+NkDg9W1LMWSzi1kD8ZtCF7+thqYVNrT5ivFVkJxYtLw22Ybn1qaans7Mj1F8K61R1jykUSl3BLzC8imR46TyCIgwF4gc3p8SzL/1YqG/78HwYt2DXIN6ryTg9YTLXXiuSpGqjDsEDqQgNFkHWOO5TYjAxQk+2Cw1oQVNZUjvphEzN0FMWaNqEtIqDOLTn9B8yw9Z4hzeKrr8Ce1D4VOh/kyl4ZMcuUXhTxCsf767F4iNmtJDU0nYo+tBsgrEvOHmxiXwo233LnYmQ4tkFEzIVEArfuWiq3BlmOHwo9dBsbYDewDb9P/9+4Rlt2sjKxJYSVjQt80GcMjrmGDt9+Zv6c7NqfSiTb9CLU3U2H+912bqo6YFg/b3oCb4DBiYptJ/9ENQFKoBVpyx13sGt0q9d96u6BUfuw2NENfP4RCXJhIIGvDeGRMyKntK1JsUCi7ODM1bC0d3o7TsKsmk2UwZmIBNKOQRIJ5l0uYSBRfhkApIsXg1cptHvF10oGsf0mg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8e5c029-f5e4-4292-f5ae-08dc326bee10
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 23:30:31.7745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 52OsyUacJtbr4FOua419kfpPEE3r38AOQAuqGc5A+w3DUOr6JNYoU/V9ZXzcqYw4r+E2VQh2+dAw9OJbzRRIedNKf2hgXKigVQcn0PzNPQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5649
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-20_06,2024-02-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402200168
X-Proofpoint-GUID: IhBJ9kLwHgpoeC0I-2ZXHp3bvD5NR1I8
X-Proofpoint-ORIG-GUID: IhBJ9kLwHgpoeC0I-2ZXHp3bvD5NR1I8
Subject: [oss-security] CVEs issued by the Linux kernel CNA

As recently announced [1], kernel.org is now a CNA for the Linux kernel, and
today issued its first 8 CVEs, as seen in the archives of their mailing list
at https://lore.kernel.org/linux-cve-announce/ .

Their documentation [2] warns that we should expect a "seemingly large number
of CVEs that are issued by the Linux kernel team".

Since there's already an archived mailing list covering the CVE assignments,
I don't think it makes sense to mirror that large amount of traffic here, but
to only bring to oss-security those that are especially interesting or useful
to discuss further.  What do others think?

[1] http://www.kroah.com/log/blog/2024/02/13/linux-is-a-cna/
[2] https://docs.kernel.org/process/cve.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
