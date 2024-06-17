Received: (qmail 30210 invoked by uid 550); 17 Jun 2024 16:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30157 invoked from network); 17 Jun 2024 16:32:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:message-id:date:subject:references:from:to
	:in-reply-to:mime-version; s=corp-2023-11-20; bh=HK1Dd+TiJMU4Gp8
	77r/U0XcQvqL2mm3ADlrGzFMmuMA=; b=EYtQt0k1dDLKquXIFOMjPlRxbbqUwln
	yWRS1zDdgfPGZT91QqQ2JQbOOD34l8lTOc4hzl3pqGkGhztChq1LhcF8wNILfMQL
	FJhP3QvNDhTFOWd/BTUu0QPULyVbeL59osYJEMt1ezMq9/cvNbZk78n8YRyE3OeW
	1GBegSgIKkOiVkS1fsiTlu72f2Qm/N+WyLmyE0thhh/jfvIJe2872OEPJu/y95Q0
	bWjQBdtWK0MCgza/Hoh8kAz/kqc3U+4//oYH17MxAF+1vieO8FWKdLBBd+QV3t6H
	8ATTx9HyhxL/WUb9EIrTFtCTyM3qiYgR/3kTuw8BMZiopPtZ6UsN17g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDeLfO9qsWkSM4U9FyeDvmin1j/VdaxGVX4jKQOcysjec7cdf3MtEpTRnlfUPfRidR9dJ5fIj456fXWlkfSczWTAcxtiBfW7Op2wZc4TbX4L+RevG3Ncsj83YAc7SN2oShUrYaf95DMT7MwT+gcCwGZdOA3y2ad5L3DQSZ0fJC1ARCynPljubrDAyaIZqZpZRxOTYmOeZpCfrKTEIfjbsOgriDhN0LbiqHHloO77pCw/HgCiHTTf17WdnTaeeksNTyAkdWYlIUbWL76GZQlgs4GSsYaEMqsDcdTnZ53ytOzOMcTlklMQ99eQq3qPly+ZiYQL9WtsBny6i89D9NmlVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HK1Dd+TiJMU4Gp877r/U0XcQvqL2mm3ADlrGzFMmuMA=;
 b=QgERfJdPpPq10cR9vmnovzSXQ3gzvLxGTogDZIF41UY2D/4qmA/BIdjYdyhJ6TXWUtrxQSYilBZHW/axx26zAVEFNAFoSp13PcnSZzOPT0cTeZIreDbMhGhLRHFL6YVzJJk+A6BeLwulS3Kxd4DwOdOziFglt+Ep68ho/f5A3nC8FtGszuooBa+2lNHLSxg3k4lGzbuyqGtr72lk7jOKbILkTZbiH8BP7bMQt/YVO9J9uziY76Ab/DcNAJ3yDgTeeJnlF2EQ8CStBOJ0bQTKWPZpNT5HgXd9vPrW/cYiD3IYqWTbdSxrXQ6Es+zfXT7nFj6opZf+7/HjlJX7+HHQsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HK1Dd+TiJMU4Gp877r/U0XcQvqL2mm3ADlrGzFMmuMA=;
 b=tuQxMduDnil2YLtiDz/bJmIP+9AtojD/3zwb6PzZNkMU3cIxqjR8VWoBUz0xQhEKOqAy0mMdPPTWVSLy57bkRILMs7nJ9D8GBzX+lg3hlzR2m6qCu5NsLIQyxky7gQhtxMYclBuUqbXW+VJF9yhbtfRYslXQud0lk5Uo/UIkm9s=
Content-Type: multipart/mixed; boundary="------------31HZAeQPC6YXH9jVl4nerJLB"
Message-ID: <b5876539-f429-4fd9-9efb-4da4b1c72d24@oracle.com>
Date: Mon, 17 Jun 2024 09:32:12 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQpTne0i8zNOCQobeY0tiV=HqXGJJFPHbWC-zoUd6fqhg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <CAADqWPQpTne0i8zNOCQobeY0tiV=HqXGJJFPHbWC-zoUd6fqhg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQpTne0i8zNOCQobeY0tiV=HqXGJJFPHbWC-zoUd6fqhg@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0032.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::45) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB5835:EE_
X-MS-Office365-Filtering-Correlation-Id: b084d656-bd46-484d-b8c5-08dc8eeb0b6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U1Rjbi9uaStVSmpoSlNUOFZnaVRUd09OZjdtcm5NUG8vL1ZpdVhxb3dadHBp?=
 =?utf-8?B?ak5RdDljY1BVSE9rcnNDZmx1cDVGUU9lQkc0S3RPbkZscmhEK1FsRGx5bWho?=
 =?utf-8?B?MThkb0xod1dwOWdRY0RCWG1TVWV0WHRkNEF2QjlVcGlQamVEa2tIQ3NwSXVS?=
 =?utf-8?B?aHV0SVBkY2FRV3FiWXhtaHdXdVpYUjlibnRGb05kQmp1ZUkyeEhUTmo2TDNr?=
 =?utf-8?B?c2RvaEFYV3VEdHBFTmZmUTROZlBtMFh1T2o1d09QWEp4OWRTNWdXdm04T3pZ?=
 =?utf-8?B?WGFWYzU0czBPcGtMV2VhbnpHQkpUb1dVbDNNTUVldStCUUYwRklCM0Zsb1Vp?=
 =?utf-8?B?UXJYSys3eitmMjhuamhHcHl5T0wxNDlqeVE3RlB3LzZYVjdsN0ZLWFV0anNj?=
 =?utf-8?B?czQzUTBPUE9iQWtoT3dqN0Rzb0dYdWowSjhzdFUwY1l5Y2l6SnhjUmNQVytr?=
 =?utf-8?B?blpWUkZiUmt2SFRySEdGQ3NWMnArMjgrSHFsWjlGdktiS0ljSUV2S0JWNkxz?=
 =?utf-8?B?dnlJUTgzSTV2UVdxdGsrdGo3eEs1aVVPZGtXSHpjQzNvSVVCVm9IOHFCTUtq?=
 =?utf-8?B?SjVwV2k4VGM0MWlJNXd1enZCaHFVeGpXRzQ5YnlGblJ3OCtxZytVL3hHaEJR?=
 =?utf-8?B?Q0d1eUtyaVBjNndNVU9xTmx5ei9HVHhwQUNBNWxCVW5yUnpreXp4bmIySjZQ?=
 =?utf-8?B?ZVRHcWd0L0w0ZHFRWEluWWNpZ3ppczF2Z3RieW1Rbzd4VGo5U2tTb1J0WjJB?=
 =?utf-8?B?NnRnV0JJenhXZXFtUG1jZW5TV3BwTGVuVVFLQXFBRkp3ZEZYNWhlMlJiSnU4?=
 =?utf-8?B?UnZZV3J6V2h1QUJick5OenRxSFlTU2c2OU5TZlZhQ1hLU2V4WGZNNXd6Vzg1?=
 =?utf-8?B?T3BML1FGRTdOM3UzRWdTRUl4bWNRSEt4UHlObVNkTmxXR2RBM3pGSy94TU1Z?=
 =?utf-8?B?cGFseE92TDF3a05oczhnWHlIWEd3d3U5RFB5NkIzWVJ1YytJTU1IZXI4RWpw?=
 =?utf-8?B?YTFwUnQ5MTVxM01YV1N2YytVaUFSYk1pemdtQ0JPMjJSWDN4YWp2V1lGSkdr?=
 =?utf-8?B?QlVDdFVoYjdhZy8wT21yYWw0UExaelV3aUxyU1o0RS9jY3ZLZERKS2x0MG56?=
 =?utf-8?B?VEZsR2ZXc3Nyd2VTemczbXZNQ0xsbm5nNU4zUEs1bDVIaEZmNDVyRnN6Z3Vj?=
 =?utf-8?B?LzZaRW11VTUyOGJYaWxhVU5RaTZmenNUTFZuY09JandzVFhrVC9paXVBU1hQ?=
 =?utf-8?B?SHVySnBOUDMwT05xMTFSdG93ZXVJd1pqQjJWcDJ6V3ZsWHBmYUhsVFA3cGo5?=
 =?utf-8?B?UVkwZjhIek9GdnJOTURMVkFFSHF4UDNhK2k1azZqN3o5RXFBRVlyQS9vbU1w?=
 =?utf-8?B?Z3B5WTE1Tmh3TTJBaWFJeWpHVlpKN3F6L1lkU0drcVkvTFpkWjdtWTVuTDda?=
 =?utf-8?B?TnNnOHBaSGVyajIvdUJBQVdVWG1UYWFPT1pvQ0RER1JYNks3ZjlLZkFLbmxC?=
 =?utf-8?B?V05jTkttQ1R6a2EzbVU3UXFCWERYTUFKZGRCWExuUkhTWE5HQzlnL0ZPajZB?=
 =?utf-8?B?d2VaeGtCMFRjQ3JEWFV3Y28xd2c0ZjIvUENoQ3NLb1grVWVOaWlwT2ZMK2I0?=
 =?utf-8?B?N3ZKbzVRUEVJVFNUTlpVc28zakFYTE9sRWI1Zmd1MFdnU0pUeGZhaHhKQ0ps?=
 =?utf-8?B?bk5wc0ZWTUZWYUQvQ3grUHVETHNYZ1FXWE4yVmpyby9tdUtHOC9ZZWlRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(1800799021)(366013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VVN6VXZCZnMwTS9tNGxPc01mWk5uMGlPRTdWLzE2RnpZQm9tL3BhSlhRZlg1?=
 =?utf-8?B?SDZoa0N5a0NRK2RQd2lLVkpuR3dzMVRhRFJiWk1sN1FMUjhpc1RyVzliY0Fx?=
 =?utf-8?B?anZseStCNVpEWEx4OTFQREcrZW8wQ1hlTWVsZGMwSmozdVh4bmZqVGVQN1Jx?=
 =?utf-8?B?SDFxaEZJWXpFU3ZmK2FLQkdOaXk0djBSank1Ry93MzhzcVJyZUs4c3R6LzQr?=
 =?utf-8?B?Smcwb3ErWCtvclZTbjVaQnZuMitXQnBKRytyMElGRHhQMkUwRGVvUFREVWpz?=
 =?utf-8?B?Z05XYzlpNDIxZy9zR3YzM2NOTkVraVBwSWxQV1ltTlhNUkRoQW1ZeE9jOWNl?=
 =?utf-8?B?cVBPbEJSTjJHalpsa2NzNURhZWVRdXk4M0dreER4L3JFUUY1cUZMRG9qd2RH?=
 =?utf-8?B?VVBjK3g5eUpHUDMzc2ZMS0l1Q0kxL3FiLzlNZysxMjBVYkVyL21kTTJIQVZ4?=
 =?utf-8?B?dHdkYWNkeDZPSFArTDN2QXliWUNqemVQRTV0WjdFdVZCUWNjbERKSjh5KzJa?=
 =?utf-8?B?QzlVYVdCWENGUkU0N3dINllxM29PbWlNRXUwNU84dHRwM2hldTNoVm5RdHdM?=
 =?utf-8?B?YUxXM2RRYTR2Skk3THI3aWpUN1o1Tk9VcTNRS3diQytZbEU4NUJwdE1CdVpH?=
 =?utf-8?B?UWc4Z3lOMEV5MG9CUkZkYUE0OXhtUzFaY0pxWjlCcFR6MVdwN1NuUkM1cHZn?=
 =?utf-8?B?Z1BmMkxZQlN4U1RDdnVLdFI5MjNwREFtWS9SNlNWY1hoRGJjL3E3TkxML3N6?=
 =?utf-8?B?MHovK21xMTNrT2FlUlI3RkMwaFNyRmc3TjR0YkZJNkhEcVhTbCtYUy9Lb29Z?=
 =?utf-8?B?Wjl0VU9uV05aWVRBWW03VmdOczVCcHlmSnlGVURsRE1WSFVmeEZOa0d1ZDF5?=
 =?utf-8?B?cEM0TExpR0F2OVlxVDZpTEJMMHFpOTlvOG1xS0xnNVhvU0VaL2IyelhaSktZ?=
 =?utf-8?B?TzJZTXkyRlRjWDRrb3ZVRzVGNCt2RkpPanUxTXJZdFdhenRmUER2MFV3UDVL?=
 =?utf-8?B?YVZBRFJWQTIvWE1pVFlramlleW1JcmJIZEs3ZW5LRFhYNGdBZ0IrZGw5NWJw?=
 =?utf-8?B?NDJJMEp1b2c3R1FTY2dneUY5bC9yMXY3aHVWTHZIVDZqc2ZZQkxqdStSRTNK?=
 =?utf-8?B?RElYRWcwN1FQWENTSGlFQTdrQkY4TkxMSDNWeVlWZnYrd1FWY0VaVXJaTXQx?=
 =?utf-8?B?Q1p0RmdCZUJ0RVljeTEyeVB1TGk3ejZKWWpVNVRkdzZzb0V0WnhaZ2NHSFBi?=
 =?utf-8?B?M1o3a2VtN0t2RWdBdzhsODBDVldmQ2dMMzlvWlZEeXN0S2hUV1AvZW1icHRv?=
 =?utf-8?B?ZG43bEdCZHBRREtQZFpJb3ZoaXZlWUNuTXBHbFRsSEtvbGQ2bTM5LytJYnhN?=
 =?utf-8?B?ZDNNS3Y0Y3doNy9MaEM0Zzl0WGVzcERrN1hrcmJqOEhPVjlNdHJKRHNQellB?=
 =?utf-8?B?Y3NqSURsSHRsMFBnckFSYU1PZmlJbnF0QnRzb0xkVTRoV2JFbytKVEZHWXVD?=
 =?utf-8?B?bDlXVGRHSHhwTUxiWFlhNEFWcE4rWnYvNDBERG5uVjdGek96YUN4bVNWSjJ3?=
 =?utf-8?B?aUZvdGowMDVCdWpKV1Q2dlFhZXNkZzQ0T01lMldGNnRhK3FWYVNVS0J4eEto?=
 =?utf-8?B?MjBKWEU0dDltUGFzT1Z0THAwdEFOMlorRXA2NXFNRzFjYnNzenJvcllkZjl6?=
 =?utf-8?B?aURMc0h4TzhvVlhMS3hlckdqQTRKckNKbzBpM3JibHF2THRoWWFxNDFzSkRk?=
 =?utf-8?B?czhMYWVoTlhsS0FuTWpOR3JiVEZrdnNEWENvK0FsQWxTNSswRGozWVlIZTc3?=
 =?utf-8?B?cWQ1OWgwVkVTTnYrSkZhZnBTVjhybjJaQWxHZnUzRUNnN2pZQ1RtRm91YlFQ?=
 =?utf-8?B?bWNrUTJOb25NNVZWUWtkYnpMN0JLSkVpL2ZhN3IwZFZwcVlONGtWV2xMYlpC?=
 =?utf-8?B?Z1VsZmNTMW5NNmhmbXNlSjhPTGlCUEovWEVXbkNxd3FNL3R5Z2dDYXpZMEFq?=
 =?utf-8?B?MmJUM0NHZG5xNHQvdlRFcSt1TjlGamNlZlVLMHUrN3hwdWdERXN1MWtGbnZV?=
 =?utf-8?B?Szc2REszbjI4d1Y5TEpGSDI2aXRyQUtiODNpWVpxS0NNV20vTFNKRWM0TWRk?=
 =?utf-8?B?dVUyQXY0M1M4VVNkTHh3cWoxU2x4eDlSRkJBb0E4SGpDL1kybC9PMEdGdEQx?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	D2AUnCLkPTvH3VdJmQK7zdz03cm6mqxI5EQeE47zbkkgOw5RLsurSgeGtrOlHXruMqXLwuh3eHWjBD6bfJjFN+aJBPbtjtDGyJSpCbKrr+sb3JxKeyPXnFq8kkur58/Lo78q4n3vMfLr4YwO1VSHlRGObGX2rUlSoodL0jGuyS49tXwSTw0RA8sHQx6Th9AdZPMiEq81HqyGMrgLgGzX/hxERuCPrvguLNmTPCqsCihqGBbYjlyx5UYJNy+ZpyBc406i7R7IcEgr0jZFqon8yZty0BoL0xX5HuR8xjaUK56lOy3E0u/qmOE7qNH0wRIH4A4KfIXSALui/k64pFnlJMkchigHddvX+euBmnUceBAHC6vtbGfCNtIhpvk9H1+NXFkzBeZ+3etEoye7VmB/g1hhlEg/JTbhMilEWYd82hPjWdKFiI9dQxOPTlQQrVyzrISurFiFwXemgnBWExq0JKDDSHdyibrLpXo0wmOfCg6Xz+IcnlwD0Q16XLjYcAFGgG9XW9PsOsBmvidcz7JS9EJiNvAqZk5g4+mFwyXbRFT2bsDomt+TBhddD353fUtWsQVCQ7IyeBqeq4DFwjhetRbFLQhw218V8bXkiLFSisc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b084d656-bd46-484d-b8c5-08dc8eeb0b6a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 16:32:14.0865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YI6QpLEGrFaPRfg+kA484KwmLWy98+mfHAE8zGEfMb8QjWHXRZhhyUOdQ/5S03ZYP6LsTAuYdq7a4LDvrBiEhtF/Pv3c5+Zh7VeaxoZN0r4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5835
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-17_14,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 spamscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2406170128
X-Proofpoint-GUID: 7v8oreseccdnUsUlN0w4--V6OgDqwz9_
X-Proofpoint-ORIG-GUID: 7v8oreseccdnUsUlN0w4--V6OgDqwz9_
Subject: [oss-security] Fwd: [Security-announce][CVE-2024-4032] Incorrect IPv4 and IPv6
 private ranges

--------------31HZAeQPC6YXH9jVl4nerJLB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-4032] Incorrect IPv4 and IPv6 private ranges
Date: 	Mon, 17 Jun 2024 09:01:18 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



The “ipaddress” module contained incorrect information about whether certain IPv4 and IPv6 addresses were designated as “globally reachable” or “private”. This affected the 'is_private' and 'is_global' properties of the ipaddress.IPv4Address, ipaddress.IPv4Network, ipaddress.IPv6Address, and ipaddress.IPv6Network classes, where values wouldn’t be returned in accordance with the latest information from the IANA Special-Purpose Address Registries.

CPython 3.12.4 and 3.13.0a6 contain updated information from these registries and thus have the intended behavior.

Severity: Medium

References

   * https://github.com/python/cpython/issues/113171
   * https://github.com/python/cpython/pull/113179
   * https://www.iana.org/assignments/iana-ipv4-special-registry/iana-ipv4-special-registry.xhtml
   * https://www.iana.org/assignments/iana-ipv6-special-registry/iana-ipv6-special-registry.xhtml


--------------31HZAeQPC6YXH9jVl4nerJLB
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU2VjdXJpdHktYW5ub3VuY2UgbWFpbGluZyBsaXN0IC0tIHNlY3VyaXR5
LWFubm91bmNlQHB5dGhvbi5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBzZWN1cml0eS1hbm5vdW5jZS1sZWF2ZUBweXRob24ub3JnCmh0
dHBzOi8vbWFpbC5weXRob24ub3JnL21haWxtYW4zL2xpc3RzL3NlY3VyaXR5
LWFubm91bmNlLnB5dGhvbi5vcmcvCk1lbWJlciBhZGRyZXNzOiBhbGFuLmNv
b3BlcnNtaXRoQG9yYWNsZS5jb20KCg==

--------------31HZAeQPC6YXH9jVl4nerJLB--
