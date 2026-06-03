Received: (qmail 10072 invoked by uid 550); 3 Jun 2026 17:50:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10039 invoked from network); 3 Jun 2026 17:50:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=Mm90MNx4DopZlBLVFV61hl9DckPzrHZw3kiPfeI6uXw=; b=
	TLb152vfsgNkfYOomPwOZ53w6e+RRMOn8kQCCJVw2t1FQlZJ1bH9tPTGqKaOlKAK
	q2h17z7nDd3az9kClwzPOyM0zc8hxN/V0Wsp7nnpC5pSnnnp0JOVgInPNdgcgYo9
	MqKFXCQfyFQB0YAr/0Y4jhUWX2ehPkv5YQGODYFvccdfx5bXnV1Z9Gw6qDoJRqe6
	Eoip2vCydVOk2EtqZ1TaUUf3tS1G+a0TOp4XkQR/zJUiD+qUSWTL6TlUIlFTJHzG
	nnDcmeM2OxWggEr64Ae5xdJ0XIGu996dH3tWmuv3sSje2TJ3arGpO260+7XWRvNo
	tmMZvt4NLLB2P32d74zoig==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nd5nvD+HtAhT+3zndo06/ghmh1vx4ohSTUo9NSgyqoqIRNBtaKo4tmAj+NqhUgQlUGZaO1sYrcSPhQwON/bf6of+R9f7b02eY9hL1u/xtiJ7vzb2QgqPq6kgVHC347A3WsfX1Qde+S1OHN2kDOf3mXuIw5DF/fMr/AIGtusllUuvVPH5C+ZpdVOHzDkNiOqGT/WFG5wYJzSVna8zKM5COg0oqzFEYdDsPsU0vnzVXgwklybHqgwSAZAsULE8kL0nWgkVsRtss3LHXw1W52cHLOdkNnLFc7+yigOVk+7sm1H/xxr+LT417MW7osLRcOhOyxCEL787Nrj00Xcadh4KQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mm90MNx4DopZlBLVFV61hl9DckPzrHZw3kiPfeI6uXw=;
 b=yzCpmNDDyqP6qeYj16oJatFttFrDvYRk/6fvU9n9MQ8CqD+kOQ++jKCa7Ac8wzM9hz3j6/p+YQLKGzd6XGrYJL9P1av004NnRXFdetl6TQ6iwgkmJID+FRANyXPLdK6rV+XCI5n2UMY1Nkl1lLdfcK4SkhMbRXv7FSd31lUME86mVjZknRPAlhErThUe+Z8MSPbs0vMouC4ChZVS0kpxrqVssok7bZQzw3Xzg9T9EfyO+Hh3qA3sLUCiKFFYotXed8e5+iBRtVmVzJHLyMrenyM/jhTBhJbZEQ6Z+PBLJOft/4Cj8xEdGs/+nG3cuS2H0aLhxI/DIUdJKcIdfTpvZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mm90MNx4DopZlBLVFV61hl9DckPzrHZw3kiPfeI6uXw=;
 b=ucUmGXu334xnvXe/K+hk4iS2wC8JTjd4sv+eXPNHSY6trbt66knqHWIt3vTLm56GA3p8bYma3poEoDiBB/2Hs2hLJjMKwHjOJmwpPByc47ZRDsnLbuhxrfn8KeqaO+wju1646YzNO9EDTZZfpp0oLpZLqfxYN1mse3z0EwrTfMg=
Message-ID: <51d4bca4-206d-4e58-9ea9-78806a5493a5@oracle.com>
Date: Wed, 3 Jun 2026 10:50:02 -0700
User-Agent: Mozilla Thunderbird
References: <CAEMnaZJEk7PrYdGpuR5bVR4R=Uhr02P5mZefUhtpMzQLb+0p_Q@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAEMnaZJEk7PrYdGpuR5bVR4R=Uhr02P5mZefUhtpMzQLb+0p_Q@mail.gmail.com>
X-Forwarded-Message-Id: <CAEMnaZJEk7PrYdGpuR5bVR4R=Uhr02P5mZefUhtpMzQLb+0p_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR05CA0093.namprd05.prod.outlook.com
 (2603:10b6:8:56::17) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|LV0PR10MB997615:EE_
X-MS-Office365-Filtering-Correlation-Id: 811db8c7-16b6-4447-712d-08dec1988bbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	iGOv9vO+EGooGRQdMS6NZUxqgBgRbRPPdfxajSkSRYOJ4hietBZoMeHHL7dVapjxdcUJ4bwMOdhbJhC/3Q1UOzEfKDwpKr8SAGj9K6njmlOovdq834LzlOXd+HiQy1KUsd042vzr0y365zPrDiD4rPbyNIfYHeDIAH8EvTyXbkpzfHU/DGVTrW3UY5VMIwZqcnsuV1wZLh6cuHzTlKKP1oJ0JLGuMvfJPj1Msgv5ocuMojU4OMfz+XhDnieSiR+mA8k0wRIVMulp9tUGHEv6HEgnrG/vuHNwsPPQ4vLqwleQsmU2Xygs9e4Y+m/GR653X9P9yY4zqbIo1WjHiOOGK8qmkocojOjFBZgkE6VLIVPXem5iNUN+DQwMcHKbAw0JvNvx2tQymDBc2lxK15vY4anHEgcqW1ucoLhEskHVGSSxM+N728ykh+BA5BHUNJd16y0i1XIRjoYSi2F2GJP8u9H7QUkA16taTE12YbFYfPNz6WWhx01l55Un8++UxftP+QCRgbaqnf0r+TyOLEI3e/BnJcNsqR5jwx/ifMzDYhN+l5fZ6iCj0WK0NC4hVpCzmTMze1gW0npoDHfg70LZNgUxj2K5Awt+lp5m1MbLY7PNHPYVq/GaihH+8gE/8myBQAXhNLnX7wfCPA1nFxLmQz1qlMzN3UDSq+9rmGi+03yrPfLyvsKqqPAO3MCgNe7TBjuNvEiDg8O3Dia4YhjwCQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cHVHbEp0OHdSdk14N0gvVzkyNStNeXVRZHY4S0tndDBBSVcyT05Ea0JpZ1ZK?=
 =?utf-8?B?eHFING1vblg2QnZDcHkzRlFMT0UwUjRrM3RtQ21ZeDlpSnJoc1VxYjRSdDRP?=
 =?utf-8?B?ZTJrUWYwVXpLbW1pdlRzNFJPdDdNWE9oeTdkaW5DMDRHNlFzNXY4QzR1U241?=
 =?utf-8?B?UENGNG81UlordVZwL0IwUTF6aUlCZkhFdG5VMlhWeGZGaUpFSC82MFVvKy9y?=
 =?utf-8?B?TEl4MEExMnZqbDB5L2psbXo1R1BnSzVEb0E0YVhFeGpXQlE2YlBZZzA1c2Z3?=
 =?utf-8?B?RDJwVDE1S0xUWFlQSmFaaDV0TUlnUHZIQlVFS3puVWlybDhyZm5ITW5QRjc3?=
 =?utf-8?B?bW42ZG4wRm5nV1dhK251d3VLdGlTWVdqUkg2TVIyREd3Mm1jM1pyNnQyU2JE?=
 =?utf-8?B?SFVJWjc4TzJNZzJ4dXN5Z05JRENMQzAzdE1icndxQ0R4dUN4aEVXSHlheFFy?=
 =?utf-8?B?dnNsbExlMjFqYVFFTVFtMHBDVWtEME12a0R6SjZpN3ZhT1E2MURaUFZxemJo?=
 =?utf-8?B?ckNSc2hPZ1Njd0NaRnU4bzBaWGhIb2FnL2cvdGJDU01Ca29UbTRPdk1YbVFC?=
 =?utf-8?B?NEljNnAzZ3M2NTJmV3FmWThGNUxnUW10Q3RHa1h3ME83NkR0N244R04rSVE4?=
 =?utf-8?B?RWVDM011Ry9tUDBmNmR5MjlmVTZsWCtiRFVSUUtuVVRpOEM4ay9hV2Vhampr?=
 =?utf-8?B?M3l4Yk96R0tCbGNScjJTS0I0Q0VrZ0pzNEVMUWZEUWUzT2M0QlhSSjRVTHpl?=
 =?utf-8?B?TkJUOEFnbE5TRGJydlRNZlRCcHJHM2xxWHpramFqSCtsSTl1MDNOaEJ4WnRo?=
 =?utf-8?B?cXdQb0VKRlE1eUZZQ1pTRnl6UUlRY3VPMU40WHg0akMxYUZ1eW9UQWJ3YUhh?=
 =?utf-8?B?SURlVnFjWVB5SEpQcXFrOEo0cTA5M2l0eHRXZVRGNThZL2h4TExGakZlNW84?=
 =?utf-8?B?WENUV1NRWEFrc2RBUWNpZ1hvK2hYZ1JrZUU3VnIzNFlQQVBSaHk1cytraHht?=
 =?utf-8?B?Q21XbFNkZllLM3dITzdMTGxkdXlBUU96K09IT3k5M1JEbkdTVVVGQnJYRnJs?=
 =?utf-8?B?eDAxUmYybzJJR0VTQ2JyZ09oMCtwQjJ6eEtTMzBTK3NibXRFeVRFcXZGT3BH?=
 =?utf-8?B?NFlhSis5NFBwMnhLVXQ5Tk5qUmYwdzY0OW1NL1k3UXdSend4NGxVQkd4WnJM?=
 =?utf-8?B?bjF1cVFWV0xicmVlM051cGNSK2FYZk9SbWNBbFZKRFE2cm5nNXpSUzRYTUxJ?=
 =?utf-8?B?ZDVPNEwreFAxOEIyaUJTZVNST3RnRVJnTncxRXBNam05VUFMYW9kTUU3UzZs?=
 =?utf-8?B?d0tSYlpGUlkvM2NSdUZlSzZZV1F5RlRnZjhOQ3VVbGQ3Z3JIWlVZRys3Vkxw?=
 =?utf-8?B?WXhiclNTeHorWjFNRzhIbHh1WGpMQkpubEZJV3BRUDJxdUorOW45enB6dDVl?=
 =?utf-8?B?cnI1Ly9jSTgxaFk3S2RpcnR4c3NDK0V6YVZNc2gxeE9wZ3pHTVFyZlNaWWVw?=
 =?utf-8?B?MytRQllQck94WUJpY0VXc2c0NjV3N21kNU1MSkg0V0Y5bDI3d20wMklUOFlF?=
 =?utf-8?B?VmtNdVZZN3V3RVYzUTRwN2NHWkpjd3ZtYTh5VjFXRDhWVk5LQ3IzVlpZcjdm?=
 =?utf-8?B?OTF0U2M0NVpNUU9ZbS8rbldROEVJRk5IQXZYOXJOQXZyRWRPMlo1WEZOV29x?=
 =?utf-8?B?Yk1EandudGJKTytUenQ2eHdOZ1VUM0RuWXZxaXdMK1F3RGFFVUsyTjdRS2o4?=
 =?utf-8?B?QXRtNEo5cUhXODNGUnp2V2V4Y2hSNndmVU1xdGJ3T3RTKy9oWWFwNGRTdjNi?=
 =?utf-8?B?bVlST0pPZmlEejVDRnlBQmt3RVNhSzBmek5adEJzd2xqZ2R2bGtHdkNBWXIz?=
 =?utf-8?B?dTR2MWdPOENYbys2TGxDSmc4UUtjR29Ia25IOFpzNmYzWHphWjZuZCsrcita?=
 =?utf-8?B?OHk1dDhGcm5wenk5aHk1RUpySVNOZk4wZ1AvN3N2ZDVRNWFPV01PdFFibWxU?=
 =?utf-8?B?clVyU2RuZ3VKdlFxc0pDUW1zZU1WcW12aDdyRnhmblF3MktRUjFQY0w3c1Va?=
 =?utf-8?B?ZndiV3UzS25HdHVkZjJuaDk3M0NGd1pLZDh0eHhFazBleG5XSGpSV0xEeGJi?=
 =?utf-8?B?VG9DR2drRzhhSy9sdElEMTFacEw5S1gxcHh1cUU4QkRzaEFJd1ZlTXFIYlh3?=
 =?utf-8?B?TkxSS3FOUTJ2SUFyLzVJRDJibVI1amxMaFIva0FoVzFIcXBPeE1YR0JRZzVr?=
 =?utf-8?B?MHlidS83NFhnSFU5bk9LSkllZmZCbUFIRTRFUit3NzU2dTBvckRuZ3ZadFhk?=
 =?utf-8?B?Sk9QTGs5b3ZYZ0ZrWWtmTUJuRHFPdEc4eE85RW9RQjZPL1YvazRaUTUyL3dm?=
 =?utf-8?Q?ckKmJZWf7jP9Jdfc=3D?=
X-Exchange-RoutingPolicyChecked:
	mpR5T85Duv6xjVKzl6vumOqCb/0TZSTBFXUWh0P1fY1laS4bqaozoyox02kOQJHOexS09w+PrR91tQk4HjCeMO5SvSPHcnx9wdZNGluENJ6yRRTCRQXa0M1SYywztvcJ/iHgguM9YrlPnCWhQVG69Xw/VAOkPTOyaTUEnEisHUkjNQdVgGQSPDi/O1i1IiEBdw3nk7DG6B92rC7xN1BJIfqwVaCkTvWx9GgXHQginAR0LzmiQ6gsd9btun507xlmZCAEg897msUBpdhxAK9jCRpZ4xlERa5SEx20eOcS8QGYzdZp3HVKhmP6SCnrv3QFtG7AyZGvkgJ2Za0kXJod+w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vn6HAaX33ycDi7kMnb4qxw9Z/0cWhUhOWquk66Gpikso5LQThnsE6CQUmUlU6zvNdGPLGHPZRBqa+K5xSc0DM2u63aoN2mQ+7DwtBgSYahL6RBHyy4AU3YzfQp0049WRRy89YbQBUsKnHYCYd5QAsNGNvlEF2w7zuESMbpezg5Ss8Sp6zZkoVa9EqJZj0hR4krEUHrs+nBJbUBx+GJSGhhiS/LG1KpXFOnNnFuUi8/e5SGj67Hok9MtZPTsYHDlpNZhyrUs0THLN1Ncb4f9FUPzJu+Tbmc3nr6Z988vSJn4b8PywjZKCeLCZk4VvRwxdb9SZFNHG2ElrLac0aGwD1lk9SDP4Fsna0wc4Oan2ypUbHXmm/kqSWgFnhkn1CgAYrnk2o8eyhn/Wv5YObi88XMvxZF+udJb4zMtlmUYdffSHpY7hEcSkRxf21iE6mXwc3eYLmsg98FiuxIQV5LIWrGfMKJA/vv5yAXtgqUV/f5wdN7LHzsekgL0Lv3eS8Lyeb5WnoXOQRYd/1j8py8+shD56cM47uBRp+ERqSSxU2ffGGBF+dkCe1F8PGO6+WGR6ve7U0M5wvFJGwr18ZsIfoMPSH8c2kxmMbnWt4ksZfNI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 811db8c7-16b6-4447-712d-08dec1988bbe
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 17:50:05.8027
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LXpWv0WxjONmVQMzpzQ7ONN+6OgAsemBU5IrT3DukLH5KkJnjfu/mU6u5drhIthGSkZLkoFXek3/zNfPlCpWjRHQqD0dfmk3EQTV47W5q/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR10MB997615
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606030173
X-Authority-Analysis: v=2.4 cv=NLnlPU6g c=1 sm=1 tr=0 ts=6a206952 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=-4KXxlh4xS26q5UNBUMA:9
 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-GUID: iwdS268ZQiUHJMz2gIYFxhvidbqoih0w
X-Proofpoint-ORIG-GUID: iwdS268ZQiUHJMz2gIYFxhvidbqoih0w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDE3MiBTYWx0ZWRfX5aGSQ0niS1XZ
 PqTLL2Z/w94vrmwC7JDBzr6DA+7Ush4YJfpiqRfNfbnpp8Y6vNRaeTH/Q+Yw8hHEnHcTffkwrJP
 geYx1zIF0uU6BHO5fQOC6lJpYyI63y2Txx0enA8jqnggNtWdrvV4DFBaxLS7Zu8LEh5MxKdjX6w
 y/ZocE1FqcL0Z58IyLz4KfzOwvsAIsCQ8gL5bCrS83GxbhwU2Qova6iDmj5nmT+sLkp4wMpwzpt
 r7X4TNB02cH9uPxMWjlQiMGJM+GM0D+mHZlkO7BcrY5tRID+n1qmAJ7jMDfJovkBPCORm6+kVjh
 CqmM7PyQFBT5fudYV8Rr/J7PYy41avUTeGW9F0+/DazGl6Kz09HZh/IOxmFlxfWithd889zMnWg
 E4YhAAV4l1D50rbiAdauVBO541s8ABy8tO8ydxuQl5stp7xqhSznxXIqc+H/treYsDA0ZzS0wuB
 s20Yw3CaC3TJG0ptabQ==
Subject: [oss-security][CVE-2026-3276] Potential DoS via quadratic complexity
 in unicodedata.normalize()


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-3276] Potential DoS via quadratic 
complexity in unicodedata.normalize()
Date: 	Wed, 3 Jun 2026 14:56:33 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org
CC: 	Stan Ulbrych <stanulbrych@gmail.com>



There is a MEDIUM severity vulnerability affecting CPython.

unicodedata.normalize() can take excessive CPU time when processing
specially crafted Unicode input containing long runs of combining characters
with alternating Canonical Combining Class values.
This affects all normalization forms.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-3276
* https://github.com/python/cpython/pull/149080

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
