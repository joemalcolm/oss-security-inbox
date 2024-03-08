Received: (qmail 1827 invoked by uid 550); 8 Mar 2024 19:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1791 invoked from network); 8 Mar 2024 19:02:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=JYLWRt7W4YWrnjbKcEq8YCvepiiXeuwAzzQG5H5VemA=;
 b=kixkYSKz3/v/zrrF+pzIu9rrZfEmCouYs3z4YSAoQEnliX7LJBWlqqU+DpJkXz5CV87J
 Nrdeu2NrI2Nv1mSF5RtOLNLjfIS6aqcpnH9ETACVWo90JzQ2Td9kwyep3In3t13bv146
 cybuoV5PQKpSF6EFKw5WwJQyeltokk8KXuv7AIwub+q1rV0PT7DnFJmTaKtplierlHfM
 hws2sYkinwdsx03BDhjGSu+5xOIb8Trs82kRPxdRFXc0KH7GH6LLfznAPYeMVfAThWu+
 o8eGe99DBQcsLbqZQRW3wU8MNrWhV7ooeaH1vCvHTNtCqH0cBUHD08jGlL3/4nU6Jstm tg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejYKDlnb/Q+elDc+lMf9Jvh3Qe9i7TUA/Tz4FRC41Gl0CtguEDt6WqD5C4j44dB2RHVh+zYMRrOzUKatcJ4fvvianSWZyaqQXx1YDEEx4eawsCqwMl9b0a4mHP9d4MRbRiPC1z1nATBBd7dzTd0gfGLp8+KjH2zAbqpYC45rIpEczjH6JO2qys10El5Ma1rn26aubhiZ7E41CAllLYHcmvyTRBef0yV4LLUmZXLrE6o2zCEU1lxOqk3pIVxQZFOv8Bcc2jwj5g0VAn8p/XLnW26hNMbdEg9cSO8Nbu2OapoNm2LEqouNS0vLaIxlcj51SuYw6gjTz0wpyVhc4alkXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JYLWRt7W4YWrnjbKcEq8YCvepiiXeuwAzzQG5H5VemA=;
 b=Sa2dGV2FoIVLixhXKLx1k/ebDURLoEMHaCyDOlp9Foo9Z66ZQQ6ErEObcMpNo4WRzC6dgzZ8h7DR39n1IBiwj+iY431nyRwkrtDclwiAi0P+nbLNEXVFhI89J2Tn2GL+TGaelgvWbwKMyOCG0+SWxBd0v7klk17y9bMsvf/J6grFF43G2+yaAUIM3POFkF90WCU2hIf1/Pg9zGIllSI3WecANoaGsYCkatb4mZWZ+hrA98Eeaq/ZJczYQTUyzTnGN67x4/C7jWAl+v0YtUkF/s12weHjz6XQR/X29hOfz2W2rkM7kOJPF8V3RiDDjOa75Pqs6NaXkcwivzw722ilNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JYLWRt7W4YWrnjbKcEq8YCvepiiXeuwAzzQG5H5VemA=;
 b=L8v+5lG9cjmQUPk9Wdc6LxJ0eAJ65ajV2Kfq5pIr6dV/ADR6326h7RsBfbRDKStPG1eR9/yAgxay9Ufds4/TVecrhdQk6ON6NAz73Kibwo6igb9w9K0gTJL22x3qVnqRGels60nN0+Kmf2CaKLfNx9PtbqkRgZjmEdH+MSDnfDY=
Message-ID: <927220f8-dc33-449a-80c6-6e1ab51b5594@oracle.com>
Date: Fri, 8 Mar 2024 11:06:35 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
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
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0057.namprd17.prod.outlook.com
 (2603:10b6:a03:167::34) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB4971:EE_
X-MS-Office365-Filtering-Correlation-Id: 349b56c6-518e-45cd-b682-08dc3fa2e158
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Cr5soj+wuzV6cIe3m3fzzF9lnYgQdhFZl9dp/gNGxneFbWgSV9gl1PSX9NJ/A3WoBHeZplj5Rvx4a0cXuyegKo6bxlKU5JVOj4Agpj2y8+8tWPzF/qwnyyFPbpw/5mB2phfjwNW8qxGL/VA2iGn69IPeH8PjLoLVBv09Fv45y9iGUY4ZYUJs7rQJlcCPgtiqckXVa6guxzy9rkJkyHAEhnmLVDx9Da6u66X+QaCGM8edQRzJ8TcYRg/xxrnHUfzyiCOBxcGoJHgZ46qpI31a+rTw6njFI7aInEdb1+Tj3+ViEquJ5YXxetQsugfHC4aXYcF6C3Vq6WNb+FgHEUM9biIcYgUDC13UMV3uwdMul29eGaAXDe/4X/0Xp+CWTraBYgx1jkP74vU7CiMNeK2wGlMh2tDr31+YP1/YDETFv4CainLeMZBrhl2zAGuKog/boDfYOwWTwHy6VrQpm7wZTE7gl+ysv0jOSw3ENytR/csYD181hT8rtqwhZiV5U3fkYeXTbMMx3D3cy/9Yf5JqWqDV1bvKwKkVjedXUimJnUgHBwWR9uv213Qqm5rbGluf3pDaYJ5Pr8MRHh5tIibdTbvrVUVrLCFzcxeg4HTjrM+9GDX8pSxNkobASWl5sZ43
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OXRWWTRTenovOTY2Tis4L2NUQzRsckFobUhreTRIbDJMdTNSTFNqN2J4ZXdN?=
 =?utf-8?B?SG1MZm1CZnhiQnN4UXg0NkpqK1YwclJ3ejFSTWxhdldoYmVnRS9qUnhLV0tn?=
 =?utf-8?B?NVhua201NHlYaWxUMi9ka09ITjMvUWdkY0JUT0Z1S2N5cFQvY1Zzem5kcGdu?=
 =?utf-8?B?U245UjZHMWpvbjJSNi9wblE2VVp3VzVmL1dSQWVQR1pzcm9Yelh3MG95RmYw?=
 =?utf-8?B?bzM4cHFUeFhabHF6UkxwMGd2NHdGQWZrWTREdlhvakIyeFpldXBaSGl2YUhT?=
 =?utf-8?B?c003RnRJUEh3YXZFejQ3V2RUdWtGekQ3MlVCeXV5Q0xaM05qbnYyS3JCQzZG?=
 =?utf-8?B?U1c0Z1ZlNitDV3JyM2VIUkVvekVnU2NjeFNVcUlLaWQvalV0SjZmeEUyd29U?=
 =?utf-8?B?RGp2VFdUTVhUd3ZsVHV2MFhCYUF0ZkdrUGt0eUIyeVNkbSs5bENiOSsyR3BL?=
 =?utf-8?B?d20zWm1HSGlXdStCVGh5RFBNSWR5Wk9Fc3Q0ak1NYVZ1QzBvR21BeVZIRHhu?=
 =?utf-8?B?ZUg3US9xMzRmbC9XblduQVB1aEtrelZ3RGlYUWpLZy9tLzI5UGV3UEdLeUE3?=
 =?utf-8?B?T24vZ1RmdjRjeFNKRHloUUU1Q0QrcDVTYnN0eU9zeUFRdTloUCtvSHFjZ3J3?=
 =?utf-8?B?RWIvTUNmM1NIM3EvRWg2eVdIL2RwNlVZcVVZZU5SR1I2dXdNUFcyN21PY0dn?=
 =?utf-8?B?WmloRHNxTVlSSVJvMUVPb3FaNGRXTWprNFc3M2NpN04yWTR2OEdPMkhvUGlz?=
 =?utf-8?B?Vm1kRndRSThJUjd2ZGhQdGdBZjNMUEo0NktMbCtFNlpNMUtxS0pNdHU1dnRy?=
 =?utf-8?B?UUQ3OFhYMGlxOTBEc2w4a3VxbEViQnE5Z2NTeitENGl6TWV5V3Zia3J5Q3dk?=
 =?utf-8?B?cnZ3OWVTZzhsczVqYmNOSVBPRjJiNkoxRHRNR3lsS2xtL0ZLWmpkWkdQKzdo?=
 =?utf-8?B?Wk4xVnJkRFNySHk4dzFDNm1ITmhEVEgzc0tXSVVJdzMzNlljN0hOZGtTWS92?=
 =?utf-8?B?SGI1TTA3WnZ4RlpnUGdJQ05rK2dWVEZwc21ORkpHaG9JZEJIY2kxdk5mVVVn?=
 =?utf-8?B?WUd6M09UR1VUUWJteERwVnBaWnkyUTF0ZmgyYjlwb29Qa3U3N2l0SlZJRTUr?=
 =?utf-8?B?NkFROXNHVlNnMGdEWWFVdUtGdDJ3SXNNT2MxQ2l0M3YyTFJ3ekJjdHhYdmJS?=
 =?utf-8?B?UXVPV1RJU2gvRWVTb0FISTR6Mm43TGNrczl2NU5GdFFyNjVER1pBYko2SjNu?=
 =?utf-8?B?UCtoN25hblE2MWszTUw3eHZFRTBFaFNUSGRzTVd4SUhUbUNZaXIvc0FXY2Zy?=
 =?utf-8?B?T1FVUEhPbEFzNmx1dElRR2tSL29DZ1BhbmZ0aDJCSkpnMnZUbUZjNkU0cnV4?=
 =?utf-8?B?d0pxQnpUNGc2TDUxdVR0MVZISzVPTWErYlQyQ0ZWOXBLN0Yyd2pLT2d3R0Q1?=
 =?utf-8?B?Y1RJN05DMXVYUWt5Zm1LdFRjZUljbWxXR25CM01WSTZwck9QRUFQaGVQMEI5?=
 =?utf-8?B?Z00xSUtpM3JQV2p6WU1YS2cwMXlGRkVCYjRZZGVDeDVCTmc4VzNSVlV2YWpS?=
 =?utf-8?B?RkZTdUdGNXordWlBVmNlMnlzUTBCVnJiRzdPaEdDT3JmTkFJaTRKZDc5VHd2?=
 =?utf-8?B?YVhmRU93aFNKUnFoQWQ4MjJqTmEvL2hFRVlDSnd3bnVLM2V4d3NmbkE2ZXJw?=
 =?utf-8?B?d09PRGlpRXdGQlV0QXBVRHlUWE81VnVpZDRzV3htSEp1RVYrV1RWYzkxK20y?=
 =?utf-8?B?N1M0amN5TVVzSEx3Y2t6alBTTUZ2NktrMHBGc2tsNUZjWDhQVml2UkVDRHR4?=
 =?utf-8?B?WDBQaFRCZFkvemlBSjF1WElrSmd2TXlpUERuU01aL1JZcDNxWjlYcmVSaFVT?=
 =?utf-8?B?L01WZkI5N1FIbUkvWGFhSFJaUXB6NDVyWmdvZlpCbllHSDNMR2FYakREQjg5?=
 =?utf-8?B?a3lmVkpUZzJoaU9hZEVxR20rVGJlVFpNNlJJZk5ac1JlQ2NiN3lDb2J3cXI0?=
 =?utf-8?B?MmdSNms3cXJTa0J1RDV5TjQ2UWJvNTBRWUVoczR5UUR3YmZlOVp6RWEweG1K?=
 =?utf-8?B?eW9KeExPa3FmaHVyelpaZXg2ZkhSZk9zVkdVMTdmM3RxczV3WkplTEJmMENT?=
 =?utf-8?B?SmFCVXora1gzek16dmcraEJMQXp2VGNhWjM1TTB3SGNEazdIRHIxYzlvalRk?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	P7/efYS9/xkssNlxlxW2BO1ebXMZSjaj0OYmrKYujoJxH9Seplm9pfEmW8New4qczNTQtCyBbqiOJk5+2YY3AuagopiZv6ohMjyPLeDUMAAGSOcIlN3wZi8IfwN/AbKBcXY8uSd42/0UR+NbJieo8Dhr2WmmfTWkDS2yw3/19xHPWLQ062cZm8yT5lsULLg5no+qpzpOih5aAtB6by2vWuw0Drtq0qm/2XQQiv6rIUYY36lRPtqqK5Bug42m1F35KSO8Ewi7pLVQFNBDsn7LDA7+i+6oSZv0BlF2mo8P5Yo98YjPLP3lR1kNiiFXGTniQL1S08sDCQnZhUJ8k546TGpnaICwEZ2hrwDRCRPbL3RJijX2YgzZVMaTq3LhEOv++ensVdGM0Oy3jZz6rFELua71YE1q8Xw73HVWDYEraDyKqRidtXkI+e7CLPu89koyTPHeO3o54b4FN9RJggfVss8rRfdB88TRMa7nXpPJHNquUYDyWAkKncfoSOsW62NStpOOaHwclLJMCPj6ong/3zJQOYsCDMZ7XQZPl0L+aHJKdHo6GUEa6vdGglsT8lpn9+B8SidTdk1/NWVmheX+HuHPYt6maKAe7U+6Ha147Iw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 349b56c6-518e-45cd-b682-08dc3fa2e158
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 19:06:37.9501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 145xQNE9f4X23WkF3LXtV9X1KDydeNnvUNs7CT3vKbkGsM8sQLib/RA0dwnl+YdPy8DQFQHo8EHiHAcitJs9GCc78XHlZxxrNxIQvBtlMoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4971
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-08_08,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403080152
X-Proofpoint-ORIG-GUID: ht-Ixsi7p-T9OBdSUQy6-zfLDIMgydjs
X-Proofpoint-GUID: ht-Ixsi7p-T9OBdSUQy6-zfLDIMgydjs
Subject: [oss-security] Vulnerabilties in FontTools & FontForge

https://www.canva.dev/blog/engineering/fonts-are-still-a-helvetica-of-a-problem/
is a detailed blog about vulnerabilities in some open source font handling software.

It discusses three new vulnerabilities in particular:

- CVE-2023-45139 in FontTools versions >=4.28.2, <4.43.0, fixed in 4.43.0

    FontTools uses lxml to process SVG tables in OpenType fonts, and had
    not disabled external entity expansion (which lmxl enables by default),
    leading to an XML External Entity (XXE) vulnerability.

    The project has issued it's own advisory for this at:
    https://github.com/fonttools/fonttools/security/advisories/GHSA-6673-4983-2vx5

- CVE-2024-25081 & CVE-2024-25082 in FontForge, fixed in git repo

    FontForge used the system() function to execute commands to unpack fonts
    from archives, and the command line arguments it provides include both the
    name of the archive and the name of a font file specified inside the archive,
    leading to a classic command injection vulnerability if used to unpack a
    specially-named or a specially-crafted archive file.

    A patch to switch from system() to glib's g_spawn_sync() was merged
    upstream on Feb. 6, but there don't seem to be any new releases yet:
    https://github.com/fontforge/fontforge/pull/5367

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
