X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1394" "Tuesday" "29" "March" "2022" "14:27:12" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "48" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        alan.coopers Mar 29   48/1394  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14284 invoked by uid 550); 29 Mar 2022 21:27:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14266 invoked from network); 29 Mar 2022 21:27:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=ZR89qflHwvDwxuIpjEZmdP3tflmTFJsMf4xO/gLMQw0=;
 b=QdLd2+2f3NUVFnxpspqruyytVH2CkoMeiJh2AaWbax8l/5K7LWsYvqEjeC35KaDaPUiA
 b2Lk2IcnhlbFW/QHbARHAcGtTEp4AL9tWgli9Kce1+vfaswHYPDeKgrn7cXigjH0Ndya
 8gHSlVnTRd7vicQa4u/ZQzS5G+dAuuLBJDXDvqNAgaMAKimeOkGHkshFq2REb31RJQUu
 BE/2Uu/1vBZjVEDUNuYKEurgn5RRMMakqQRvdiYK2znGnQk/oLsL69MUk2t2bLzaxrjB
 I63V3rMC9PM+RyYCQHkD2pDNWlJJb47Ti301C/RHIylp8jjadV0ivuYCknZFPUqpjLrB 0A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gq03JfKbxe8m2Ihi6CNSJpRvuzk2WvnSgq0Xnk64CMVUfRvxHR8i8IvvMwItOBVMq5lMzR/cSdnfN8KhZjR3ifxvYFZ7ro/q/ThonkBLm/hh0xp0lJbYu7TUsfJFMIUUdgF1t3rHqsZZlGeUfikTzJ3x/NmGToweTj0VuujjR3pyJXhfuGTqS9EGAcesZhKHVw/VNXFeVp9tocogPSXKNu9NRlRc0u8/S6X/DlnVtgw6yd4mMV9Et2MAfDeqBfiZp3DyIoJGGYR/2xIHRD77YKXaHZhU4DaRxM8SBqOvnAmydhxme4ZXXR1f/8/Pe7QyWQD4RyOVS2Tbn6uAk5vx4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZR89qflHwvDwxuIpjEZmdP3tflmTFJsMf4xO/gLMQw0=;
 b=JURSI5mCXoLIO3MR0ZSphSORbhjquwdxlmmgvnQhB/RAv0TI1yiHuuZGlLD/Ck6mIt0nZyKzR2yLNtXQaKYka2LZQHUXFCHeklfYgKNPTNPCXKi+YlXXlN5ZrxqAlu1xWax3jsSqvUaw4D1pV6bjo3XzDgNkA9TpX4qF3LDIQquaHob9n0hXlmJgagSAjVK/+o1SZlUbmhcEOwF97mKpxGsDGJu5mhoQ1eOfjt1kX+NJF7mpqAwvomWZEMpzQxi4KmFVFJpmo0s7yiCnSDfkPVU38QvPpArxtkhUdYUOWY2zntSL2xCoTAGAeKE8jNIhvkJ4tFPlESadRSpjC9wTww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZR89qflHwvDwxuIpjEZmdP3tflmTFJsMf4xO/gLMQw0=;
 b=kIj/VK9R492nWmAYeAwMKLvCj3F34imH8KNZ3fMOzHXnLeuOzxtinIVwJD5ia5mpOqpvaMWKxvTdI+t6C2CdYJBqiFhivD4L50e4Yqdi08AQNC4Wd0yRdabUT2j4qo474bEONvoo/WNTxx91dGWPmD8RWi8kLXw2gnIbH0vGqvg=
Message-ID: <8c6a6c4a-a643-6838-2aad-8911693da9cf@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
References: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
 <20220324054307.GA74811@meh.true.cz>
 <A120BF13-DE6E-4F00-91AD-49F4AB663C8E@alumni.caltech.edu>
In-Reply-To: <A120BF13-DE6E-4F00-91AD-49F4AB663C8E@alumni.caltech.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DM5PR15CA0069.namprd15.prod.outlook.com
 (2603:10b6:3:ae::31) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01050cb5-b837-4f4f-9599-08da11cae509
X-MS-TrafficTypeDiagnostic: MW5PR10MB5825:EE_
X-Microsoft-Antispam-PRVS: 
	<MW5PR10MB5825CF60AB28758847D1A5D1E01E9@MW5PR10MB5825.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	diIDq3SZQePYLS4NSHU4LM0Luf+A5JTILQTPgnABw4FY04Ee6jJcUZ50KLXPcvbdWaL6CCZcJIXguB1t75m/c1j49TgTerNLAL9EtgizWA+ZDaBKGugiNLOn+S4kpoltnkMEaKlxgmmDXowwPAuBS5H4p2bqYNV+YcVMwKOzedlEeYeR/kVUmmP3fPFfe7iCjg3iuUQQjVYkna0jyF8F8TKZXvEeVIVzlZ3tONa5qUphzb0CpWCUtrm48e3azFfFbm954Bu8bUcLGZDDYQbWecOweIFw3pVyUAYAMO+hl/4vG+jQuNoW7swefYTbn4v/NQWOKAViBYLe5Vw4c8rbeS4tURh421Apdt2s8dVbY0RfB99AT1ih5HAk+4VIEhtMqtUC+9PlTmqtX3WzNBiLK6lWQY6wDfLkKtpbxl5WyI8zwbzxfYkLKhqsUFZ0DXnLHHyl/0QPnMx3ylFH2P575TIkpONy+/p1cPEg8AhV8hdTYCyKpuJs/rmgFX28VK6zWSiNwiyRz4xObTl7u4HUuKvIQeIpJF664WTX8VosEb2kd18q1WV/zrijxBaaYed73O4U5keSXGmQQAtfdbhRI5XR+c4Vm8xj/bgXchIl7EgBN6rpg5ai5W1FqkvBT/YwBiImqbnUAOtK16yaKdWTclOsjxdu2B+pOw7S7F3EM6KjAWwLkPh1t3FZ3+BFdhbc46WhzfcNr2xg0n7UmXcHK7Wfauh5DkfQi0PU7KHALQ3U8fX0X0yWClSq0FhSL5UIHHSsH6LeUcSWwc0HDrvF9ryVJSboupnpH1iD7BMO2VeEwr2lZgZEXPOx6LOCNcGstEyaZiL3Fs1E7puyOnJuPWmFgVAP3HTKur7h70PQZu8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(86362001)(508600001)(38100700002)(66556008)(31696002)(66476007)(66946007)(5660300002)(83380400001)(8676002)(31686004)(316002)(2906002)(6916009)(966005)(186003)(8936002)(15650500001)(44832011)(66574015)(6512007)(6506007)(36756003)(53546011)(6666004)(26005)(2616005)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHI1NHdYaVZ6SUdnNXlmNzloL0xhdnBsQnpsbGo0MWhaSXg5WDg1WFEvcFdS?=
 =?utf-8?B?YXBIRHJDdEhnNC82VEVlUnpOSmYvMFFTblh5cTlxV0xudGw4WkRFSHZoMERy?=
 =?utf-8?B?b1J6VlMybXBtQVJPMU1lVy8ycVBBNlBGb3l1elNpNXZTTzNkcXJlTzFldU0r?=
 =?utf-8?B?WEYrdndhYXJUN3FLV2l0bTJHMW1DM09hUndiekJjamk4dU9POWF3TGFLbWY5?=
 =?utf-8?B?aFljdGJlblB3RnhBN0IzbVd5STlncEpBRlF0dUhYb01DejUrYVpFamkxajA3?=
 =?utf-8?B?ZlJQQm9Ha1JFYjVCNWpTdFZrY2hRcHI2MlZwQUdnbExCMnpFOFNkOGJQZStJ?=
 =?utf-8?B?WFlpa3ZwOFRBcTlvNmQ4a3lvWWhvc1dkckxSUFdtOWdsSCs4ZnRzc2x4OTVS?=
 =?utf-8?B?aTVkenJvRGdSOVNTcW03WXVINUZIaDBoQTA2Z1Y5cnk3SWtETjJiNVBGYjdM?=
 =?utf-8?B?S1JlSUlBQyt1Y3RjK1VDSUI4eDkwUlpyenR4VkNBV3YzZithTS9JUmZTcjJ5?=
 =?utf-8?B?UzNsNVFPM0RaOUVncFlCcEdRa3JTaGM1ZzVvaTVFeWhrR2dNZDFBelJIL1Bo?=
 =?utf-8?B?c3FVTFRzSnJMQ08zcWl0akN0Kys1WHBaZGZCVk9Qa09zdWZnSFpncnBTTlJX?=
 =?utf-8?B?Z3BJV0s0ZG5PMDdFYk1hQWIyT0doRmhCZm5ybWp4ZURaT0ZMK25MWTZsQWhm?=
 =?utf-8?B?UHBJVG5PQ1JLcW1BWjJwd2ViNE1ibDBhMGpnVER6SW0yREVIZ3FWdmZkN20x?=
 =?utf-8?B?ZFZvZEZpakNMTG4xTGJFNERHRlZ4NHNaTlpMekk5dlZVcDFZMS80QmlSY0o4?=
 =?utf-8?B?ZzFrVUUvRVJzMmxmcmJmbVA3YjRxTStVa0VEbkx1VDdnUGpyY0d3TzRQVzdS?=
 =?utf-8?B?ZXVqZ0MyS0lzUUtsTmVtdHNIQzMwaXFzZUsxdkxUWVI4YzhZTjlFSkdCd2lu?=
 =?utf-8?B?dVJDdFlLbzVrNkhkSTFEeFJRWW5ULzVMQjBUckgxdWtlQnplYVRuWlN1akpy?=
 =?utf-8?B?cEVhTzhjWURLZVBVL3IrNjVmR3dNWHluVUVBSlBBYXN5RVM1Z0QzWkhQMDhm?=
 =?utf-8?B?eXJDUTFlQjRHNVFncWpoNFNxbk5aZThkQTM0Q21od091MW1ZTkFmbTVIWXFt?=
 =?utf-8?B?T2FsNEhuOFVLMHFMU2tGMGYwQzJYZ3V4MVFyd2ZjRTkwNkpuT01oRU5BK1ZO?=
 =?utf-8?B?bHQ5ZXMwOERxdTJ3bmNWeE9TTFZqM1creFVEMTAyUkptaElBMDFuTDFCZVRP?=
 =?utf-8?B?enZ0S3JPdWt0YkhQL1NuM05JQmxBT0JmQU1FVzNJWVEzM241QkRERjFtVWJx?=
 =?utf-8?B?VTBoTU1meW5IQTRTTkdUaFA3T3JybTgwY3lwYU83UEJ5WkI0N0xWYU4vb05Y?=
 =?utf-8?B?ekkwWEVwbEd6SVhpRjR5S0I4VUdBUVo2MWx6REJLVVBGOXlabHdrZHZsckZV?=
 =?utf-8?B?NHd1RnYwYjNyTlIxWUNQYUZpa1doai9sQnozVUgwU2VweEZZeUx0QnpNL084?=
 =?utf-8?B?elYvK3FMTmNzc1BQM1pFamhpd281ZjZzajlndW4rVXp0RXoxY21IUnMrbElv?=
 =?utf-8?B?dlpNV0VyV0RIR3R2SWZORWs3UXpOZnIxZHB6cTZ5RlJ1ZzVxTWZIWUd2M3ox?=
 =?utf-8?B?R3ZGMENNZGVnMWkxVERTYW42TGJRUU1tWUxOcmxkUDVsQ00xK2JRSmNscXJQ?=
 =?utf-8?B?ODBjdjlMZ0lDbGdsVkpYcTdNbUhWR1hwYzdPbDE1eDg2QU9QTmk0NmFNbVVz?=
 =?utf-8?B?SWF4VmJoblJUMU5DUllLVXpPbkF2WndQTTVBeGFSOFFPcGxTR1hFK0U5MWJL?=
 =?utf-8?B?ejVLa1BaVmJ4T29VREs3WWhiQk1LOTBaaVduWGpWZGpxRUJtVWMwMUFuMkJo?=
 =?utf-8?B?K2FBcDdmZlJPQVlmMnN6RmhUMkdBWHFLckJUeHQzR2R6QXZvNERnK1lLUTFa?=
 =?utf-8?B?OHlqMkZScEpyOExuN1ZjS3FvaFlvV3pyVVV0cnRIb3Y0ZDBmZGdLeFRZOTEy?=
 =?utf-8?B?V0p0QTBUUTRwNTZuMjhtUm85WlNPVHpRdldvN0xBczBvSXcvNWJya25yY2tG?=
 =?utf-8?B?TUNDa1VRYk5YaFRiSkRtMzdNQm9mRjBJVURENzdnZmluakFCYkZxMTBQWGlj?=
 =?utf-8?B?OVR4MFIycmQ5L3pWbWhKTitEaW1pY1FlNStrNXQ1QmQzWENTSDF6RjJXN3Vl?=
 =?utf-8?B?YjZZcGFMOUVhYzg1OGVSODN6dEZwQXVSVkNHTXhqODdTL2lkSlNnVU5oYjVH?=
 =?utf-8?B?c1lhcmhPcXZmWG54eG9oekloMW84WTAxTk9waFM3c0dXL0JuT2lja1J1NHR0?=
 =?utf-8?B?UHBScGpCdWVFRForbHRJTisyMm9aajYvT0g1RkU2OEV6QWZILytRN2xRbGR3?=
 =?utf-8?Q?hW7/t1A/6HShoN/Q=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01050cb5-b837-4f4f-9599-08da11cae509
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 21:27:15.2210
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iA0vt2S6a4cAWUdJ7hroTCBOET7gWdla5FKjxAX4bkjI3oHLybJEZ52uXp7A1C9+9I0M9zEYzGjs7/BiMPhbCvjV1+cbwK+LsLCvpXCdf4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5825
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10301 signatures=695566
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 spamscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203290115
X-Proofpoint-ORIG-GUID: NeKt-QojL4qEB7OX98XcRhpWAKQi7IN8
X-Proofpoint-GUID: NeKt-QojL4qEB7OX98XcRhpWAKQi7IN8
Date: Tue, 29 Mar 2022 14:27:12 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

For those who don't monitor the https://www.zlib.net/ home page, version 1.2.12 
was released on Sunday.

	-alan-

On 3/26/22 19:29, Adler, Mark wrote:
> Petr,
> 
> Yes, I will release develop to master. I need to do some portability testing first.
> 
> Mark
> 
> 
>> On Mar 23, 2022, at 10:43 PM, Petr Štetiar <ynezz@true.cz> wrote:
>>
>> Tavis Ormandy <taviso@gmail.com> [2022-03-23 20:49:49]:
>>
>> [ adding Mark to the Cc: loop ]
>>
>> Hi,
>>
>>> Greetings list, I was recently trying to track down a reproducible crash
>>> in a compressor. Believe it or not, it really was a bug in
>>> zlib-1.2.11 when compressing (not decompressing!) certain inputs.
>>
>> thank you for letting us know!
>>
>>> I reported it upstream, but it turns out the issue has been public since
>>> 2018, but the patch never made it into a release. As far as I know,
>>> nobody ever assigned it a CVE.
>>>
>>> https://github.com/madler/zlib/commit/5c44459c3b28a9bd3283aaceab7c615f8020c531
>>>
>>> As far as I can tell, no distros have picked this up.
>>
>> It's mostly due to the fact, that AFAIK it has never hit the release. Mark,
>> would it be please possible to do another point release with that security
>> fix included? Thanks!
>>
>> Cheers,
>>
>> Petr
> 


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
