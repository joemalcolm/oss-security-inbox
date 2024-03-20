Received: (qmail 8068 invoked by uid 550); 20 Mar 2024 23:31:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8047 invoked from network); 20 Mar 2024 23:31:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : subject : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=XEoXSjM/A4zuvK9I0LDFOT4SqqmM92VLnf/jtYXKMpg=;
 b=DaJ6ue3XRgmYInpQSpcXDrrb4myVX+vt6FrvM61C6NUueYEBIJDWS5kfyuNnBNWFWf0Z
 f8q9Bn27U3eky+XvtzPOL9z9MEBrW/ttwR3ykK/cjQpmN/D59S6XKJoT8XVMQEZV9KOI
 I+fFN+l86j5vqowZSTjUbJ6/IxDxM6cayqJzFXpFlP0wMpZkM27a5saexikyEYMkfv7e
 36aAavU9qYJyL/ZJQ0ipiJTwpoyC0PpJtI196BE9Q8diDDPyn3imOheBEzwOVsljpQGg
 pJtKeA9EmtJyJDLot3oOD4m5odif1/jwhQb8haxo/H0xbzNElK8Jv4n+wTeNWc8H2mq7 pQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mo40guKu78+vb0MvPUL7ATh0cWaVGzOIgTu6uawwwyhvC2tFnwrsZ5wpuEEFjKkp0Fnm1N6F6kh3FPncDqvmyIu8+1iIxchFQiVroA4uOFjFaycpIP6IVAt5OjHtzmLZftA3tmKsbCGvX+tYMkruaG3iIXNRom5Aaxx5evuX0ThLvrH2Tsk/lWmmarLHP8zApYfvVOi1Pjpbed8p8Tx09CbCt3ruVJCRTkakRZxp18DDmgSEFTmb4BCa8SXLPLIu7QxT8lULF0LynSaJa7RUOe3+1I11j5w9Z3ms9CoDPWUHBlVG3whp+X/7d3S8/EG8PhnrgV1ADvANJSEnGCsxFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XEoXSjM/A4zuvK9I0LDFOT4SqqmM92VLnf/jtYXKMpg=;
 b=cGVLDPL39XPAsjQi471O6R9/JwoCAVgBaF8J/iupbCdBQDdjsq6DFt/bdhk4HbX8hI6giywnP7O9bITdlxgrM86dcwkKEcLwIMqMmowlW3Q11xV+Neu1W7z4uNk1qYKdwSi5MjT0/PIjPFSJRhUUz+NZmvO6VXZUQVPmqtyh452CxHkDknghBg+5de7ywudNN/r9E+xxmdoaI7eNNy5349LvR4FSBfBx9v1GxE43fQOxq7gVOdTstMWXx/9mDxkl9sfNPCPnhtoOynuVbHeLoE3KYxkOy8Vnf7k7xgNXymOEooW8YG1Z5RwqdY0RcDLrZ+Zc3aK9y+AbDFvMRcoYYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XEoXSjM/A4zuvK9I0LDFOT4SqqmM92VLnf/jtYXKMpg=;
 b=Yi0k1czmtGgVMGRor974kqzfL2YErVz/018m1nDzpq6ByPOmYJMO/3l8gNExT8UfsEsCuaQlOHk6vqVfjHFDBiBdzDduIedzdUGp2zKdo7/uNPuZFJupJ1AZKaFcqbwmLcgqTfDX+DB3fuXVOM3Tf0Wv3o3qbUCc8F1eNcT8W1A=
Message-ID: <77dc10fa-9ef5-4314-9093-fbc392778ca8@oracle.com>
Date: Wed, 20 Mar 2024 16:35:37 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0069.namprd11.prod.outlook.com
 (2603:10b6:a03:80::46) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BLAPR10MB4818:EE_
X-MS-Office365-Filtering-Correlation-Id: ea840280-4170-4ad7-e2ad-08dc49367334
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	w0hPkdPeDSlQcuElMS/7FjZ0g1u+hEUtGFqo9fRPS1PM+Hamoi2edOCVtQ/TydjvWU5TNhmm9UX2QQrt2oiHuitz+FEDbb6607/lV30v9LnZ0L9NMkxoRSgaAOcaxkb+qVA6vR0HHPOgC4fTGSuNJw/JMvqxvvYFMyB5ZDHZBfKDal79XHtMwWK9ByJzRHHlnqREfKfoeYj7cEGFKhEeNXzGTUEk+++zVhhFFOOUnZxpKTZpBXAcE3x8BhW3xlKu+qSc5Kwh7YrmrUrY8DKoBr/NB5x0EbE/XImUiEgu6RlfU11I8mAbn2HK2aPLVQUIVExSDkkxET6PwiTKy/HhBZpK6XH+aMk6U/szjD09ZE5AQ6YXDRnBB5ScTVEIaV4kHxyiXfo6z3mTQjRrL+vrbrlHA607jDgmoYmgFZYj9FyxbzrZnss4Dhwd6cwo4PYuw+2zCm5lAciih2FTaTuHXMzfRvZir2T6RWvU6sAkU2Nsx/zY2ZpLieVKswWQiM4ezIuh9DXzsyMid1r0Lq9tNmVJgo384APHj/h36q1HL++oNGASNwkGdkIG/q6bKy6ngPfZQDHeGxY3Ny3K2rzee1evD5tNeXXQJ+d4kxDpXbgQtkORGKMHR4lj3T8mQlYq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SWlZUkkxdlJPc3EwbEJzYng2YUwzV0Q4d3V4RWxOUFdwUmVQcy9KVVIveGtq?=
 =?utf-8?B?S1JrYVlUSGRyNGRDMmZJaCtNc0pSd3JEdWRwdW15NUxJNVByTnM2NWNBcnFX?=
 =?utf-8?B?Vm1MZ2hQSUlvbUR6TWRKUEdFdUxqakFVUnQxUG5Sd2lmaURVdUI4dC9rN1pm?=
 =?utf-8?B?SnQ0WEFzYWkxN2lBMHd2b21tbFdmM2lLdGh1RkhvVFh2TXNhdlVyWnhlMlVB?=
 =?utf-8?B?Z25pblNGNGp5SXEwWGk4c01YYVU3d25VS0lpbkwxT0syZ2hPK05wUy8rQ2xm?=
 =?utf-8?B?MUJjbXJNZ3d4clVwSmFwc3d1ZmdGcElPMnIvT3dHaW1NcFlPNjcvaUlZNHRT?=
 =?utf-8?B?UGx3Qy9LbVBRTERTbFhLSFV4OFI0RHI3RUNOSDlvcHRIdlM3NStrUmQxV2dH?=
 =?utf-8?B?Z1lpVWJFZHRWdE5jTnE0Y0plcWFtWFF0Vk5UUndlZnBNWXZPZDFYZUhkeGZW?=
 =?utf-8?B?bWJJdzlMa1lpMmJjdVlhaVRXS0hxZ1dxMm1WSkNXWnVPYnZSS3RiNjdqK1Fn?=
 =?utf-8?B?OW9kSEZJT0p4Uis1aHVmTmZPTDUwYkQ2bUd6ckZMbEFvQ3NmNHN2N1Z5VHVn?=
 =?utf-8?B?eG5OVnQ3OXBQTHpIN01Cd3A0bndiL0RlSXhzbE1ub1p0UE1BZ2tnSTNHZVcy?=
 =?utf-8?B?Zi9UTnRpMDdLV3JzYkN3bnVkeDNHeDA0Q1VaYWZkWVlXWEh6Z3NCenNCNmJJ?=
 =?utf-8?B?N0thUVZ5VzhPUWVqWTVHOFF1RWdsRi9BOTliQm9FWmJReWVIRllVTUZXUXNL?=
 =?utf-8?B?U1ptbjFEMXpBaTBub2VMU3NkTTRBT29TSjl3S0RaL1U3d05pY0VxUC9scElr?=
 =?utf-8?B?cGFXL2xNQnpkdXlTWU9WTXY3cXRldmEvM3puMHJGNXBsRXRjcEpneVR4Ulc4?=
 =?utf-8?B?eHQwUHp1L0trdGgzZXVOSEg2QW9XZHFyb0dTNmtEQk9SaUorMnlEKy9tN0Ey?=
 =?utf-8?B?RnBCeldmQi9pQ3FGSWZQc2hITEE3N3l1RVcwOUk2NkEwa3JYSk95TE4wSmJC?=
 =?utf-8?B?aTNuMGVJNEYzTXh0K3dnUmRMbVJNY29ZL08xblBrUmdyc1VGcGtiVUhJRXV1?=
 =?utf-8?B?cC9oN05rNFZkaG9OQWpobldmWVRtbU9KV3pLMGhDYnF2MnNiMFlkNjdOc1ZV?=
 =?utf-8?B?VmlWR0htOEp6MFM2WXkwTWNxQWpNQTVleWxtaW5vVDNGQ1pGd1krTDdxMldT?=
 =?utf-8?B?VkhvTmJZOGNuaGNJQjc3TTN0a2VnZjJ6OXFNZHUzTkVmS0hXNXM4L28xN29M?=
 =?utf-8?B?eTd1OW11S3hEdWp6Zks4SzlvelVwUVAvZ1NHREpxYVhXbWNaUVV4L3Z1Z1NM?=
 =?utf-8?B?S0dNandJTU5Gbzl3YXIvaHdZdS8rMlVEQ0RBdXExNDBqRkpZVHBXUThaaEJF?=
 =?utf-8?B?V2N3MHZQODR3MjRZdW1LdVRBT3laNlRwdXF2THpob1hacklMdXUrMVI1dktv?=
 =?utf-8?B?NUF0M2U1UFJsaHdRVGRFNWxOeEc3NmhlOVNrNUQ0OUdIbDRFanAzMHFhRXAr?=
 =?utf-8?B?TjRGb3VSeDJmT2RGc2JHQ3kwOXVSMVVFcC9GallOQnlnKzE1R3pTN0dqWTdE?=
 =?utf-8?B?MWFRTWhaSXV4RDdPRzVSaVI0NW9KaUJZb2JSS003bVpQWTk2aXBpLzRJUFda?=
 =?utf-8?B?eXdIZ1J6bDVYd1ZSQmtsWGsyVlJpU0pEZU13OFpiVXpWVGlYWm5tUi8wL1pX?=
 =?utf-8?B?SkpiR2M0MW9NNURsT3JFZGtIeDk5cG9zd1B1MVlCeFVDSlhvclNkSnNqSW9m?=
 =?utf-8?B?aHRzRjFGQ0RwM2R5V3RCYXBnbkZaNXhiNnNtQjJvV3lQTXJFYlpMUDRKWUli?=
 =?utf-8?B?dDlwZnFJSFY3ZmMvRWQ0N2lQb0hxMlhycDJSUVVFUUczS2MySFhmc212MWox?=
 =?utf-8?B?WXZaMGY4bmRPRHJDQVBHakc5dklqOUNGQ2J4My9TUGdvR2NocHZRazNOa3RU?=
 =?utf-8?B?N2FTZUtJYWRYcGxXbkRGNkh5UmdWZ29HZDA5dXJvaWlLSTNqcGJJMmpMc2Zq?=
 =?utf-8?B?UmlKV2FVQnA3d25ibmRsTHFVSVNRc0t2Q1ZoNVh0TWxDUWY5dDl0aCtWZmxq?=
 =?utf-8?B?OGVwb3hOSVE2NXhyRm1QM1hJZ25menI0ZlZyRTQyckZ5TTRNMFZ6Q3VQN0h5?=
 =?utf-8?B?ZkFPUDZ0a1ZyR203Y0Q0WVQvNHNNTGNaUVg0WFhKY0QrZzlHNlV3YTROTEIr?=
 =?utf-8?B?Vmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	uGSbdjkR247FkToFwDP4eIrBqV3DXuR+qXad7aeBLLDUBwS1OyW1PFIJQ/RjDsPYce0lVxfoUO6cuArIlFzakz2Stx3nblXcALX0+4Oeau4K7dLCNZ9yaxL6yTsD6YubR+4Z9/Xcb68Z4WGrumVH9qCCaAv4UwJoeMyS3blER4qk3tqu6XtKe+7s4xAhGeRQ6d1Eh3Vic68CBKlJEDurRrFQP3A/VRhYEdu39oXBvveSMjlIaW26FHgeEx5jTrzlIrWNHbuVig2Pw7I62V4xmBKNqYgSN4L7K/ErMucyizzSkmx7FAeCd0cCs5cK1pffmqsHqQGvr/s9S+cbW6OwZ4TwiEGtcFTAgPIA5B5h5A1mVDNHcTfqtGZ/UIWX4hHXcrJWh48y/S0xfbRzboZQpyB656+wKQZ6lw2rTSGNe607YIbnNAjSWMwrHFjEiampLZDf5PaDrhTY5wOPFPB5ThX8eKvFusnkIYKsAHxH/FoWd75U4O9F7n43jQECbEFwjGxuv/kdAugMqX8HRGva3UGK5FwwNhIkYyeWJAe1B3H6xcYhrDu2QAGNGoQiupDnoyMqSkbMdkq2/0YrwdHpD/QvL/4d+/qm/qdm1kSqEjk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea840280-4170-4ad7-e2ad-08dc49367334
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 23:35:39.0695
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gC/Yg9Yex+c84y66xUmSJH0xhq3H9z4cPg3qp4Dct/o8VK2Yc9/l3RfjUth7WdkY/ICqYNSbIoAv3M1qeffOvKYTmL6gRlSa6zMWoZ1KS5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4818
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-20_12,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403140000 definitions=main-2403200187
X-Proofpoint-ORIG-GUID: Eb7wT4wlSYODh4U9crR96wf0RRNuSYbK
X-Proofpoint-GUID: Eb7wT4wlSYODh4U9crR96wf0RRNuSYbK
Subject: [oss-security] Security fixes in Python 3.10.14, 3.9.19, and 3.8.19 (CVE-2023-6597 &
 CVE-2024-0450)

https://discuss.python.org/t/python-3-10-14-3-9-19-and-3-8-19-is-now-available/48993
announces the availability of Python 3.10.14, 3.9.19, and 3.8.19,
including these security fixes (see above URL for links to details on each):

- gh-115399 & gh-115398: bundled libexpat was updated to 2.6.0 to address
   CVE-2023-52425, and control of the new reparse deferral functionality was
   exposed with new APIs. Thanks to Sebastian Pipping, the maintainer of
   libexpat, who worked with us directly on incorporating those fixes!

- gh-109858 : zipfile is now protected from the “quoted-overlap” zipbomb to
   address CVE-2024-0450 . It now raises BadZipFile when attempting to read an
   entry that overlaps with another entry or central directory

- gh-91133: tempfile.TemporaryDirectory cleanup no longer dereferences symlinks
   when working around file system permission errors to address CVE-2023-6597

- gh-115197: urllib.request no longer resolves the hostname before checking it
   against the system’s proxy bypass list on macOS and Windows

- gh-81194: a crash in socket.if_indextoname() with a specific value (UINT_MAX)
   was fixed. Relatedly, an integer overflow in socket.if_indextoname() on 64-bit
   non-Windows platforms was fixed

- gh-113659: .pth files with names starting with a dot or containing the hidden
   file attribute are now skipped

- gh-102388: iso2022_jp_3 and iso2022_jp_2004 codecs no longer read out of
   bounds

- gh-114572 : ssl.SSLContext.cert_store_stats() and
   ssl.SSLContext.get_ca_certs() now correctly lock access to the certificate
   store, when the ssl.SSLContext is shared across multiple threads

Presumably releases for 3.11 & 3.12 will follow as the announcements of the
two new CVEs listed them as also affected.

https://mail.python.org/archives/list/security-announce@python.org/thread/XELNUX2L3IOHBTFU7RQHCY6OUVEWZ2FG/
said:

   [CVE-2024-0450] Quoted zip-bomb protection for zipfile

   An issue was found in the CPython `zipfile` module affecting versions
   3.12.2, 3.11.8, 3.10.13, 3.9.18, and 3.8.18 and prior.

   The zipfile module is vulnerable to “quoted-overlap” zip-bombs which exploit
   the zip format to create a zip-bomb with a high compression ratio. The fixed
   versions of CPython makes the zipfile module reject zip archives which overlap
   entries in the archive.

   *References*
   * CVE: https://www.cve.org/CVERecord?id=CVE-2024-0450
   * Patch: https://github.com/python/cpython/pull/110016
   * Issue: https://github.com/python/cpython/issues/109858


https://mail.python.org/archives/list/security-announce@python.org/thread/Q5C6ATFC67K53XFV4KE45325S7NS62LD/
said:

   [CVE-2023-6597] tempfile.TemporaryDirectory dereferences symlinks during cleanup

   An issue was found in the CPython `tempfile.TemporaryDirectory` class
   affecting versions 3.12.2, 3.11.8, 3.10.13, 3.9.18, and 3.8.18 and prior.

   The tempfile.TemporaryDirectory class would dereference symlinks during
   cleanup of permissions-related errors. This means users which can run
   privileged programs are potentially able to modify permissions of files
   referenced by symlinks in some circumstances.

   *References*
   * CVE: https://www.cve.org/CVERecord?id=CVE-2023-6597
   * Patch: https://github.com/python/cpython/pull/99930
   * Issue: https://github.com/python/cpython/issues/91133

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
