X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2209" "Friday" "14" "January" "2022" "18:56:13" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "38" "[oss-security] Fuzzy CVE's in GNU inetutils" nil nil nil "1" nil nil (number mark "U       alan.coopers Jan 14   38/2209  " thread-indent "\"[oss-security] Fuzzy CVE's in GNU inetutils\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fuzzy CVE's in GNU inetutils" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32458 invoked by uid 550); 15 Jan 2022 12:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32426 invoked from network); 15 Jan 2022 12:07:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=fS4nTAmFBEViako9AmmZhmWtWbilJLnXpgKG0jLF8OQ=;
 b=YIPtO/3AbsbyzqgKYSSoszUXK0HaSA4Uj1i3FLBS0fqKgnt0yDoYSWwRGhHyarZGanBx
 NNld/ZMAzMiHCRI+KVEqFHrctz9kFNWrnANSeL+QJ0DD92Lsl4LQYHoFvmTR1/i0/63M
 lLKc48TlFq9fY2Hub+kXa/copsFpJ8+eESsRScTQzHahwKHr3v6gpHHQCQnVHt72KUsl
 q6r0wJcAv9/yC2i38b06FNZLU03Gwv45EfOee9w5yjhlGtdepdAae2YQFwTuYEzYZXLy
 JLaGViRBlCI8WKzRXfBPW7/kT4WU2RRgEbtCinnN8NaOd82O5RXs/yVCnyegTmlAEu2K fg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZbvwahiddbhBiWwA/6zLjAt9rtnPs06uKA9hR/VJatDmhzgDaizmYTIrUwWkKoYypc9VZSU20bz0+X5PArytOPm3LGuaNHeK7GIe3AtNXDvnzyDOa05maYXTi85Ao3WsQIJTzWwfI973X6kNlRrRrUEBmitIjv13BjXEJXqZiA7rCuY9vhuF4qv8a1UjnIDAgCBk0/iwNxZc+BXWJ23MmXlBkN3lfUZVZHIbl/55SgossAQSkL8X7O3q882prsAG9MISYmRieHwMbxS6vRP+FpKwb8u7kZxYQi8dXfhIdbbey2nr4lZswPcKCzTUa3OJYz0u8B/QY9UuwEA/G+RwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fS4nTAmFBEViako9AmmZhmWtWbilJLnXpgKG0jLF8OQ=;
 b=oAzlAastyoDzLdmj4B2Qtf9KNKvsDh3w04uN9WnB2UckpX+V1sFHB9D5+SlZNmzrLrqlvy3j0tVuUU0XmS730Y3GE5uaCQhcgw6FxlMk2C5n0zqf5x2RF+VR507aNC46J1HK455KZy44Dx77FntAgdfKEA+pgfR+cg/L0L4cATR+yCJQDqwwPnmz86ksZ4J3lNoPAawuI5k2y1V58tJeHd1MIR8iV9w96DPNYxYWedHq9KI7ofknTtMUJ4+QMu+68dWUgAPhd24BX4KIb6v8+4VNpmtO+Uup/DNXjxOsh+kd//+Yg8FP9gQX5UeeXyGNxT+egR5QYE1saM+GIXhJaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fS4nTAmFBEViako9AmmZhmWtWbilJLnXpgKG0jLF8OQ=;
 b=dMi6y7tLvg2bFcqiL4HkTrNF1YttPS6Jb915d0t9vpM66sk1NF+AvI3YyTZkd9DtTWtT0/mrY5ZpBYDhHYBtwn9oBLVZv3inR2imLdBcGmzEOQZyh+0QW03iru22/TrzAjSmXEHBFKZbxAB7oOMHEaVgIo8H9ABBNj/UhBjP0lI=
Message-ID: <0cb43119-de19-4f4b-99a8-b7949227a26c@oracle.com>
Date: Fri, 14 Jan 2022 18:56:13 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN7P222CA0019.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:124::13) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd6e42a8-d334-4910-cc28-08d9d7d29961
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5834:EE_
X-Microsoft-Antispam-PRVS: 
	<SJ0PR10MB5834BC7939FF2D94F09559ECE0559@SJ0PR10MB5834.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fnVDptovGpGRn04ykx6hmD1swFfcQqLwgitIeV+QheGYZWxS6ijhJuQ/yVg8F2ScHslsL7fG9O11u+vuJ7cz8+XKlkpc7xSswyq216U1N3MYFzBEbMQdBO8Ua5IM7Oo5GAANtNVQRlGaDtFCqo99bhjWNP2PcU5HDvloKKe9jE/kOH+U0W0wnVfSGB+TdWFoTfvzSFfAL0pyWNHxyc5OXWLjS7LhmpiJrKBVYi8tZPXHl2J6Gi3nnZI1HyQTXfaz4LIHI6jjVhrvPAN+g8+1TKde4YO+Ae7AvKvEiwKAgebHLTRKVxyNnjC5QjkYARzRuDAiF5LOVrbsoTptBggHd5um2w/i/slxbecggNJsXjRqkJuTi+x0nCCtIHmE08fdEbws2bHuXv3V6xIylNScmO5Z09YvNuCBHjpuHuBeGQ64GOGZspZLIF9DzVgEOvS3ewRzu6/NnNVkDJotpMiD1cb9LWNU9EWcJ49G/5YUWQy2l1SBSuiH4BTfMmGyo1q1Y/XnL4IzKpwi8He7uOUegYwSbEgT2Ey/+jQ1FGIWbYPJH0WxY0ZhVBE840X+LSqkvvM7wreqFs5k154Fwylbk6AtU97DDLUUUmVLD9y00p9B955q5FeFzZY3euZysgTHkTFqsiwxa1Gv4fMWYo90DSf+gh2upf/8g674boQMRqhc71GYaJ/tydkHGuerG05kNlR1JvqFsYessFusFQgZ79dx9qli0eWyVK5htXR8r0QziiU5lpoRI0ZogH2Hq1xTuur1OadGVDtzxP13TBa2omh6et6fzan/AKKNILiE4+0wIaTmfb9cSwUktjbfNb3lbVy9jJTqJnOw2ZdLJjuE8Gx+Rk76dPL3V6Mrow5Lqg4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(8936002)(6666004)(66946007)(36756003)(186003)(26005)(6506007)(2616005)(31686004)(6916009)(83380400001)(44832011)(86362001)(31696002)(5660300002)(2906002)(8676002)(966005)(38100700002)(6486002)(316002)(508600001)(6512007)(66556008)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Ly9rSW5ndnRBRFA0SnlBZGREeXZwYmdFNmQ4cVhkWDNkUFNSQmlWbEFZZVBa?=
 =?utf-8?B?bGF3S0lzOVRuMmV5cjFkQi9lbXdpTzZROXNLQTdRS1FTQzRJTjNQaTA2endr?=
 =?utf-8?B?U3dOQ3B0emxHb3RoaDY0bitBbzMvQ3M2ZkhQNmQ0VkdjdXdwYkZGTGtxYmwy?=
 =?utf-8?B?L0lwaWtGOGFVcDZYY3NSSXVqd1V5V2h5QjAwMXVGMWlLS28zd0JuVVplVFZF?=
 =?utf-8?B?ZEhrRmZobjFRNmgycE1XZi9kWldlNVRSb3ZybzBrRGx0ekZZUzlncXEycDR4?=
 =?utf-8?B?TTUrdWlmNlc5VnQ1WmZmc3pPWnk3STlTK2pIajdzRzFlb0t3UmtNTm1nbkpO?=
 =?utf-8?B?VHhPczh4c00vQWN0ZGUxSm1QQnd5SnduQ09aaGtIVnBOKzlMVlpFTnkyQ2hR?=
 =?utf-8?B?cjFtRm4xQUVHMEh1ejJUVW5oRnR5RjVLYlBPNWtTczBxNFR1ZUgvQiswMVFJ?=
 =?utf-8?B?MzRtY1lSa2dSc29PVW03U2Z3OVBCTmQ0MlU5Zjhhbi9lbXRjeXlaY1I1T0Ri?=
 =?utf-8?B?cllDT3hiMU42dmhhYkVqbkJvV1diWHRGV2xOQXJ3OUVQbDk5d0lPSHhVZmN6?=
 =?utf-8?B?WGhGa2xRaDc3NEhCbGxVNmRQdFpjam5TcmpRWXo1VS9oN2tqbUcvZmpyQzJQ?=
 =?utf-8?B?Q2R1Mkp0RnYzTE1jV1N4VVVJZ0lEdWJVcVJEQVR3cmtLZEc0NkpxN2pLeVVD?=
 =?utf-8?B?QzV4VHdLWHFEdkQwajFXeHpTdmt4ZUkzaFhyOHAwMTVtL0p2WHB5WVRycUU3?=
 =?utf-8?B?WTltaXc4OFU4V29wWXkweVZzMjVoQzNhL0lzbE02VWR3clFSbktLTFR0QTRO?=
 =?utf-8?B?ditUMnE2QURaWU1iK2Zrdm00SFpnYkxqd3R5dU5CWmY1Z2FDZmV6V1dPbkxZ?=
 =?utf-8?B?K1I2ZnVrZkFLSGoxcGVqUWEwZE5BaXNlNnZvOU1hZFAra1E1Tm9tTFlVWEV6?=
 =?utf-8?B?bGp2ZnJOdy8yTU5KQTdBRVozaWY2V2hGZlpud1I1elVqSjgzUEZXaDJYRnhS?=
 =?utf-8?B?UWlWT241cDlzanZVdms4NXJrZmJUbngzVkFhTDJNNWhYSENMemhJOVpXWlNr?=
 =?utf-8?B?ekh3dWl5VnFpR3IxcDE0OWpWdTVpV2VaY2wzbVpqcEJZS2NZSlo3Ym14TVVp?=
 =?utf-8?B?RXZDcXFGazRGNU9UVy9qS2g1V1ZFa0pFVWpCZEpMc3BvUVVtVUlLMkVwTWVt?=
 =?utf-8?B?Ym5saEhqajUxaWlpS0VLTFFiTmo4VnJ3amhoVFNQWlYyNWFOQ3d6SWQxMlo1?=
 =?utf-8?B?NFk4SFo2SE5lY3d2NURJU2FpVVNDU1EzVDdLaHEvMnp2blVMNFRDdFN5Q2tM?=
 =?utf-8?B?Y3VvTDllalFmdkMrMlN1aEQ1Ni9qMEhtS0VJUm0rcXpjTElDK040djNsekw3?=
 =?utf-8?B?cE15VytyMjRSQVFxYWw2NGZRQWQzdklmQklBdFF1dHdoVU5XWG0ybi84SmdV?=
 =?utf-8?B?SDN2YkN4WEY2Vk9CaW1jOHlUeVZ5eXduQWJ3RmlqdjhPQ2tUVEtPODEwNFUv?=
 =?utf-8?B?UVJkdkhHRVV6TU9KMTUwQWd1QVd2TElEekJMeStTSy9CR1BUQ0dnZTZMRllE?=
 =?utf-8?B?QTNXR2MzWUFpNjlDRFR3SWMzaXVucll4SnNFN0lYMXJONGN2b0hzZEJQQmtE?=
 =?utf-8?B?RFdCdXdPcUN3QW5uK1lBY1hiOFFVMlJ5L2h1WWZSTG8wdVhnVFR5b1JvblZJ?=
 =?utf-8?B?Nzk2SW5sTVJZUS9xQi9OcHA0QzluOHNVZGJaWWFGbExCWFJ0MjM5djNxeWNB?=
 =?utf-8?B?MHVYaC9rOHdmTGptci9nMkM0UDJtZ0JUdFNWSXFEQ24yUk1GYVU5ZTRVM1Vz?=
 =?utf-8?B?YjFidVNYTEhJYUFHRkVsM2pxTEMyM2NiWXJFcy9tNDNVS1hmQmcxK0VvVmgr?=
 =?utf-8?B?NVV3Y3hBRHlCcFJXRVdtbk9RN3lsa240UU1Ga3Fwekd6WEEvZyswN0cxMVpC?=
 =?utf-8?B?ckROZ3VnV0FUUk5naHphTWFOdGZvc1JaT0F3cWIydEdma3RMMkFtQWRpWVBs?=
 =?utf-8?B?cWo3bi83bGpEOHpZdmpqNWpEbjdHakV5ZWZUamhIemhyNk1JSUx6UG5WZW5q?=
 =?utf-8?B?VWdnUWhQNUR1VTNiNy9na0xKRjdLdTJOZi9GUldvcmtwZWthRHNveUlBbjV4?=
 =?utf-8?B?cTJ4YUVETEl2VjFZQjRPVmFkTmR5VXRZajNBNjZhcUl6aU5ZbDRFcVd0Y2VL?=
 =?utf-8?B?alUrUlVOTTBmOUlQU2FETFZ4OWNhcjZaYkZ1Q05BOVhuU2RnRzVaY1djSzU4?=
 =?utf-8?B?d09qUWhhN2ZIL1pqdGJGYUJGdGh3PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6e42a8-d334-4910-cc28-08d9d7d29961
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2022 02:56:16.7156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7sKKglr1vkoSRukD7DnSTr6bJBC3Rru2yVc94LYIaF9xAR/t08XsLSa1BxomdYNlv6HEiiTDwmPHl6EoQ6HZ91KhjHNYKVHwuCGrQh66exw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5834
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10227 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 adultscore=0 phishscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201150013
X-Proofpoint-GUID: BEfk1vnk-nlqJMRvdYJfGDrgUGENos5o
X-Proofpoint-ORIG-GUID: BEfk1vnk-nlqJMRvdYJfGDrgUGENos5o
Subject: [oss-security] Fuzzy CVE's in GNU inetutils

I noticed a number of new CVE's recently published against GNU inetutils,
which seem to correspond to the results of fuzz testing that were mailed
out in December, as seen on
https://lists.gnu.org/archive/html/bug-inetutils/2021-12/threads.html

Trying out the provided POC inputs with other ftp, telnet, and tftp
commands derived from the same original BSD sources showed some seem
to originate in the common roots and may affect other implementations
as well.

But they all also seem to only be of the case "user can crash local
client" - I don't see any security boundaries crossed or security
assurances broken here, just bugs in local command input parsers,
so I don't see why they have CVE ids in general.

They are:

CVE-2021-46060 	A NULL Pointer Dereference vulnerability exists in GNU inetutils 2.2 via the setcmd function at commands.c, which causes a denial of service.

CVE-2021-46058 	A heap-based Buffer Overflow vulnerability exists in GNU inetutils 2.2 in cmds.c, which caused a denial of service.

CVE-2021-45782 	An untrusted pointer dereference in getcmd() at inetutils/src/tftp.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.

CVE-2021-45781 	GNU Inetutils 2.2.16-cf091 was discovered to contain a heap-based buffer overflow via the component logger at inetutils/src/logger.c.

CVE-2021-45780 	GNU Inetutils commit cf091 was discovered to contain a memory leak via the ifconfig function.

CVE-2021-45779 	A NULL pointer dereference in unsetcmd() at inetutils/telnet/commands.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.

CVE-2021-45778 	A NULL pointer dereference in setnmap() at cmds.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.

CVE-2021-45775 	GNU Inetutils 2.2.16-cf091 was discovered to contain an infinite loop in domacro at domacro.c.

CVE-2021-45774 	A NULL pointer dereference in help() at inetutils/telnet/commands.c of GNU Inetutils v2.2.16-cf091 can lead to a segmentation fault or application crash.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
