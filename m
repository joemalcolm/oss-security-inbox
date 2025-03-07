Received: (qmail 11533 invoked by uid 550); 7 Mar 2025 19:58:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11500 invoked from network); 7 Mar 2025 19:58:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=hRoTS1B3WGFzjEeU
	DMe7mjzPkO8WGJru5Y11a8QlFd0=; b=hr4zo4QSnnHiZjArs5XOEir1bjOczxNt
	V2ZyqIeX9E/yxVLDZGc71pMuL72mSQuL0s4Ly5yaYTa91IM3drt1HUUZP2p/x0fF
	FSRcqFxU8NKxJ8XphYqVdO2E7slywnRtCD8yC7g1ISoxM8/d49b0KGXUMYvCThtS
	+b0s5hBBv7om06z4j8fIiSh8TAhUW6SjFvKNSUaCrrsVh4vE1wws2PL+tndljWyn
	u1v1NvYN0bSA8qPD3EOPZBG4rXGK7iZxGq/Jgbn54lh/bGxjrW+OvNTADIzZDA3d
	znW8gEf60E3nY+YF+A9auslg0aVXJaTa1v8KEYyPTHPmkgGyZXeV6Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WLW3rRGKTGfHWvKHU1iaaei9xna7PSuuou2rW9uouKFQGKrTpk4XLxSbxY+Ymtp4OwYUkX3LjeJ7c3YoSuY13dr91cb/PyrxWMhIrTvbQ7ENwOPLZqfRVVEkuK+VsURTxS6SnyHtQpqBtJX4lcTGVRJRoMDvX761zk4Sc9vUMchNGDp7It2VFEdgWzoV6i3XyrYptsiq6vt91MG/jsHDPXLAHHNPfAxMrs0YNixH/Tp9V4vGidAO4GZMvrQ+Ay8uoKM9CBPJBSgM861GUXuC9Kimd66kFCy4iDfSkgMVeLBIKNXwsEVT4/LBfnY4Wf+cKTa5GxMzpFEr12NDb9AGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hRoTS1B3WGFzjEeUDMe7mjzPkO8WGJru5Y11a8QlFd0=;
 b=hXg4KD3485h3prVEsb8dRoldInhCYoVzHQdvav1tg5EB2M90yHbcx8nazfeTXfJYyJml/WGvFTWtTs2jYPJE7mU5pAmCBX2w7Un0KmRup1v/QNJcrjcJPq5Kc6T6FKp5QpXg5Gre/cNKvlt0Rz50DOyfYnNyWyr90Trh2M1w3REmAXf2nlr00fB1P5ycAGcIP1J0b8M3GgH0NJTEy/mnS+0qF0C++z3bVOcmLqSdQ4TfZCPvJOuJoLPYVZsWT8yEBPEA3EXnuXI1G5GHxm0SouAEPe+k+232+4ISLNyojeekxMCt+8cARHTQtK0qx45WKH3mH6KF8vctxWr7d49iyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hRoTS1B3WGFzjEeUDMe7mjzPkO8WGJru5Y11a8QlFd0=;
 b=bDTUE2qRWxRywCn2XBrsVwAcX8cukzBOfBGQ9wjfoJMqt+gwsmfbdM+musxZmVmeQ/scA1RyBdN7MddGzl3DapZlrZ0u0DVuahZyJ3ZiPcedLuxFBwhEdpdDu6QQPVMo7eh3MsIG5S7lqQeMPAwi9q4cpTMHRDvaWIhHozyHMqk=
Message-ID: <9c97b732-93db-41b0-916d-7b3aaa17afa5@oracle.com>
Date: Fri, 7 Mar 2025 11:58:20 -0800
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0767.namprd03.prod.outlook.com
 (2603:10b6:408:13a::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA0PR10MB6891:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a970ba3-5d86-426f-f709-08dd5db26b62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z09WbUR3UW82citVSkJYbVh5L1lhUnVoSUNQR3QwQXVrU1A1dnZEWStaOUd4?=
 =?utf-8?B?TlFENlBSZHh4ZXpNb2ZCK08rL3lsVG9YS00wbGRBeE1GOUh5WUNSd1dibE0w?=
 =?utf-8?B?VGJ6QjZZL3JZMHhYbCt0aHFRLzhUOW43YlVUMi82U3Y5Y21xSW05Ukw0SnZx?=
 =?utf-8?B?clVpRUZoNGNXVkIrWVhYMENURC9WOVFVbHowVlluS20rOWlkYlBWc1pBK1V6?=
 =?utf-8?B?cTF1NWJrNTV6L0J1TUZOVmIvZm9TK2U0eFFXTkRMc25Tc1NJOHhSeWlOOVpm?=
 =?utf-8?B?QmczS0J4d2p5blUvdk9sSTgrNWZoWnBsSFo2Wm9pcTdNU1ZnQmg3Y3NydXB5?=
 =?utf-8?B?VXc0VlB2WTFrcTFua2ZZSGxrTUxJVEZBRnFaMmVzcWhEUzB2N0txa291MVdt?=
 =?utf-8?B?YUNUZlhpbHJHUDI4S0xjUGgzbGZSLy9vQ0ZwQmplMzBtcnV3aU9VSUI1b3lZ?=
 =?utf-8?B?RnlONFRqOGlMMHpIWjBONjhxK0hUTzEwTnl2aXhUQU5JSjlmdDgwUUt0b2Y4?=
 =?utf-8?B?dW9JTnBWbnAzQ0k0aDhXK1pMMUhvbXpYMUUrV0RyOUdHeUhLQWxwUThQSXVR?=
 =?utf-8?B?d2UvenBxTlRhaWt4eTdqVlh2L1c3QkYrMnJ6ZGpkeUtIN3Z6Q0lkM2JxRjJo?=
 =?utf-8?B?Nm40OEIyUzEvTEZWVGdDcTF5akpORHN6cXN6eTJpTmxsQWRwalk5VU92eW9R?=
 =?utf-8?B?ZldkN0JhaUlRaGsxamxBMjlGeFlmS0NFRU9JUDFyUzQyZXpzR2M1T3RSdHI4?=
 =?utf-8?B?TnE0cFRJQ1gvTHpCQ3FKb1lYNE1CMkV6QU9HR2IrbFV4U0xiY201aWI1NFJS?=
 =?utf-8?B?Rjkxd014UEthVFZYN1pkQndoRCtFM3BuRmw4dUs1UjMxSTUrUXJEdk9DekND?=
 =?utf-8?B?S3o2a05yRERNbm9XSmZUdGdIVU42ZURENGwrT3U3L253VE4zdWt2SUYvMlRE?=
 =?utf-8?B?Zlg2cUF3R3dqMi9RdkdycXRoYTJaUnBrN1BNMVFpdzJ1WDNuazIxMVUrNmNs?=
 =?utf-8?B?OXVzK0YzdGhGVDcyeTJDbC9QcDNBd2daTW0rN1kyRW00cml1NVNmR1VtOU8v?=
 =?utf-8?B?VHNBUnVJeXB4QVJzOFdxV3VGVDBzc3VPSGFHM3FldEVvekFWZnRXQlgxZmx0?=
 =?utf-8?B?RGRSdVJoanQya2RkOHJpNGNVcnBhUnYzb25PcXlJZnFjU3pHemtQcnRqSmMr?=
 =?utf-8?B?R28zNVlwUy9BZFVUQnE1ZzlBVVkyNU9HR3JocE1nNkhTcDdFdi9DT3lodU1D?=
 =?utf-8?B?WGtBdlhCbnVOOGROTHpiT0x6RWlBWit0NW9TQy9hZll5SUtiWGpQRWpsb1NW?=
 =?utf-8?B?VVdNTUpWSVFsbzltS0ZMSWFIWmwrODN1VUhtYk5YMklFc3JYb0txTkFYMDZ0?=
 =?utf-8?B?VXVJNGxUa0NHRHQyOXYydXpLU2R6V0pTUUVuQlZuZlloVVNMQWUyUXUvZzZa?=
 =?utf-8?B?OTJ3RmRKUU5NRzNFQ2h3ZFlUOXlld1B6QlRGYzFmYkpFb251Y01CZk0zL0Rv?=
 =?utf-8?B?aldoM3RTNVhNMCtpdjVVa0tJYTZZeWRuanRJU3JZMHhqVVZYcVdJTktURGFQ?=
 =?utf-8?B?MkE3NGZpRW0wRHVnODBhNzBZcXA0R1pEMHVLUml0VEhlQXVUdnhyRXR1VWdP?=
 =?utf-8?B?QVo0eDNLU3R0VFpkb0RyTWVSenVRZnd1cFdnZ1NQeThac01USlZCcnJLT1J1?=
 =?utf-8?B?dmJhSk1xYlo1blBFU1l2YjI5azR4TDRjRkgvVkJqOWUwU3VtRWVqcEdSSG5y?=
 =?utf-8?B?cEFZd3I2enZNYkx0SDlJR3d1VEdSd01wdC84MzVmajFuQ29UT3YydFRvdlZl?=
 =?utf-8?B?dmVnSDJpMUN1OXNobVdFUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UGFIZXBod0wyeVA2b3hmUmlNWjRmK1k2azJPN014MXlMUm5iZGNrQXE0QVN3?=
 =?utf-8?B?bjZXczRDbHl5QTIyZm1NakhZa2thZkQxdGNCZWk1VmFjN3R6N1BMaEVvNUhZ?=
 =?utf-8?B?My9SZFBaRnJuZG15ZUU4cTc2RVBlaXZoazZuZkI1bFNMZVgzUkRrZ1JsTXhr?=
 =?utf-8?B?L2txdzdZeTJvcDhCZHcrYnF4dTZlNXo3QVRsOXBmUmh2U203ZG95eHJRZnMr?=
 =?utf-8?B?c2QrKzNjeXAwb0NSS0xpNjhYTXN1S1RqTmMzR3hZRU5uOVozQlg0REhKaWxi?=
 =?utf-8?B?WWFLbStJTlRnSkpwdzZOTUxCaEhodHEwejQ4aE15OXpqTDZ2Y0sydzVjWnlu?=
 =?utf-8?B?S0RJNG1nemYzV0F6YVZmQkV6b0lycnJ6Nml5aWIzYUFMKzdKVi90VXpVMU5s?=
 =?utf-8?B?SmcvUDlDNVN4cnB1eC9zWmhYakgva0dlZnE0bWVwMmI0eVE5S2ZBVG9HMExn?=
 =?utf-8?B?Zm9mYjhNT0UveU9OMEZOM21HTWdSZzRUdVNTZlo0Mm9CRzlsT3ZaOUFsckVO?=
 =?utf-8?B?WXNTRkUwRXJXWHFFeUo3UEJSZTdoaVFMVy8wbVNVaUNZRm5jbW9pTmdwVFhQ?=
 =?utf-8?B?MHYvb2gwbWIzRkMvVmMwdGtvTlYxR3dzL1R2RXp1VzRnbnQxbHdQcmkrRVRE?=
 =?utf-8?B?eXJTT2xhSlJ1ME91QUJJZ0ZqcG5qaHJ5bGJnZjFFNFdJMSt4WkNyQnNRV0Ux?=
 =?utf-8?B?SXRzbGNHRFJMZjZDam5DSTA0NGlFRlFaMkVTcGJwWUVwemdGclNUM3p3ZjRS?=
 =?utf-8?B?MnU3ak9zOWU5bEZQVlBLRElwOGxNYTlUTk5WNngzVEVVT1NxRWY3WDBCZ1Fz?=
 =?utf-8?B?VGpIZExjL2tycHVta2hSMFBZMXVNdUdaYlc2MTA2dHMrM1FaTjV1VFY0MjFK?=
 =?utf-8?B?cHdkK1VjaDZ1OVgzakluRm1GdnkzSmdLZWM3LzRXbHVpTzlqcThHQnZxNy9l?=
 =?utf-8?B?NExKenFvS21uUUpPd09jdGdXT2tYWkttazNCQkxUQlRtRU1BM1Y3RGdPRzVJ?=
 =?utf-8?B?ZnZlU2wzWU0vTklMQzJyeU9UTitJT2p2N0xwZXVDOUwvS2Ntc0JBWHpaMVR6?=
 =?utf-8?B?RWFLbjN0MmMwVUJHSzk1TnlLWmRtSzVaVXdBOERMcWJqdFVBNW9rcndOdU1j?=
 =?utf-8?B?c1pzY211TFl2Y3BGTlA0eTJKQ2tUQklLZ3NOVnRBZ1pabVowMU5jbFNHVkpm?=
 =?utf-8?B?RERIVW1ObnYzMmNQdzBrTStDb0FNQ0RoSFRJRDcwY2psN0VuN25rb3k0VUlM?=
 =?utf-8?B?VWVxeERMK1lNM01kYlEwcWNyVS84OGN1bUtUajhWK00vQVRIclFjUVViV1VI?=
 =?utf-8?B?aTRTejk1M2pFVHBHdUFOZjArYmxqUlFGeERqMGdmRXBob3J5VXNNVFMzSzFW?=
 =?utf-8?B?Rmloa3l2UVRDSmd3R1FHNXFHeUw0eGc5eTJ5QmNQeXZFSnFBeHVtNytydE5a?=
 =?utf-8?B?dEszeVhsYi9KdXJ5UlVDSUNtT01YZ0lSM2l2MjZjNTc3bGdQNTZ1NU5kOEZE?=
 =?utf-8?B?SXlwblV0RkgweXJoeExoc1QzNVd1bUVER0kxYTYyK3BVNGxVVFMwT0o5LzE1?=
 =?utf-8?B?eHExSm9IN0lGelVIMTEzZWlWYWhpVFJ1MFlVZWMzQWZpdnFNS3dXUE5PdFQ5?=
 =?utf-8?B?WGRjRWdKdDhPUnExKzl6ZHVOaUZ2S2NBSTBmZ1FBOUhFcmFtWFhkeHA3ZFJM?=
 =?utf-8?B?bWoyWU5vTXVlRGcrc1p4bWZHSXVNMW0rNVlGNHhaMGNLT1NrMXIrQU5iUE9X?=
 =?utf-8?B?N1lZelZERi9DTHU1QzRZWjZKeFJ4M3FLZnVaa2h1YlhtbWNlK29YYU43ZFpx?=
 =?utf-8?B?aUcyOXNBL3k2M0lvdzRnWVAwd0pTbmVtY1J4dDV2UldqR1FCY3I1RFpaSml1?=
 =?utf-8?B?N0hsOUczOVFubytoUmtlaVAzbVZPV1BxRWpNbjVBb0ZrSmwwblB1SGFuTmhZ?=
 =?utf-8?B?ZUpoMFN3UWxIK2ZtN2d0OS9VaXdxZ3d6K0ZuYXl3U01vbjdsZDRCeWNSVzlH?=
 =?utf-8?B?VFY1WWM3YWJXeXdHUzJRdFI1L2FCcE5CeHVSTlVsN05uQXJMMTA1QjZOajRI?=
 =?utf-8?B?UkU3Z25nWi8vTTB6Z1JBTUVLNzJqdFRvcEY3Ri9VaG04ZDhpV1B5UyswOVRT?=
 =?utf-8?B?bVg4ZHRZclE4K1BZV2VTVEYxRmR3bTJqOWpkNGRQR0JvMGwySDRLenY1UDVB?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6EVnKZR3R2N95bHSL7EkiWEBvz3QR5082Rglbp+ZXqbJA+m/2S0ellKoF+Irr878E4+OAAZMiLXHRvaotLwJLdzrgly8pwX5YIqkL8nlwKdLfHayoJqoFaMXkjfasjE4iz8La550xF6io0/s09C0amgMqj5rxZ05HrAzTNsswU4CpIWM6JGk21GaNhNwiM3iJFJf/PCm/uaM+ACqcvFJfY83jdyOR7YhWWhKlZ5MVmV3zeC0kDgibqeVXf0j4inf7aVJBSboOl93H1QS7hGWh3D/rC3tNwMMVNd3QwdP/AZMuqzQZhZOJWf9ik1ITrbIV2US6aAWRyH/jYyQYXvQ8alESys+i+yKOgwtz2aFNvDu6JcRWdtBYb50gCsjgKHKNk3gEsmJT3rf322KqnSjw9GgmTMiH2FD5oPkTGHXQd2oaJ5rMRPGMaNuMW8vv95gzCNbp8Z4vJGQWT5j30TtpocnJIXvlJ4DmVYkqZKu0xs94NwcIe58eVyP2hFdEWXaZn1XATdZhw4prPG+s7D1AM3BZ/tRZZ5kvYIY2MsGoRACnx6EfTkbv+JrFZY9TLEe8AQjGiYVrokUsrXZI8TAMUZ+DpyHA0ox7Wnp8O1+GY4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a970ba3-5d86-426f-f709-08dd5db26b62
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 19:58:24.5107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qW1ZRq8o/B2ywW9nVdLDrEsyzoTUPhj+0vklhHGGcSNCmOHwgJ+7DdR/QU/0Mtl9Dmjcmac6gNVU7UB6+e8+MIrZOetaOJX5FoaO1a+fiz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6891
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-07_07,2025-03-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0 phishscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2503070150
X-Proofpoint-GUID: cWJgytX9_AFJ5K0gpMf1GRxeXIT__gXB
X-Proofpoint-ORIG-GUID: cWJgytX9_AFJ5K0gpMf1GRxeXIT__gXB
Subject: [oss-security] Go CVE-2025-22870: proxy bypass using IPv6 zone IDs

https://groups.google.com/g/golang-announce/c/4t3lzH3I0eI/m/b42ImqrBAQAJ
announces the release of Go versions 1.24.1 and 1.23.7, including a
security fix for:

> net/http, x/net/proxy, x/net/http/httpproxy: proxy bypass using IPv6 zone IDs
> 
> Matching of hosts against proxy patterns could improperly treat an IPv6 zone ID
> as a hostname component. For example, when the NO_PROXY environment variable was
> set to "*.example.com", a request to "[::1%25.example.com]:80` would incorrectly
> match and not be proxied.
> 
> Thanks to Juho Forsén of Mattermost for reporting this issue.
> 
> This is CVE-2025-22870 and Go issue https://go.dev/issue/71984.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

