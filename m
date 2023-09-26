Received: (qmail 17851 invoked by uid 550); 26 Sep 2023 23:05:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17800 invoked from network); 26 Sep 2023 23:05:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=tV1R4Iu5daEn0CNvQZVjOqns+5fLOTq9I+kD+4MyYJo=;
 b=WrlRtb3DoWv9oxd3KKKLMzn9BkOaVeq9Y39TKKL3uYN4hYzktpmD8rAI5XLJXxsgI3se
 bFpKfVE1oIzNPWpyEqF0LRRO1pumNmCxrt582nvpCFIYt6hWoPGK92BajCF60GHSPcDv
 UG/p8WfmKmEkFDfilAbV0f4J/jXQRme8+8UVWAaVrYHmMuC7JA/otMxfZ7BzQfYkiDFD
 EC/InqqTcZo+FegtNEhRrp8hoY0TS5Swp64t1GGR2JoV8Auth/bLokEQdtqKfTfk/F21
 wwFbbcFdOdT8HxjpuvQqYXQHaHabOXFBKY+JcBR7RRh23e2WMIko6p+waYcsqwAlJiWW rQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8b1RPKTUpPGvGoEAMsK1BPRSa7rpR/6mIrBM6BbUcm6PKZY96UceJBGStN3eypiYIMNd1RGAp1K2NTnB2SbBfAsRa9xSSiJ5MYOTbJ7evOZMhGCccLhH/Hnip5kmEvVnXXz1YeRFQszGBZUT4p28jBt/iwut/98F1UqNVxLboN+pI9t9ffWuYBNUXMSbtZII+yZrMj87Bt7HGSYYllfb6sTKb0zcJuXMcysVBPQ3nrKGTVzroVjXFFT/MLzfS0+EZRfSjH5wqHkzIRU3WPzsXBwYwTyGIQXGP0t3H74EDi/6G56ML8NnpazioQEXH5rvIONTs6ZJnse4FiiHlFLeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tV1R4Iu5daEn0CNvQZVjOqns+5fLOTq9I+kD+4MyYJo=;
 b=g23neEfNucf+MG6xFzTLPrBsjUHgmDZolsHAjVdJt3c9VEbnGz/GbCaLYP3TCq0tXYyg0KtmWnR87lvikGuqCHEexk60oGIrmTZ84m0x9JS+nZBmoQxMFGqSvDnXD5XHZmKSg57zMd2HDLuIGdN6gQDEPchejuNDzYrsqDc+XvbWo472JjBg5XinSGlQVsxjGGL8hYtl2cX5SU3mqMttLzX/ZGR7HUKVIMfq2XnRFFgW2r1r/Y1o+ls6Yby5tx+5rWTUGDw+uBWg5LqKyYX4BpibnR/oGfdbeXCTVadDtBn7kxT7oilmSu7IPcfBBVW6+OkXe7CYKAbbZCKK+adeRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tV1R4Iu5daEn0CNvQZVjOqns+5fLOTq9I+kD+4MyYJo=;
 b=e1ALRncd4cFPIROvT9lAHyA/jfqveM3J+WeoC6XFtybcEEyJ0fTeHZZb6Oz0mh3koVmfMM6h5NnfT1/DTZqdBWApGNMNvF/yDvAU/0YXHR5S2fUe90kpTGIDQwfqhbGzADJi1uov733uNNbPWQmO3YqnW4maf2d9droPo6K4e48=
Message-ID: <dd528c33-b4a1-4e4e-b8f5-7103be42ad95@oracle.com>
Date: Tue, 26 Sep 2023 16:04:28 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <20230915210906.GA22532@openwall.com>
 <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
 <20230922172755.GA18909@openwall.com> <20230922214006.GA20989@openwall.com>
 <03F95D3B-FB70-46AC-AC19-9709599B8318@mnx.io>
 <20230925192334.GA8663@openwall.com>
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
In-Reply-To: <20230925192334.GA8663@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM6PR07CA0065.namprd07.prod.outlook.com
 (2603:10b6:5:74::42) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|MW4PR10MB6509:EE_
X-MS-Office365-Filtering-Correlation-Id: 684d46e8-fea0-40ec-3474-08dbbee4f17a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ME62bIG0jMh3oKiErjGe4VXVOZdHGP0sXnvSh8KvBTdwDVUr96jpDUHd2w1LbU3s0ErWjvtNZ+QQtAv3RMXe4PwYABMXk7GxQQdtI7ch5uZ+UPR57p7o2Dme1lpiiyyzLZ4lCPlVSDdoVlQO4kuqBcpP5az/cEZEdVR3labjf1qsvXT8JOsHddNgocX3n4QWW5z7igqrznKms3G0Y49JM41SFhD3wmGG44/Lw3Tk9Q2Pimg6Fm+f4I6t0Le8YB5nsv9QCh+xnNZ4Ggc6f90YTGp9k/J3CdALXQF4Kd3soke3NRzcT8DK1MVYWx8g7BVwnuOXl1PBHuGfFNjU7q0Yb1wayG3e6xWonXFe6LCDvuOpvs71Vjp+q3JWKBoQuuoMKoRWqh5hQs4U1u7Ga91g7TJB9n6yWr/pZz4xpDwjtSA6oYIp1dYA8uLAdmbB2YLD9Qbl0ff9Hxt4p08ReLlyA1Ti5QdiKPcSUAH+jub6S+okuNHaNgyXLLx7zel7Kad+Z13rfu84WmT2nu+bZU9td0/DiVCJPIa4mODSXcUxn8ix8hPdpAzEDkdCUeVFt27MOYUewgfg0BXaIuvZ4ADOOtNxsB+MGBB+FISfXmBMzjzfZJ++ByXGPew8kYAkHJ3ADQLwtojqqeqqQkqJf62MIzPb1rpO4YWz893HyQUHWhEAC2VsgSCppDaUkQ2cJDCZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(396003)(136003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(2906002)(86362001)(6666004)(6506007)(5660300002)(6512007)(38100700002)(83380400001)(36756003)(53546011)(6486002)(478600001)(966005)(66574015)(8676002)(8936002)(2616005)(41300700001)(44832011)(26005)(31686004)(66476007)(66556008)(66946007)(31696002)(6916009)(15650500001)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aWx3MS9rZUo0WDVUOTI4MVRtSk1UT3Azem5yOWJFU1ROLzVITVV5Yit5Y3p2?=
 =?utf-8?B?T3RrcUQ5MHJPcmhLa2Zhejh0c0FrbkJmd3J6UFFHRXMwU2FueDZxcHlzQncv?=
 =?utf-8?B?cGV5NkhRN2huL0luUnFrUElPNVJqOENFY2dXZkl6YjUxS1J2SGNQdmhpdFpq?=
 =?utf-8?B?TWFzbE1QZmdaNHhrbDB3QmFMUllCdGFtMnBKcDBHS3k3RWw5N1JuUlI1MElY?=
 =?utf-8?B?SXlhQlZhSW1WRzBURE1YamFmQ1ludnR5STdnazgrVkEwQlkzNW5pSE1IQStZ?=
 =?utf-8?B?RkJmSnFIYWdkQXRpTnNxZzdBNUpaanhzWm1oRjZtblJJL2hlNHJ5MXhsQ3ZX?=
 =?utf-8?B?b3VaNWhsK3dzaG15b1cxMUlqNDVGQ0pKbHlBK1RaNXZraEdlTTFEU1VSWVUy?=
 =?utf-8?B?amNleEVDNVN2RVlDWGJ6WmZWZXpoNmwzWkFSV3MwWTI3czVLeUc2YVdINTZk?=
 =?utf-8?B?cG0zbWs5aU9aVjdxZUE5MXFyMWJoYzREYTMvNzZMcndyOXdQT2ZIeDc4TnVO?=
 =?utf-8?B?ZGxiNEphZXhmR25hV1VFTnE2a0Vkd3h3UWJUNkxnU082SGowaTRPMDBmNDNT?=
 =?utf-8?B?Qk1IZ3ZieEp0UHI3MW9QbkNLdUhhTElOaGh6S0VKeDMwcWNwV3dkLzFObHM3?=
 =?utf-8?B?SnFtWmJzM2w2N1pVOE9VbDdGbWZmNjl3Ti9BN1dyVmM5N0czUXRsOFpiSmsv?=
 =?utf-8?B?QWNJaklPZlgvV0hvVmZWcnJCbThDcW1yMnlURWVXS3h3c1Nab3E2ZEprOU9j?=
 =?utf-8?B?cDlia3JvNE9PNjlLUUFZRGVIYldZeG0yRWN1eGFweGRxakNuTCtxNmkwMXJt?=
 =?utf-8?B?R3N0WTFYNEp0L05vR1dPazl2dkJRTFR1K1lKVEcrUlNpM2tONWFhbG0rU21O?=
 =?utf-8?B?aTUvVTJ3alFBSENTTHJBeHpRZlYxUWhkSXh6SENxL3o4bjlGTDNTREZxd2VL?=
 =?utf-8?B?V3BEa2pwejV5M25Sd1c2MlNRWk9MTTMrSWxKeFFLbW5lNXlxYlp6cDY0cUlD?=
 =?utf-8?B?aXZDdTVaN09rOEU1S0xxZDBINHpIT0l4cHpXQVVhRWZBcTRDWXhOOVVtQTZK?=
 =?utf-8?B?Zktta0dEZU9BMzJjN0pUdFo5dVNSNFFwaHNmb3FKdmdYbjZyc1daTFF1UEkr?=
 =?utf-8?B?Vzk5VjBidHNDWGVvQlFEclY4Nzhkb3FHTWtITFVSOHBucXZDZnU5aG9tTUxx?=
 =?utf-8?B?b21UR3BCN2doM09wYXNON0hhb2pRMC8waFZjc3BZZ2dIN3dXWWFUYnBIdnRs?=
 =?utf-8?B?dDAycGNvcVZmZUhrYnVKV252ZTE3UVljNXMvZ3hTSmlGUlJnT2VLV0pnc0l1?=
 =?utf-8?B?SDdtU2pjR2xabFZSVkdBWTVzL2FpTkRpSDBrSVdkdTg2Y1pLcXFmdEFFS3VJ?=
 =?utf-8?B?V1BkMHRLUEd3T3Vwa1JsYUJSNUIwN055SFFlMm9uTWlzL0VTSEtLSThJY3Rz?=
 =?utf-8?B?Q0xQVWlORGZLVlFKUEFxdElpR0kxckErT1FKNks2SjRUUm9lcnkxK3JQL3VB?=
 =?utf-8?B?MUh1UHVlenJGcWVOSGgvRUxHSUVPZFJLQ09Uekk1UktzM2tBY1VBbnBpaUJr?=
 =?utf-8?B?Y3I2NGdHeGtWa29Zei9QYkR2ejdLZkRHOUJXMWdHYTBGUzAzbG5Ra0c5YWw1?=
 =?utf-8?B?THRWVDRmOGtiZ2h5QWgyelV4WE1ML1VyZVNRc2NlL2VjK2J5OWQ4czdsbFF2?=
 =?utf-8?B?b09qTFErTDVxdjh3UW1XZ3U3TnhFamQ5YjU0RXhPYUU0NXJ5UDdoeExXbSs4?=
 =?utf-8?B?V21sa1dSVmtpQjBFM2x0ZTBEdE9DWkQ3NFJNQkdIRmd4cEROd1R4NHpjUFZQ?=
 =?utf-8?B?T1IrQmNaWmZ6U0lUNk05WUd0b0RXODFuQUlrbVI0ZHhaWVMzL3JMM0ppanNC?=
 =?utf-8?B?Q3hJN252Vk9ZbWxobkdDQmtGUVZhTEdHNksvQ1cvUmtpTGtPTVc5NEU2a3R2?=
 =?utf-8?B?ZUY3VlRPb1J4cDVwK1lwQXB5NVl5M1lxU09tWDErWDQ1aWN6eTV6b2FYL2xi?=
 =?utf-8?B?OEdTQWZoNzNPRjR3QktWeW56YmdWNUlrUnpJRHdpbTlEWnJmWThIWFJuMTNV?=
 =?utf-8?B?bHNvMERDWmppU3MxejB3V0k4ZytnSWlRdDlpN0VLWTl5NDlHdzhPaVFzbEdR?=
 =?utf-8?B?VTMyUWhGNG01MHVHSzBNTStEb2F4d1lFamVhZDFLSm1TQTZ1YU0vUEJPVmhJ?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	hHBxeOsjZpRuvp96dvZtLzR6u4dUYrsxCpzhoGKpTo0I0Xvts3+Gctzr9IbUt4IUsSH6ZKUneTSWrPARTrfnFuQhSJNmE6g2D7KT5GOE8axdyu/Ksa9xFGurkDhur0WBxSz1uhgZET6DR16PeDxNS1EXomdm+s2HdWtGWrao4ra8+XXeFSkO8u67rJAbRrhbxEUla3vU7mNGKy5/WB9szJg8ouvN1kY4SLkTQtd9KYS8v3wVG+RtdQxpvC1NkzfCh6mZdGM3EZqnxEOTQWmeqn5UZHT33XGw6V7qF9uwxAqTECt/FdV5UP12HLH/xq7STEF7p+Z8SpB++NhkIp88CPsZWFY82yE1yMhGEd4lgfTOZBXR2sxMptq0pYvrrShXKYgBbsFgFm0Sw54lyyAodBUxXPkt6AfkY+osRI3HkE0T8UWQOJ2ioy4ZSJj6KeCmor+fjJniIM9oF1IMk1mCxTEIrp63E3LkbPKiK3/DUXoZs4wPfcRxgTNNfPIPZRn8Q2kD+fo0ww9KuDGeYOpIv1VAQYTtH/vOqFicycH3xWOhiv8gisYkbn5jTsWVJbzXZAUg2EKlhO0LX9m0GsZE6DmFC4RGp9BCSflXqs015PLs8UFGac1Zjaqln2+RPTUHNRSemAkzrZfxb/gQMvf1MDzMIhkTjlp5+dBn7La0qiB7uOJy0r3SXED92I/iDJVkEGmmXBm+AN2mjmtwgnmVjXWqLCW1IUMyA5Ih6uYF1NjG4nbCLJ9b9L9TtsljDKRQdxxxQt8SqFntWuiaGhORhhEExRwtvvKeiDxJi+INdg2zsacwO9RDM0ZEoZ0AY+4W
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 684d46e8-fea0-40ec-3474-08dbbee4f17a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 23:04:31.8093
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 830eKoJ3wZhRWCQh90FpFawT0DXPyaBj8BTETP4wc8iz/Pld6ioaYM/NSohPutziiMdmmWOkaplKNdlcKJA6FiCLJsYvePCBIZaWueCDJ+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6509
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-26_15,2023-09-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309260198
X-Proofpoint-GUID: kWLFHtLJ6j7dr866vy7uYjoaBOuJCMI6
X-Proofpoint-ORIG-GUID: kWLFHtLJ6j7dr866vy7uYjoaBOuJCMI6
Subject: Re: [oss-security] administrative tasks (was: illumos (or at least
 danmcd) membership in the distros list)

On 9/25/23 12:23, Solar Designer wrote:
> Administrative tasks mostly unrelated to (linux-)distros lists (but
> relevant to the wider community)
> 
> 1. Help ensure that each message posted to oss-security contains the
> most essential information (e.g., vulnerability detail and/or exploit)
> directly in the message itself (and in plain text) rather than only by
> reference to an external resource, and add the missing information
> (e.g., in your own words, by quoting with proper attribution, and/or by
> creating and attaching a properly attributed text/plain export of a
> previously referenced web page) and remind the original sender of this
> requirement (for further occasions) in a "reply" posting when necessary
> - primary: Oracle Solaris, backup: Container-Optimized OS
> 
> 2. Develop tools to help with the above (crawl URLs in messages and
> produce draft follow-ups for manual editing+posting)
> 
> 3. Monitor for Open Source security issues/topics published elsewhere,
> identify which of these would fit, and bring them to oss-security
> 
> 4. Develop tools to help with the above (automatically monitor Open
> Source projects' and other relevant third-party mailing lists, websites,
> social media, source code repositories, releases for likely Open Source
> security issues/topics)
> 
> 5. Directly encourage upstreams, researchers, umbrella organizations,
> packagers, distros, etc. to report to the lists
> 
> 6. Suggest and provide examples of quality improvements for such reports
> (beyond them containing the most essential information)
> 
> 7. Set up and maintain more reliable oss-security Twitter/Mastodon
> feed(s) (the existing Twitter feed occasionally misses messages)
> 
> 8. Set up and maintain new curated "best of oss-security"
> Twitter/Mastodon feed(s)
> 
> Out of these, items 1 and 3 existed before, and I see Alan Coopersmith
> from Oracle Solaris help with item 3 (thank you, Alan!), e.g.:
> 
> https://www.openwall.com/lists/oss-security/2023/07/27/1
> https://www.openwall.com/lists/oss-security/2023/06/20/6
> https://www.openwall.com/lists/oss-security/2023/04/12/4
> 
> but somehow not with item 1 - maybe it's some confusion, which we should
> correct?  I don't recall Container-Optimized OS actually doing anything
> on item 1, where they're backup.  Please correct me if I'm wrong (just
> didn't notice/recall something).  Maybe we should free item 1 up for new
> volunteers now.

Apologies, I may have misremembered exactly what I supposed to be doing at some
point, and in hindsight, much of what I have done was closer to #6 than #1:

https://www.openwall.com/lists/oss-security/2022/01/25/15
https://www.openwall.com/lists/oss-security/2022/10/12/2
https://www.openwall.com/lists/oss-security/2023/01/31/7

but I at least did some of #1 if you look far enough back:

https://www.openwall.com/lists/oss-security/2022/08/09/1

I've also tried to set a good example in the messages I post on behalf of X.Org.

I'd be happy to pass on #1 to someone else and continue doing #3.  I don't have
the bandwidth to write tools to automate it though (#4) - I mostly monitor
chatter on twitter & mastodon, watch the newly published CVE list, and monitor
updates to https://salsa.debian.org/security-tracker-team/security-tracker.git.


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

