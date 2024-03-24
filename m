Received: (qmail 6132 invoked by uid 550); 24 Mar 2024 16:00:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6099 invoked from network); 24 Mar 2024 16:00:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=KKygGCW9/5OQlXoCKzKgPv80PGhXoKB+h1iKFvXV2gc=;
 b=G6K7c/VERZpkbXOnunS2n/D9UzsREUM373pZzEsTURJ8XGA0BY8SrV5FkirWimLCm+a7
 aGEvaZkAjAs3dxmdaAjFJ3ADxUi4lK0bSpsWkEckiJ5A5HH092QgSwfI0H+OBHHuGpeO
 rbgHjVxi7Nx/+mjL3/VB/Csrzni1+KWWNJDX5dP6Z+8tvIu0bnY1OmtkTObKg+N60Y0R
 pnNxzGnhAiIE8Vv14IprVKE1gRdz42v7W5mFWmfjrkunj0nnxkfPNkIY/WAtQDLMAHqR
 4zMIvxtMWhLtXmyiMAcafWOqYCIggKLiqOsMc1vU3zCxHwllvG4Swr2+XiFffGCMFcso Qw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UfDik2uES8U3RUFJsqbZ3GGNKswktBd0TfqOoWvXOs6q+GDP9ViD7FDnRBXIRgK58Wn1JjubHXfxkI5Q0cO6f6XU0FWanky/WTtyRPE9b40lTHi7DyrXMNQz9wF9HwGhsr0eJVVX61R49vV771jofBu4w4RtqxAiJn4c2oL6k5eI9TIdxjTzOgkXHr0VXcDG/r3IDR36XFsJykCefnNwCvI1d9K2GU+Hz/3k4CcKTvy1GE7OQvWNGfotNNA5tlErJ01iLoIxmu152ltwjdAIPO2ladDaBsnfvpT6tngqnu4j89D2hTg+jJAqV5SPQp6A2P4xHHaDKoOINzGgc78AIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKygGCW9/5OQlXoCKzKgPv80PGhXoKB+h1iKFvXV2gc=;
 b=HFZ39OFoGCfUFcfmeWdtNVHTVvJYXkeLiO+6O3UAAE+UFdOvBIQoigO7aTODzIl3f5xOLz4MHpjvX+qc24vXidMFze7W4bUNggVXvohZOJSdUXLwY9gk5KUGkqOQRFpbUuElNXWocjiSOOxwWQ0kjUrFBeerOBlKm1klSiemOYPEWZo/NjRKgAOZ/+xcGRR+MHkCuDgcTASji3aL80U/xKAFcAS8r7LGpXzU+Dj+3FQZk22DTafWx7IBAcCzXn3oTJ3WdLPzvGGHuwEUnB/JyNGnxwGJk/n1Tiy40DkUGGfcyia56v4mvfdX9aKrwrWtbQKMnz3UpzgUeACdmKB+eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKygGCW9/5OQlXoCKzKgPv80PGhXoKB+h1iKFvXV2gc=;
 b=Z8OCl9148z9jb55xyRz++wsVSZ+vsFnWUND7Sv2XcE2fQuV6OY0ZKaRl2Y9ChQ8Dx5Cqk40GBgHLpajp2fiR6Yd0PhjBDqLTQH6+2zSow90Fn+CZQKu+dNa52EEyAW9vVf6S0EfXXbW3xRI+ojQ5dC06qsmbnJk5gobvGOX6S3E=
Message-ID: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
Date: Sun, 24 Mar 2024 09:05:20 -0700
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
X-ClientProxiedBy: BYAPR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::40) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c59177-484f-402a-bb13-08dc4c1c3604
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lv0GIKBzmBn1Bhn6PYLcjM51mv6yRw8zqSkjESVDrdRXUyXGLLRlR6e1W4VrDWvy5CZeqlLWM1cwB4Jl/axMIkJs2sF3ReJTe+qxaE74OgE0AnIJ4hynPvtDIOBajXSiij1ap5YszegbOjypsHwQ0RI7bZTP8JJFbwbcrGB59YpnxuLP+id5r/uHt9O7GkkJi4ggYzUk7Bhswu3agCkgXAGOfq8J75uyD5FoQUKAfkXJVuCTahsxopsmtnOVMPhD0CnBqnKoizF7RuxFaaS6bhCI7SSuwiTup+OVx1hzDSTGVV/JD4n1g1P0wi/VnbsUFCHCC5Ld+9aKWlIbKNkBA3tUQ7ErpwHco3i+NaxkfIdC5hnWlvaQQYUHLE1E8K4uErfbo+8wxm6LF+UonokKd+abcwSDjaowdi8kVo2CYukUhSFSDiUiybL9iTvaS4Dcbhf978jL6N2Nkf0uDogab4GOUsa8w2t7bx2iXsdIdmFbZQTIashHEtjAjF6NABBOU3K3HXMiHUGayT5NH21iorM5vqMZ+qxqRism+Bp/TYCfRmQ1shkvHkAlU71gWu9HShp+xN14njeCI1Ri/LVk6pzldriUvTb1lhe1g5N+QBkg6DDS3CphiiIKWl5zp7O8
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZUhsdk1FaFBmU0tiY09rR2ZlSEFaSXU1RFVYempTYzVYV0VIQm9LSXBIdlZP?=
 =?utf-8?B?QW9UZlpORzFTNFpRbnBDeDh3eFZSYUNNSlhqeC82TytNd1ZlRlJndktRYWIv?=
 =?utf-8?B?K21MM3ZqdlZtNWplU3BPVGx4blc5VGk4UlNyK3RMWldvejcxczhKRnU2Ukd3?=
 =?utf-8?B?RTduZWNkenZQL0l6c1ZSam51WVk1R3MwbGlpeXZUWGR3dXIwQ2hMYUh0TkdG?=
 =?utf-8?B?V3hTb3FOUjk2anoyTXdQUDJKU3BoeHdYUEltbDBDZ2ZpZ2JuSjlPVmdMVUV2?=
 =?utf-8?B?ekZYVEk4YVNsS3V1Y3ZlLzlSUTArbnI3cm8rbkJkY0I5RlZ5aGE4NGM5elZ5?=
 =?utf-8?B?c0JMT28rTWpnem9VQm9GT2RPRlBNS2RpenlSWlRhUlBIdTBWTUJyUmdkLytz?=
 =?utf-8?B?U09kSDl2UFliaG9wK05KYnNXeFFOa3pzUVhVaDU1YkRZODRVSDVUYXN4c3p3?=
 =?utf-8?B?clVVaTBKc0tuUjJoVnNjVldUNEFLN1FIV2FucjdSamdBdE4xS0cwQnJob2pN?=
 =?utf-8?B?eWpHMnd5Q1JzWmZoeEF4MVhFVEI3Yk1CbnBaTi9tamo5aU95aFBVSWpDMUJW?=
 =?utf-8?B?Vzc2cFBaUm40UFV3b01KUkZyaGoyamtUYUEreFlPbHB2OHpVSStLWXhBY2pR?=
 =?utf-8?B?bnhPNGJHV1lUQkNKVjFEenN2UkdFVTYzeTNXUU5vWllTdDhRcE9GODR1NTRS?=
 =?utf-8?B?NXlFTFBjZDA4d0tUb0R4bjhNU3NtU3VFQ0RVUWVoODdGWWt0QzU5ZWF4RGhD?=
 =?utf-8?B?dEpJTnFpV2x3ODBzOHJVWDZoc0pCeUwraFVPd3ZzeU0xVnZEWVNGdFpsOUcx?=
 =?utf-8?B?d0tQVlcxWmdPQVQ0NkxhWnBYQmdoWiswUEZQRm9uWFBmVmJncWxhWkU4aDJ6?=
 =?utf-8?B?MTZtZU1ScStUaHkrQ1VLbFgxN0d1L0xCTkR0YjR3WGpqaklhMHRXVUlzMEhm?=
 =?utf-8?B?NWliR0diM2xEczRuN3cxRS8wVnpoamJFY1dWUml6VVJvNTJPT3NTVkZabjRZ?=
 =?utf-8?B?UDVxR2hTeDRHNXFrQVg4dVJFSVY3cmZZSDVCSThIN20wcFZaSFVwUkFCZ3lS?=
 =?utf-8?B?SHptQVdYVitNUUxsc2w2bDZyTlpSMGlMaGZteThheGQ4K3g5UnpycnZienQv?=
 =?utf-8?B?WVNVN204WlFtZ0FqMk5DY3VaVlNmbzNReTNsK1pCTi8xRlRzRVMyQnZFaDFv?=
 =?utf-8?B?THErK1ZBNjZtTmVLaTdjT3FiblVRZGFJQldZNmhIK2VQM3FqZnBhZHo4bjhO?=
 =?utf-8?B?U2hkZGh0ckdFckJDcmVDa0ZwUmE4c2Jqbm9RYkFUalcxTlU0RytRVXNCd1Vt?=
 =?utf-8?B?MElkbHpFNnd2R2FPS08xZGU4UUFiU1lMR3QvWXRyNjFzRjdQUnlsOUdBQ1RN?=
 =?utf-8?B?a0xIZkV1bUVvZnBzNmE1VWdDSGFDUGRmMGVaNzFjSmdFVnBETG9hT2F5SGZj?=
 =?utf-8?B?NlA0cnp1N2dNWGpOZThzb3l2YVNUNDlCRWtGRXlXZDN2L2tuZDdhU3hFUytG?=
 =?utf-8?B?UlkxL0NCTjBnelZRSi80bk9XUVVhckRyb2hJV1NpQ2JZNVhDbXJWYnpZaW9S?=
 =?utf-8?B?QWRYZmNrQUV3SzlEOUNLU0s2SitnOEpHU1p4dEs0QnRLNGgxTEg2UkxKa2k3?=
 =?utf-8?B?eGxvM2hKWHF4cWcvVWdVaVFIMzVVN0h0T2EyNCtyTlFIcHhpQ2xBU2N5a1Zu?=
 =?utf-8?B?QWh3TEdoRFpySENpTEs5eXcwcmxUL3EvVE0vb1ozWW1MMVY5N0VtVFFjdjNB?=
 =?utf-8?B?aWgwYThmY001UmlKRkF5U3ZWOWtXYWE0cmtpMlE1eXJ0dFFIbXlTTzZlTTV6?=
 =?utf-8?B?OEltLytYYUlJODBDZ2dvb3V2MUx1ZXlqbHZaTFpLV0RJeklZcWFua21yL0Rr?=
 =?utf-8?B?Q3BBWVlMT1NZRVEvbFNVZmthOTBhbU1UTUh3REFWOXAycE5NbFZGN0xKYmd4?=
 =?utf-8?B?RSs4OXkwRUVKZ0JscmY1RmkxQ1Z3azdlRWJMNXc2VDk4ZnBuMWVKUG1MOSs1?=
 =?utf-8?B?QzVRaDh0b28ydjhyZktDeUhaK0RYRkNCZ0pvMGZ1SXd4SFEvR1IxaTdqa2No?=
 =?utf-8?B?L1NCb1VFeS85WWYwTmFubkZVRHZFdUJlc1ZTT0szVTZSNFd0RmR5NlFWTXNQ?=
 =?utf-8?B?Mks1WTdpdDNINndnWlZ1cnU5MlBBMWJhVzcxS3k3UllZSGpzWlhTamVYdzJO?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	co3dzr/as9o5Q7mu+nTi1XB1sCxMS4yvBAVJcc7wwqs4pxBm7KT8Yx20erTeNz87M6f/oSAUe9AKjS2CHNnX7vvkJYrtxw2e1lKLoBCZ4EW/I2OjkiFYAd49ASB8+AOyfeRNcXfP4FYLrhjhPnhy9HTONcKPEUWgIVypm9f1qRuDdM3SPK/Ek9lU4yD5zhQabFOvXkIhSnobrO+ZlHL/pcLjY19c6aO4IxkdLcYjssGGnrW6MFeUOfvV1n29Y/cw4lpGZHRxFjlcTxcu/IFxv4s8Q6hlhXQscXIdPIwFHcZ/MwBWSa4GUh9vBNqSiwADAO4bOdQ/cNns5dnAbu5iKGeZcNcP3XZSpyIJqU2+9r359t69TO3BgNAkmgE1GICQlFHrti13hybNXvAcQD6WEnvV5FUjFgXKwrTIdo+NtHH2e+KtA3kyd7eeRuhd9oBHQiRGo3QP0iaIKuRL+ylVYqgd9qpSgvHM3W8m5o0rKB1Sa15yfFnH6zOwMK6l2yz8EFFQUpI3OoRgbYF7i9BBrAr8GkIu29tBAfD9DEv4jNuA10m1p7YsAGeNteVgu6V0Ezv6nTwMz+ZLPW6eqvuxylGKpCqQGxAtpa60teL3CK0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c59177-484f-402a-bb13-08dc4c1c3604
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2024 16:05:23.0232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vk5qNdZw/diHNvItIJ7orMTwbCn1LkHg3j5cJimAASd78OwFMKynY9gJd3OkbmmJNDoenZDjJ63yWaLvLPmGpOzJHceGpY1rNAGA9aoTDGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5995
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-24_10,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403240103
X-Proofpoint-GUID: bhdFfv_h5T4bPdcYoYgvVxbFJYod8YLJ
X-Proofpoint-ORIG-GUID: bhdFfv_h5T4bPdcYoYgvVxbFJYod8YLJ
Subject: [oss-security] GNU emacs 29.3 released to fix security issues

https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html reports:

> Version 29.3 of Emacs, the extensible text editor, should now
> be available from your nearest GNU mirror:
> 
>    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.xz
>    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.gz[...]
> Emacs 29.3 is an emergency bugfix release; it includes no new features
> except a small number of changes intended to resolve security
> vulnerabilities uncovered in Emacs 29.2.  See the file etc/NEWS in the
> tarball; you can view it from Emacs by typing 'C-h n', or by clicking
> Help->Emacs News from the menu bar.
> 
> You can also browse NEWS on-line using this URL:
> 
>   https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
> 
> For the complete list of changes and the people who made them, see the
> various ChangeLog files in the source distribution.  For a summary of
> all the people who have contributed to Emacs, see the etc/AUTHORS
> file.
> 
> For more information about Emacs, see:
>   https://www.gnu.org/software/emacs

https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
lists these changes:

> * Changes in Emacs 29.3
> Emacs 29.3 is an emergency bugfix release intended to fix several
> security vulnerabilities described below.
> 
> ** Arbitrary Lisp code is no longer evaluated as part of turning on Org mode.
> This is for security reasons, to avoid evaluating malicious Lisp code.
> 
> ** New buffer-local variable 'untrusted-content'.
> When this is non-nil, Lisp programs should treat buffer contents with
> extra caution.
> 
> ** Gnus now treats inline MIME contents as untrusted.
> To get back previous insecure behavior, 'untrusted-content' should be
> reset to nil in the buffer.
> 
> ** LaTeX preview is now by default disabled for email attachments.
> To get back previous insecure behavior, set the variable
> 'org--latex-preview-when-risky' to a non-nil value.
> 
> ** Org mode now considers contents of remote files to be untrusted.
> Remote files are recognized by calling 'file-remote-p'.

The detailed changelogs are at:
https://git.savannah.gnu.org/cgit/emacs.git/tree/ChangeLog.4?h=emacs-29

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
