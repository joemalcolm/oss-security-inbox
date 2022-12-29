Received: (qmail 15738 invoked by uid 550); 29 Dec 2022 16:43:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15713 invoked from network); 29 Dec 2022 16:43:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=7XP+lVCcWYgUYGMiHmA2Gkw14uM0d0Fli7xvELwxbcA=;
 b=EJGnwzJMBpoPnoq4hyfcmmeSP5i4HFYVXL66SqGb+Uk3+iMPLGfBhA7p5CZw1+FNCKGG
 5dL7MxzwlEjnBaN7RPGTYs167T+wD5Cl+Sf4fmtK5/6wXzelL3Neuc5msg20Lkh3ASJw
 J0K8G3m0zHsprSyRQNh9avPMCdeLdbVGj1C9iST06v5sLUmscUYb4FvasL5JhGfQe7wg
 zQMY15hsHTUszk3k//iXVV4A4KNoHfVbhmpuGsSKQadCyA+eQ84yrpa4uQaJuXGx7OMO
 G1KW/QtNcKxMKjnEEi7hcXbgWn5HpJvmdXboD8qzg8WYlIax7hj2cNuBun3kX1x19SC/ bA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R67opY0Zlk1vcKNafOCCW9F42M4JSDd0jz/RdIqtH2NYi8Qbhz1oaSvFk4fzp5uBVh75Lqg/hPuNjZ66+05+8TYYem2FONdhKt1JYneXUjQiit4K5Zk0HKpzyamH+/V8fcw1YgsEVRnt27gOXajs9xPd0F/eeFZ7lXqrd/EhuXsEdhW5iBTNBbK7Jds6bAcddhdGwo+np+QUq1ykAuJrvaDz1r9Js30o+bYBWo0PulxtMbKkuWafntye27Y+Uosw1++wypVs5Px1wXC2bSLHH1SkuLW9zMcThpTscg0sbr+Ks+n+O3wgQ+SibVvhYQ9e12E0zE3ea/QRagy4xFyZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7XP+lVCcWYgUYGMiHmA2Gkw14uM0d0Fli7xvELwxbcA=;
 b=QvByQjXtoGkqrF7fW2Tp9v9reu8qlpuXfet8g8zxw9K3PlKDShCW690nzQf/htCu3d9ycb6WRHR5O2O2M3lsTW+smnpg9bbgog5ISMKwcEBoUl9mEa+4N2Uws3TxFI0DnTqwbE1i6Nw2Qpln/6uZ8aLWft3oKOhMF+6AOuzPTsb8+TcapvsKcU6jvN0zmEoWEizprahEULPsIAbInR+L7EWKfS8VAsW0uug1JR3ZYVwXFQcT/lLO3tGc5SEVxf6tBUQLv9oXqIpt74xrhkOJAPZz35u/RaFfXG2ttp1yDGzI582il1AUyJxfkFWQexP4OoJPttnYGEyk392hZ7o9oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7XP+lVCcWYgUYGMiHmA2Gkw14uM0d0Fli7xvELwxbcA=;
 b=fwT+gspNYWPvLZQ4DfkHEcDXbQhliMA1Wesyn09+Jqrb8p2qBSkcH/bLTAcMafe2EQsEDPJmkgnyAbsNM+xY+LhhH22tYzKGvzmrg9AbNtsQo24q5V2NKaKaVRhzwkG7njpPc8f8rLaO1/hCe+R7YqwWUSfBrUhwyGfLx3tpPrk=
Message-ID: <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
Date: Thu, 29 Dec 2022 08:43:02 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
        Demi Marie Obenour <demi@invisiblethingslab.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <Y6xzIR9P+a6uaaEx@itl-email>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA0PR11CA0147.namprd11.prod.outlook.com
 (2603:10b6:806:131::32) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|SA1PR10MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: f546c37a-f61b-4c22-2adc-08dae9bbc412
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kYKKveTs1hNkbdbInpsa8ZYugpkzCJNg/tJmMsNBaUc/7JIgY/JcWsiahXPF5YREZumCV0uxr2dJ2fP10UdE8oc2drZ1qBLs4l0YZU2jJHApA5UAIhH0tnT0HjC1c5R4+Rsh6L4UXlKv3k7wK5KIDj2r0AUNQ2jesZLwUc/HKaS8R26gfjpBCa4OY+6+svDR0duThhTFBkqPMS8bJLCSpxQwp3ig3HdPeZ9FGVH9iKXdJUEe5afouAJyH0UcAYSUQkAEdGlHaWRmHy5D6JspBGNORJZJiVHodpSo9pGtDvrCZfpoBTQ2dk255xgF8Q1zjpdGG/aRH6Dqf1QU9FMB0t99+d8WcjmUysctvtkvtaedx5cLQjKWtt2kQfUI2JeKHf1+LmLMNc0+wearwjgBuRj6NYmDOu/wLF3w4p6Q3bztlVQLfg+NQoVzC4hTS8IVrnRADoU+8Ocj0+clvyHdYaoZE38jlfPctyjgXyokIr/duwFE6DCvpb/mTAXh9Wac7nUN6aHh0RJAtHpRE/dcGm7MqzriXGZgXwez/eCWryYfjrhOQ+0kH1f0dUIzViPbsmvNzLxrtOGxDNLr0B35uoEJCQD583SWhIzP6mPsDJWk2u2zHY8P8snojZYw7U9iSelu53N+N6QZ1W8yNbEsfEzf6F36yNTtMLrmsuzXl3JexXgFtX2zCiCoLJE9PkTajz0001Muaa7W/nqRn7wXEU7GLaaT4H+xmjdUYyEuWduCY2ZqCHQ4fxhrRjyO+etTOWLvdqxXfOHV5sLlzLm52ZkVy9yuWIk0SHadUZfLDM4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(346002)(396003)(136003)(39860400002)(451199015)(36756003)(2906002)(38100700002)(44832011)(5660300002)(41300700001)(4744005)(8936002)(83380400001)(31696002)(86362001)(66476007)(31686004)(66946007)(66556008)(6916009)(54906003)(6506007)(478600001)(6666004)(966005)(316002)(8676002)(4326008)(53546011)(6486002)(6512007)(26005)(186003)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aktQUG51THR5SlQ0U3NxTTBpUDFMQTlXTjhtemN6QUREMDZQSHliZ2VRQ3M5?=
 =?utf-8?B?OHJMME5PeENyWEs4TzhodXRJWHYvK1FBWm5kSU1WMUduRHhJMmRFWG9WUSta?=
 =?utf-8?B?NFk1NnY4RUdGOGZWOTU3YkVrNTc5SjcwVzhsK2JUVlV5cnpiYVRWVnE5TWh4?=
 =?utf-8?B?V3NXek5mUU1NenN6YWRFUXg1N09jRzBHbGwwWTB3akJEMzJsWWRsSVRJSDBN?=
 =?utf-8?B?Z25EcmtlZWxhcXV4bFhlc1R5d3hQSEFtNkFnWkJ3ME5Rc1NxdWxWQzRQL2dB?=
 =?utf-8?B?MXNOc1FtUVVVTXZNTFc1ZFRnTXRsakFFdzJmRXMvK0Y0cDVoUUpuUlQ5ZWZZ?=
 =?utf-8?B?Z3NLOGJoeXIwUmtQTWNYZVNRd1k0WnJ4YzNXWWhLVEs5MW1lakwyK2JjeWpP?=
 =?utf-8?B?bUZFZks0SEpKSk8ydVJMT1FOZDNRRjJ3Mkllc0tzM2xrYmdJNmZ1YmdYbVIx?=
 =?utf-8?B?OE1vemNodjNzWkg5VTNxRU9pY0loenZMSXlZTWRySkE4WEt6b0l3bHh4b3Ax?=
 =?utf-8?B?WnJIbmQ0clRXVHNCTW55WU1UclQxK2tQbDdyMHBjaVZVS2Q4eGJGclBVUU5P?=
 =?utf-8?B?WnM4Lyt2WDh5cXVhWDh0M1hscmZTQWhVN2xveTFrbXZneUk5UENmQ3hIamND?=
 =?utf-8?B?My93R25GakNqWXNzYWViU1lacHNNVVJnK2tpMUcyVmtHYXZrYjV1U2d5bFFo?=
 =?utf-8?B?aW5WY3krMDRjQ04zQkk4UVhMY1F6c2hUZEIweUo0dWwrb21Fem9MVGJ2YTha?=
 =?utf-8?B?cVBFZ3FPcCtOcDJkSW5DbG53RC9RcFJpd0xySHA5MVRQbWxYNFpmMVZtdXdS?=
 =?utf-8?B?ZnNkNWJEZTFiSmczRjQ1MW9RQ3JBSkt3Vzl3MVpuNHI4WFpHRS9LTUtVRVZT?=
 =?utf-8?B?RkFIemM1d3N0NytFcUVnUkgwU21KUkFoS2xkaEQwWkNBbi9sZGxuSEJZZGFj?=
 =?utf-8?B?Lytkc1YwMzBweW8zd2JIcDZUQVV6N3gvT2hya2F6cSs4cmluNUlQM05ZeTRa?=
 =?utf-8?B?VGtuZDNUQzV4ZHRFM2xCOWUyR0c5eEFBK2l3UUM2cU81V3RIV3MrNExVUEsw?=
 =?utf-8?B?RytyanhjNktIVnZKbVh2MVJhTENZbERnbUtSZ2p2K1dJSmhlQXNQVCtyMC92?=
 =?utf-8?B?S3Bpc0NtVlJVT3AwcS9TSnJXRlBMV1QxMDB6a04wZkdMdGxVbVZIVkJ5N2o1?=
 =?utf-8?B?UlFBeDRyMnhITTg2ZzJYdTUvb1dCNkdZMmMwK1lFUjdzemFVL3NIN0M4ajEx?=
 =?utf-8?B?YXh0WGxoS2E3MC9uajBuc1RqOGhNMDI2eTE1VUlUUGlqdUN5aUJncHNmYW5l?=
 =?utf-8?B?S3lYR0tWWnhKaHJPVTN2SUc2bUwzUkd0eHVNSCtqUy82TGJDeXVSK0dLTlgy?=
 =?utf-8?B?MUcxOU96cHd0UjBubDZmWS8wV3ZjWitvWnZlWHhiZ1RHcUFRVUtkQVJCSnpt?=
 =?utf-8?B?cXpGK05NRVZCL1VpWEZqRmF0cjJFUkZZK2plSUJsaGZpMy81K2NQc25jcCtV?=
 =?utf-8?B?TTE4NjlmVGFNTm5tRkpGM2RzdUl4MURCb2JRelFMRGp1TFhBYndwTGtEQkZ4?=
 =?utf-8?B?Z3B0QzNUWTBONnVmSVR3VHhWb3dRYUUyZ2JueWx5K2M2MjhzVk5sVUdxbm8x?=
 =?utf-8?B?anBmbmhSQkdxR21FZHBOYldLU05KaFhHK3FQRmxSemhKT0VLTDkzS1poTmV1?=
 =?utf-8?B?a1NoaHBHcTNtZmo0cVVjNFMwNFZkOWkzb0dhWlZqWm0rMTB0NjgvRUsyeDli?=
 =?utf-8?B?bi9Yay8vdVB1cUJjVHdFYjFTR2dxWkJkQTFRdDQ3aEgzdDYramFDNzhlWVlD?=
 =?utf-8?B?WXJNZFpwQjErdXEyV2NoMER4eWRqTWpTdHFpSXNURkJQVlZldlN4ZStTKzN6?=
 =?utf-8?B?L1QrK1p3S1NzNWxhRnd6QTYyZFNhUzFaTTF2K3ZLdWdpNUFwOVFHOEFkSVJ6?=
 =?utf-8?B?bTVrRldyRFFGanRaVm1FN2RkN0lSQzlFcjVTYkR6SHVjakZLYURROUdSYSth?=
 =?utf-8?B?UGVMek5YTllrSnU2RmZxZXY1OVU5dDF0eUZ6aEt5REdmNWorT001RXdPcFNo?=
 =?utf-8?B?ZU1zWGxVQmF0WDlOZmFOeWVPcWdsSVRUcjRid0t3MFhyM3VmYitRYUU1N2o1?=
 =?utf-8?B?ajZnelpiSDcvV1k3eER4SEl3N0dUUVhIOG5EczE0aEhrb29nNDhDdXMvcEp3?=
 =?utf-8?B?OXc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f546c37a-f61b-4c22-2adc-08dae9bbc412
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2022 16:43:08.6072
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nnK4IWOZAJ5EXVQepltTGviAs9uISZBe6tUHoyKXj5WFDHUdSOMZWssPamCpbqoLbZ0q92lbEJBUSuwjVCuDXb7J/4aDJC88gd+TGc3TPNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6389
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-29_08,2022-12-29_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 phishscore=0 spamscore=0 malwarescore=0 adultscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2212290138
X-Proofpoint-ORIG-GUID: nTzjodJBGu83EZWFiMWh99FFiAYYpiAX
X-Proofpoint-GUID: nTzjodJBGu83EZWFiMWh99FFiAYYpiAX
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

On 12/28/22 08:47, Demi Marie Obenour wrote:
> A binary format would be even better.  No risk of ambiguity.

That is how the Solaris (and now illumos) /proc has always worked - fewer
parsing problems, but you need to use tools to handle the contents, not
just cat/less/etc.

https://docs.oracle.com/cd/E88353_01/html/E37852/proc-5.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

