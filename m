Received: (qmail 25999 invoked by uid 550); 24 Jan 2024 19:29:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25981 invoked from network); 24 Jan 2024 19:29:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=HsY2sBaiduZrTkjjQ33BM6+0FF7MP8VW5mAD/T6o/kU=;
 b=dP6U08H0v2RzpzbHvdvwzEbewbx3Y72WmiulUpWmvXW8Fo95Quq5zO1LKxJy7evmmTFq
 eRw0wYffgpTE2byCO27e30deEXQFONnCG28WQcKSIomNhuTLBSzlzHq/LtW1eycNb+88
 OQro42o1zXtMSAU+kXvmj+UaqzXWpru2P9gODBQ2xfgnbbBAr17Mh6iDAYCYzk85ySvs
 2INkOdK0+wZAPlYj+qA4f33A9mkr9LHThge6gYPfK/jjGPr5i94YU5zHhp2GsQZBjulv
 wHUYAlzcFXgQpbmFodLGlKbVO4j3yc1bw3VfPvLls+vclZUv7rd/BXzKsRN/oV01WgJM 0A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wn/yiKPKbKqUmjXzKul0MI4Pa+Q8gLMSupitwGjLvY103ElK7RAwbA29MNAVa+E4cM4YM5XFmDLz0x+3Bmavsq2qe63CyOZ2I+v9gHcdte8b0KKKqnWyZqQRGiyg9u0x2YVGBZfCx59rvjS63crDiy7ue4C8b3TCFYnjY9AcChU1zrbawEwIYOe5z7w/ilWHFMIU0HscPSPI0VNg3tAafL40npTE0El2zOwvyHAosj2OWTcEvjVJ/N3KLKAb4eR5pzY59gjnktf+j78yk18h8Ks5lQ3n7RpORRTW/88ymnp/dlwlak+wph35N2cxBrDGaHd7X6BP7LKtTz3FqpVCWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HsY2sBaiduZrTkjjQ33BM6+0FF7MP8VW5mAD/T6o/kU=;
 b=FV0PfUS82s0XcZ2DuQFG4avlxxE5V9BMCWBH7ze1zvprMHINxTJaPuODQMVJX4hC1eKg2n5QN4+B75vpV7LjxkoccpfZY/07GzhZdk+I17SOVZ7GT1yheItwtchxhrJpFO39m+KruCP/tZwRxz+H0w8DSMQZ2V7+sFrkG+uKfLACHP6ZFVOVFQEKwSWeylDKRCzucsA+WsanDVCtn42iPKlBB93Wc+x9NNJlWzjUlaSrWT9aH1IdrpI2BEdHgC03eWFOQKyNFztCsPcIs8pDVJ8/k8iCJ3PEYm2SetjJXFtBWTptzoQn4alyRoz16Ap+7mqa9AebZtvGoJYpIyB4wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HsY2sBaiduZrTkjjQ33BM6+0FF7MP8VW5mAD/T6o/kU=;
 b=K20XOH9jGWnToCsKdKtfruWYopfDrvQsO9aPeakxIwNq1k5MQTzkX6C9h/jc9OxGK0lRskOYaC/y7zQlYOCDz9uDA/9krQtgMDckSx1O9R8R1Pm+/IkYEh5SrIssePkACmsxtEYZCHfOHBJCqI3ANJdwA7caRqSOay0r6sE4kDA=
Message-ID: <f9f01b3b-a4cd-444e-bc3f-ad602ff8d587@oracle.com>
Date: Wed, 24 Jan 2024 11:31:36 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <fc3a5306-5009-425d-bea7-b1b0ceb3288b@oracle.com>
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
In-Reply-To: <fc3a5306-5009-425d-bea7-b1b0ceb3288b@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0071.namprd03.prod.outlook.com
 (2603:10b6:a03:331::16) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS7PR10MB5104:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cfe8694-fb10-41ad-6886-08dc1d131538
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zcwk1NGGbgOzG/1nCgYVHsMBWBKzfCtsZivFPT4SI6isUNXs1kKVGuVf3m2ryI+ihW08b2JO0e3VzpvjLlo0uHRnlR6B1BZrCCIx5JnQoNvRI3PnZ+c+w8/BlbJeElIfICHYhR/um6JFjigkwEJjpgo3r2Yq+gKpj5Iq8l6rzFP14G3qkRLSKwHl272yOEXNswO6/ZXVwm/LWO/lisb/jRjMRa/ullBQxJQYtgpjbMi2b3GddKBWD0YQdD1M4CyfrhXS+Qn48Q5sL5Y+zDLKIhxFqe9O3tBQZHUZRGVLTj7GSWR95djOPznQS42ykkB3s2pquh09bcOmQTgEDaRlxegTO4w3Iz1AqkaPbMsw3UTcwQFefspgcIHj1vm9zfcgf1z+GAab52qWHJ0hOtOyukq99rfksZSZ5Mm6YobC/+HiytaXyRk68yg9M7edgfYVJuoHzYNxQyueQoSEvCFkWctN+KyhWGDLL1pvJU8obhUIeQNvR+o8rS1Bnxf2Szt5C/yRiEJocdY15jr0l+isSN/0UfcMCfjEz3Q16V42v3bjDknC2jKV4NQ6qLFFJ0PzRW8y3hnhLfRX24HYrX0s0RC3aK7GH/MpvlIxTbXIo8lw4HKykHRRto4w2etojtavtH1dv0kOB1tk4M034OE7yFCJZrF0/SeWtIpUMqFiiWs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(39860400002)(396003)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(36756003)(2616005)(316002)(6916009)(8936002)(8676002)(6486002)(2906002)(15650500001)(31696002)(966005)(66476007)(5660300002)(19627235002)(44832011)(86362001)(66946007)(66556008)(478600001)(38100700002)(6512007)(53546011)(6506007)(83380400001)(41300700001)(26005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dmJpOGtCdCs4K2phNFhRYTRjU2FlQkllVVUydzZXekdoUWtHLys1NG1jYjlT?=
 =?utf-8?B?Rk9qRndsMjRmVnBheXlOenNXaFFRdUsrTkQ2QVV6L04ramJvc2J6TWlRTGdO?=
 =?utf-8?B?U29aTTFzd2xwK2ZIN0hjT1ZjTUxHSnJCZElDUlhVcnk5dUtMMmptRC83TkRj?=
 =?utf-8?B?QTJ3L3V5U2RkTkQ5Umt5bFdNVElSaE5ZNUkyeVZlZmh3TUZkZEYwY3oxcWh6?=
 =?utf-8?B?L1N2NHN1SGdIdXlUWURRYWtTMzJkd2NJblN4MUN0QUQyWVhNaEo2K3JFNEVp?=
 =?utf-8?B?Njc2aDI5aHkvUGNGRTFnNjVhUHA5Vk1RQnJvbHF4bnBQd0tHdGxUQnVhVlc2?=
 =?utf-8?B?Q2JuNCt3Z3pSQ1IxOWFRdFU3aU1zdVFDWVdsc3dHdHNOT3RPbStwNTFDaUtO?=
 =?utf-8?B?c2FIOWYyc2tRM0d0REpjUVhwTjZIeUFmQ2JsbnlJRHo0blRKK1lMRkZGVm5R?=
 =?utf-8?B?ckFVRHhhWHRJQ29PLzlUZHREZTk5YjlnVlpubVZKVUZtNEJMVzU5RDFFSFNR?=
 =?utf-8?B?Ujc5UEpuMkJwY0huZmhYMlExcjZpUENsZ2p2RFJyb3A5T0QyNjk2TXR2STFx?=
 =?utf-8?B?WGEvTkFhQ3dsUGJMSUQxTXpSVzhkaVpydFhTMTVsclA0N1dhSmxybDFwcFVU?=
 =?utf-8?B?UGdXcUN4ZEFrTWVqWU16UTQrbnJmNkxvTEw0cytXS3cvZytNRFpEL2xod05U?=
 =?utf-8?B?c1dYRzkrdk5Rc2p2dmJtYll2THloY2EzdnJteExzME9hbTNaTlJLM21ERUIy?=
 =?utf-8?B?VXl3TGdmQW8wMjBXTElJRUZScndtUTFPaUN0NU1lQzRXMWlxbzJkZ2M3Skk1?=
 =?utf-8?B?b3dreVlYVlhFMmxmSVptU3gwNWJ1MDVGNjZUOW9rMGRkZzl5R0RUZUl4ekh5?=
 =?utf-8?B?UjZqWHlyM0hkOUdmaDVWZWRhUUJxWTZ0V0pmZ0Y4Z3pQRGd4VDFhc3UwOVg0?=
 =?utf-8?B?ektRNkhQQ01zdHBUdENFdzl5NFFwTDdFTGRZL1RVOVBKcGNiK0s2Z0RYNHoy?=
 =?utf-8?B?c0JXbElhWUsxUmVpbGwxT0JaanMyN1dXRm1waVp0ZmtmcE5zOHlEZ1pzeHQx?=
 =?utf-8?B?ZFFLL2wyZlFkeGpCZXVTTjRJQ2pRbzVnSGhsTG5GMXVPaThFZVozZ1hVYkVj?=
 =?utf-8?B?OWdkNmlpTTQwQ2lsVURIS0YyVzZQazkvWE91cEhwRzd6eTluZ0tubHQ4bjB3?=
 =?utf-8?B?KzdiZGcySHFiUG16VDdXaFpFOFBqNVhYTS9GYmNPRlFKNmU2QjBjZGNvNlJo?=
 =?utf-8?B?ZTgycWpXNWx2aVcyWFFjWE94QnNnZFZiY3RieVhqeWU4NUZqUzV0eFdGcUVN?=
 =?utf-8?B?REttTjFEY2Q2cWU1VnlWRE4yT0ZIeExXR24zemd6dnAyME5NcVhJUnVxZ2ph?=
 =?utf-8?B?WkpZdWpZb2QrSE9zY1NSVGV2OCtsNldGYnZqSUVrSGVrejZMOURsbk5PZmhy?=
 =?utf-8?B?d2V4d3BNUFR4d1l2QnMvUU5nWkVjdDVIcC9NZDZOTmx4Rnh2T2dWVHc5Q015?=
 =?utf-8?B?eVZyUkNBREdwRUdkVFhRQVBTWS8zNSt4N25kZTZiOWFpNEJVVE5zdlRCRjNo?=
 =?utf-8?B?UVJ5eUZ4bUFqNWlQNEJ6NzZyUk02S01qY3ZzaDhtdUZ2MStqWll2QXBtOUky?=
 =?utf-8?B?czJUcXIzeGY0STIxWUw4ZDBkQlNuK2w0dmErdEZIdUFKVFZWSzYzWmVVczJh?=
 =?utf-8?B?dkZTVFdxRmI0ZXVkaTg5RlE1UXRCUG9lSHRjV0FYbytRQmNkYTNWVU40QjRN?=
 =?utf-8?B?WkZUNjh5Y1FYVlZBY2lHOTAwV0svS0ZEQ1BTM1RCTHNFdHBHRjJkSk9QZ3Nu?=
 =?utf-8?B?TEJCVGZwcEtBVVlkNUlVSGcwa0FuVkx2bG5LUmxmSENiczhqVzErZWkvYlBl?=
 =?utf-8?B?SHVvdExLWTVQRGhTcUNFN01OWFJGbHFxYVlwb1ZoMUloUjc1bEF4QW1tL3Ev?=
 =?utf-8?B?NThwUGdqYkhsRURjKzNyZ1RrVVFDUGRDaEh2cTJKVVduOFR4bG95a2t6bHZ0?=
 =?utf-8?B?a0ZaWGtxY1hHQ0xUVEFYbExSQ1FMaFR2cjFybTBQYzVUYkhCN0VYTTM0WS9I?=
 =?utf-8?B?bVNtVnZiRW5HOHNTOXFTSFpaSjRMVEM1T1d1aGkzQ0lBSmZzbHdxdjd4M010?=
 =?utf-8?B?OVJodjRBbkczS0wzVUllSFNZN1pjSytDT21JbjVmSUNzZndNM2d0d3RWUEpW?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	PE3Qzu7JmgW9Jfbaf6p8rWcQn1PmIgdkqeZsCO4nUJhXCE0eWgOUe+5JLD0p/v/7javI5/HjCi/e/Lv+fOKCNLGHOsssPmz7BLCr5na3kNZQLhFkiKWAcGA0GyGFduH+KT2chuKx1ROhMbVRfTI6P4KSBZPCFYbbZzuI3BlmBFOWDr1R42wT2SYD4pyNEfcu0+LDDwc4MB1xlGMPvu3gyyQD8yhu6l4l8o/qeNPZHji3ykvM66vQeBfPgO6pnTMzOvmzGIUSSI4ToWTjtfErxrMfisDv8uVC094VOWcHtl5BYQYZh3c4q+JGZOS5m//7Md0jdF7+lNohN9iK+Ukq5+h9V4U+p/NVmuxPhUKE6AsqY4KpDKrhnEJ5P/cu6NNRpzXZtlSJQojQ/CqJIQfMAMVGBzIBn2pCyQBN+jQOYtsZmmKmn5Zd457GNHpuMQdmFQ3ZkrCTFGb/YSMe9/jLfGVNqh5yN+bwYv5Xw5eHzNyz6UpN5KLwDb3uC7HmnPZCvOYRT/yKHqmossFh7+K6YgGsqOZJajyowbdIuOaFuSQuJXiBeWhvRH4DupwXcBNbl+u4TrFhh0mXx9d2EascXeqBHef7TbxLs3qo4Jj8/8I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cfe8694-fb10-41ad-6886-08dc1d131538
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 19:31:37.8542
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e5bfQlaNs9isGv4K10+4J1QUVRPwFHCX4VjvEULDLl9W8k+HcMYphz3ADmqE/uOGNjotd9LjPn4FF6pZl82f72DKW4firP5BlfVY8OyK7nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5104
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_08,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401240141
X-Proofpoint-GUID: ZFwmlhCOnETpYIPXZ-nU3O6l8K6Ou8gD
X-Proofpoint-ORIG-GUID: ZFwmlhCOnETpYIPXZ-nU3O6l8K6Ou8gD
Subject: Re: [oss-security] CVE-2023-45853: overflows in MiniZip in zlib
 through 1.3

On 10/20/23 11:42, Alan Coopersmith wrote:
> CVE-2023-45853 was published last week for:
> 
>     MiniZip in zlib through 1.3 has an integer overflow and resultant heap-based
>     buffer overflow in zipOpenNewFileInZip4_64 via a long filename, comment, or
>     extra field. NOTE: MiniZip is not a supported part of the zlib product.
> 
> where "long" means "longer than can be stored in the 16-bit length value used
> for the length of these fields".
> 
> minizip is part of the contrib directory in zlib, which doesn't seem to be built
> by default as far as I can tell, yet NVD has assigned a CVSS of 9.8 to make CVE
> scanners scream at full volume, while Red Hat went with a CVSS of 5.3 instead:
> 
> https://access.redhat.com/security/cve/CVE-2023-45853#cve-cvss-v3
> 
> A fix has been checked into the upstream git repo:
> https://github.com/madler/zlib/pull/843
> but a release has not yet been made including it.

The fix was included in this week's zlib 1.3.1 release:
https://github.com/madler/zlib/releases/tag/v1.3.1

That release also contains a fix for CVE-2014-9485, a path traversal
vulnerability, in the miniunz program from the minizip contrib directory:
https://github.com/madler/zlib/commit/14a5f8f266c16c87ab6c086fc52b770b27701e01

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

