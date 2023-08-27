Received: (qmail 21796 invoked by uid 550); 27 Aug 2023 17:24:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21772 invoked from network); 27 Aug 2023 17:24:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=4mU+Xk2Xt1Bn0o5Blsm6jyKBvuEMKYBY8kK2lPxe8E4=;
 b=WH2sJ6wkcXAd/N5cy5CVlpLCW87tE32noeyOBBrgeD6OfvYuOH9+3ilRfZ9cEKPkmnMj
 imsTwZiyrX/Td3FnIZZMasyJvmJBG4hWCLsgQf/wb5NKAqNOeUZEe2JLzIK1BxQb2lfH
 ED+polfnhCWiOwfnXuwhz/v55WdZcmuKQjkkU8D0qlVXBToaYqGDy8+MUyG/a6QRXauz
 Vnx1QImMkqWuvujoTWrFGiMoOOUj0GYrGQVwPorSJVvgsZlC/XxDpN9Mreh3x5zeCQVR
 VrwiiJyjI/U62BwNvyvnYIGF9ETn4CxfCgUYGFiFy5JSr+842oxHdzSpKdLhkIThGlu3 Vg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSZ3Gi3+KcWPxZmN1pVK4IaqG3Ih0j2C1Dbw39zqs3EobBF6c59F0qDmcro/Az+HDVe4f2ojNFL54nQTb7hvjEWv6WsNkA/wfMSZ6mq4RXxz8xFpLrLuCnOe49sYnJ6V6A+dbvNpJl5yGU3T/O8mDLBEHWsveTlmuCtcjiWa2BHW2dTFoRid8yN3Tor67AiFu3b8tCV/kETYDdKw0PQvG5ETlv+M2/NA+/ti+kORTr1wu6CwDiskCma6xw80g/4GOHhtLtrFnUjEa8RharT1m3B2/APKVteWeEpxf6LkUChvxpgP6uZkDgfL5MkxW6cJ3/GjozmHRfaQdbnGT0C4JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4mU+Xk2Xt1Bn0o5Blsm6jyKBvuEMKYBY8kK2lPxe8E4=;
 b=FaDsOIVBR4IyvDkv6PGsBBHqfzWnlu6R0WUOC3aVOOdGuw111eYjzI43y+7yKrIDt3PVw4s/CJFjmv3GLD9y85fZsK1D266ojduA9jF4oHFEUZD1SB/Mkz18xVIBGubxvyCLnilPjDJnFviFrBwbFF625A/qu7cNlSk6Bc1SvdxSbVQMLrm0g/R6b4p/+cLdt/+s4el+wHNhRXZTj3K0Ki9VaiPRPR0/z6SMIf2DlTi+0U4Huhj/4UQbVgB5dkUrlMPr8sGJxJGqdYkb7pWFYTRHmTvuarLYJmV5OnP3Sf496Krctg49uRlAEBlTaL3lNAUEmHreIwbJ8pF0M6qf5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4mU+Xk2Xt1Bn0o5Blsm6jyKBvuEMKYBY8kK2lPxe8E4=;
 b=DCRRHBnCvi3+EoQx9xAx5WZmLWwOWbSRmBPcbqPQaIxTE7rSe7EKGkvYfofixenQm9q3YOvj13sVjchLi8lJd8DxEwbjrszA3Fp57lRo2f4GeGhMUbhvBHlkwZBjvxqTCB2K4WI+pLKTagMEeQQehWPgyiqvBFyql7M1mewxnpY=
Message-ID: <43d13349-8e6b-1a30-5ace-eea0bc505ba7@oracle.com>
Date: Sun, 27 Aug 2023 10:23:45 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, Donald Buczek <buczek@molgen.mpg.de>,
        Solar Designer <solar@openwall.com>
Cc: Vegard Nossum <vegard.nossum@oracle.com>, Jiri Kosina <jkosina@suse.cz>
References: <nycvar.YFH.7.76.2308150927190.14207@cbobk.fhfr.pm>
 <658e739b-c164-c360-d6a3-eb4fb15ae02e@oracle.com>
 <20230816152621.GA8252@openwall.com>
 <12aa367f-9934-7450-1016-fe303c72cc5a@molgen.mpg.de>
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
In-Reply-To: <12aa367f-9934-7450-1016-fe303c72cc5a@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1P222CA0128.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c2::10) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|IA1PR10MB6805:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ca2fb50-553a-48dd-6e51-08dba72261e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UBvL3KAoXdFtuXN28/KrLhXsVZCR8axJ55Hi1wTsUORye/cHG6EcuOWJH4by9Q6iNsfRrj8oChCXUZB/qUyK5FhLlH8plx/mHq9vck1f3g8K7jkDZJJ9tw8JzonxDnKLrEqDg/KQBqSg1NJiAMK/jsXZd5C8nz+jRXh0v64tJQ6XFaCReh4v6QLipKZ5uHBJ2jyTQcgxcQ6uKWBLYUIeOKPoSyEE7RSYSJlHl2HfPwq++FKhAddejnAZp/QPQhFBrJioD4pGvzaF9dYkXYA0l41gx8NwVtdonWsBoPiZ7X08Wbkr36BDMlR8oUo/Wlol2ixPD6pUt46hMwhpIKDXu6Q2pOST05/lRk+7EeHPijJfjnyBuV7g3rYcFsg/blgIudzSO+axMkgba1tLM2HEbAYfF+CHdYSCGzFbieigYbGvMykdjk0M3e+OAukO6YCLXKkTbojQA84/92IS7V89zBLhj2OTOs+uPrv33BrrvpshhKenA9hCXjZmn+64wqPkJKnsN0Qh1L5Iqdvi88HsH2cZlJ9g1kZUJ/Zyy+YIk4cgeKW6RuOwKeUAY0xYDIYbNlm32Bq8W2SJwIeU8YNIbyGr93nZBTGyqBjwL3T/0fxYXO8aqduW/dev5DdpBRCgYsFRjnDo9D0suIkQOhlkfdX5NTVgWLB5MFKaqzCCKZs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(366004)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(15650500001)(38100700002)(6666004)(31696002)(86362001)(966005)(478600001)(83380400001)(2616005)(26005)(6512007)(53546011)(6486002)(6506007)(36756003)(316002)(54906003)(110136005)(2906002)(66946007)(66556008)(66476007)(5660300002)(8676002)(8936002)(4326008)(31686004)(44832011)(35693002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VXdmeW50MGlXdnZWdlVOSkNBUkJOTzJRTHRibm82eFExUUFsS2hrUEF3dDBv?=
 =?utf-8?B?WlJrVWp3djJjRzZRYTJBOHR3Skc5NGEwZFp0NStpb3BwOE9FRi9PK1dIMG5V?=
 =?utf-8?B?Zjk0bU52Rk5lT0Rqb0N1U3lmMkJtVGZOYkZTelNjcUgxRWc4RmkzTHVPNWZS?=
 =?utf-8?B?c1h5d2w0TmFxbGpmbElzQ2pNcU12c25pRm9iWVh6cnpjS3pycFB4ZHozbUlV?=
 =?utf-8?B?VXAwQTg5eVVIZmd3Qk9hSVhPNlVFd3N5dnQxWitBSkNtUE1Dam1GempsVERN?=
 =?utf-8?B?a1ZvRGRoRm1nRC9Pd0tncGNkaERFTDE3aFRGWmZmaUdSa2xUaE9VOVNodEl1?=
 =?utf-8?B?RGpTbDNEV0lSQks2dXhPQXJ0blpHbFJKSVlSU1RObXdwTlVrbTc3NnZlcUtB?=
 =?utf-8?B?NWVZbU82TEdEM1RWUXd1dVU1Z09CRFdmSVBVTXpaV1NEcEF6Um1MOGl6am5U?=
 =?utf-8?B?ZnFGN29XalVhOUxTR29kcjFFb0pwcVlvMFNtbFpyWllMdCtSWE04MU4yQ25M?=
 =?utf-8?B?ZFZ4TkVPTlRHR25XZ0ZNYU0wZGlKQVVOcWRaNWJmc3VpZ2RZNS95V2tnTU9J?=
 =?utf-8?B?dGtHR0lIRmNGOW5MZjdUa0UwWWtpZmEvUUM3eFA3b0NwUUhPSnk3MFZWZ00r?=
 =?utf-8?B?U0dnUldGQml2R1B3NTNLVzllNDBvci9YNVROSFlzS2hqd0lzc2lwRW9ESXE0?=
 =?utf-8?B?MlBzMXlXdnhNR3lNaFNXQmxtY00vMkc0eFVRMzhwUTVNajNNL0pnRTJYV2Zh?=
 =?utf-8?B?dmN0MEZ2bW8zNURUNkE1cklnSzFLWFhNV0FRSkFwMUxESC9jZ0x4RzdoUklk?=
 =?utf-8?B?emtFZDBtU2tVSUVKcGlVazRGM2pjWUt5RXFkRWNiSjFsbEJoUmN5VVRIUndp?=
 =?utf-8?B?c0VzZ2NZaWQyRzRkRkVHellHRmVPK3dYVUZpOTkydmpYMHV1M3NRWnB5SEs4?=
 =?utf-8?B?dk9MY1VSK1JZQU9lUnlLRWM3TXMwd3BCRE8wR3FSMnFVYnZnazNjbytqbXI5?=
 =?utf-8?B?RGt1K3dyWlI1cUNMejZjK3czdVFCc0I3eHZKemxldHl6SDVWQjRNVUZMZUp1?=
 =?utf-8?B?S3NnM2pFa0E1c0xvQnA1eXZDZCtWSFR2YXRPdW4rdEYzWm5RTjFzYW92cEl2?=
 =?utf-8?B?czcwV3JpSWs1aG1XbjRhK0tMbzFpR0J1VmFkRzVMazJqMU9nOEEwL3JLRnhC?=
 =?utf-8?B?VFdvd3dUdEhZTTh0bWNXdXlLN2NnZ3FQU3RzbDVQejN2M285WmdCNzZkVm9B?=
 =?utf-8?B?bDNJVU8wTjA0SnE3bkxMcmlZUmhKSEtJWXE1VzJYZG5zVXpEeHhpbUoxZEpZ?=
 =?utf-8?B?b0NNdWNQQTZGWjl6aVd1K0RibndSTUlmaDN5WjhicEkwMUFaWnBSejQ4bWxR?=
 =?utf-8?B?cHdzcVlrOTlKam1zY2hEd0xqL3MwSWZsR3hEcjlKNGl5clJ2aWxkQTM1Yi9i?=
 =?utf-8?B?dDErQkNQdHhCNjJGOEs4WmNOUHlkWHR4bDhDQ2xQVndVV3dsL0NCMDVQTHF3?=
 =?utf-8?B?VGlWQkJVUWtycHpQYTQxcHg3M0hySlhkSWRMNVJNRmU0bUxnT2RvczBNS0hj?=
 =?utf-8?B?Z294ckhWWThGMXpKUzdSekZjbnNDMFNiUGxxTk01RE5iWWh5bDNwdmFNa0k4?=
 =?utf-8?B?N3grdGNtN1pWMUsxV0dSc3NDK1lBVll3Yi82VFhOZ2xyRnQreGtFN2JNR2RZ?=
 =?utf-8?B?WDRzVnNYWFRGYmJiQTJoYVVDN0J3YmlzbTZiMGJSRGdsc2tEcFBrTVVXaURt?=
 =?utf-8?B?TlBidlE1WER0Z0lQd25WN2ZiMU5MNFJMNnZLdGxZdjRDNis2N3ZrLzhScFJQ?=
 =?utf-8?B?d3ppcjJmWFlIaVh4Kys4Wk9UalBMd0VXY3B3c2tWZHBYRTdMSjh4ZHdMQW9m?=
 =?utf-8?B?VGV4NHMvRzcrcjFyU2trZXQrUHNMYlh1aVBrZzZTdGF4dExWRnd5VXkvZlQ0?=
 =?utf-8?B?Wm9LQlZPTEo5MlRGR09YM1ZxWFIrdFRYMXNROURldEJHd0YwbUo0UHlNQnJ4?=
 =?utf-8?B?MkdVZ0FFMmVkQ2Y1Z3VhVW9tWjhzUTRTcVFSNDB4UDZrT0YzNjhGYVZoM2FX?=
 =?utf-8?B?RzlrL2Y0a090T0VXd2xSdWFYOGtDZksxZmRYQzh4VnZZOW9qMStsc3JpN1Bz?=
 =?utf-8?B?QzZrNnpTRnZmYkYxaDhIZXBjVzdiYWg3RVlmbFBMNW5ZTWJIdTczd2JmdTNR?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	lbwADpFWUMccDzhQJUFQ3j8+Gpe6p3OrRi82gPb/wtDe5cX1atLPB+aqc/AK+bdOyC63V5+tWgVfGIaT4TFmo+Ai/8UcfwWkBtGyyBtwWTRTTmryKLXcbc4wE+TnY0NSVCxiBTF+eoRAhglj4WAihPngNiJYvjvGnmBpHhIlMLbwjqVJyGearI47oKFQk2cTCGIu1AYul281k8QAU+k1/hAu3l5oREqc85Bk81FWwL4g1WHV1xhoIHnr5DsGLwxDTn9Vpk1ch0BM6EbcpY8vBZR8nRXTDcb9qQZySgMZsvU1a7F3/i4HNx3HmyQdc1TWpqbsMgeI+qKeLvCwNCG5HTg2A8PNLiK1sPxbEMd5QRHnteVKE6+AbQZxt+eBmYCuz+9ESo/on8qU99YT2YDiB5NJVU6E3+HXP/coaxRKCuw6unB6U+jrj2gSr65xShkrCj3/25Ze7G7vukD2miPoJe0A9JUvU8SLSiyY1ZDLxVewW3e0QEPkd0k+EmHoHg/jTeS15kCWarWTMnynatJA+iaRINUIu8fNTlnC8gbUFS9INHbMADfUL7VuK+KfBX/F4WlVYLs7nU+A6u6pKhlrO2c1Oko+PIfiTks94+9zIB81P95waa7rGDWLBh6H5+QKIoU5optDYJzzbv7MI7sz1m+3SQHUhaQuaSuJC7DVOg3fK9FChqH3VXw6r74w2AaE0E7jiDEYOM+c0WUeRzt+F3LvzlPuWT1r46jbbkHZwui2bBUvjnPmQCl6enZmlrPNajNID2LVdT5XIde/ADJl03llUcT3iARQEbQ9RlgIHbMnfpMlLPbV8P1EE+ca47jYMf76uKd6nc2U0Ugv6Uw2/kxtPGIeHo9MtXM4NaqoQvk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca2fb50-553a-48dd-6e51-08dba72261e7
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2023 17:23:51.7721
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JQ0HzQ6YlmpMQdGPLiCUrWzyIIchcyT1AIbaoTu9LILTWiP9ez565x4pf1TN8bYWmq+dZ1723p4HtUAscqO4cN3x01g3kLD8/f9ShiXcMyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6805
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-27_15,2023-08-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308270165
X-Proofpoint-ORIG-GUID: zcIza1R7pFrft-YkMb7eb69z9FlPcVHQ
X-Proofpoint-GUID: zcIza1R7pFrft-YkMb7eb69z9FlPcVHQ
Subject: Re: [oss-security] Re: Re: [MAINTAINERS SUMMIT] Handling of embargoed
 security issues -- security@korg vs. linux-distros@

On 8/25/23 04:17, Donald Buczek wrote:
> We heavily rely on the information about kernel security issues published to linux-distros, which we, of course, can only receive via oss-security after the embargo. We analyze each and every new topic on oss-security to decide, whether it is relevant to us and what we can do about it. Nearly all of the userspace issues are of no relevance to us, but many of the kernel issues are, if we happen to run affected kernel versions.

So you rely on oss-security, but not linux-distros.  While every issue that
goes to one of the distros lists must later appear on oss-security, there
is no requirement that everything that comes to oss-security must first
appear on the distros lists, and much of it does not.

One possible outcome could be that issues are only sent to oss-security
once public and not to linux-distros during an embargo period - that would
still satisfy your needs, but make a lot of other folks unhappy.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

