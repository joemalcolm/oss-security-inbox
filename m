Received: (qmail 25868 invoked by uid 550); 24 Mar 2024 16:03:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25796 invoked from network); 24 Mar 2024 16:03:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : from : to : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=JyeZn0eLtz+Dn09rt9R/tBGPFKOxouQrRcPIjLQrJY4=;
 b=ngRX3erndr2qg5ELf9HeNpJXt3fD42jFJ13DgP88fegBg+b6T12jaNKC6JowCDdWnWBa
 v4MtQDAHnBoepfSAU5eCRj7iYXDxBS1A3NLi7KFA5vjWMXs6EnEjEZ99KD+BBdOSe4lG
 xtKjG+r+2fqHGtq1+gWaCcHHCkIILcsYUWSUspDbvKRHzCyj0OvlVGiL6knBssPveFh5
 km84rvwFkcl/95JIy14JfpHit+8Cl6dlxpgrhtibXvEZ50XQHWWfW/BPHKYfm8IRipXv
 bNIOtv7X/Vdf9eaJdN71kbYl03vOAGHXRBA6ZVZYy4K777J7LMn5GDO/RdTUExbOIroy /w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TEVq7WgtAkchaZ4QF+JGQurqF62SjK2BtqyPdvttaYcMOvCS7tDid1t3ou7HjJZn7VbvAj53OPdPCqbQF8YUN5adfRoIe6QnNpC8vPZX+FcKT1WyapuQF8tu7XwBs3eSr52tlxSSM5jzEgsPLa7muwLk0LGSVtADnnfwK/baeGGPvbum5NOqWv1XFuLoTHQc51d21YTeUiOZ+4SA3vSYOkveHXYDgrNCDPLMsuORnVtgosxW/VgnAG5ih4W/VmXTqck3mejeTYpsbGBZWfvk6RNfl6d059At4W28otyNWLTvx1goXu6tYNCpSh+F0ntsllhYQ0cN4GnGYo3m8ZonaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JyeZn0eLtz+Dn09rt9R/tBGPFKOxouQrRcPIjLQrJY4=;
 b=RfMNhzqPAERyCgkMEZEY0m1dTF6NurmsEJpPDoUVKEt/EVT4ub37VJNn8OyJ5R1SHJhbDavgDDN2/9qWYxyf0od8VAeigZweFTP+HS+SiUeHMWxb9sgneCSgkoPhUm9utdZc9mucjNAWO3QPqgCDh2aJujIu+aUeFVIlL/aQDcVKvAqmPFvDj44deScmqj5bcAalYq8U3CVoRRi0GQtIV3o+IenKzriqxwy+7HOEFtw1UWmGK6fx8+qEJXOG/EHxYCV/awdxPbIVuOCnSZA+eVW7UiGG+cIqlPjbbS8//EbUcYfw58BbPpyYUrQ0v+81Lkq9RF/aijeH8u+jM7xCWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JyeZn0eLtz+Dn09rt9R/tBGPFKOxouQrRcPIjLQrJY4=;
 b=DBBExCrelofX9HVtTR/VNnrLOzkFXoyUSEnccSHpuHvrbMNQdWzYKBBrM2t895Uaea+Y9CGGbk8OeEzw1zqDRBPYey4bCDwv7ylpv9uw/5BgA0KwWA8xAp6lPZfcGebg64MV+St4V65BKaw7NVYCVSqI/NJ1qqg6E/xvRog1a8U=
Message-ID: <22b2c6ff-84ab-4fe8-8e1f-c192323a6bbc@oracle.com>
Date: Sun, 24 Mar 2024 09:07:34 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com, Ali Bahrami <Ali.Bahrami@oracle.com>
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
In-Reply-To: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
X-Forwarded-Message-Id: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR11CA0018.namprd11.prod.outlook.com
 (2603:10b6:208:23b::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: be82a97b-dd09-4041-a0ff-08dc4c1c85f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dJYSoHh0F3k4IpoS5lxyvL2stq+Ph+yopD021GvNrc7QJvxh4D8E+g2eS2KqYamMgLGv/wk89+zcOOzfaTD6/Y4yi/P7+LTrLVW9w3OP1f/5X4lDa4HhU5JqjNSmWRDitqoMKQpUZRoxCUX4hcqElQVlWtVVmXvuU8/8aSdJawp1r3AjXG5zxJBHKzU/cKVevtD/UyaRfQKrwlfB6Fix3VFSzd+XMGNAcB/whz+1YaOmD/GCwBj3VNo45oDwCxKeXQ4qGx7Ul5cwUmrQiQdMIwIqgBNiarrUwJ4wMxLzNNMaeKV4QfNVzEzl08wpaG/0dLH52ijsHriIYVhDj1yRvIh7mbhT4NmW30nQuOdO12rArftl6IyLlBzkaO/+YN4CSjNsXlbhCiTQRXjYUnIG2k+//vomZS7qR8D65BkzoSXPo6D0ZnckWmvje1P9OuT4CghcGp5RC9al3RKrbh3wPdNdB0orHyDPkqlZbi99iYVIojW/FJDK8ybQks5yV1nAi4ohMxsq3h/x7q03BFTzoj1Pu0QY3jAT8Cg/CNgSpYv0OYQdYwLbpYLEO4Fexo4/1hZ66Jzu8LDhKTVEgpEA0NJzkN9WMzoAUc65N7P9ub8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TW1sSzdKUXdKQytHZ0lUQmlySjRqcEo1bXROeFlzQ2F0bU9BUXE0d1hNbFI2?=
 =?utf-8?B?Z0xOQ3NMWTJFQ3BTWmcraVhhVnRZdzZVTHBmeTBiU3BrbDMzaUR4ZWhYWk9U?=
 =?utf-8?B?MU5EbUJLTU1iNWowQ0NwNXNZbHYvZXlpVDFRenN6ZlZKQmtaZFpRTFlqemFm?=
 =?utf-8?B?ems2MjQyWXJwaGpsQVhNRVBHUVQ5cXMwOHowNUNkZ1AxOUtTeW9mbm1zSVdx?=
 =?utf-8?B?T2UzaGZQeWJjWG9QS3VTblZCaGRoQ0w0bklPZjA2WitXMDZzSE10aW9RVFlX?=
 =?utf-8?B?TmQyOTVaeFBWdjJ4R0hYYlhHMVVhTG1IbVdCSzhMcGVKWVlLZUQyTHN1RWFS?=
 =?utf-8?B?bU5aa1M4S0JHNU95LzJrbXh5bXd1MFFyWlhpQkpHTFpWays1bUljZ1hoYmtK?=
 =?utf-8?B?eUhwWGQ4YVZyQkw3TnVuWk1QMG0vbkV6TWlmc09nQzBFNGZWSWhWa3lta0Jk?=
 =?utf-8?B?SmROcW5GSjZuR1cyODJqb1pKZWRoQmZBWXFpRFpHQjQ3STFDaXN2VmRJR3l3?=
 =?utf-8?B?aXZQL1oxQmdnWVNCUXlWV29WcDlPQy84TFd3djR2Z3dUODRLRVB6K21oR2Fp?=
 =?utf-8?B?anNWemQvci9lKzNwRHlONklzWGRVTFVMWkZRY0dkTVlBUnhpanNBaXV3bE1q?=
 =?utf-8?B?VW52WEdHd0F5M2RMMCtRUzAycFlkWVJiZi83dm5iWXFHR29BOGhqRmpyYTdV?=
 =?utf-8?B?WWo0TmVubkQwckZIWCtQNmFxR3QrbXZtMEllK0lzcE9WRlZYUU9HNldqbVRW?=
 =?utf-8?B?UWppWHErYVFrK2tIbGM3bnJwckJ6OTNiaEZ1TVlLZzd4a1JRSTd2Zm51dGo2?=
 =?utf-8?B?Z2JOSGtOWTBueDN6NHBiL2xsMlBVVHdEaDZISksvaUdnN3l1bm56UHZFMjFJ?=
 =?utf-8?B?ajBUam9uMDFJaFZqY3pKR0lXcUs2dmltSkx0aG5iclRoUTVxcXMveEVYZm9Y?=
 =?utf-8?B?b0diL2h5ei9XUktUOUVMZGtzc0VDSHUwWDFHUDVCSzY1ZmRHcU9pdTRZN3hG?=
 =?utf-8?B?YXJlN0gyUUpWMlY5aXA2ZjEwSnFuU2xqdm1ST1VLNVZ2bElhdzA1K1Q2Y1p1?=
 =?utf-8?B?aHk0Z3FnaGorVlMyZk5HZ2trcmtzTi9aSGo1dWlyVzlXWTFHR3JhZ3VES2p3?=
 =?utf-8?B?R1hvL2JSZGJLREJnQkJvc1lvbUM4RkgwbE9PRm5DaUtyR2VTZXZoMDVrckEr?=
 =?utf-8?B?V3F6M1VFbHVaMUFucWNiU2tGcTdoRzRFK0FlZ2hXaWRoWGdnR3lBbXc5WUdl?=
 =?utf-8?B?bVZONmJjcUwvaHcxZVZOalZsVVFNaU92VFNsRzU2bS9yQnFqZFVJUEM3RFhh?=
 =?utf-8?B?Zi9vUEZNSzRKdmlRKzZ0NzU0eDBXOFg1RFppUTNDa2JxSlFySDF5Zm5pTHFr?=
 =?utf-8?B?cnliSk5NMUVSOHlUbXRhclk4K0xiR2pSaDB6N2V3RTFWaHRGcjZhNTFVZmp5?=
 =?utf-8?B?SWpPZVVmc1lhRnVNaFBFVUxyQTVYWnBhQU1UcndidzZ1M0tXblBkTGgycjNW?=
 =?utf-8?B?VDhDRXIvWFBBRTNIZEEzRGp5OUtFaDNES3BuQWp2SHVTNjRxUWtKeG15Ympu?=
 =?utf-8?B?RmxOK2h3S0N3eWRVSWNjYUxUREsvbUFBdU9uaU1rWUUxTGtpVENMb0Z3V3gr?=
 =?utf-8?B?NW1zbmE0b2ZXdHl0VnNHS0NNaG5oZ2RBODExZHNVajhZQ2pjTDZmc1ZOU0lH?=
 =?utf-8?B?NXJQbVBXb3pEM3hFQVFqUEJDcXBIOE9SUHNzV2lmRStrNi8reXM2VExJTVp2?=
 =?utf-8?B?aGhQS09QVHE1azJCeHMxV290dmNaeDI2STh5NzVPUGJIZnNJdU9nTUc3dU80?=
 =?utf-8?B?QzJzdyswSzB0YzFsVHhVWS9KR3NUU3c5clV4dnVzSXJjaitZMENzUTVtRENV?=
 =?utf-8?B?VlkrRnhwMGpPbldqMk1NMUVqMmxzV2dZT2lveWUyYStPY3ZJa3ExbThxQWZV?=
 =?utf-8?B?Ui9pbTB0T3pBQXVKZDhpSnpvdk1VMTRwVzFpRHdpY1JSOGVWWGwxajVVNllP?=
 =?utf-8?B?VTByb212Zk1USUtzV3NxS09QVUxzMkFoenRxN2d0QkNlWEp4MjZvQ1ZrZjJQ?=
 =?utf-8?B?cGIzZmpLS29UTmxnU09EVFE1bUlWSTIyK3ptN1JuZ3FST2FyTWQ2SlZ3dHdm?=
 =?utf-8?B?bGdsRUYrZ1g0dnZtSWNreGVmY0VWT09GS2NieXk3VVM5QlJiOUxMWkhLWDgz?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	csg0zoR+1J1BwW2iqF5yAPP63iAtOwep4RZif0hvYVohGRyisijA+CBp76J1GDe5CpX8i4g8YPIyUxNt+UIu3Yym+J7IOwvUCon2rz2/XfFHzJaKMeIpv9RbwA+nlVk0JmAU+pSbyTGuuRyNOX/7x+aXUpq41KgXnNMAjNBEdyFTYT4yqaxlPylVVXT7WJQajHI7NibcWPkv8AWIWV59F/jVVls3s7UGGQvAHVseTnowb9LLgCqSRnBF19VK5uocAHRuMMgx7EgIbqyoTwvwuX382EJhnWUiZCgtIhEx7OA2h5LxYTjN3Fuvi+uiGoW3aZk+KWXEIE3akRuVXhVBgxv98JA3sncm95M++zxKc7Pv7y4CbBCGENRfCo5l+jWQobgqbI13EEvur0OdzOTYmXySkj3e00RHdO5MUWfd/7BhXp/E53QUp6k8WvHL/2nKkOSAPDZJojQwQQAlIUZi7tHaUP0iqboqB6PZMNQXW538KPX6CCmiNpT6G9oScSmklriN1GdHz5XluxyAe3ReVPnxx/MPhWYT8jMFVxnjyr6fzJTGHROUDaPLGkwDOxyPVj2VBU4jfdjhsIKtOZ/TKgh7TGTPLzcp9uo+TWC/sGo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be82a97b-dd09-4041-a0ff-08dc4c1c85f2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2024 16:07:37.0855
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g3LkxhBi+rSjnq0ae0hZee9HSJ2gzMGBkZDkIfcbKWXr4QTduUbJd9TnYPRYu0szZPLeSHud1MB6g2IC9ZhYhWgkaEhmYthbqiootuRUnvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5995
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-24_10,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2403210000
 definitions=main-2403240103
X-Proofpoint-GUID: H0RPclcptFEMbaGJvTOJ9YxtCFcpSSZp
X-Proofpoint-ORIG-GUID: H0RPclcptFEMbaGJvTOJ9YxtCFcpSSZp
Subject: [oss-security] Fwd: GNU emacs 29.3 released to fix security issues

I don't see any CVE's assigned to track these issues yet.

	-alan-


-------- Forwarded Message --------
Subject: GNU emacs 29.3 released to fix security issues
Date: Sun, 24 Mar 2024 09:05:20 -0700
To: oss-security@lists.openwall.com

https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html reports:

> Version 29.3 of Emacs, the extensible text editor, should now
> be available from your nearest GNU mirror:
> 
>    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.xz
>    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.gz

[...]

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

