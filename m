Received: (qmail 11522 invoked by uid 550); 6 May 2025 19:52:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11480 invoked from network); 6 May 2025 19:52:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=d/5tORofgYhvG4Wa6lo1Y6pPcyF9or/Op83ItUXejao=; b=
	JlxmWX+2i7hE7dPfQ2B2PXJ1BQJdLX7LxqM0zEhiX6gnIhlnYMPxqmh5Fcw7hUnC
	jbuGVxaSxEyVGiaIGv3m+R/p3RbEtEPLuhPDyb+42zYwBHPN+mF6M1h0eyx/DxIO
	Ypx94VQ4q6/CSAwM36HCqoSXkSiycPjxj/b2ZjN+8BldWy/wRqw2YkllMgSbyXAw
	4nC+iZOp2ypagBn5Kz1th1HFUnTkW/bIPCKBEIGpBfvhrW0bol7zTVlok6wG/rpe
	ZubkrLhauS2QFPQ8fKVL7XVQFECGbgzuZic+rlsxJQrMYYK6KE33mnZBPD25bTqn
	QeXVXZ7VLDJ8uo1+c/3lDg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bikKZRcZ9xqQokmKzlKHW3SXyT/S26mWds5ziSfxgGfJ0K1Dk7C10zAy67MZV+rzlkf9XlhTovsjNMVIre28eUgJgIOuAgwA0oSKPbdbIjjS88Sw0wgNdB3LYpk1ksCtkAPrarXDVi7feuz87gidGN7JZ5CbsCFQVB1Mswqj5IGZ+6ZYkUikOvbUc9ssXnP0TQDH3fh/5Y0BxEJk1k4rzywTWf0ROnOYYk2Dr3OcdO8PSKr9Q5AyK16tiGtGSbc0SROppnJuNWzS3wseO+vuaBDaVKDk4wuJ2CjUh4iRg2Q0Wfcs6qYlM+4qCB+1x5DX6M1J09lfPOqiDFRqPNE6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/5tORofgYhvG4Wa6lo1Y6pPcyF9or/Op83ItUXejao=;
 b=teOPJjuysOUGtml+ZsT/DmDaVYqLoPmKW8EvO9PS+vwx1/lp76hxl21zAb1tqveHDGXZxq8B23kxZ02bzdzQOTaYTPkzsVaroXXAsgKJsSWRPRVOC9mpm7EuWa0v42kxw1CKAeL06hwcwyknqOtfV/fJJKgfHWMlxL/sJeEnm8F4mejCo185xqJ0vxv7HrojqsBzNbMGnEKySxKsaif4XaKd5GKL7GA5jBtT3tSinTSAJSNDgcF575RIKXs4O8+8GjpCODMEUL6bV+/qvlGsEy8xUNYh8+HyhqXLEyLeJQSaOGtb8IrjJLL0pA5UFxX9IQiKUQYKIrj8TELZsOEiSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d/5tORofgYhvG4Wa6lo1Y6pPcyF9or/Op83ItUXejao=;
 b=PIyUWAM9CdtsHlvq33lQ2eADS/zYxLB+bvzfPTY5/kohbnoIO5E0gmW2WB5hnkiyh4beZUjkKabWCZumvZwbKSBFuZevKPUeMb4LTLUIEkxh3Wd8MTJ6mWnJNrc+RAU76BueITZyVW84EmYOC4lS6iScY0XtSD1M2nA6LgLO1OQ=
Message-ID: <47ecad84-9fa6-4664-b836-2d4321f2bc56@oracle.com>
Date: Tue, 6 May 2025 12:51:39 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <fb7e1223-278e-4c06-92d6-0d40ee4f7e4b@catalyst.net.nz>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <fb7e1223-278e-4c06-92d6-0d40ee4f7e4b@catalyst.net.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::11) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA3PR10MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ceee315-0a58-4cc7-48c6-08dd8cd76b7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UTRCcHBrUk4xcHpMcWtDN3dHY3dEV1dBZ0phN1VuQ2wxT2hNOEdDYzBIdFVO?=
 =?utf-8?B?K1BjbFdBcFRaVFA0Zkt0MXRvQW5ENWRDMHlDWk1qKzlodnFQcW9pdm11WGpT?=
 =?utf-8?B?UjJ5QW8zNW9JZ3JDVG9pSWJJTHdjaVZjck9jcjFVKzlNL25BM3VuaVRpUkZN?=
 =?utf-8?B?bTZFTVFRb0hVV2dpTmpXRHNSWXY3elNUQnR1RGxjVk1QWGd2OGpLYTBRMmc4?=
 =?utf-8?B?aXlvdmg1Mm9yeU5EUTZFdng5Q2RLMEE3VDhvY3N2T1lpNWU0eFAvNFIrTDRO?=
 =?utf-8?B?ZTVqc0pySEtaVDFiSWF6STJjTTlVN1psL1dzQ1UzdjJaOTBUSkM2L042aVR0?=
 =?utf-8?B?UnRkMEhkOU5Ddzl0S1p6RWdTNEp5b21HT1JtVUgvcDBqTEllYUlmblN6M0ND?=
 =?utf-8?B?MldUajU1cjZwQ0l0dEpZeFhpK0ZTeXhlOThyaWN5eG10YitUakE2N3NRSVBZ?=
 =?utf-8?B?bG9Ld3FGbzVkWC9xYjJ2UUpESVQwRitJd3FuSkt6TW1QSmg4dUl5dFBSUTcz?=
 =?utf-8?B?WEc5N0N0N0JqUEJSdmJBWStVU28wbzZiWVVQdWhGWUg3Q2VibGR1am5FN2dL?=
 =?utf-8?B?a2psbDVPMEtjVytnT2ZCQ2xLZS9BTFcwY0Z4YlgrSTN3VERzSTRkWVhURy9O?=
 =?utf-8?B?Z0JYcE0vUzBpdy9UQ2h0akN6MTRQejJISEVvSGFGWHV0OUtza0t3MmcxdGlI?=
 =?utf-8?B?OE4ySTFHMTc1Wis1Y1JwNkdYeDFCZERTa0FjaVFBNWJ6N1IveHB6aHFFSUZD?=
 =?utf-8?B?WkZHL0lSTGdiUzhSMVdhSXdlOTVqNzV1OEN4Ulh6MGhTMjZmZjQxTGtseThx?=
 =?utf-8?B?RHhzRGxDZDN3eXVEY2U5dGJiRitSUHFFaHNMUVRQcjVCZ1g5OXZTSVNMNndZ?=
 =?utf-8?B?OTN1T251YTJXWGlPZTdSbzFUVDBDUmZNc0Jod3NyVk1Jd1d4NGhyTmN0UEc5?=
 =?utf-8?B?ZmdUb0lqU2RUQjRFMm8vV0hHKzkwUzk3d2ZjTEZ6RHpWZGpGOHhWSTRJV3BJ?=
 =?utf-8?B?MWd6QTVVQTd6cWUydEZwVE04NTFZRHI0K05UaG5BdFFjb2FWSVFwTFk5VVR1?=
 =?utf-8?B?WjdNbjNTd1M0cGlnc2d5VlRRdXRuN0lsaWJSaFJZRmpvV0JlVXNRTGxOZW5x?=
 =?utf-8?B?akVBL29GanNJZW1ZYzhGN2t2aGFoU2doSFE1TGRSM3RNZHNDMXhkRmFtRHFs?=
 =?utf-8?B?cURmalpXenI1MTArRXpCeTVPRWpORGQrRkYwZUU3N2R2ekdPd1ZOa3BCcFhW?=
 =?utf-8?B?OEN1OEt3cVVibmNXcU0zY1VGZmhITENGbkdIMUJFRXFxakdpbG1jYkY2SDFh?=
 =?utf-8?B?VktwbHl1cnQvOTVmMUxGeEZvMnRsQ2pxRFdFV1RUb0lBYmFWb0hmU1JZWHJx?=
 =?utf-8?B?aWxkRStTM0J4NUdQdWUxT3V0YnBaQ0l2aXp5V2FYZ0ZNSDJsU21MWWxZOGtt?=
 =?utf-8?B?K3VrbW0zTFBxTXkyY1lrblUyQWpnOHlybXlaa3lYN0Q5Tm1GRjN1WlZKeDF5?=
 =?utf-8?B?cjFJN3QyR2FtNW9Xc0xTYkd0N2ZxTC9DNVhONUNoUk03MU9pZm5wUVMvdE13?=
 =?utf-8?B?eGZWNkRoajRaMWl5QlFoOW9NRmtRR0o4SnM2TE1WV0FCMzZQZ3hOVXZZTExD?=
 =?utf-8?B?aXFhSThwWWZvUXY4L1R3VlBjUjRVeVZZRkNjSlhXS2t0akxJc3ozK3BLWk9V?=
 =?utf-8?B?VHpObW1DZGNEQlNqb0RaVitBZlA3dkJLTFZ0VjNwU0UwR2drVXI4RkVVRHFy?=
 =?utf-8?B?QkdIMkZiaVRGY1V3N1B6b1hrSTVyczNpSUJ6dWJBWE9BN25TN21oNG1xcTdQ?=
 =?utf-8?B?L1FnSWtVQmNYclZwUFpxaUJUYmxkN1ZGQlBYbmpxY3Ezd2VsVWxLZDNZUXJO?=
 =?utf-8?Q?7ssNZ/4gnslQn?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eUFIWVhoVXl5cXVWNTVBeG5qQ003am9VNGZRYUNRZWRWT2NnL2IwcWQvckZN?=
 =?utf-8?B?eEpRbVo5eDd0S0drVmhGU2g4ZWx2NkNuR2pjbEg4VmFvYm5HdUxHZUQ0d3hk?=
 =?utf-8?B?dTQwYVFwNVN0cTVjbWVqeU1GajFNTzdQeGJnbEFzYTA3YUlVeE1PM3NnT0F3?=
 =?utf-8?B?cFlybmxpNElYNXNGL2h3dGM4QmVGWTU4cGNRdzJRdkx1aGJMaXZNQWtieDR0?=
 =?utf-8?B?NmhaUGl5SEhmMFdYT2pTUjlUVEs4eEM1a1Nua2xXOW42dkpkeDlqWTk3elYx?=
 =?utf-8?B?SnltVWhGb05jWGNMZ0VLSmhKdCtNTmJ5ZzN0N1phVnhGaHRWZ2lzMmVSR0tv?=
 =?utf-8?B?aDd6RkdlaW9naGVWTzVSZFVUUXRCSHk1N3RiQTNUcVRPbHI1UmtpbDlrb1Mw?=
 =?utf-8?B?ZSttRStpcEFYOHhyOE45SThrQmVXRTVBenZOOG1JUXVPdEtNMGtBbXpveTgy?=
 =?utf-8?B?dm53U0xaMk5PaDd3U0JsK1FSeEgya1lqcC84LzZpVWxoQk9yRVdyeWszUXFo?=
 =?utf-8?B?M3BzWXptRDRDSXhnakRtMFpTcDNqTThiTTJJV3I3N21Pc21uM2ZpLytRNTJh?=
 =?utf-8?B?OXhraXZvckZubCtwa1o5TFE4WXdZN1VuNTFmMGdmMndFYU9NU2lWNWIxQVRU?=
 =?utf-8?B?b0YzblV4NzR1Vklpa2x3VEdYSFJnZFZ0dDJNeFQxNjA2YW5XOTdPWUh2Z2xy?=
 =?utf-8?B?VklrbTdlTy9SaFRtdE03QVVveTJQUnVnZ0JwUkR0NDRpTkprT2xrUGFvZ2lL?=
 =?utf-8?B?a2gyakFnV0haZjg5YjBrWHhOOTBRZTVoQ0RRdmlpYmJnUENXcE45QWJaYWJ2?=
 =?utf-8?B?MmxlQnhuOHhsLy9kY3Z2L3hCS2tQWndnWU5lcytBTjk3NEFQd0hXSForZEFN?=
 =?utf-8?B?YThsUnlWenZXbm1CRGF4aHZzVHVUY3FEZW52M0FCZDBWM2NTbWZ0dm1pT1hx?=
 =?utf-8?B?bU1PVk5mczk2cG1uRFJUNm9CQTNDRmd4ZTlEa1lDb3ZIcE5tNlVNbElHNy9Y?=
 =?utf-8?B?bFh5dUI1VS9PNytscm1oamdRbmZ5QzM0dnhJclRBVGxybkt6OUJyaEg3bnFM?=
 =?utf-8?B?VTJqWjBPL0xiOHR6ZmgvbXR4NFBWVnZtb2pKNGtUZ3dXNk9MSm8rcWp2Q2RI?=
 =?utf-8?B?YnFOUjZ2ZVBHMkpyV0hLRjh6TFNSLzI2cFhNaEs3RDJZN2VnYVMvcW9QTWhS?=
 =?utf-8?B?TmoyVGRCeWNDeVVRUVZNc1d2NWl0ZEJtN1M0Zyt0cWlCY0JUN04reUVhNmox?=
 =?utf-8?B?dUZSMGtXN1JoVDRPbGd2em40bWsyaEdHaDFMS3d1UHBUbThHT3FhZjJjR3Iy?=
 =?utf-8?B?V1RsbXZ6RUg3N3FBc00zbnhnbmp2VnZJVWtEVy9NWUhuYUJiRjIwc3FyeTI1?=
 =?utf-8?B?WjM1RFNLM1BzN3NGSUtOL0t6ZGhjZ0c2bE40YmFXTGdNaWgyUC8vOWcyaEl4?=
 =?utf-8?B?a0w0TWVnTHdMQ09aSHY1M1QxUndVQkxoTWptQzRUQ0EweFByVEZSOWtYaEdD?=
 =?utf-8?B?N0tYNTNFa1JIbjZFQnhvYzk0M2xjRUpDLzlLcU1YUW9zK0l1N2kzZTA4ckV3?=
 =?utf-8?B?cHEybmVGbmJ0aEt6QnVORUV2QkFkWjh0d2p1U3NDTGVmUEs3T0RZbEhjUEtL?=
 =?utf-8?B?R01OR20vUnEvTnhxQlNCMDBOSkZ4ZlVJMTdRUitFMnVyaE50VXRRbVRsRVhD?=
 =?utf-8?B?NUZlNTdYWnp6ZWZWTW5Zd2pkL3ZPWldaQklZdmpsR1ZBUENWSVNndjd3cGV5?=
 =?utf-8?B?dW5SSmFXK1lGQVBLSjlmUDdLdjhUSUZGMHJ2Znpna3ZaMm1zeDU4eEs2Ym5Z?=
 =?utf-8?B?c0hZanRVT2dXYjBDVWxVdTVuaEpXcWZwTks0QmgxY3BIRHljNTFwQjBMaUxq?=
 =?utf-8?B?QzNFSVNBU1B1cUlkd0dCa243M0E2RExBelUvV0ZKWUdZZ2QvRmJYRVA2ZTdK?=
 =?utf-8?B?VHdEWmRveGJDOG91N1ZSTzJuUzU4OGR3b3k0OEN2YS81RUlxQ2tiemZLOFBY?=
 =?utf-8?B?TUsybW5mL0NhcXF1QVlXUFVLT3haNjRpY0VxM08vald5b2JEUVo4ODY2dVVk?=
 =?utf-8?B?RzRENzA3dWZPS2VpZGpXZTdPYlNpMG8wRG9VTDVKWXpMMFVPVUhhVkIyTlVY?=
 =?utf-8?B?RnhqUjV1WnlCMG5tWVJNWC83TkEraGxwNGE3N1JSQ3JOZkUvZjMrMXAxdk5N?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	+1jkfPetqEh9JE44nL+ZUa7SqX8U39G8ygaufIyvik7kfuUqWhz9/xDsf1hspP16GG3LcfTOIseF+DVTd/wZCoxwOMJCIOx5weRAoWCySygiITsmJg+fG1GLc7uNKbkKx6IO9KXxLhMAvTNSNoSMev63A652j51IRRwrX1Uh22d2Ox0iNEtwDhCdLmDqk15js47aTCNQVxC7vNRLtNcjz/WXznVMHoC4fjRlfyoYGXGVA64K+PMfmv5ow7p7uxCEeMZORCMxf1cFy3V5eeaDoj6B8zREDwMhZiOGIXUkB75Ld7uiQLTLva86uz8llM/WM9r9T80DsG4Q0rWqtNdngUvY6uXHpJ38CIaZsp+i6fx+04Ndmf9gjK/vGLnanFp+3mLMPbYXpulS3Vb5QoPNVdGj3p7E9P3aTUtekIG+TMiLAzYic8aUODskArROSETlhdDQsDxaoHJhr27FaK+KjjGeZZv3/gxfD+KUKSCGCVjBJaH4nZyn9WPjp34ufqRUUWyP7T1QArXAUXI3YsoSITPHfMe3rGeAoJYgS5fYC8X3b55enElfLsKqYjJaH7byIXi3pdWMYLi9yyp6KKLd6e2Hq3oDNc6pw5EPT6gfGnE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ceee315-0a58-4cc7-48c6-08dd8cd76b7c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 19:51:40.7444
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ukvE5Vsf1NU5oqcAK+/Q1eGlSf18RDeYzs2okU2FUvvBkspEfQsW20cW01wPLbGOYd6UWKbo4lRQhPYWJ63lkWQ2SUGIdIZ5AY9Gz5XxT5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8114
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_08,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 spamscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2505060186
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE4NyBTYWx0ZWRfX8BOVneCLIOhQ a/e7i1mL07MXIUWmIce8WTnOiybsEQ9SoxcTJbN//2vxU/NuOQ4WLfSfFLuceLKY3+yXk+uMGQ2 Ck08NrsQ/yq6jK9WQrB7W3dDQqxr0p/Kbragd7ERDTGoP5dNCPCHqRv8SmQFSUy2hmpcNejwCCT
 99i+Xum6RbXR4VXSDd/NGdiXChcYhP3NaWdKyM389fs5t9MqaXlyKMK8ZNKO7/0METx2OKvXFc6 KDHEDkauUbmbA+58HMYnYN/+LHG6WVSuFViVYtyAm26Lya4SmXAv+xpUBIHaGhIGU59GLxklaq0 UdZo1GAsshgxtBAOwQvmvgsPiN1czj3emTKcHG1TcS7r9GgNl7Zm1kONy0DHctpc1WZscE+1jem
 CxEPcLw2cVw7nNRDaG3Znj6aeDNksub6E8i9PHpFD2+wS1QpmsfMmfyqqPC9uQw3RIEuh4+f
X-Proofpoint-GUID: XDi9OyEeIRZR5s8y-izD52U2b8bC3olQ
X-Authority-Analysis: v=2.4 cv=EZnIQOmC c=1 sm=1 tr=0 ts=681a685a b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=7EYLHn_AAAAA:8 a=PYnjg3YJAAAA:8 a=pQs5aej7AAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=mumTOXsglyLdFCkSH2MA:9 a=QEXdDO2ut3YA:10 a=GH8-RhGAYbb3X_7dexbv:22 cc=ntf awl=host:13214
X-Proofpoint-ORIG-GUID: XDi9OyEeIRZR5s8y-izD52U2b8bC3olQ
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <=
 2.13.0

CISA added this vulnerability to their Known Exploited Vulnerabilities Catalog
today, so there will be even more users checking to see if they have it fixed
now:

https://www.cisa.gov/news-events/alerts/2025/05/06/cisa-adds-one-known-exploited-vulnerability-catalog

Hopefully the distros all have patches out already.

	-alan-

On 3/12/25 16:10, Douglas Bagnall wrote:
> I don't know much about this bug, which seems to have been announced
> by Facebook yesterday.
> 
> https://nvd.nist.gov/vuln/detail/CVE-2025-27363
> 
>> An out of bounds write exists in FreeType versions 2.13.0 and below when attempting to parse font subglyph structures
>> related to TrueType GX and variable font files. The vulnerable code assigns a signed short value to an unsigned long
>> and then adds a static value causing it to wrap around and allocate too small of a heap buffer. The code then writes
>> up to 6 signed long integers out of bounds relative to this buffer. This may result in arbitrary code execution. This
>> vulnerability may have been exploited in the wild.
> 
> The latest version of FreeType is 2.13.3 which is NOT affected, according
> to the announcement. Recent distro versions (e.g. Ubuntu 24.04 with 2.13.2)
> also look safe.
> 
> However, older distro versions seem to  have affected libraries. For example
> Debian Bookworm has "2.12.1+dfsg-5+deb12u3", which is less than "2.13.0".
> 
> The bug would not be too concerning if people only used trusted fonts,
> as used to be routine. But webpages now embed fonts, and the affected
> "variable font files" format is widely used in browsers. It allows
> parametric adjustment of font properties, described here:
> 
> https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_fonts/Variable_fonts_guide
> 
> However, it looks like the browsers themselves might be embedding
> unaffected recent versions of FreeType. For example, I see Mozilla
> have a commit with the message:
> 
>> Bug 1912903 - Update freetype2 to 2.13.3.
> 
> https://github.com/mozilla/gecko-dev/commit/026f6a947085020cd189dd9af3da00be433a44f8
> 
> I know there's some tension between bundling and unbundling tendencies
> in the packaging of browsers, so I am not sure how exposed anyone is.
> 
> Anyway, I don't see patches for 2.11.x and 2.12.x in stable/LTS releases,
> and the FreeType website seems pretty quiet about this.
> 
> 
> Douglas


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
