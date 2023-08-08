Received: (qmail 5148 invoked by uid 550); 8 Aug 2023 18:44:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9589 invoked from network); 8 Aug 2023 18:19:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1691518762;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=xrwNKwo+yZ5X9sAHa7Ktr5rs/DNwWLj1biQ0coIdezU=;
  b=Vwh4EOQQlJZkg7qlxynSKalutv+MeAGRIyp0kKqt7PJaSv7tAKm9EZKC
   gErldJmzD7KLN89b6KH2rEXGCTRsE6SVZMzkdzZ5oK9poma4JgmNwxa4C
   yNctiKAhyG76eMhazNeM+TLZIjDXZDPKopjnLoFPvltEw0WYGVOtSugBZ
   M=;
X-IronPort-RemoteIP: 104.47.58.169
X-IronPort-MID: 118174276
X-IronPort-Reputation: None
X-IronPort-Listener: OutboundMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
IronPort-Data: A9a23:sil8H6hLxDgKJKpJmH7qMLb0X161VREKZh0ujC45NGQN5FlHY01je
 htvWTiPbvmLZGH1KYp/PIjjoxlV6MTWy9RqSgNlrHgwHngb9cadCdqndUqhZCn6wu8v7q5Ex
 55HNoSfdpBcolv0/ErF3m3J9CEkvU2wbuOgTrWCYmYpHlUMpB4J0XpLg/Q+jpNjne+3CgaMv
 cKai8DEMRqu1iUc3lg8sspvkzsx+qyr0N8klgZmP6sT7AeOzyB94K83fsldEVOpGuG4IcbiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauePVeQmoiM+t5mK2nCulARrukoIHKN0hXNsoyeIh7hMJ
 OBl7vRcf+uL0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tQqJWE1RU6nldux7468Sscr1/V8Kc7kadZ3VnFIlVk1DN4AaLWaGuDgw48d2z09wMdTAfzZe
 swVLyJ1awjNaAFOPVFRD48imOCvhT/0dDgwRFC9/PJrpTSMilEhluGzYbI5efTTLSlRtm+eq
 njL4CLSBRYCOcbE4TGE7mitlqnEmiaTtIc6TeTor6E22gLNroAVIEYHXmGq4qaZsRejBIpCb
 F4K8Swiv4FnoSRHSfG4BXVUukWspRkYUsB4FPU37h6Ezq6S6AGcbkAfQzVcct06pecmSDps0
 UWG9/vuHicqq7CeVGic6qa8qTKpJTNTKncPYzANSQ9D6N7myLzflTrKR9dnVaSz3tv8HGipx
 yjQ9XZvwbIOkcQMyqO3u0jdhC6hrYTISQhz4RjLWmWi7UVyY4vNi5GU1GU3JM1odO6xJmRtd
 lBd8yRCxIji1a2wqRE=
IronPort-HdrOrdr: A9a23:ZWMItaALjWXf6RjlHekl55DYdb4zR+YMi2TDtnocdfUxSKelfq
 +V/MjzuSWUtN9VYgBYpTmrAtjmfZq+z/FICPcqTNGftWDd0QPDQb2Kr7GSuwEIfReOjdK1vp
 0PT0ERMqyNMXFKyer8/QmkA5IB7bC8gd+VbD7lvg1QpNdRGtxdxjY8MAqdD1ZnACxBC5Q0D/
 Onl6h6jgvlQ3gRc9+qQlwCUebOvJnvmI3rZHc9dnsawTjLtz+u9aXrVyGC2BQTWS4n+8ZAzU
 H11zb04bi5o7WBxgbYxyvv6f1t6b/c9uc=
X-Talos-CUID: 9a23:UPIwPmFm8Lrmdw66qmJV+R8sMZ4BYETa40vXI2H/WFc2TbqaHAo=
X-Talos-MUID: 9a23:xVKlTASV7/pUTnwRRXS3lTpYJYQ3w5/3FR9VjNIUpcKCOT5ZbmI=
X-IronPort-AV: E=Sophos;i="6.01,156,1684814400"; 
   d="scan'208";a="118174276"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3KuU/HmLPdgY4TWFCitvHvmw126MoZWmCevrUNmebK4mrUn0sN5k2AL5OjGvr8PXyaBVpX2j/1xSBx4ex8iiJRHypvms4y8jWivzPVaXX5bzIcOEeCs5uriveqhoOSq6SILa5nRwBTmXjSV/8Oc3SPuoPtrnK30HJF3+PP6AInus+2ZWMvQ2Q/FWweravz+uQAdSYGIwTqyLDwbYkaXHKkekyF8/swQUA1HpjAfarxSW61SXROSUlTSKYSADtA8h4I85dSzHk7MphLlylSy+kpxaHqYWpLyijYGKpCorLaB5PNnsrDVedCh5vghZ7Pbp/xBYDQ0cN097dszoW1Hbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybjB0Bb2/F2W7aeZ35CrbwYF5DDRM0esxzaVZK3T5Mw=;
 b=EoHV0B/kOT0HPvZ7IojuHpE16J/Te3AN7XtYirmIRRjdY00lHXpVG0bUroFR1u87BDP5vqMdrWT0bdKc0SFRWOjO49m59dXtvrTpaBl0Nqj/JajXKfFSuisZmk8GCJaXuUa7Yfe1LrlbOCWBaOcreJkfUXrDK7Np/K7dIYHL7H75Oid+0OZ5puMRZhXFnySL2kEVtBVJhNrNUPiNtdv6CNsJylQw6/+HYUXjhecW4DOp+iMmoaQcr2CS8WrCXNXZR88o5TV43TZBIEZLgREpDhtGbWfVCdeOb+7TVAdZk/kILW/o9n9wHqqy1BDLmuw8Jf5lweCJmBW7glhf7wi4vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ybjB0Bb2/F2W7aeZ35CrbwYF5DDRM0esxzaVZK3T5Mw=;
 b=LcD53sqyXdSI+xCDgr+HEcWG6VnaiVURG/6GloN4dP152OOObBmR43lVPXH7UbqF3mifNuXRAJYh0ihwHTmV74wBjc3TD5TThXOr/y8S2F7O30GKeaa33CEl8i8dnrddHgvF2MTkfSBF5LUNaQGtQ1YI898j7G85iyaqCV9hrm4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=citrix.com;
Message-ID: <240c8fa4-2872-0584-3cfd-7648ea4dc0eb@citrix.com>
Date: Tue, 8 Aug 2023 19:18:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>,
 "Xen. org security team" <security@xen.org>
Cc: oss-security@lists.openwall.com
References: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org>
 <20230808180009.GA20736@openwall.com>
From: Andrew Cooper <andrew.cooper3@citrix.com>
In-Reply-To: <20230808180009.GA20736@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0038.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::6) To BYAPR03MB3623.namprd03.prod.outlook.com
 (2603:10b6:a02:aa::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3623:EE_|MN2PR03MB5008:EE_
X-MS-Office365-Filtering-Correlation-Id: ebaa3c53-b4b4-489b-d36b-08db983beed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	plP9AUYzI0iNYHmglzcb/qU8EHllLEw14+KIkRkDDpQ3CHcHZpqO0LHEu7t3gK44C4gROWZOGygpVOp2ix2bv79TpbgLq5njnBDRj3uziCiDrmkdF0CDbtX01quUgF4CS8y50laghcVgXfKPKJpQOytyQxW5CrZfiyeygF1jY7Apd068An/WKDGtQO7s+UPXDLYL/hz+4d9FYLeBuWmNWC/zQz7GTvD3eYooKauPogVuV1NPUpD/H/Irg1F9Qc7LwcTRUvhfhWUQC1UuPYPpSRyYx/AfJaFLxV2mj8Dz6LmFluM6sA0RNE4/RSl683DQmgKehPybGyVXtkactoMeUNcrvLTTfhKvzg7DiUjvy62GLnShmsb1yxhrJZyu4ZJxR4/KECzxwXEIKfh+yZlT/AOzemHo2AUjb3/mWtkAfrIi9mKBuejq/UmdkQ2U4Tij2W/2iTWyihtXpxTwynnQr+OQQjsRo6O4d4IVH5PQj2jhj5/AbE96qhI331vuncyNnEIAUi2VVmVuQYhgc7+BIiNq9WvcxES0c518EbWOvIenhMtwi3zK7eQh/fyh6QPlBPH9cmD4hCn5s5o9KJpsyZ4hv49t+tL9kZJXEu3P8i+1+gyuyv3w1WhnHJA4pcNgz8TcCX48NawLiuLRs7E2xg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3623.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(1800799003)(186006)(451199021)(2616005)(6486002)(36756003)(6506007)(53546011)(6512007)(6666004)(82960400001)(478600001)(38100700002)(31686004)(110136005)(66556008)(66476007)(66946007)(4326008)(41300700001)(316002)(8676002)(8936002)(5660300002)(15650500001)(2906002)(83380400001)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eER4SGNMZzZmdEFMa01kU3hIQmVLdkdqTlA3K3JVSTBhYWtvbmkwTW5nS0V2?=
 =?utf-8?B?ekdwaytvemtKai80MWFYNFBaMGpwZjZ5cWpxNkk2NVlkOGxHd0RMVXEwUXQw?=
 =?utf-8?B?OWhOcXJEZnJlTnZQTGxKQUJETk9tR3JYY0kwRURQQWZPaUZpWnkvQ3FsbG1a?=
 =?utf-8?B?ZUNYdTlzVU5CTzlnT0RhaDVPQ1NTeVVobFYwN2lkRHZEU0tZTVp0QmNhNzQ5?=
 =?utf-8?B?MTRNRmVhUUJFRXpPQnpxYlRiWTFFWTFXUzlQZFNIVlM1YWJTRWRtNXRFUlV5?=
 =?utf-8?B?bStvTmJlM2Y3dFZKR21GbmVORzFFeGZhd1F2bXpTRDdtMnRTOXFPQlFnbCtC?=
 =?utf-8?B?b085STlZb0NQdWNhV2ZVM3VDU1lDTitPQ0JnU2VjNFh6cmZTVlB6TjhJUy9Y?=
 =?utf-8?B?NDBiRW41VGluZU83TGwyQkttekNCQThxN3ZzZFB3T2ZKOGxJNEJUaTZtWTk0?=
 =?utf-8?B?ekJHOTNQYWJ3dDZyKytYUHNsLzM0aHkwWjJDSXduNWEvQVlEK0FRSDB2c0VD?=
 =?utf-8?B?Y2pDcm1ObEdhMzhnV1JlL1EwNGxkNmpsL0ZyNE51MzJIQ3ZYOTJGVmFsTHlE?=
 =?utf-8?B?cjZoRGZXdFN2K0piRFZSK0RMRFRYMnIrNmcyNVFTV0Q0STM1SjRtS1kyVXor?=
 =?utf-8?B?ZFlrWkg1Z2tPd3ZGRUk5Y0FSc3BvVjduVnZmcG1MdFhLMk50Q2o1dU8rMno4?=
 =?utf-8?B?c0g3UHdoN3RCS29oSWxBTW9CbzNpbGxpanBCelI0RVFyU3htcGtiWUU4MklT?=
 =?utf-8?B?ZGNiM0JGYnBCZXZZWnRPNEJySWc0REZ3a3Mxb3NLNFlSblhVZjZCSEx3WnRI?=
 =?utf-8?B?enNYdjRRRXN0NE85K1dZZU1NbGVKZFhLcFhtbGR6akF0OHRNR0pUdFZCaVhY?=
 =?utf-8?B?aklrSVJTdFlJV0FlOVJLOUlnWEQ2L1dCT0ZhWW1IdGNDL0FxdmJyRnZwOEFI?=
 =?utf-8?B?TDJQWkRha0ErOURuYnNLcVA2WUZDTWZ3WnE2TE90WmlnSXBvRksyRHJCQ1JV?=
 =?utf-8?B?THBNZkhwakp4Rk02Nzg3WlIrNHdjT1dLTWQ0aFMwYXVEZDUvUHV2YkM4cmMr?=
 =?utf-8?B?NVNZYW9oRTFFMjZodzNnWGFtYWxna1Jmbnl1NG5ic252bWE0cWJEczZZL0R3?=
 =?utf-8?B?OEdLSnBWVUFOanJsWHByZFY3aWZjUFdDZ3IzNDZvTGpCUUlaZ1N3T0RrTXRw?=
 =?utf-8?B?TzJYSE11SlA1My9od25rNnVNR05HSlZFTFo1SkNRTjR6VE56Q0dJT1JDU3RR?=
 =?utf-8?B?clVreDBNd3FUWVJMdlRFaUdHdmNqcGFPSkhHR1dTMzIyOHBGRnFKa0JCUVYr?=
 =?utf-8?B?dUcxM2VuUVNpNTRLbjBDbWVBQ1pTcEVKUnVmOGs3YVBTamUvUDhyQWF6REpu?=
 =?utf-8?B?cEdmS1B2UURpWUZubVVoVTh0ZHlTazVzdk9wUGkzRGEyZmV0SVFhLytYTVpy?=
 =?utf-8?B?Z3NDMFVUSXlZd3RzSnlGMnN2SCsyV2RxK3pURWxpTnZoOGhNRzVKZFJqSnJn?=
 =?utf-8?B?T0lZRmt5MkNWZ2E2VGdDZ0Z6R1Q0MWw5b1p1ZUFtWEVsVndjL2o4WjJXMWN4?=
 =?utf-8?B?Yzc0SkRXbktRYTAvVDR1d3E1enRWNHNRYlJLYnIyeUJsTHV1MWh6dmNjUVJI?=
 =?utf-8?B?YUdWaUx0VnRDZjgzSE1aejc4U3J5MU9sUy9RcjA4VFFKRUIwcllHRFhORnJ6?=
 =?utf-8?B?QWJaN1d6eWJDMWl0RWhZTW9XbWRickY3cklzUk9aMWozUmVCYmlHdHZJeUlo?=
 =?utf-8?B?b08zSTVyMm5sTUdYNkxUQUpkT1NWZWpGMXlLYTc2QmloM1RZalZ4akIveUp1?=
 =?utf-8?B?TW1XZ0UvODZudkVZaVVKRE1EdFIvSlhueTllRnE4aGcwMHFqTkd5QmUwTlBx?=
 =?utf-8?B?d2Q4UmhkT0FrTGMrbnNMTmNhMmtkSzZnWTZXcCtlSDI5b1JnRFN2b2RTb2x6?=
 =?utf-8?B?MGFKeHF6Z3d1QzVNWUEzTHJGWU9mNGovWXIyRW5BQ1RuZUZpeTlya3BVQWkz?=
 =?utf-8?B?UzhvK01tQTNzNDhySlQ3L2pOU1VSdldZSmhqM2l4MmJ3NFp4SnpoNU9xZUxE?=
 =?utf-8?B?YUZkbExPT2RJbTM0cWk1Wjh0ZnROTGl1VVpHNVAxMW5BRnlxZkdITWtzYlhr?=
 =?utf-8?B?TUsyYmtFN1pVR3ViZ2RZUGFYYkR2d0g1RWhQSWRsdHllTHAvSG5qQmRscnYz?=
 =?utf-8?B?NHo3VWdsaHVESVRsVDRuZXd1b3NGZ2pOcnZuYUJORUl6OGNJdEg2Zjh0TkNN?=
 =?utf-8?B?d2tFS3BRUnFHcVEvTWxhN3lIZTZRPT0=?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	0AP0uU8D/lENReXI98RlGRFwWGC3dAN/SK5CuXocZSj2AO9Ms0hapP6F0qm0IsR/xB9G5LIwlGHoeMrF+8cOvY2EVeA9aG067bqDZkIlzMXm7JeeygymHUEDf7K/RfFvXF0Bt5X2JbD3uC7RIxMwkz2HJuE1kJBke/qNcFBe46nhoY004qRCErsGtfdApAHErgRcoGWry40QB7Mz1hd6du8VAeXbaXjsz7bH+L5sikGNW6xrfJa46MMrD+GGcuPZLIADgAVFTcMBmXX3Ld8F7ohNp5DYplo2EXJlAk7Mq9s64w54cadGSmgXZMlJp/ZFyJ7ygI4lIeMK4b4sJXXs1vYpWj9oNmZuxOpTn0xJsgatH1jdF2Xi7V3j5RX22Qz5ffFP9IZUa8FEJWicRp/9ho1SsZCvUj4jc/ypKx4szzPEf/euHE3UwvOL/TOdjwkF7OdHUBzZdzahX8CY9gD33+QuXtEUUt4eOXoA3x0lj3LrhwUUlBNv7PClnoLldARjI25mqloAhD4LQukeJ6xyhJuAgdH9Pxs5HxFzxx45sTISI0Ky4bAk3m8ly1kWaCfb8b3w0uFEp+7gN3uOxIl7sFNHomAaEhfSkCa4mkxZMwAB2L2VVnhBI+PMpPr1G3rCVD7Gc8r2BtZPMsuLdIyuF23eBbTgfNredQNkJmZKEIr1D2Fh8w1JB1SqD+Ain3EJxeShcGI2D0XkYESKeulosgfKXhs4LyC20WT9UkNMr+8wc446bDeICpAA+bQMfxBJWViqLyUtETvpSWZWYa+uNxqHSW0FdioH/+EjHocEYBtoNEjrf/EszW/HSYtbU7jyfCHbTweFqeAaOjw85oWebA==
X-OriginatorOrg: citrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebaa3c53-b4b4-489b-d36b-08db983beed0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3623.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 18:19:00.5397
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fU+4jIp8Xm5aaAoegtnWzbkUFegp2+/Jpav+t4wmUIv4koIl5dp9rQO0tinymmpW7eKd5CkmIcm2iFxGvQdm78IyKz7MQq28SxvmDhnH//A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB5008
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) -
 x86/AMD: Zenbleed

On 08/08/2023 7:00 pm, Solar Designer wrote:
> On Mon, Jul 31, 2023 at 05:00:35PM +0000, Xen. org security team wrote:
>> The patch provided with earlier versions was buggy.  It unintentionally
>> disable more bits than expected in the control register.  The contents of this
>> register is not generally known, so the effects on the system are unknown.
>>
>> A patch correcting this error has been committed and backported to all stable
>> trees which got the XSA-433 fix originally.  Additionally, it is attached to
>> this advisory as xsa433-bugfix.patch, and applicable to all branches in this
>> form.
> where xsa433-bugfix.patch includes this description:
>
>> This line:
>>
>> 	val &= ~chickenbit;
>>
>> ends up truncating val to 32 bits, and turning off various errata workarounds
>> in Zen2 systems.
> and that patch then corrects the truncation by changing the type of the
> chickenbit variable to 64-bit.  The context is:
>
> +	/*
> +	 * Microcode is the preferred mitigation, in terms of performance.
> +	 * However, without microcode, this chickenbit (specific to the Zen2
> +	 * uarch) disables Floating Point Mov-Elimination to mitigate the
> +	 * issue.
> +	 */
> +	val &= ~chickenbit;
> +	if (sig->rev < good_rev)
> +		val |= chickenbit;
>
> This leaves me wondering: why have this line at all?  I understand Xen
> wanting to enable the chicken bit on vulnerable CPUs, but why disable it
> on other AMD CPUs?  If someone or something had enabled the bit, that's
> probably intentional, and even if not it probably shouldn't be Xen's
> business to alter CPU behavior beyond what's necessary for Xen itself to
> work reliably and securely.
>
> Am I missing something?

There is an earlier exit in this function for any non-Zen2 system.

So here, we are strictly on Zen2 (all vulnerable), and either have good
microcode or not.

The microcode fix is far more performant than the chickenbit.

This chickenbit is something unrelated to FP move-elimination on other
microarchitectures.

~Andrew
