Received: (qmail 3726 invoked by uid 550); 16 Apr 2026 17:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3694 invoked from network); 16 Apr 2026 17:34:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=QwON9vimbrvZ/8U9AO99O7AfxAJBsZtAKpPhaGaseR8=; b=
	ViSLQ3LAdO1t7ohkNpdGmYkp0OfsoQjssI2Qsf+Jt1MP134R3PxFyAx67zlVUWWk
	U2VZ8lC9pDeXPKbUoDaNVTjkIUQ+HeLkeuMEkvuvDjkyG+plbXnEySxLbw3PMuN+
	yY9R1NBFXIPfobr0xdSxhQf7swH/hRtq3ezoBws3cr27MV6DTY3bcLgGrxiW40CP
	+wzoMMIC5+4DJtxQPThlCmhjwmuR++vDa2yUQ0ZwtaVD2MsaNhrzpLUxqJMG/J7R
	v/G6rlJ8kWBgt4yw6Yn9x70o7AvWoD8QUIlb2oV8OIwE1nvvNbGrQbW94xwI8v/O
	EjkeLbz/VGRBQRsPNGYPDw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n3ub4/buS6uzX8oTweCOOIdTVB55Tg6sdP+HspR4rE4vhuOYI/FvIkgbCfriEUYQAt0j0Q8z+hLDUXkRfPVseNf/iy1mb0Sj4HaG4M0SYw3AsSIorPfYJHgF7K4jEwz5tGG6RnvHHU0GgjlHn/uGrOcstsRHjtRK2+j1551z0g+ISXyI+2TBFI4cBEeFDMxs14kJq7aAN4JKdEmXwu5Q4otCmsca38KFp4uS0h0OoG64ytoNs3YxTjm+5AmTjC+OAQAF3k4tU1jU57+qIbU5g9meyv4RiWdDuwSfPNmd+UdKn4iJ5yRY84huoTzZOW31cjBtlWztof01eFVgfjuA8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QwON9vimbrvZ/8U9AO99O7AfxAJBsZtAKpPhaGaseR8=;
 b=A+Eu7jELdujLAsIVh8CXzv7Tqx7v0liHCvljatT0ekRI+Xc9E7Z1CpCYzSu8VsEqYJpyqhq1LpzCQ1vZ/upSV76icKxlveK1z3lIYp/Fb3QYd5cpisY6zb67DC+cyYkH2cetn5IP31AMD90T9ZVQpp+dLpC2Ui6lKgvQCZrEsalKuXaEFXEkltM1ewIJmu0/EI4IQjoTElqesOiBihanFYKipwP3e7UNfZSx0ZyMCvXRhhCQznyTIAhaGCFnw1d1vhqz4ZUsOSPISWNMN9nIKZk9NHudDy1elK9e0VFgo3e0MULUO8vyBPNKjkGDj6P5LV53DL+04jKaGUhtiWXZmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwON9vimbrvZ/8U9AO99O7AfxAJBsZtAKpPhaGaseR8=;
 b=VNXBXjkvRIQbd1Lx+ivtaM7RqzQNJxcBFU+p1L56ZaxCoJCw1yCa/OirQh7gAflJcd0WYzZzSv/bB+37D7kmlgUanz3eHwxuqm5Ku0FJhbf+7pY6z83yX4licqpceEGmm9upxs89YUJ6PRpU64WeXb6lL6ZldNdXdV8qGWvdekE=
Message-ID: <7ddbe893-6bf2-4142-bbcd-c382a21dbed8@oracle.com>
Date: Thu, 16 Apr 2026 10:34:14 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, yangjincheng1998@gmail.com
References: <69e0d549.170a0220.2844e6.1a9b@mx.google.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <69e0d549.170a0220.2844e6.1a9b@mx.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P221CA0066.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:349::6) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ0PR10MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: bef7a990-a104-480c-af8f-08de9bde62f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	bgPltvZObCMvOAqATZhSWiXzj2lm8TiuMclbZFDkv4dblOL8ufcCTQ1nnYa4jj+KYkOrcTr8MB14hobF7DBD2o2yFad2DHGz6qE2ZGO4KcqDRExdKI7qW5Lnn3r5jMgHe8V5ZFk94LoW+LwEJK3iJSJJ3vEeWtTNnkcEqfip879hElqIpD/jBUQruX8AHmhg5rpPblgSAkO2ixRMKBeD3D38z1I8QnEeE+VnTnQTviIkmoisX2AfwPmn8JPlXb0tT57NpiXW2epQSC61+kkKFYyBBOxp69NHaDO5PpKJ3EYbt3QCwvouvIXqzx0PSA2WM/2R8y4bnseUKmsr2aKJrVsFgHWDx3QxGiXb1qw8kgBa5Rc0t28N7UMDA7j2zyAEoxUkFh+rrapPALCULLazbi6DaMMU/vOyYXlxQ7E1ku3PRkZAH/bYeBGtyxrsnr+7rlj4LQZheZMThAkaTcBVPwZM5Cz3N42CvYMcunrdTsE77pC1aYFablZN02cy8+I12dV7ZtsoIhPKXbKLkxagtTeiBXu2VfH/IKeU85/lwd6DKuH36lDM3HHsVOVPcuOJYJ1LnM/SMKysLMyqqsk+O0FE6DSY1IvXsr5s4vUjQx7k+t4CZIn/WFqvwxaHz3/VDEpEcOWwBTZ6rZCbS10xFVXjZAh2GBNUZQuOIrfcBP3+SyXmly1XRNTtxDniKIUVnmE0MeTkduRw+F+zUK/nZHg6ekTtfpXBA18ALeG0lfeP2fX9gMEjBYGB1ebKcpmT
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eTJCY215M3hDYkYwbXgxUDEvOU5NR3NQWmZDWXBiOUVITlFtMFpiYlhEaFFk?=
 =?utf-8?B?cHpwemNsS3hqeGs2L3F5Vk5iL1ZIZXJoaGZ6MXpLNHhaSUZQSVphdEYxeWVq?=
 =?utf-8?B?M241MnF1cE16YUJka3BNVlUydVBjUEs4VzNBUml4ZGhTamZYUDhaQVM4UlFr?=
 =?utf-8?B?VmdZSDhVRlYvamxsYXJLVWsrVHRyem9vMitaY3Zmak82UmU2aWV6T0Z3S0pl?=
 =?utf-8?B?TmFocTBwTWIxUEoyS3NJeUJYcy9EMXdPNmdYT0RqQlJLZ3c5UkVqUzR6RmRh?=
 =?utf-8?B?WnA3SnFaNDQ3akdTK0FKWDRiNmRnSE5NWWNlbFF2WWtYMGE4Y0V5cDNWMlNC?=
 =?utf-8?B?bXRqNm8zcFMwQ1hHVCtXN1lOQzVqd1VUL09icWIvNjRUYVR2alp5UVdUOE9p?=
 =?utf-8?B?aXRGSzhDZmRnM20yRjNadWsrV0I3cldrbThLV3NJYUNBSzIvVHVtdlhIbURG?=
 =?utf-8?B?dmc5QkpjbGZ1VG9wK2VGTUVSa2tuZThMWHNkZFJGdlp1SUR1T1pkMEQ4OXpG?=
 =?utf-8?B?UmdoUFpMaThiVDlrK1pQYU8vanFkbXFEWW1XOHk0ZUZFc25TSUpiaCtjMHJJ?=
 =?utf-8?B?QUs2NFBseXI5NnUwVStobFNZRldRbys4dFFOY2JUc1cyb2IyYWx3TnpjY0Nm?=
 =?utf-8?B?YXlmN3VqSjRvSzcvaFpYeUNCcys0VmZLQ3g5dVc3MStNc2xscE5EMUhUUDZQ?=
 =?utf-8?B?UmxOZno0UFlaRlZHVjlNSFlzWkl0R2dlbDJWb2M1VU5zWm9zYWZnR2cxZDNE?=
 =?utf-8?B?LytxbjdqazZQSEtmc1RzWm9PMy9WellCdkNNeVdNYk9HaHpNOG1FeTNKQzVl?=
 =?utf-8?B?R0hDN3RPbjQyK0hRWWVhVVVBeUJHWkhsYjJOWFhrRjVDOEdDM2xCSWRHN3Zh?=
 =?utf-8?B?VnZsalF2UUpZZFlkbFlkbExqN1NvOXRRM0RlUFdYbk9YSFdJc3N4RzFmazI4?=
 =?utf-8?B?WHNEVHpEcFJ6cS85UytBVUVyWnd3QXBnKytWZTREblJObThiaExGeXBsaW5G?=
 =?utf-8?B?SmoxamxyUy84M1hkSmdicmlGbDUxYW9wNCs0YThyMWl0dXM2Ykx1bDBQekkx?=
 =?utf-8?B?K2RSck85UCtqOE9CRE1kaytHaDhOQWVJa3hEODh4MTRDV0ttQ2NHajY5QTRq?=
 =?utf-8?B?NzJMN0F5QWIvRENlYW5DZHJFaXNJcFA2aEUrZVVWU3FQMzk1WVNiOHliQjVk?=
 =?utf-8?B?NnFHNW4vVGN6UFNvWG4rbm9wdkl3U3MxeWhwQ0oyRk9xL1FseE5yMTRkVldu?=
 =?utf-8?B?V0IvVGhCajhQL2xVWnhJOWhScENzN0tzWnhUQ0tYRFRXNUVtclVnYS9jV3hI?=
 =?utf-8?B?dlZhNGg4Y3dmbXFoS1dqR24vZGMwaHpML3VWbGhQV1JPcjMxRjBBL3FHeCtw?=
 =?utf-8?B?em1GT3NwalFTUjJPMXNvVnNBNnNrNzYvT2RLQ0dYL1labXI3eXUvOXZBak5s?=
 =?utf-8?B?UkgvNHRYbGJKVG1XRHBoVi9oaGlTNVBXTDdQeS9qZlc4WXhZc1RFUDhTcnpy?=
 =?utf-8?B?ejJpT1RiOFQrSmxRWWlQdXZua01VY3VBUmhDVk5sWXB5RFo3UnAvM2szRHpj?=
 =?utf-8?B?Mk50c0ROKzVVS3RSamdiNFBrVWtvOUlHT3pkWkxKRjhlUUJVOE11Q0duT2g2?=
 =?utf-8?B?ZHBab2ZlSmJtYXNaSmF5UGNyZm1vbFpOV1FmZHl0YXpYdUxJcDhKWlYyNVZS?=
 =?utf-8?B?YVV5ZDNkYW1uNElIM21tR0VQUWNqcE9jKzhnVWFRM2UzRzMrMDh1MUFSeUVN?=
 =?utf-8?B?RXNJRVNEUXh3RThDZyt4L0tkekFqaExxQlFhUzhBTllLSDRWQ3ZXM01JaHdo?=
 =?utf-8?B?UUFsUU9hZnhqWk5rd3FuaDZuc3pIb0F2YzJTaEt4K1E4bU9KSWtVcHh3ZTk3?=
 =?utf-8?B?YU5leCtyWUREczRJaEJrakJHTURRYmx5TzdBZkNXb2FoaUxtSmRUMEJMa2J6?=
 =?utf-8?B?Y1VFZUlXUWRDZy9TLy9YVmtISlJkMHhpNWg3MFM1WURLVmFUTUxkTHBhc2FV?=
 =?utf-8?B?b2s2SW8rYlI2SEVCamJ0b3dISXBmcExCazdCTEcramdkbENwb3hTeGFrY3pT?=
 =?utf-8?B?RzZibUhSTlJnR1FoS3lESWhDV3Ava1NsVTFQUzVidFNlMWdRMzYwKzBkU2oy?=
 =?utf-8?B?c2U4Qldha2YyT2d3ZjJMYTdNU1BYMlhXYld2OHZ5eS9pc2ZxR21kRldZSnJk?=
 =?utf-8?B?MHhINlZvMVlxRk55NkZ3S09zTjFQZVpUWFpCcDd5STlQUmgrVTYwcmZhQ3lN?=
 =?utf-8?B?U0w4WUVpc2tKNzRFTkd2eDdQM29EZHpHWkpEWnpsVGRWWkpycy9VSzhQTDI5?=
 =?utf-8?B?bC9FMG05NExsMW5jRXVyZGtPanZZOFhQR29lcDlWRVg0YTFrVGUxVi9sYmxO?=
 =?utf-8?Q?9QwLpPb5chYg64Eo=3D?=
X-Exchange-RoutingPolicyChecked:
	bZA7smTHFQ+MZaTjL/HUZ6+JbIxHljuWNpuUfEfZWJbaPr8ZIRcJlFc9WizdCl1hl8vjuqLrvy7/NMx8yJRgTqQKZOIKyw2zRRjp6Ez9Br/bhtyd5Nj17NXr4/26fSH3ugnxevDjJLrbfhQWSt5gChGsTvn8UgoQaOa3vBW7/1jMN3WFh7Bl49jzUCmQKVImvuOHxM6tUolIxqibiE+/Zi8GdZ7q1i31u5xOorT95tUoKoAyWSk5saVaSnPFKqDpsr6v1cwHGA49+na5RdpNUIgYPYZsnr/b9WQTjl1K6uungSKnH7AWRH62U4HHpJP1qh192iZ7xs2tj+dNxPlijw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	uwz2CxRomlnWI6Vs64/RSVQhww6CZ04Y2/LM0cqx7qot6+30Ji/UDc9HswuHkBJWePkoTBY4SzM54MV2ymWZ47hOsivq8jIUBSu4CQcp05aOUKyeyjDQZtqieIB7nxjbARCbG5IjJ2dkqUdqBaRssL4Rv3sapoKppelRhun7BCX2I7RbS5+SWsf87LVuezDKyN0icRmtOPRV6Ur0D1Ji33Sf+bO/9xN1aMQ7u3T/Ia+bSxEJ54CN/m0cfSs5W3cxJ+zEWFRbUUdz0bF/mrz4dWrl3mlTq6nvsfQEJPiBIoWPtCXqNqD3ZIoM/tWkB+kHCUkQYanBk9m2An+MBZbI3uwQNpmMwk/FNjh2lzz8+Jw6K5zqfNgLdVpJV3QjCTHobJtVkTIH26+vAYVRjQs9AbXfiYI5FmfWmLvQA941T8aGHzqBMsCctmv+w8TiDT52jT5KSoBcbI8Okj3RfcbTDfUgSOXO5qkKViw6MJbOR+B/O9w8lR2I440FP4cfSv57sRbgYTTDM4ddR1jsjt4lsCX9fU7mgo/xpTxpo5torMi5ydPr1zN9NygD6UbrgykXCHvbgFjNx3x2SqCbHd/RTe0uyBEu4Y1BteVwiM5M5QM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef7a990-a104-480c-af8f-08de9bde62f9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 17:34:18.1691
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +C0YEOpholhbDXyG/crMZiOaCUAC6J1Iz9perynC0JfToNlk8oNVaFetyAlz2mUBjAkftNyh4iFdCVO0iVHeP27aqXMuNwePQYK8I6E/jWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5891
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_03,2026-04-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604070000
 definitions=main-2604160167
X-Authority-Analysis: v=2.4 cv=d77FDxjE c=1 sm=1 tr=0 ts=69e11daf b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=pGLkceISAAAA:8 a=cLr3yr8Lq7ia_VlfMPwA:9 a=QEXdDO2ut3YA:10
 cc=ntf awl=host:13825
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDE2NyBTYWx0ZWRfX1bH/eZGWt4E8
 0NYGM4KfEVAR+L8b6/NpMApKLIT/4tBmgo5xByG1yMMAVKMV9+F1yLC973PHZ377Hb+XXa6xEas
 ZW8s4YSiUFI+jgG1z6hSz8o/MBDYWen/x5p8YpfYRAIAmD0FxEgVTM0cXufn+E7k9KaqO6kNgrR
 JIoizacJIxa8+Pe7T3DDzHzEgcOnWe0S0+xI3d9lnmoEforCUm11kdRB64Xuq31nbVez8NPUZqk
 1XCeaoSy56guAfoT3GC7FWBaucLX9zorqZuPfcRHu2oFdIV66EpjBq3wuP4/oaULxvx11gHJi1E
 sbttUxOzqsY52gJzeKznw05Z3Wkvya9SEiYncwsbkmzq0u9lg9e55CnxuzpsLDUM5O/tVntd1Ha
 TKY0d/5999ZF7I4jPLd7QRpO4gEZBd9PP21sGJH0KvMYMKOnRvowCY1NWUePQHSVpgn9Re0E+8k
 ohAgq7GshIXtzn9i8cZydiFIPYNsMN7GgL6ztQE4=
X-Proofpoint-ORIG-GUID: Z81TquKi1mtaz_cz2QMWF59vMmeVFfjS
X-Proofpoint-GUID: Z81TquKi1mtaz_cz2QMWF59vMmeVFfjS
Subject: Re: [oss-security] Apache Kvrocks affected by CVE-2024-31449 and
 CVE-2025-49844 (Redis Lua); fixed but no formal advisory

On 4/16/26 05:25, yangjincheng1998@gmail.com wrote:
> Both downstream impacts were reported to the Kvrocks project and
> acknowledged by the maintainers; fixes have been merged:
> 
>    CVE-2024-31449 -> https://github.com/apache/kvrocks/issues/3433
>    CVE-2025-49844 -> https://github.com/apache/kvrocks/issues/3434

Are those the links you intended to send?  Both have subjects of
"Duplicate - please ignore" and their descriptions were edited to
just say "This issue was submitted in error. Please ignore."
-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
