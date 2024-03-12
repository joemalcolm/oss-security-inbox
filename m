Received: (qmail 32010 invoked by uid 550); 12 Mar 2024 17:48:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31961 invoked from network); 12 Mar 2024 17:48:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=A2t4C0Dp5huZ0cBIHNHYVfevk8rpBAcHtts2RYXOEsk=;
 b=K0B4Zu+yj7sUAL05DCHPxuo19RClcOraigMoTxLp23Az75E7W+SfdIJkuLeVGgr8vcjS
 O+C3Uq2LCjPqikNPk5GX/z9H5FY8mMa30GFm5MeXLyR2Bs0QlI5aAGBeDW50efmth45W
 c2eV7qPpOvVLjW5fI/DZpvSq2Ybs4yuyXrI0ZsjUgi3g8sKTPLZJOR8YUGyxm6riJxum
 lzq8dfN7GbELnGzpHNpi0JIJT5RdGgKxscNSb6NsRPUtrF+aeLqykS0jHL81fLdAWBbB
 oRwBmDchDe/cWaUv/SVgagjnV7bNl3wEldqGk7uqKgdIASaV9hWc8xUcsu91Kx71h/C6 +Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WX1vy9e59Pf8vP1PjlWMOvAferhMbnIQpMNbzRJwm9zKx5j3aajbNGg9Y/I2YtqZfTiDBx2S55EpdJhd9Zc9FwEKRooXqRfc/NH6qtWNYWUYgTf/wj1nw/icK++7S0dMDDAH/hiKvNfl1aZoY7OfduGucC66yctiNHzWDvngbd/CcOJHXRkI7xofnCkzAGIb49qiTEA8Bq0FmrlcAZzr08EfWWpEUsjXKQLMoxVAkoiX/eQGI/HXL9ePjNo5XoM1yepA0Ffw00GyE7NG+5xF0AGo2upDqHxjphH5tl3ikEnq1zfUKs+eAZ8NhM3Q8G0DFG8jjv+mDdl1BgR5YxyxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A2t4C0Dp5huZ0cBIHNHYVfevk8rpBAcHtts2RYXOEsk=;
 b=OdHMD7KH621Q+d3hl65tAZMdirPonk0Q383NEuisPfv/opyAGk5zPuIC1r69W9phIzm0m3Ax/nsooIivigeVWE59IJ4tjU9tKrLeJ3XNC3eVnM4wclujp7eHQv06zsJ2bUt6xKKY7kSZUaIXakrvAJSUo159a4UClKTxPQ7QyHXbisuS3C0xAiQuMI7z4GYmc8kn0RAAuXYjCoF0xhSsEUwKtxjEOOn8t5xDrRROeTWbjDWMstRDEZTBVCbFGVvMK9hmfk+tCrYVIK3BcWiHsRenHU9ungE3O3BKNxv+4sX81UQ4sbGYj02rZFz56Ym85KqEnIKqyqRT0/khXU9qpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2t4C0Dp5huZ0cBIHNHYVfevk8rpBAcHtts2RYXOEsk=;
 b=ncwqcX78lOSl/Sw1ptYZIp523aPuk61jgOv3KLyX8XvyPZvv2XKvZA+2d0n/oglqqrbJLVbJqs4GreE+nEVeDxOb12LHoyI7LcI5BlKrle9EREGqL9/LK/80IWCp/3898wTBAwXFM370S/37MAUZLCkpEq+acThClvlQjvxx96I=
Message-ID: <c6cd855d-da48-45e7-aad9-47f24a285123@oracle.com>
Date: Tue, 12 Mar 2024 10:52:43 -0700
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
X-ClientProxiedBy: MN2PR14CA0017.namprd14.prod.outlook.com
 (2603:10b6:208:23e::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB7960:EE_
X-MS-Office365-Filtering-Correlation-Id: 52b6beb5-b182-447b-c2af-08dc42bd39ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g7RlQsi2te0hGklvuSPol4RN7dpcQb5nDQfTnZJLyLv4CEJamhsKmm4qTR5nsZtYn+XNOfG7dIHspqZYryXXcCKlXON7yAj0nXSQPow4a1MxkW8OOWDJzcWbsKxDg/fPt2QxSfXAGK9t4kYX1k5+sQ294xtFUYNTmN518+v9mlX0yVY1ozkguhZpdUw+fVjETeJZzc6BZ+/AkRgZydQKOBrtcWqN+EDNYGL5r+Mj70Nv8Kw7cOBKjENOdJsflrzHIhmIUYnNjPZKSbhQdhcxm90OiGSw9HeM2eXLTOZEu7gWsdevciboX+zYGR/RCr2Kca8pODKOi9Rhwh5Vpy0mWSfeWbWFoRSsHdXVGArKLqJ/fBTOVcugIGmO8m98hzUNXRDyxH3ocKU4hJTJIdStjLnukTspKcPktEJEB5QJf0qC7lCWLxCVQ9phuwRaFJkIyzELPvm1VAshGE0PuLcZ9lRqCC95Q+reQKyYf2nWxns1Eamvip7DMWnyX+vu8/PGzGTY4TG/vmGjTzxcATtkJ7x5zNPDlVXJJ9FWeW06oiSPC0wzvxtikPdjAjpFtR3zxG5re/yM0KIHX0lK1ixB1Bd4byj1ixEqF5SIS+EpbdRvmL481uBOvZ/mSRsnXw7B
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Vk5ENEVNaU1RZzNPVHJLeDIyUFcvQ29iNkVrNDZSUHd2elNtYTFyMERQdFVp?=
 =?utf-8?B?Q2VjUWcyeENZaUJ5S3VwdkU4RlF3NmM1TDBpbkpBTVRhTTFiWU9JU2tZOHRJ?=
 =?utf-8?B?QzI4NE01WkxjYUZzQnFKMlMzc1BuWDBlc0hSS0dTTXMxMzBKdTJmc081aTFy?=
 =?utf-8?B?NGNudk9sbGtPR3VuVjBpNUh1blRTK2hkRWFFT1RYbFNxdDVDN1RKY3QzUzRy?=
 =?utf-8?B?b3J6L1VoZzVnS05ZcmlVUStXWmNMNXdOYjJ5RFAzYXNrU092UERLY0hFdVlV?=
 =?utf-8?B?b1NlRVRveExiU0JxY0ZkdEF2VzZEQWlpVlI0aUg2eFlQL0I3SjBUSkNKNDlY?=
 =?utf-8?B?TjR2N05tMWFqWTVuTkJQRVNvMFRyOVBVR3BmOFN1T0Jqd2kvMmJvR1lndUhn?=
 =?utf-8?B?TmxTNG1TL0JYeWlGVlZocWl1b3RRTnc2QmpCbjJSdHo3VkxxbWlJYndneWRF?=
 =?utf-8?B?SGZuRTFzMnBocVBaejdJaFp2Ui9BYmdWSnhTMjBvUHdhYzFCZnRBWVMzQjFU?=
 =?utf-8?B?c24zZ0JCems3RVJ2ekNYQ09sMnRSUW1FZjNvdnR2VXBwb2d1dDdaci9VQzRt?=
 =?utf-8?B?YlM5d1pYY1pYZ0llU3NMbDYwenVoWUsvUXlPWXFyWExweGxYL1FlYTZ4ZjNm?=
 =?utf-8?B?QU82dDc2RjZIMU0wdmYxUXFubTdHbFNBNGFiYVJjMTdXR1lhV2pFWmsxcFJr?=
 =?utf-8?B?dFlPeTY2TTVPVHh0VkJOYUNJWlZ3Smo2bDhYclJUeDBoZGZrMitvWW1Hd1Zq?=
 =?utf-8?B?VnpMYy9CYnNocUV3OW5QSWE2cUZGOG8wUGtyN2F5UGtuMGh6ait1Mzh2SEsr?=
 =?utf-8?B?THQydGRXUVhWamNvYWpPN29Oa3p4M3JMSStOM0NwN21iWkgraGhYOUx3RUVV?=
 =?utf-8?B?Z1NZVkdxeHVvckhYK25SSW1WV2tLTkdhMCtYSlJzRXlQTU0zNzZuY292YVJv?=
 =?utf-8?B?WGNGSDJEejJoMFNjUzJSWmRzUElrcGJ1SmRhUUNkY2JmQm41VnUyYnlPK0hY?=
 =?utf-8?B?bnU2MGptcjJPZVpJaHRnV3lJdWNsLzFiMHIyKzFFRWFBUURYUGZKNlBKSWR1?=
 =?utf-8?B?dVJOSmtuL2tnUUhPQm1taEJsajIxTHlVZ2U3cWRVeVZ6djRxenZITFRqTTZJ?=
 =?utf-8?B?ZzJVQnNGVWZPNmRVSS9qV1FwajFWWktDWlJGWVpieEZSd1Y2QXJsZnpLR2FT?=
 =?utf-8?B?U0pQSnBxcFlUT21ROUZ6bzNmaUhRTHVzSDV3VE5FV2syY1hwdlpLTGNRT0FT?=
 =?utf-8?B?RDFxVnl6QXFhNzR0dUxzRzdnT1RYZUk0bU5DVnUxSnBrWkM5ajdHTVlwK0hx?=
 =?utf-8?B?NjJ4UHJrL2QvSFBCN0Rnc2x5czRkdmdFM1VPdGZuNXlCVlY5VmkyTzJNallP?=
 =?utf-8?B?eDNHT2RwWXlvSjcrTitRc3NYZ0IvdzJDU1U5L3ZsWVhVSzFJVUxxNGtXelVl?=
 =?utf-8?B?dGJuYjZpRnJodjZlbDFQUlh2cXN2eWhYN3ZRSDMrdFZPbkh2dm8raXAzRjVZ?=
 =?utf-8?B?Yy8yN3pxUTBERi85M3RZMTI1RXY1dTVIbUJPVkZJSWt3TzdVY2tqcXRnY3Bh?=
 =?utf-8?B?K0sybk1DTWthZFdxbld2ZTY4clpOb1FpQmpYaDB2TXFTVGlJeUtORUdJdStk?=
 =?utf-8?B?V2tXZ0FxK2ZCdjl2RnFmYjBTbVZpa1RqUWU3VFhEN3V3MFRIM1pJbVBXandu?=
 =?utf-8?B?WUdQQUlybWE3VHNWdk00OWQ2b3RGTEJVVzgxbVZOZUljVE51OXl1bWN1RVlv?=
 =?utf-8?B?MVpDbVlMTFUzYTFSUit1M0F2NjZCSUZHOVJuMFVmL2dSdTFPYk5DbDFYZzJB?=
 =?utf-8?B?bDBpa2FPaDRtTzgvejZqeEplMTd6eU01TXA4V29WUUpXcnA1c0RISGdDVTJX?=
 =?utf-8?B?UEIvVWxWUmYxemNMVGdxc3VXQ0NHTExtQVlqZ2I2NXRON2x1RjBYNHVqbjFo?=
 =?utf-8?B?ZFRxd0RpVVBEWTZWNmdPSHQwSnRTSU9TRFVnUzFpYTJsSUJxVjhkT0xEK29R?=
 =?utf-8?B?Y2FBSkNROXI1cDhZS0pGamRhWXljV3drRmk3SkplTTZaNjI2azZTZ0hoNklP?=
 =?utf-8?B?T2lHTkFodW5wL1NrclI1TFRvcXNEdVptbFhsTGViNVk0a2FlcnhZQUFmaS9D?=
 =?utf-8?B?djNqMDVLait1dUpSdlMwVjVodWZMYlR5RUlxSTIvMXBTZWlSLzlTNjR3ejc0?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	7MDAn2NOoP2jPLNoosmcPg4oee+ymikfUbVyGd11d6/y2Vvvg+jo8NiB5AfhQNlk962q6cc/Y3EH3SdCu828Dzk0k9FjYVVtaZv2QT9kKn0YqrKKcEDfjOyPbKlsmS03DcUvMyuu8Mg4oNa83JnRrxN8bFK1eAKIyAcK9e0fbEIXX4xRpSke9giPZ1tpjoLxy5CF45CnRuSQ03NHJeag3DFnRZt8oRWbSdMY+9v5B74z+qw2z1mgKujSbw9B2j1IZojuXeakddtJokz6CVODnT4bNvBFST7RSmIDpU0g5wvEtp4rhV61OEOgQw1L6XzS53GTx21rnhX9pDNxlaBO0vxBFwj9BBc3zKzkb21NuOCZkTHBpukORx5O0+MGAYA38NJtSzh65pXCiMzk9GVMsNU+SXLqSYvU31vb5cC1hAk9F3r6hiTx/dR3w+eeQNHdkOy/Umpm5TrqaKoC+1UY+UuLvsacUYqMjz5syFFFFv3oDib75xuQ+C0ASJEESeTSuGijWDq++61BLUZJDPhfqn45oCbAjkxLg1TQTWbRsaKp1E1LHXdhWJpVoBvOkGUcyQDZvQHP9DYRuuDXOII9LuhhdZFYPW2xSh4ogSPc3YI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52b6beb5-b182-447b-c2af-08dc42bd39ab
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 17:52:46.4844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OZuun9UPugxhkVDBotyHc2Kc5+YXhIlJG+dsARlh+2+sUdHSpCa3ly15AFkBKJI/FvhY6M2D0cZjBUcJ/mVSmTAUwbJkXFfgK42GB2dAeCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7960
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-12_11,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403120136
X-Proofpoint-ORIG-GUID: QvTwAUMLN-pN7SjG12EsYtRw783315lz
X-Proofpoint-GUID: QvTwAUMLN-pN7SjG12EsYtRw783315lz
Subject: [oss-security] Public Review Period for CVE rules

Since discussions here occasionally touch on how CNA's assign CVE's,
those who are interested in the subject should be aware that updates
to those rules are currently posted for a public comment & review
period until next Wednesday, March 20.  For details see:

https://medium.com/@cve_program/public-review-period-for-cna-operational-rules-document-open-march-6-20-8415d6857bed

(For those who like to see such announcements directly from the CVE
  program, I saw this on https://mastodon.social/@CVE_Program and
  https://twitter.com/CVEannounce/ .)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
