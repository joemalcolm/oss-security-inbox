Received: (qmail 17783 invoked by uid 550); 20 Oct 2023 18:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17741 invoked from network); 20 Oct 2023 18:42:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=eQtApdJnRDgBS1+ziaTqU60JSCoN1u4w/DWlsK2gJw4=;
 b=rPA55TqsLH+1QOqwe4Ek+D3uhOMAZA7Brr96k437dvIw56bgL2r01Ougl+1Zxp4lgBuD
 NdhuQCywHbARw3UgQNeU14znd3doE6VmrChyFBhLJwVPfgsvMyZxvXUPAd3/gSwobz6A
 oJcs4S3MNL20P/1zo6Bz6QzKgL4KT1MMYpOmtmZK/M3mNFnR0rC3Nnzi/3n7swby4DLU
 orLLxsZWFkzSssEXri3S0DAtwXNAD4isdXkhqaCF0xzAjpLgaieawpcVxV3I27Iv+ili
 meWP5hC9od+2kydgSIt8VuWQiYLFXvKXoJjFFx0OJ6lbcLhSgoXQwXVwoAYFqsQuW1BE EQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMeBShK7W0DHAvJFszRoA7i2C/BIzy8dEK64biaAxRt3zv7T7n/Wy4UnMj5BvHdFhzd0cmLOZOb5m+d+kXaZSMgsSoGjrLwUn0kFO9juHSIJKOTm2RWCt0npDsaGF8jLzFsrqkMXqWrRsFn2gCTMSnlfn7+bo13F9cTmdZo6rY5bQkxwzUPrnIiXhu6Y2b2JyRel7pzgl+61xOUa6uCsmKNggMs3nHI0O2ktMiKuNlIOj7vEmoQv/NX8g9S7FwN/DQikXfY4hgvFEp0fC4Uwst4x2AtMrwMA1eca+IzsgijNwdcfRAYVauPTia5owwHz/Zm5I+UnPBOAP/u8UEj+wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQtApdJnRDgBS1+ziaTqU60JSCoN1u4w/DWlsK2gJw4=;
 b=ErR0zIHcn6gk/X/yF8wLQi6uxto1CLLhUKzN87843xHFjJir5HiPnkGUceY4d+X2cIhdtnzTuhxjX1gSqno2gzLhU9sZ4YAIn4trX0FG/nJsfvQrLPIy/33MuLqP+8GLneEImjRygOrNfFtxmhUPM4Fg6/2PP+EDj2kHBPtatWERYLTEsO1eYjoSRU0Oc6zu6a/84k5vAJUCzOoxx+qSrZpc0rSGUqzWYnuGcLBk8y/dTMf55pZxdYYIgnBOW/SEjR8JwHqpPIsGfATfHoJcc1ypErreJjRJzQEVxB93Nmj/wgGTjzijmOuNrGSoMZ59gpmq+SLO9J2XD0QWib/MZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eQtApdJnRDgBS1+ziaTqU60JSCoN1u4w/DWlsK2gJw4=;
 b=WL7DaSnopYh2/plRU1jeRcbQozcT1PWjo3EseqRWxpRayY3QWAzS7QU0yn55NIstKMtW8NxZrrMOu2ux0RNlNwcOURxHEjVoNtqPuBaHUQQflDg2uy7/C+rKYp6xO8znetsDgpIsDWgN5pcmONFgKDHAONt2int6KrbeBdm53FQ=
Message-ID: <fc3a5306-5009-425d-bea7-b1b0ceb3288b@oracle.com>
Date: Fri, 20 Oct 2023 11:42:10 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN7P222CA0003.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:124::21) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|PH7PR10MB7012:EE_
X-MS-Office365-Filtering-Correlation-Id: 69af7139-8eaa-4ea3-e562-08dbd19c46ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8JIUBuAj9B6hcTw6idhGyInUQV328GXbUSGiguWJ6txIscrf5m60HLzWsKhkyIkUDuZ9wdTPYwEjmqQHcjbs/qxCirzL03Ag7iyQGYRIty9yr3c1TY5teGt9M79E142sOkLSg0NS/vZk8SRvMGVoeTW/M4PVOK2Dl5tpsKDjkaXrjI1nrfoj7faWX6mKVrsNnF/GK2eI2t8v4mqJueGyXCiKDfhhskQ8pKYs6+nTG4dYGZorV/vxG3B/x4auCrtUOl3yCOzdpRvbhTOyxiZLky3gp29XoVIgMsEvlskqZpqfNByX+F9KcttMRF9/RjXxVoSIpLs3HOmJTkmykJq3rCdcWccJ59v2nyO+F6U7mBEcFlmX/ptwksnLDsAJZzuxqhzvLER28f+PIpFnAWyiThLuyoNnqnbfaqLxDTAdDF2uKdSdjXSmW5zlnjgjAm7qDyZ+XboSNxZ68SRXwY61miqj8Qq4XhKktLE/dcuTzjX4PkLmZC5ETmRdk8J1USHu4rjw4EQDp3tfVBnzUYLs8M0J2NqmW155NpCxv3fUagS0uu/YUGzDGWWKy5IN/mDGMcjd4zh4GjpzlZD9JLqOuLIwR7ev2ZXUIKuNwG6byQYY27y/D+s2NdDjhBiogFz4Mj1OhGCyg3ZoQjy82gnoWybgZOBCvO35V9cBvlhguMc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(346002)(376002)(396003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(2616005)(26005)(44832011)(41300700001)(8676002)(4744005)(31696002)(86362001)(8936002)(83380400001)(36756003)(31686004)(2906002)(38100700002)(6512007)(19627235002)(6506007)(66946007)(966005)(6486002)(66476007)(5660300002)(66556008)(6916009)(316002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NU84WGFKWisxWG5jQ0NrZ0lMNXRrQkN3U283Ujd3RmEyYXlrdjA0dlNDOGpv?=
 =?utf-8?B?MXRTdWljblJiekFNUE8rc2FGRUd2TzA3aTkxbGJRL0prV2RuQkJyQnJmMG5X?=
 =?utf-8?B?M2k2MVpVUG82M1QzTHIzNUo1M2lnZU1Lelp3alNiY21Cak1lOVdteTdwcE1P?=
 =?utf-8?B?N1dnZUN4QkV2SjRGb1lXMURRbWUyZnhpQWlTS0d3R2lhTlEyKzFWdGw3Wmsy?=
 =?utf-8?B?ZjliVTkzQVVnOStrSGZxb1JNcGJONGJzTFJQOEM1Q0VWeUc4SXJXS0wxTWwy?=
 =?utf-8?B?YnRmMkN5RGREOExPcGpyd1MyMEwzNk5ZWngzTkxWbEx0K0lBVWpUWTVCRWJq?=
 =?utf-8?B?UldPRUhia09XUnpoUjVsOFFueWNpV09SUEMvYW51TWpuNHdONktxYWR0U0Mv?=
 =?utf-8?B?NHgrU2RQeUVuWkxOK1gvM3ZyWEN1dm1SYjM2OExWN2hsMFA4MkZjbi9DeEd1?=
 =?utf-8?B?K1BmamtETWg2b2tiYW0zTVFkTzFGVjBMNkdKbVlxY0FTN1Z1RVF1RFFNL2Vu?=
 =?utf-8?B?NmE5UlBzT3E0b092VU1Xb1QvNEcwSm8wdDVqZGxSdVBDTElPTTYzNGE4S1Bj?=
 =?utf-8?B?TmZINWYrN3g2MGdQczc1WElFUVNjaVArUDRQSkQvcjQ5M0tWV1VEZHF1M3kz?=
 =?utf-8?B?WDhyWTBJajNGTytHZXRGaFEwUWFMNFB4elNKWGFOYm8wL0dCM2Z6alk5YXZW?=
 =?utf-8?B?OTVHak81U1cvN21hOXlrUWUzU2dHczRSUjBVZFd2SUo2UE9SY2FFWUNWbGNN?=
 =?utf-8?B?KzEvUW8yZGFiVWRiVlBuNkhoVy9hOG5kUDV2YmUrVGJzdmZOenV5YnM0bVda?=
 =?utf-8?B?N3QreGUwS0V5cDBGeEd4blVUQkJWT1lNNVZzcUx4QW9pNnEzbFdyNW1GdmVv?=
 =?utf-8?B?ang2WnNuc25oL21DZWNrU0w1TzlPaDFITFdtYitsdDZUM2Z5MkxtdVYzL1E4?=
 =?utf-8?B?bTFFMENUaWthMm1BZlpaYVFXNHJaZkUzOUFHaGxjTVdVYzVpWWthcjI4aUxT?=
 =?utf-8?B?YUt0cmI4dGtOK1hlQkVvUi9TQksrdmlYNjA3UkJOTXk5MGNBNHY0TUJFam9F?=
 =?utf-8?B?VXNUWklYT3dybStFTXI1QnZET2c1VnVkZEpRcWdXY0FEYlhUQWRFenp2RDR2?=
 =?utf-8?B?OTFhR1FNRzNsR2pYYlBtUEEySmFJTXk2NFRzaG5qblp4L2U1U0sxQ0syUE9K?=
 =?utf-8?B?d3lGc3BkRTUrWVpyMGRTYUZnMFk0em5hb2FYeE42N1pPSnJrL2FVZXJwQU04?=
 =?utf-8?B?VDZ5OEVnMHh6d05QbldzVlBBc2E0SDRDaE1EZUNHSTVHdkpqNERORHVDK1RY?=
 =?utf-8?B?ZWtOUWY0cUI2MHhZK29pNmRaYldLT2l0MUpsSDFzTC84QTdOaGRHbHRWbisz?=
 =?utf-8?B?L2tpZ0tLZnpKQVh6eGwyK1RBWGZQZWxYWGpqcTJSeGhpMDJKd25PUVpZNC9Y?=
 =?utf-8?B?dC9FUTZlekRmSnhjVUV2bmJRSis1UGpBUVdScklLYVloNXVrR1hseHBURWk0?=
 =?utf-8?B?NC9tMHRPSEswb2pNZkkzQVQ3bk5kd3J5UmlEZFYrblA2ekNtcGdaVEVZcVZF?=
 =?utf-8?B?L2NyVTRaNERDcm80Wm90c2RMTWRKK2VKVlRVZ0hjTmF2dmdJbjhYd1ZsQzAw?=
 =?utf-8?B?cUEyMU1OdlpldEFhTjIyUzJxRGF6R0J3QThmWk4xbjdCWXU4ZkJRUk85bWNZ?=
 =?utf-8?B?c0dNMmxrUUJhaDdQelQ0djZyZ0pTaHhTOUsrVGJ5cEd1ME1QNE5DTkRWUVRY?=
 =?utf-8?B?ZTdJb0RtdkVsd0JZajJtVnA4cDAxMmZCK1hkTWVtekpaYjdDc1NaOVZkVzBR?=
 =?utf-8?B?TFhINEVRZUF4ZEJ3UENUZllRdk01YkY3TG0vemMyWWdLTEtHc0U0bXFYU0cw?=
 =?utf-8?B?dDVKT1BPYmJhTFlNVncrNkxieEVnWVZUNXI1Q1lvbDhLdzBEd0t6dFBuSG4v?=
 =?utf-8?B?MmFGRmpLb3ZZaVRGN1BUZmJxZ1ZGU2tEQjdHQkZybWg2QmE4QUlRakl2OHNZ?=
 =?utf-8?B?QmIvSXYrL3dLY05FRmw4WHdkMHdyOGdMNGFleWRNRlRNMjNBQjZGR2hIL3Bz?=
 =?utf-8?B?eEZ1YU1Cd0ZBekdPZ0J6dGpUbmIzTkdVMWx4ZzRtcU5HMkh6dWx4RWlYSjg4?=
 =?utf-8?B?L2Z1WEplL2pEa1hONFIxTzNTSHdNQUxvcTlXeWJJU1pjbzRhTy82N2ZlWDRh?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	0Ztl7Vjzce8NpVMaVqA89w0Ku7mcjsHA/krHUTvkVr+B46m0YBCZd4cbROM8xlXsyxZJwyif2tKeZHliRvS/6F2S6DqXRlvtNu+0zjYIiNOkPJNP4qHioeTwhyBKPDtJMEQCS08xxTs/RkITK/IQXascoqiqmKGjst7q0fPgHzlQt3IfSlDfkQPA6N7Z2XJZAuhE47Et7mY/IevKdY88Zc8m4D1kvxcFwViSkuAKZhHmK3UlTJ1d7rg0MX64JcA8utJyk9QRITQKwCxHjua+I3XOzI6gMkuevsiWrZlN0P5CVnoWisdDGuDVftilhgkOnT5t7+iI6o63U2BuBOG0SAASbxtFfUOSsxoisTWe3e003bdyBFlEqJwmR1nGrQjfMOQsEk5s2pPwvD7bYeZlKJFmVtbNVufwwlWijIASVAX96vcYqU9sb3PIKcIdxKxkGZXWCSfRqlZ7EbXmlm/TwHMuZd5VJE/Dyg6P2QK5LBMFdiP/hi1Kr6WuD+bTKEIoNJi90WSb3Rkte4JUYc7u4uczukarVouXkVX3xhbOzZNlzycpaDN7R3ozLEHzV02hWtyNZVe+/W4jf8cxc+YFVuuEpnA8ebkrBE5MQ5LZaRSHG6lJIff6WGEzJUi5kozad8lm7KsV48Lk9y3bRoyhmr6fFljgzyINlphd5otVH6M8HqmdTkywsFokCxhoKq9J8zIr57mlfE1oRy12GSzzWubF5ZMYQxjMwmPxlR971RulPFYUmZU8dUDKnAPwbIu4Kb+dUlbo0JjvLoqv4rGMuw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69af7139-8eaa-4ea3-e562-08dbd19c46ab
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 18:42:13.5049
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LXe1pgTQfyz45nxMXXho0ZAmlBL5x7PKJQ3Ddzv3/JFlB/pJKeT+8z1fAF/09S5y9IjSHg5RqX2hXmU3QzNwhs4h9QNa2/pLtxVpWa+woxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7012
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_10,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310200157
X-Proofpoint-ORIG-GUID: s93xBpgdCP0xjoM91WCIrar6WF5KnyQ9
X-Proofpoint-GUID: s93xBpgdCP0xjoM91WCIrar6WF5KnyQ9
Subject: [oss-security] CVE-2023-45853: overflows in MiniZip in zlib through 1.3

CVE-2023-45853 was published last week for:

    MiniZip in zlib through 1.3 has an integer overflow and resultant heap-based
    buffer overflow in zipOpenNewFileInZip4_64 via a long filename, comment, or
    extra field. NOTE: MiniZip is not a supported part of the zlib product.

where "long" means "longer than can be stored in the 16-bit length value used
for the length of these fields".

minizip is part of the contrib directory in zlib, which doesn't seem to be built
by default as far as I can tell, yet NVD has assigned a CVSS of 9.8 to make CVE
scanners scream at full volume, while Red Hat went with a CVSS of 5.3 instead:

https://access.redhat.com/security/cve/CVE-2023-45853#cve-cvss-v3

A fix has been checked into the upstream git repo:
https://github.com/madler/zlib/pull/843
but a release has not yet been made including it.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
