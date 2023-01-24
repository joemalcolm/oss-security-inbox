Received: (qmail 28656 invoked by uid 550); 24 Jan 2023 23:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28638 invoked from network); 24 Jan 2023 23:09:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=0C80okglvgO+GNTvxMMytwVanQ9IJkkXJ1hqwubIi5c=;
 b=ObIF3VaIwBhWk24r1hvQ+sCILYw86ivZ9AfxBrHvoDxolm8MEgz7cUAp6RSaL0NJWVKr
 JRJVXE1tSd6bKm7wNsbZE8R6uY58rZ81M1wv6Y4zShmW/jIr79fKCkJpYqjOZWK/hXoo
 WYRgtSGwSIBuHkPDFC/N1G7g7PFFuSSH+wob5AFHuXjmQseIXZ0IAKxpQx3hxK2kUEoR
 +Wd5rX9G59pzUC35BWdRmaKRixSZZToo+I99bVKp6ORW+EbqHmInibvzFRmYeHWQ/xcJ
 mA0+Au/rmqyfv60Uzcx9KzRUCXPFBrCtGeGtXVwau+dd3xUwX1jy4jj0jCt8tXJAwuK4 sQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCYcOfWc2+x3+/AtXst76ympam5DpUBDVE2XvJox6YBweU/HjwgPOjE8mRXa7jkLaVAzkokcsuqwFK7V3e2tDZwrkx4NVi+k2iumZs/ycVBUGCJwqXLEPyaHsZ82Q3on8U0a72aydkkCPFU1inez2Jjd8lpp19lgglDFz0ppU7ct7CmcRBHPobpib1kZvPn5zX7h5/6NykQeU4E7XQR5/7mFGQuG9RFd5R8y+D9iyMJR7AIE6+7XfQnWqcRmtdX+SyP9JLFgya0nqTw/V1WZsoGl1UQvcduJyIXA/PqY6lncQnaYyfg37tLqMbADp0pfpcLiqcCDyMeUco7LezqlDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0C80okglvgO+GNTvxMMytwVanQ9IJkkXJ1hqwubIi5c=;
 b=hvr2BWQXuICrZ4264y+uW6yson11IiGTOUa5fuYHG1Kbcmr0nFn2UA9M7H1XS8ruYTJUi5Abnis+/KdXK35MxijUgv5bbC2OnkbPafmGDlcaDFi93CRZazYSeQ0/a9zcERDg1U2Vcft3PNYAM2URhDl9Sc3Du5i6EkKbc/OhOF0J1w+2zcWEGshSgYySgfaO9Y7CfRm7tqdvDyRexA3WsUfH2PQ6eEwhGvx+SPANz3ESORrNMx2cZPpUfXozhV9CxJx7DECYLc4FbZy5UTNcEFYY/Gy8pzVUXysw7Mcwv20+vbA7KJb/XiLd6XvGpDTOX1sgR7ConnLBw4XuECQsAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C80okglvgO+GNTvxMMytwVanQ9IJkkXJ1hqwubIi5c=;
 b=GkzlI2cy+8qemUDlZ1fEDaZpF88n4Qh3pIiuijUuiKNFlEINEmQDso+Kq6aSWex1Bbj+gptjvkCidH4VfWBvNYNZzJF+HhgFq6tmuoDE4cnNAWCuSRmHqMVdD/f/b9x4/F0/jLXTnzJ1T5Dc54eUXolxMX5L1KOBymDXQdDuvGg=
Message-ID: <08abeba7-4ea5-a8d0-9146-14ecb5acf181@oracle.com>
Date: Tue, 24 Jan 2023 15:09:08 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
        =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>
References: <20221221194203.40e37b41@computer>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <20221221194203.40e37b41@computer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SN6PR04CA0089.namprd04.prod.outlook.com
 (2603:10b6:805:f2::30) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|DS0PR10MB6752:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e89041e-4597-4391-4e22-08dafe6000dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aJtQeL5ny7g7OV90bdvNCP2+SLgWuZ+S2K66Zb1uMbIF4NnQjopXCA3ZZD9Ffa1Rc/YA6dqaNrc1U7HwWI3i8iIcdnDRkBhkvaU04Nbz9rE+clOkWe08P84noMrh9Iu+CVrmT6EUyecy9+mVb5LOr7kgrtwLKrAkJRxxvLap6re2MgSaermjZ/e0Do+sDsZ0oZ3i1IQKng1UxMWTvVL5g4076GuMcOYelAYBQx2y1CeWJ1ErMN5AvOpEgB/242oNTFB5CALWvBLw6QLTRui8vyfxR+x6GXnrB0OAjllgahrAmB79jBSpvm+xkLZhJuC7lYAPpEGh/uz8oGnnoYarQaDxmugsroeyhCLDWznGzDnb4PjnsuFX2SiyH4Ty3tcorBNB2Ib05Gvh9yoGoSw6OC3UAjl+ISD+6pgrXOyrfunc4NzA0KWximNpt+euuKpzxxCmZQH3nhI/DEYv34ZSo+1CiW/juH/h/XgIAvdwpNTZt4r+J6xc4SSWba8Rw5WDSlJ8Y0iASn2WUav80pnn8lJhXSCxCi59LogglKo8iIMEjDBHhQ1QkYPtFPvAs+djFXpuj6MkSJHCEihPDdpx1TdWBp51iIhlN+Dg3M6biCFCovemTkknnxyclELjuv1N5JB/IafQYp4AH7q47CLtu5S6ECkTM/wDjbVycYrkaba+m4tVuebHgAKfvnyKkNJPIOE+dNBzP0OUgQU3R/lNajSG1khTOERZe1BjEh7uhpvPJX4eD8sYWdw9zjsbrKFp
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199018)(86362001)(83380400001)(44832011)(5660300002)(66476007)(41300700001)(8936002)(15650500001)(2906002)(4744005)(966005)(6666004)(316002)(6486002)(26005)(478600001)(186003)(53546011)(38100700002)(31696002)(6916009)(36756003)(31686004)(66946007)(66556008)(8676002)(6506007)(2616005)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dXE5aVZhNTkvNmp4dCs3U1BseXpLTk9VL3ZhMExVRUUyV1g2dU4vMk9oN1FH?=
 =?utf-8?B?U3A4Tmh3a0RQVG8xa0d6S29VRlBoNUgyenFFNUFGNmREd0J0TG9FS0ltZ2tV?=
 =?utf-8?B?Y29jcDBXS2JaTzUxZnFzYXJLRm1QaU8zZGQ0d3FxVHhuSTRVZmlXbXlLNmFO?=
 =?utf-8?B?TE5BclFncEliSjJ4eW1pb2c3bU5PNmZ2VE5HaGVHR0ZmOURocjlRSnpmS1JB?=
 =?utf-8?B?VGRFMlAxdy9ValNaa3JPNXZqcnU3ZG9SbzJJTkEwbUc1anJheDdCc0NNdlFU?=
 =?utf-8?B?MENuVXU5a0VlNk9VY3dYZFo5V3I0WjJ0Uzhab083Z2UzblhqS21hRlNJWnc1?=
 =?utf-8?B?SWJ6OW9KRCtVZUY2d0QyTERhSEZ0UkJkMk5ITGJONFZ5bjhkRnhnY2xIMUlS?=
 =?utf-8?B?SlBJM21zR3NKSDZzYlp3UEtDTGpjRkhjOUx0UDhoZGV3WjNtT0tENG1SdzhM?=
 =?utf-8?B?M1dEQUdIVVBoUzA2cWJVYkNNY1cyZzFaTFFTSWp1a3dYNUptOUd5SmlHTEwr?=
 =?utf-8?B?OGhJYk1iKzQ1eTd0eVhZUnFzV2J3OFZ5VUhxcEtBQ1RVZnVXM3lvZzhjaTl5?=
 =?utf-8?B?VW5Wb05aa3R5ODU5OGJYYndJdEhDc3YzUHhjL3hBRnppZkIxeDU3ZTFQMzZq?=
 =?utf-8?B?S2laUkd0NjJwWEtYbDFKNW9ndzY4by9KdU0rNitiUjBKYU9IQUdBeFl2anRD?=
 =?utf-8?B?bDh4Nks5bXBRU3dodlZJUUZ6T1pTbVZSa3dKd1UwNk1kd0Vlckp5NE1WMmkw?=
 =?utf-8?B?b25ib1NoOVJMTGh6U0t1SVdBWkxOaFR5c2FwTUpiMXhvd1ZiSEtTalI5NEF3?=
 =?utf-8?B?aHZQRk1IbUlUNkMyV2R2SVNFcnRhbnhkSHhxU29lOFNpSnlaRkJjV1VhZCtI?=
 =?utf-8?B?ZjMxNGNLZ1pDL1ZCbGlaa25mWmFqeXkzVHhqQ1duY3JiUVRrb1BLaFk3a3pv?=
 =?utf-8?B?dkxJbmxLVXdNRkcvTmp0NkRLekJWQXpLWkp3c0tPblpoL2poWE12M0ZHZHQ5?=
 =?utf-8?B?REdrZ1N0ZzBMSVhlZ25Cc1EvQnQ3Q2FWTnZ5S2ZReTBZZ1VCYmNmYUpVVmo4?=
 =?utf-8?B?WGtnbGUvVlJaWGg4dERXNTlVdkxxK0c2QWZJVFEwbHhRNWdYb2hwbkZZK0g0?=
 =?utf-8?B?NWUrMUJMY0xGTWFSRW84NFYya3E4RXdSbGFLMHhnc1NHanlTOWtYUitFK25N?=
 =?utf-8?B?YUtHS295d2paRmRrRXptbHcyQ0prOW12SysvRTREVVBTejEyQmFoMFRGbkkz?=
 =?utf-8?B?Q2ZWd3QzdUlzUysycnRmOGR1Q3lWYno5RjBOT3ZRWWk3RzBIU1ljYThXRmpL?=
 =?utf-8?B?UWNzUmN2Q21pb2VrWHdXMk0xWDQwV2VFYzBGQXFra2ZsNzdSSnh6VDlISEZs?=
 =?utf-8?B?VlpGT0E0a1JKdk1McEVqSEZGTG1OK0pWUDZta1N4Ri9kZDN3V2FXY0NscEM4?=
 =?utf-8?B?RGRCYjhwRkhFSU4rRFhPVlhvejhuZUpybUZ1bUZTWnhxUXQ2V08yYmJzVkNn?=
 =?utf-8?B?ZmR0OUZuRGZRNkRlM3h6ZG5ueU8vRFBidEh5ZzY0UHlYMlh4WGJOMnM5N1h4?=
 =?utf-8?B?aVFJNXZCSmEyV1hLZlJtemUxbjhkQmVEYWQ0dlhVQ0daWThCK1VyVW5NN2dI?=
 =?utf-8?B?cE1CdFlnMGlYL3NIY0tIVlhMdnR3UDlsUkVuK210VW1oSjJQUFo4Z1JFdXdr?=
 =?utf-8?B?OStmRWRlMUN5OGNEdDRTTDZVVlhZeVIyVXkvN28xdXZqQkxkc3kvRmcyc0M5?=
 =?utf-8?B?RGloM2FxbHZIY0lNbkhaTGo1dnc0WWJTMmZDOFJTZTdLYlhDNzQyRkN5UmpJ?=
 =?utf-8?B?MnJ0a1FwRTFOYzJSOEE5T2ROd2lLcFNBVjl5YkcxVk5qN3dwbTcxSml5TS91?=
 =?utf-8?B?SjdJVnhoTURrV3owd3RTSm5xQ216cmI5NGc1aVA4TzFSemxOQ3hDVUZLeUh3?=
 =?utf-8?B?TGxRY1QrQmJRT1hFTnIvN2RsNHp1NHJrS01FZWwrVGZTWXU2QWgwY3h0VU5p?=
 =?utf-8?B?cHpwZlNoZXVCUWdkUlp5eWJOZ3BXdzllMFdKWHAvZ2V2QjVxRDJkRm1DS1dy?=
 =?utf-8?B?UUUwTS9NalhvODJWRHdLSzhyaUU0NUpaNXlsOGU4a2o5dnREaDR1aTAvaDA2?=
 =?utf-8?B?Qk5hQVBnTzliSDBKdHI5MWJheGpsUlBVN1ZMYUpkb1B0ZW05MWxDUW5SZStP?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	mM7wXhe0kFnCzDt4uTIJKPNcdtl+V6MkPKGzqHCc0hp0K8zYhzCxRxmCEJs+vutAc01zRx8+So4xggsTR5qXgKe4HPoyTsQkD2I3DYwDyRj7SOMKZhXYT7o/ZR4PCgypmWAVQNoEcuzm6ZHWU6bD7/jRqBDrNyu+lnI2PdAZ/bPDAJK6v8s6Hq2NgVOWHXFcxlTjQ6QPCYWq0u8uZZnyp3u6JG/EZGOCPQe0aD+Tp+e7wAeOhRJfnZ+R2PMiiB1Fs3Yu0fHBwxuEe88++NNQkIrxVU+QQgwCM++NJI4HdDutcwRo4a1+yH5reKvtKvZp6Kju63d1WyUAbC2xgxOstnczX4Ed8Om8Hh1NTLbD318NBiV6xhgfGJki31HKp8qPxh116Yaat/taFe6p9LlpziPO60hQOPBtFbsxB6mYBBnUzTi0c/5qRNoJYyDCr+lKCGXR+5JyqmTZvLYEMZ/g0i8YqH2oRx+L70REDVqD2FK/MLit4xUlqxbQTRmtJGW/J5oJXFWjC3z7ExQTzsXy1jFGkweEiZwJhov+x+URXaDQiR31viWt5z4yEuauyPoV/JD58L6bRwobTN5JRW2vxrdjDKPn8sLeDry/1oM2t/Mjxu7X0tXGddjxoIqE4hqC6yBnHnJ+8budzk7PZWCdAmxQy7TaHZYJ8w0WJRN9EbeMvFMDTBjRcPT5EF6sMH9DLOzbAgu5dq5PgaFwJ6VoPVotAZZxz/0MNx5B+71cJ7Ow7uneAj4QO5KXEIA9HINzktLdofz5bbsp6th1KI1X4T3TO/H6mdmKfigajELVGew=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e89041e-4597-4391-4e22-08dafe6000dd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 23:09:11.4269
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BS5TkXs1huVIM0KNlZ8RWrAysvmJY5uA1PvWF6BnqtQrffhY462FqPTcnv440aOpJPog50MyJg96fejRhMOgaQMH9kvYV7a7H3qUGFEv7Ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6752
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-24_17,2023-01-24_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2301240213
X-Proofpoint-GUID: dFV2o3HroPSRozaXJRTN8-l66MBZLA6Y
X-Proofpoint-ORIG-GUID: dFV2o3HroPSRozaXJRTN8-l66MBZLA6Y
Subject: Re: [oss-security] Directory traversal in sharutils/uudecode and
 python uu module

On 12/21/22 10:42, Hanno Böck wrote:
> If one can convince someone with root privileges to decode such a file
> this may thus compromise a system.

Fortunately, the easiest exploit path was mostly removed decades ago:
https://exchange.xforce.ibmcloud.com/vulnerabilities/126

> I got a reply confirming the report from the sharutils developers,
> pointing out that this can be interpreted as expected behavior
> according to the posix standard. I don't expect a fix any time soon,
> their latest release is from 2015.

I started a discussion on the Austin Group mailing list to see if the
standard should be updated, but the argument has mostly leaned towards
"users should either use -o to specify output or look at files before
  uudecoding them" (along with suggestions to drop these utilities from
the standard now in favor of base64 encoding utilities).

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

