Received: (qmail 15589 invoked by uid 550); 24 Jan 2024 18:27:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15553 invoked from network); 24 Jan 2024 18:27:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=k77HHjuigi2MjOFeGF/n44sdV58//cNKf1r+A/4j9VQ=;
 b=MKUtFk6+D8eAG7XtFO+qdjDVCpxzE2cwGXwmUcPBLfNzARFPedWvONY7YKHT6ZvIjY0M
 FthoR8GI0b/aWTjjWWUtKNm3XwH/mLamoZ2rESi9/o3KEMIF//7vW5nwtHKTI4alCNTD
 zufsiUAXwE32UXnmIVWMY4fJ18WPDndtjzvuzIIVvqPW5ezrOUhrBX8boBJWooM2qIAQ
 ewVr3DsqJU4+8otqgVg28UEs+N/HnC7uRuh1gRQM1DmeyapFvMOBiHhsdNU0h39/GUeG
 28DWXaZzAovMCx815nN8ElACbtslMQ2L+igFZ+QOgLf/NpfQX0qYyV8CAL/JDe0lZtm3 Ag== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dD05o/hU+9l0F5wqxn4CaS/ZloqTok5TbbZH+wEpKPJFhMx372RA89YlJ8kwK8PtfUx6yW6Ecmr8rFNzchBye7IsLkgEYPA9ZrIHcLskymr+nOmJZuIgy8px9FuL3ss4ixo+Lgd3BAyJwpFlycxzx067fnMDB2J1FpKAbYqfhx4Q/umahRUqjnyP4+mqsYEvugGPYxCVW4vpA3zLDoNVpmD2wQi04ftlZWgyVK8+jy9x1JDh/Blc+eqmNqckEB2tIhZdHQt6Ti8WDofjdF0bI8cmy2pjzau9fJFJrhhLlUXRKnveWrj0FEpV6q1c/pb/WJgVAc53e56SW9z6QpYwhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k77HHjuigi2MjOFeGF/n44sdV58//cNKf1r+A/4j9VQ=;
 b=mhGM1FklovA55LsSWO1UIENKBaIwXEJTmCKlq74YHVUFoeS6glJpzh7RTx1cNq8mHUGmT4w1OA70VHpmupPigMEVAZ9I0bm5a2sYkSF+E5xVWNA93orUbOIglaG1oOntE7+kvg9sfy7l9X85aOcCLIMaCiyL2OmHiJUm6isKWIoK/qf4tOep88IO/1FXCf6+aQaPIkSbw5Z/hP0Q8Xi+iyBS8lc+3jtbiscZIaNhAsopnLKop54NlbJpPqiA7b5OzWF7gUZTdezRXltVDShAZkQTM1mTNGlYiXmS6nQUgvGzYpB2xKVZWTxvgrzy8hUEQW4s6yn721Q3fqMK4Z8LPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k77HHjuigi2MjOFeGF/n44sdV58//cNKf1r+A/4j9VQ=;
 b=UrQIOSOKq9s1C5MFP0ZrpkzOYQ8jlvEwztxNDfvcz+HxZAmIG4fdYqobAe8UjTmCpVbu/XJZu69lxjXKKP4nwuqSL60w13yKhUx0hy+XZQ5/NVpy4wR+wnbkC2O1ebtW0wzR9DVMeK0cyw8GeXrXrSF4ZegY+UdnfU8n4RuXJBw=
Message-ID: <e32d5910-0234-46cd-b7f0-6bb08b3020a6@oracle.com>
Date: Wed, 24 Jan 2024 10:29:29 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <ZRxA6isrnf2hA3QD@also.us.oracle.com>
 <e95ba96a-88e7-4bf1-a18b-12b566812225@oracle.com>
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
In-Reply-To: <e95ba96a-88e7-4bf1-a18b-12b566812225@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:510:5::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB6268:EE_
X-MS-Office365-Filtering-Correlation-Id: 1be68f64-68ba-4466-66f7-08dc1d0a6882
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6rD2R0GC8lxp1GeRYZ8CR9XwwDb/bD8g+3WIyVqQKnt5wUO8Jvtzp/S3y9E7VH78waOiTJ5W/WwBCSMB4c4Lra9Hz7dpU1QwcrluS2OY4/KL1XdmnuGBWgq2GY/1D53bOPyYQKlgBrj8XUqMgo2DMQyeM5K/ps9dhht8eMr66S1tgD6zfU/C9xU1ApixGRf+ek2PgQIYblhlVrHO7BF2DNML9tZ0BX++7koRkivOt5nbjtuqA9f3rdnlO89ez7mXfo2Kn6eofFCrXXXTQ6Dtued7eEeGSJENcqPCJPw4MkghdgKXwymD5M9EY1v9B7RlqjQTk5rLBkQAKk9ExCk472QDbm6+54kQHzrOhZkEkCAPCqhvDJZPoZoGDH8+iVlYP0387MB2o3+JyNWogBtZHQQtpxZkedJS37u0cwfymv63kdTAf3JuSwZqzO1k/OPqPQN1/tPNUFgiSIA51z4YxUVlU7xttLM4TM3UtvRGpLkByletP0T2odCqV72AxDmeGres6Bw5/j497aSBBCv73YY3+d/WAEYQJhndBGmgr+yB5za6XQnP7z5vmZQK+S2uLozEMD2Xzn//kUdcyWpUYH9DniNWJV0VP8A2o/LVGdChX0H6NTUdLBYB9qJrGXG4qX2MvfDLhvCAms2SHTRe/TJrO5J27kOhOn2sMBOPWV8MiNslr4qdkVozRiG08USv
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(376002)(396003)(136003)(346002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(83380400001)(41300700001)(6512007)(15650500001)(966005)(6486002)(26005)(2616005)(44832011)(5660300002)(4744005)(66556008)(2906002)(8676002)(8936002)(66476007)(66946007)(478600001)(53546011)(6506007)(6916009)(316002)(31696002)(36756003)(38100700002)(86362001)(6666004)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZlZiVXJpa2k3SU5VeGtHdEVsMU9lUVVRVnJRakgraXpWUUNON0w5UDhjaFhu?=
 =?utf-8?B?R25xd2JiVGxTY2hQZjY3OFhMWVE3RDRnRE5PN0JBKzdDakwxSFdjUFI0Qm50?=
 =?utf-8?B?ZDk2ZTJ5YXEyUWNtLzlVYU9ScEdmREFMdXBJVXFlQk1BZit3SDhweEZ1UEpa?=
 =?utf-8?B?RkNjWWxCZ3FSUkEvYWFzczQ3ZnV6cE9HZkpmWmptNFBRRUlndVMxVjFYdFpr?=
 =?utf-8?B?Z1dCTVV3RjQwVmg3akxGZ1BXVSswQU9OYTBCeG41Z282a1l6U1VFNUFSYmZJ?=
 =?utf-8?B?ZlpKTUpsNWJSdnkxbXIxdzFxUWVVS0tsaFJWejZXZjN0RitiUUg2WVQvR1JK?=
 =?utf-8?B?cXNWOHdMTHlxTWVQQW9iQTloQUF0a3dId3pqS1IvRmtZN0JVVDhROXkrdXA5?=
 =?utf-8?B?a1E2VHhvdkI2S2lCQkR1ZVI4bEZyV04zanBleDMxL256SkY0enJrLzBHSHRL?=
 =?utf-8?B?eHoyQ3FuUlNDQndBSWNwTXoreGNKWUR5YUVQNDE2SWQyb3ROUzh3ZVRrdDZD?=
 =?utf-8?B?VzRvbUhibTk2VldMZzFrMkdLbHRMQkVRQmxJUkh0U2ljalJtLzFQSjR2SFV1?=
 =?utf-8?B?SUI5a3R5MUErQU00Z0lsWm80dHFMU1dzYmdkb0FwalI4R1orM1l3bS9KbjB6?=
 =?utf-8?B?MTJJNEtoMDhDM0w3RFB2bmdhenl0M3BGTUFBSEk3UllibmRXUVJpNkgwbzd3?=
 =?utf-8?B?UzRseG5PNkg1U2tpYVlYRmRDeXQ0MThlSFc1R1R6SjBCNUxNM1A2UmtabVdk?=
 =?utf-8?B?cG92VDREZC9sTjNDRHBYdWtxREFoL0lHc2NIa0FGVHh0ektVVVVtdzFaOWRt?=
 =?utf-8?B?NHdFL2RWQngvT21jcHVOdWxMd1JDQWZkdEJlMXBhZDR4Q21LYys2cWxva1ZE?=
 =?utf-8?B?N1ZXSStFSHZjLzhVZTFhQ0oxNzlTMFJtcjBic3dlejVqcnNjZ1JwYWdRYWta?=
 =?utf-8?B?bjVTTXVTWm4yK0Mzc0YydTJ1bkdvTHRld1pZb2NVQmtDMXBTQWREMWRpSFN0?=
 =?utf-8?B?OTJRSnQwSkhBNWUzOTlVUjlNQmpZd1pkV3phQytBQkhRUmZlRFVCY2k0bGcz?=
 =?utf-8?B?ZUdCOW1LWFFRaWNyVUlSOG5zcUUySUEwU3VMTVFoWFRjK1VLMzRYRklqMHUw?=
 =?utf-8?B?UkUwUE1QK01PV1gwRjgrTGYzcjlvSExGYzhTZXN6MStsVlhZMFRoSUhpVENQ?=
 =?utf-8?B?cGdDaE1DWUlmRmtJR0Z2YkNBcmpaSnhWdzFWalArQlhrZWhXUGdTVGdqYVU1?=
 =?utf-8?B?VHYzQXFHK244SXRLTHE2MndCcXBkWlk2UDh0YThFdjZzbnRsWlNHcUpxSXps?=
 =?utf-8?B?MjdINE5IbkFHdE1YaDJMNS9ydTdyZXlSSTFrdmp4cUhaVWRVVmtJL2tFTXo1?=
 =?utf-8?B?VjVBUE05Z2pFbEtyU0MyZGdINnlGSHJyYjV6VTlMbnVhZDV6UTU3bDhsZDg4?=
 =?utf-8?B?QTNiMytCZHVsQndNTkF5aTNwVnZiZlluV0docDRvUmZ0c1haMW1lenBtcllp?=
 =?utf-8?B?aFhmYzVhV2w5MkpQU3VLUHF1Y3ZFTkZNZGl6bEZmd2w0NHVvazAvNDRNRWov?=
 =?utf-8?B?LzVJSTROeUY5R1N3bXJKbDFEV0M3QXFwWThkRzcyWXROTVRkRjg4VHB5ei9u?=
 =?utf-8?B?dVBFS283SlFhV0NiR3VMUHdIS09jRnBVcnhDN0xhTEIxdVdOaDFDOEd0aEFp?=
 =?utf-8?B?NUp1eSsvUlU1aStXeHJVMGhMdU5yVUpRc0x0NldtcHd0dXZRa3dLcmpXNDhZ?=
 =?utf-8?B?dmcycENhMndwTGlZVmV4eGdGbFJtdUV2bVoxb05hQ1ZuY01raXF5UnFOdnRE?=
 =?utf-8?B?QWlYYTFvTFg0TWVCc0JhelE1MUU1RE1GVHFibmpySzhtRUlqQ2NDS3lrYTBl?=
 =?utf-8?B?OWU5ZFFWVEVXdFBwM0NOak13NnpzWm1JVVprOWRRME5yNm9KSndSOFJMSzdP?=
 =?utf-8?B?dzBqMEUvcEpTY3VkNWVJaE50cW0vbHlLMExXbGF5bi9DN1dmMUNJclhGNzAx?=
 =?utf-8?B?eFNUOVNBK2c2MG5GZUEzMjR4dXgweXI3MER2Z3FIU3hjYXJKZ1ZwSnVGdk8v?=
 =?utf-8?B?UHNHWXpqYmhJVitTMmZodEZXT2NBazNuYXYzb2RyV1F4QkRQVldSVkhWeGM0?=
 =?utf-8?B?RzdxSEtuMTlZbjE2MU5yTFppRk1vbitVRVJ3dWxpZlkvMjdoeXFzTEx2UGFj?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	zplXULG9TdPTjBLAMjeKS6ZyPho2dFccEuXfk4KayWihI+6YHie/P5TuT49q+A8UJ7xJQ5br9wYcETSjbwdypfXn2pYwTHdOMIuMLqInLAO9V+DFF/+i9VVTmGjmTb+e+266Ow1Jor4/kPCn55k6/F2ELl+MyhF/GgSg9GrOwFIT42pyU6MaD25c9kBX5p5QyNh5xYSClPjxouXYlVaYJiUMqycH2834Nf5PdQIubu9ME+gwo/K6tyec2Aa7smnVDDN4Iz3/31/dIfon4TNxXtfki5cY4ZPyYjcdEOE+L8dzR/cAC7TBG5/wLCZj3jguNdl5DuKjIHjHizrc4XjSDZwVzS1xmf98jlgXqzu8AyVBYLdMFSP5WrnlTdiTFoyacEAo6HfeIkyd4DEfnhbvB+gEvvPDtx2XhifDPC2l+AKNI/RibJadMfmslCav0C3PwPoo4IU6GzQ3ZVEBM+8nwo0Yqf0ZJs2N/iaZ4Qtz+fFZV/3q4RWMfYIQuiUYIPXbrka8G1JoAG3//Vw6KGq8Xqf01cYG+gn1x6Eoh37C4bCo6MKFb8Ph1c+cwVYGlzIo6rOX8CJ/95+BaEl8LyV9yg5P/sspGe7ZxRpWasidLoA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1be68f64-68ba-4466-66f7-08dc1d0a6882
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 18:29:32.1653
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNh1xaG/E524hg8OPDKstOpqHXpxwgRB8ngYXV8bQjrYElv1yunGTk9uyZAgkryeUhJYFW5g9BPWpHaNhCbN/P36tkbKeHEg+kCXUWW4F/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6268
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_08,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=935 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401240133
X-Proofpoint-GUID: VbV4T7LmOw12diU-Fs3gc203eqmS8PH6
X-Proofpoint-ORIG-GUID: VbV4T7LmOw12diU-Fs3gc203eqmS8PH6
Subject: [oss-security] Re: Fwd: X.Org Security Advisory: Issues in libX11 prior to 1.8.7 &
 libXpm prior to 3.5.17

On 10/3/23 09:31, Alan Coopersmith wrote:
> 2) CVE-2023-43786 libX11: stack exhaustion from infinite recursion
>     in PutSubImage()
> 
> Introduced in: X11R2 [released Feb. 1988]
> Fixed in: libX11 1.8.7
> Found by: Yair Mizrahi of the JFrog Vulnerability Research team

> 3) CVE-2023-43787 libX11: integer overflow in XCreateImage() leading to
>     a heap overflow
> 
> Introduced in: X11R2 [released Feb. 1988]
> Fixed in: libX11 1.8.7
> Found by: Yair Mizrahi of the JFrog Vulnerability Research team
> Fixed by: Yair Mizrahi of the JFrog Vulnerability Research team

Yair Mizrahi has now posted more about these two issues at:

https://jfrog.com/blog/xorg-libx11-vulns-cve-2023-43786-cve-2023-43787-part-one/
https://jfrog.com/blog/xorg-libx11-vulns-cve-2023-43786-cve-2023-43787-part-two/

-- 
      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org
