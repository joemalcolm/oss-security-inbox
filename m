Received: (qmail 31887 invoked by uid 550); 26 Jan 2024 21:51:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31857 invoked from network); 26 Jan 2024 21:51:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=QPLiazayR/KvmvzTyPILTThvesM4V1e8zL0y6vAD/Ks=;
 b=Gh9FoXhuGoPMMPLSsH1IZjizT76MgB9WK6sakm9qF1Hd+KSTHtlyJa1n/qA5Zdy4rxJL
 +Ec+9tdVLeC6wBozKjZv19PKaz+gw7iDGzVQAwl8t3Bj2Nne9MQfaIwRisf9epXnzPuK
 YsZgGIEESgYELOOgiH8a6pXhCatzCS+Jt/QY8RF8a3+XzI9K+ojbDbEpPcS5uPIsn5QN
 e5IeSRWCLeZkvdsyWkGminI+HEz8ary+ACNecqTJPHxOQ4o7jve4R8CYg1egXyWx+dwC
 buuZHGhi6hZEyasu4F1/RiwDQbX4f08YNOP9UCRvFjtOjzA0MoYOAbTHXGIfil0KyCU4 MQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0juTukiyZXoje8YIqQL4ryJEGngY7Ekxjs9wRT0K+LEyf0MwernVAOhyzU6lSLqYPX++/HKAln+eCCVKmAj0YJ7oxzmVoDL+JPwewedGmEuousvuSeAGS1Rldpc1tnrj3ns2negcH8SyUcIl2Rt1B/em/q9gDwiU9WFFhJ2gP1Jx0fG1+q3PQeCINdeeGBa3p0puHpCV6jDDrmY/d6h4j3FnvZhEYhQ1nGGRAKoSwapObZfPvTirhTDbjkPyA7f8r6WenlIDp2PG4uAMfqY3Sznf0h8PECmfpMHqc/enbDujI4VESZIm98+j0a398+pVI1fgP46zLlvE87L6jJjTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPLiazayR/KvmvzTyPILTThvesM4V1e8zL0y6vAD/Ks=;
 b=GlCRzpRObnP898yRNA0eoh0j/rMB73z+2zxK31NkeCf599hlvEMur6lHLStkB4FiIHGMD3d91aBSbtPv6huCPqraNedfVPBgxW4y2BTApPmm2/or0s8jEXrNNZkso4DfEhxbic4TBr5MS2ertOFx9hHJ0OL4rPrGdE23Mj+N0NeBhtIMe0O6QeMKLbLXdEJSZfum9U4WdgZJg7LQ/6vsl+6OF05BosMDCMr1rC07lA90ohaJIBQ2iIAsxYcBC82UAA1nf06DU/Kvr4Ku3mvtuMR/rO8Lshv0j2Q+F5Dl31zV4MgYR40TPVSbgjqy2VSpm4a3wcK+L8fxJLiV02bvMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QPLiazayR/KvmvzTyPILTThvesM4V1e8zL0y6vAD/Ks=;
 b=Haf00kVkHV78sfpR+3rEw5WwFtIA6jVQknlIsy+WnGKf2UIo7uFkUUGvqtM6SoR7bh3ewPa1L+NQE5/5kgmz9d2X4y0jvX+Om/DSlcEmwqNCgs5/VIapo8x/94ShO+I1Mn1BI3f6JJ3W4lLrn/6ERSK7PClwTFg3IPsgONw+phA=
Message-ID: <aa1585dd-d109-463e-9639-9b6f576a3f1e@oracle.com>
Date: Fri, 26 Jan 2024 13:53:41 -0800
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
X-ClientProxiedBy: MN2PR01CA0001.prod.exchangelabs.com (2603:10b6:208:10c::14)
 To DS7PR10MB5005.namprd10.prod.outlook.com (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MW4PR10MB5703:EE_
X-MS-Office365-Filtering-Correlation-Id: c195bb05-4fd9-4a6d-33e8-08dc1eb9447a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	O0jDasRVxebV8Lw2QtvLrh4RaS2lHISYaforfxSExC3MmSQOiOJXCRnV+3KZ8RUdCCn9mzByEFy93pBpr7dPKG8MgVp6MKdcvVG8wBiX2PMCdsjA4asAt6hypx/yx6ABJ9PPcsN+aOt3RiSOnnPMQ807O+bqCmxBcYWt+N0xvZR/v+fceU3trKqZTIhSAz2WVkxvob+kNDE46EEX/kNaCNWOjtDj4O/INeNCPCB45I/O32R0XNscfrB6+vGDgn7Y3hNPnJDdFyKIFPu5w7i4Ol1fIPTc1T6ucgtxrL+vt8rWWIIerw3ZxuRdL7gxkCd5BNIiWcJzCAUnX2W/Ib9wuRG4OfPlfxluxC1JJc05eeEe6d0zNQNW6H3U2ZyDERLwpyQDGQ0zVJKxBchqdKTXEKlNwc88jGbHgytFZptNtRYyMWvAYhHAg0tkmTaF3l0bZ6DrpCRStp8kh1JF5WawKtbEqJT4igKkdlXZDa6PluqiWTTmJJxclEiFeb3Xrr+QoOuvAFqqG4P5c2mg6KfC8i7124+HkipULkCePEDx0Ia34g2mU1qfwOyMsDiza9fHA+aIDXmqoRwfE5kb47RREmI6ppcAW/X7obi4yylQkCjOQtex7uteqOPr8xX0F0uICTgWQGTJtIYSBM5Mz5fS5nQ9xHrNYqg1rpXhyhNH7+H95E+0PVJgYPSYZ22bXOYE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(39860400002)(366004)(376002)(346002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(6666004)(6512007)(66476007)(26005)(6506007)(83380400001)(2616005)(41300700001)(8676002)(316002)(2906002)(44832011)(86362001)(5660300002)(36756003)(31696002)(66556008)(66946007)(6916009)(8936002)(966005)(478600001)(6486002)(31686004)(38100700002)(130980200001)(43740500002)(45980500001)(223123001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z1E3eFpKV3VUZURTaHVEL0FTQlVNUFZHcWVzNStvWHpRSTYyNjlVcm1KV0xm?=
 =?utf-8?B?TUsxT1owemtsUWhIN0NOWDVSRG1JR2tjQnM2ZS9JbGFNNkFzaFk0K3M3VGFa?=
 =?utf-8?B?MWZEZktjQnlpbWhzSHR0cHpGUWhjTDhBcFBxQlAyUmRrVHdxSk5mZHBTL2JD?=
 =?utf-8?B?R3pzYVRidVFNMGI5WnZPbWRBOE1tb3Jyc3Q4L045aVZac2ZiUWE1S0RSQ3ZI?=
 =?utf-8?B?WUtxZVVSNmMzSFQrWVJoRnZJRUtZY1I4enhQNFlPcGF3L2tZdzFTY1F3WERq?=
 =?utf-8?B?aGswYzJ1ZWdhYkhwOXVzMkQyMTh6ZG5FZmVyUzFneExHMWtGdUppUzJXYUdy?=
 =?utf-8?B?czJva1FMbU96dHNYVHBHcEZEdTl4YThsOXhOMC9hQUNpUW00V0djSmJ4bkJP?=
 =?utf-8?B?NUFKSWhGMjJZOXdVQUpGWFNXQUZvcDNtQXJCK05rc0w2Y1k0U085YVRNTy9R?=
 =?utf-8?B?UEFVNi9sSmREOFRVNFFkZVlwamtjOWVmME80SlV1dW5XN0daUEdVQnB6K013?=
 =?utf-8?B?a2NYV2tkSy94Z2IzQ0hsVnBRQzV5S3poQWh4MG4rVFplK2cxSTY5VFNQYU9l?=
 =?utf-8?B?bFpuQmFjUkJMVTF5dWxWYnFFRDh2V2MySWNpa2VEWVRMTUUrbERMNGtSUDZ0?=
 =?utf-8?B?bmxNdVUxblRGZFBnZTFRa1JvZ0pncjA5elRWUG4xaE5BT2xPOEdpcEEwOUlw?=
 =?utf-8?B?aWhhcVUzRTlwS082Nmh4ZUhYOFF2UmppOTdjQ0N2eVRjYWJPWHBWdXQxYVhK?=
 =?utf-8?B?WjVxbE1ZODAxRmxDbE55SXFYS2JCTHA0RWxNN2tOdWpYV2FmajhPKzNUOFVD?=
 =?utf-8?B?NE0vV3Z2cWVnbWJEazVpRUZzdEdRUUpuR2w2UHVFUW1RQjNFTEs3a0I1dXZ1?=
 =?utf-8?B?eVdpU2lTempqS0p5a1NPWWpmbVErL3p1WTJKYkdKSFhkUmdyQ1lLVlVtNUdS?=
 =?utf-8?B?M3RQUTNIUEhaZ0g2V1VCWWZ4UDlza1Z5R0w4TFB6WVFVMmtGQStmNGlDRmh5?=
 =?utf-8?B?anc3QlI1TGR3UURqV0k0d1kvSk5lUjBEOU9ES29RK0V2eDRHZ0h2RTJ6REZI?=
 =?utf-8?B?RDRxT3lsSFlUSTg1bEJSckpaSnJCajc3UEhHWS9wRGZDZ0gwRDFjZmE0ZXdH?=
 =?utf-8?B?RCtxT2FraGcrTFFuRytIR2F3ZTIzbG5QK3Z6THJYR2FVOXk3ZDFSNTFPMFU0?=
 =?utf-8?B?RXpXZlorRm5WcUJjSy9zT1UrTy9sQzE3amNhWFk3VVVXWW1RRHlHeDBwd2RF?=
 =?utf-8?B?Z1g1bVllRXh3VU1DemtlNmEzRmRVYXBDK1lDU3pka21zRm1OQXBtYUlMYXNO?=
 =?utf-8?B?R3QxS2NHaStPL0E2b29taVh0aVBmMG1MYlVyNkNyWmZ2VXpPcW8zcklUVng0?=
 =?utf-8?B?NEplV3RCdW5NVTNnL2cyY1RrQno5a2tmU3BFa1NGYTFwMVh0dGZvekFLV0VH?=
 =?utf-8?B?U0h2K0kvV1J5RUJxdVBRZHYzaXIwcmVqN0Y5bWFibjh5YTVqNXhDVTZxbDUz?=
 =?utf-8?B?N05Uc0lodk4wc3BRN3dTc3Q3T3hyN2dMOEUzdm5vWVkwZm5qcmFSNUZqR2Zo?=
 =?utf-8?B?U2tKQUZPenIzZ2JJeDlZNXduM2d2bW9QdDlGaG85alpUR2QzZGtqdlh1TDIz?=
 =?utf-8?B?eXBVWGpvREQveWlKc0R5TjBSTzg0RDB6SUNXd0IwdlVtRWlHY2pBS0Q5ZVNW?=
 =?utf-8?B?UTkwSlZSOVVpbFF2VHpkS0NDbHZJb1gycGV3alhpcXdabnI1RTVKalpGNlg0?=
 =?utf-8?B?b2JORVo3ajhXSGZRa01BYXZPL0wrN3hsZkNCM3JOZmpSbFUwc3dJdEtUdkFh?=
 =?utf-8?B?VkpyR1l4Rmk1U1kvMGpBQVVwZy9kNkRoZjJQdnJmZUZkNlVXeHNtMzByQkxG?=
 =?utf-8?B?bFRsV2VDdEFBU3JSdS9qRW5JYTY0MmpyK1h0TVN3b0FMMkJqWElDZ1NMTzFO?=
 =?utf-8?B?eTBkTVhZVDdjdzJqZE1rUlVReFV0M085NE9GYXZvV21vUmJGR1lWbFVBNmp1?=
 =?utf-8?B?M0hjS205KysrM3dRbVB0N0F5ZzdIMWRFWXR1bGE5SHppOCtDMGZhWEVTRUJD?=
 =?utf-8?B?VGZTbVhUR0pUNlYxNkdTak12MlZhZGxlL01RQXJVajFlM2x1V053UEVqZ3dQ?=
 =?utf-8?B?aVUvQldIZFg5MktNN0F2K3VsbGpTdzZnblgweHpwSlhWRGk5UVd1ZzdqUHdr?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	+pvNJ0l+SyuVhhsqIvnGVOZQOwdT/okBzt4EW8c3I0Il67o5mitFnwtbV79X33T9/8b6A9Z/IYmDCWmY6+JFupwqLCPfIDI2fEPB+zKk0gi7nxes+Mt9mRpNXtYvSROv8B3l7rwFfCwQ+drUyh0xvbI92mrAiUOWJZ+R6sRXXdMLF/349oe2Nj9qvGBL+Yphr4ASvG12NOCL1klIFMr78+S/UHjuEwa+q2zR6LTjB2DuEsKRMeek7i1SNkZgAOTa9tAwbDUGNyiWwDlY/E8xxDUToC1aRg+LPgSdbo94moYWzqY9iKLSftWOxXYEymwcxm2OohBzNJ2jALih688tKiE39ZHC0utpkrBwl+8V2KT7vrjv7oYTq05y2Re0Z1lj8oklK48wDx1qBPzXEGcivoOsii5gCqsxj9b6HJu/Wdp5Vf6lxJAkYa9oIbNZiygxPLFvqGEOb1f16ei+kt6164QT3pdpPBAHE3PqDSP0Wi7BwY7F0DChXjDCFCTW/JGZQrNOQvZ/rhqRosBN8oC+7xMM5YnQ7o7ICqZHIJAnXjNCNB3wn8RtjRBZvjIbNGm8dmbFN4Kv7dtMkBUj4c2iqKWhE8QeIY2mi8SbfPhXn2g=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c195bb05-4fd9-4a6d-33e8-08dc1eb9447a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 21:53:44.7491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PArXLjoiXCsdNpMKvv0N6Zhyjagcg1vZftbReYxH76qJkbiETwwy9GMi3Jr82d/8nwZxtF5ca2WQVsbn163vnwLj0mjiAsHcYM672953CN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5703
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-25_14,2024-01-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401260161
X-Proofpoint-ORIG-GUID: Y2cyyxteiD7PwNU6Lk0nEqu7rcs69VGj
X-Proofpoint-GUID: Y2cyyxteiD7PwNU6Lk0nEqu7rcs69VGj
Subject: [oss-security] Numerous unconfirmed FOSS CVEs disclosed on FD mailing list

Over on the full-disclosure mailing list today, a number of messages were
delivered (though dated last week, presumably due to moderation delays)
from Meng Ruijie at the National University of Singapore, disclosing CVE
assignments in a range of FOSS programs, including:

Null pointer deference in freedesktop mesa
Null pointer dereference in Xedit
NULL pointer dereference in tgetstr() of ncurses
Buffer Overflow in glXQueryServerString() of mesa
Null pointer deference in XGetWMHints() of Xfig
NULL pointer dereference in the function handle_viminfo_register() of vim
NULL pointer dereference in __glXGetDrawableAttribute() of Mesa
NULL pointer dereference in XIQueryDevice() of gnome gtk
NULL pointer dereference in glXGetDrawableScreen() of OpenGL libglvnd
null pointer deference in GNU Midnight at /tty/x11conn.c
null pointer deference in gnome gdk-pixbuf
arithmetic exception in S-lang via the function tt_sprintf()
null pointer deference in gnome gtk via init_randr15() at gdkscreen-x11.c
SEGV in S-Lang via fixup_tgetstr()
null pointer deference in gnome gtk via parse_settings() at xsettings-client.c
NULL pointer dereference in freedesktop Mesa via check_xshm()
null pointer deference in nano via read_the_list()
NULL pointer dereference in QT via the function QXcbConnection::initializeAllAtoms()
Buffer Overflow in graphviz via via a crafted config6a file
null pointer deference in MiniZinc via a crafted .mzn file
null pointer deference in Sane via a crafted config file
null pointer deference in tex-live via a crafted cmr10.pfb
null pointer deference in LLVM
null pointer deference in MiniZinc via a crafted Preferences.json file
null pointer deference in tex-live
Buffer overflow in Sane

as you can see on https://seclists.org/fulldisclosure/2024/Jan/

Unfortunately, many of the email titles are misleading as they represent
bugs other than NULL pointer dereferences.  For instance,
"NULL pointer dereference in __glXGetDrawableAttribute() of Mesa" from
https://seclists.org/fulldisclosure/2024/Jan/50 points to
https://gitlab.freedesktop.org/mesa/mesa/-/issues/9857 which is an
out-of-bounds read that would segfault long before it could cause the
pointer to wrap around to a NULL value.

While I can't speak for all the projects involved, I can speak for the
X.Org maintainers & security team, and I can say that we were not
consulted or informed about this CVE filing - if I wasn't on the FD
mailing list, I wouldn't even know it had happened.  The CNA responsible
has not yet published the CVE to the CVE database yet, so we can't yet
file a dispute, but once they do, I plan to request that they withdraw
CVE-2023-45916 for xedit, as there is no security boundary crossed here
and the bug doesn't allow someone to do anything they otherwise couldn't.

The claim in https://seclists.org/fulldisclosure/2024/Jan/45 is that if
you can edit /usr/local/lib/X11/xedit/lisp/lisp.lsp you can make xedit
crash - but if you can edit that file you can just change the lisp code
to do whatever you want already, so while I see a low-priority bug there
I don't see any security exposure worthy of a CVE.  (The bug report also
doesn't explain how an attacker would have permissions to modify that
file in the first place, without already having privileges to do far
worse to the system.)

The Mesa developers I spoke to on IRC today were similarly surprised by
these CVE assignments for their project, so please be kind to the
maintainers of the above projects if they similarly are unaware of these
CVE's and surprised that someone would claim a security vulnerability
exists given the circumstances.

-- 
      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org
