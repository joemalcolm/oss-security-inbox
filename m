Received: (qmail 13317 invoked by uid 550); 20 Nov 2023 20:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12249 invoked from network); 20 Nov 2023 20:05:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=pmlFexYmg3DUJ1O/AMr5lfSdjW9/l+TJuRLy27X7l3c=;
 b=kNF01YP6hnIWQ7FMRwaspImJijFLH6RUpQ5+7E8iQ0jMbVk+6g5XejIfHltSwO2g/S78
 ObhzQMGOnFgICJTM/sFjlL2p+ziA8H/3xmjiSWAoA/mXs45Acf/0mpYiuCGS9kncy20B
 EOii8T6YgJok49plYobQXwdE6LST595Tjyyiyl+cFQkqBPhliCOGcLgce80y4sSKK1kg
 yJnLcoCES24B93RxZJM/zKPtKbmHCIwBoPjHBkuMeBNjlHaq8+1K0w1iJ0dyL3qAvT1y
 eDkds9rvI4AUM9ZciJiDQ22+ayd4mPfLvT1qJpAH7JIS+hvxsjHFL/w/FPymbsY407u0 8Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVtd7szgjEYKHXQSyRgPmHZu2bgPptymvemG0Y2Y5WHvAlgYoCj7H05l1Bm3RBPpQ+FsqHJWYnqgmQTmkyOOIRFhZDrfWh24E1F6C5rkMbcqQaimytY6rlVVSTq13CVXadAY5GUpTyQ5ufTFVwd77fHlGpizC8EG1dhnZsHxOCd8+Ggd/c8KOF1+b/+j0ACEKWaz7A7YLywRO53U7W3BrYiN/F1rY99jsAWkxl2BBTzto8enrURsC5p6R2SjZnnfX2etdRNCie/hlxq0e9QjO5xfHOdHp0fRqo5TvbB7Tr3rIV6Zf61oeKAVDqSYA1QQ1BfbnN+VgO7AEcjCYGC8+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pmlFexYmg3DUJ1O/AMr5lfSdjW9/l+TJuRLy27X7l3c=;
 b=TgAoHOypD5B3i3mxgDDPaDMbuetm8lPPyFzfiQLGeh+nJHLHfOkum2LgR4eiPQ/vTHWGno+9Dw4Z2RZ21LAa/Vvf/bAZdbTzE+ggCuNKfOl4+ql3cOOymwd2C8+OL4h7crds4EqYhHxvTcV0PcG5hmsZRRGrCSJfCmpEy82M5EF+yAb59zKKqmYmHQjcRia4BiAAF6ikhYs6yhsIAIVtrZjSC/21peMt3e1uOTqhHFDhteDnCJf7vvliKrz/RyG8ZbsE5NgVLLz4hMwhWZkFyWeSMQHdyCStAxWNkCE9WykOX2b7JmQQHG+hrROUBw/soRBxqsgmUCRbCH38Wgwqbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pmlFexYmg3DUJ1O/AMr5lfSdjW9/l+TJuRLy27X7l3c=;
 b=plK1lHo6Q7HVtIgvTSLqW+F7TbIlfd5ipAy4us9OmtyzWenLKhO7RAqti/axzkjpTkSjyIyLEjg7PFjTjdXpi4pfht+azbWXPXJaCjX0tlX2Ewzwl2w7T1giMVa10jOSF/uz+yzpNzo2am0A1gycq7gl5pZYsSq0+VTZuN5utiA=
Message-ID: <ca835ded-9dcd-4345-a096-ddd9ddcb05e9@oracle.com>
Date: Mon, 20 Nov 2023 12:05:36 -0800
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
X-ClientProxiedBy: SJ0PR03CA0257.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB6743:EE_
X-MS-Office365-Filtering-Correlation-Id: 955453b2-1a0a-4c65-eb06-08dbea0410d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AegzLF9gPgoKo9EyV7aKER2smt49vHnlC7d7sK86UZW48ydzbpHp5/Y2VEdWhtUGF8QOBjRYfusT5q05PYSyan+CeCoYSISSx8Kbl0DnpbdQAaqgKvdelVqkXxOOIxHM0IxLRKdS18lbhO6pga0CKbcJ0B+td5EwaEB0dz/lHuOyoADSjn7YhOvhMlXPy3QHLkN1hj8MPwL01tcaUw97IgWfmAd6FbRdZyaMSVHp4XIcVa5DIsyliUX7BhBiLm0ldTZmIx8uPAexjw1EeOXRTyMGtVYPfhMUjZZpdYOtMbJT2+P0G883e9yGmKuuVCOObyRDz6G5ZK+SQqJ5/HUfva9/TrfWyKHYAOf495ADEer56xIXR7L1Cb4kRTYLwuwy00w+At0O7BWf/VK5wO9xBlRiTVZpNnb42qG8kWGS0WCzp6C0lxNNVfFvCcsmqJ+O7HT/J6ZYVcNyDEKpzviH4I+kS8IqRFJq4XnPB4qKVe38+vsUo2KEJI3wZYWIOSSc2RZjNmtt6rOCEXpgr8M+HtDKeOg9lsjSBPBJfeKYW4mdWpfKRLCNabOu3+JSXAo8JL8hQ/5iFSkB7g4VxV12lNv3lAqbp+fk+Om6iImFXOxIoqkSBy6unDrRwBhGrmkOxh5MyWPToLS+t1QEWSPp4Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(39860400002)(396003)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(83380400001)(6506007)(2616005)(6512007)(44832011)(5660300002)(8936002)(8676002)(41300700001)(2906002)(966005)(6486002)(478600001)(26005)(316002)(6916009)(66946007)(66556008)(66476007)(86362001)(31696002)(36756003)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K0dodHhUb0tnR2U0UW1RR0pid2NvbVlOVlBnRUNSWWE1QWdRYzIxdVpOWDJh?=
 =?utf-8?B?aHdDUEdGcnlSU1lNVHFpVE41aUpmZWNqRzh6OE5TbkJkejVIV3F1eTRLZ09W?=
 =?utf-8?B?eDhSTGV4bFRGQlQwNVNpYm5Gek5NaEZVL0k2NmxucUhpaFR4TWNCYUdvM0lh?=
 =?utf-8?B?dEdBbmsvTXFzbW8yT0d5a2M1aDBYUjZTVGFHVmlxMVViYzZZamkxV1Y1ZW9o?=
 =?utf-8?B?UER2REJCMzU2K3VCaTV5cVdFQllRbHEzTG5DZ2hUaW5ZOFdDRjFlQ0JVUGRl?=
 =?utf-8?B?T3RGNXhtQWFtNmZ4L28ycFVjZ2NMUHljdk1iRjZlRUplUUMzbVFPdk5iSTNw?=
 =?utf-8?B?VnRveHJxZWVCbW10a1l6c29sWVA4aWZQMjZGeEtXam9Jc2FqYkdDNEwxWVVB?=
 =?utf-8?B?VXUrWnVKa1lXMDJUOWVxemV0RXB5b0ZaWU9LUGJOaGsra2YvNGFXWE85ZnQr?=
 =?utf-8?B?N2ZxRWhVZ253TmxtK0IveHlFVXVaY3R6aGJCZEpCdW82NU5iNy9FenI0Ykx1?=
 =?utf-8?B?WHJmdnBwTlpDNHpMd2lFWnNOZi9yTjRyK09PZ3pnQTdEeE1FaFFkbVdVcGhy?=
 =?utf-8?B?b2lNZ2FCcVhzZlUxbHZkdmdFWGVsZGhMNSs3QVh6OVlvcVNCcno0Wjk3QjNW?=
 =?utf-8?B?ZHdKVnFGMlNLNVBjMkUvSnhNY0htQTJtd1cya1FoWHpXVkJQNzZRUFpQMjFx?=
 =?utf-8?B?K2xheVZuYTdJVnZRUG9ZRjFrbitEb2hzeXV4VFJvbURxTHNpUFJnbzNxSzlG?=
 =?utf-8?B?Mklrb2NERGs2N3hYTFhqaFJXUDQ1SE9tcFRGU1l2Q2hmdXRya2JNa29YMzNU?=
 =?utf-8?B?MDVrU3Y3QmR3dzd0TnRMOTA0YnFsUlNjUnI4Z29hS2IvakNxbWlMY25FS2xU?=
 =?utf-8?B?eFZMQmFHNFVrSzhzK1F0QjhubUJ4VHVPU0VCdGFZaXJzTGdCbjh5Y3c0WnFR?=
 =?utf-8?B?ejVqM2Y4cjNSTUdxNndtMm93NXlNb2FuRDdsNjhIalpwLzdOU0tjVkJsVktv?=
 =?utf-8?B?OEt2U2tZUVh2L0ExUW1qRkI4eWtpUkt1TEhOeHhycTJTRW5uRUhsZ1VuMGF4?=
 =?utf-8?B?dER3eVREbzBqNXlqMXYzcWtIczVac1FhRGRic0dqR3NOMFgzaDdXSnRiOHFn?=
 =?utf-8?B?OU15Tzh0NjI5aVRzSkRkbVVuVHNSOHNMOUtXM0pzY0JHYmpoTlI0WG94cFND?=
 =?utf-8?B?V3BWTld0NkNzNUoxTTV5T2c4bUNpVTlOMHZCMjJuL0s1SUNiamVESnVSakF5?=
 =?utf-8?B?Vm1hUkxyVnQrRjBBd3VxUjRUcFdOeWRaUHBuUi9Kb0JDS2ZiMHNlZFl4ZVND?=
 =?utf-8?B?Rm1CZlBaK1ZkQk14SHFYZUVHUHJQOGFCZ1JUVmM5VG5rOXlKOVlBL0RRdXhW?=
 =?utf-8?B?dGcwaEJiSEN6WjE2UTRENTdQYlRseEwzSXRSNE45ZUFTbElkN1QzVm95VEJr?=
 =?utf-8?B?eDZWQUZFQ1VNeWo3T09RMDJmMFlOOG1EdCt1U2Vkd3RhOWlvV3p3eGRUeWhI?=
 =?utf-8?B?bmxlTmdrRXlodHlBZ2JCTGpqQmt6M2tSYTFsREFhNkRNbVVGNVgzWU9ZS2Va?=
 =?utf-8?B?dmlwWFhlVDF6MEQ2VW5rQnk1WjVkcmlRcVkyUlVkUXpESm16bDA3VkZ4Z3A0?=
 =?utf-8?B?SURicUt6cjVSS0lGaHgyZkhBMk54Zzk1OUJlR3FyS0VxUjZTVkN3b0pPOHNk?=
 =?utf-8?B?bmp5dkVhTnFCRUdkQng4U2tiMlpaOVBNczYxQXRXUFhGd0dTQU1sZ3g4RUFs?=
 =?utf-8?B?dUl2bkFZK0ljTmNBeFdnMDhFL3lPZmFXWVpMNkhPM1dOL2dHOFJsaDlLRnNv?=
 =?utf-8?B?WXk0T1hBRzhQM3N2d1pMTDA5ejBPUmdGRmVGTmE0dE5qMXhKYlF3RUZVVlJV?=
 =?utf-8?B?WlFKbXhiaHltTWpHR05GRW5PeVlscHBuV096cTZNRzJrM1YvU0JzOFoxZmtV?=
 =?utf-8?B?V1BJU21tcjZHS1JmeXlvL3J5a0xHNUR2VW1DWmpVUkZTNlZZazBjeGUxclUy?=
 =?utf-8?B?NXg2YUFERGk5ek5zSWZqL0NYckVzVkhMbHI1VGNRaU9NbEZFdXJPbU5FK3l4?=
 =?utf-8?B?TDRSWStSOTQzVlVhTVdGc1BHZ1BkdlZmYkRGMkhwM1VhejNjWlNiZ1IrVWZV?=
 =?utf-8?B?eDFrbW1vUGlkb1BRZG03SjV2bkVwQ1pGWkkzNlFrN2FGdmZFc1hWV3M2ZWtp?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	LtN6MUdntiJuRsuOFzABrp8ZaaIWjbVMEkcsUNJIBLILjLIten0rBzcWyLJOujsOpmguO8lWty+Tw+U5qx/Pd7VaSOHw0EWyq47b+xc117raLuzH3PUXLuLRr1ginxU/lAP4X9wqSrEdghUFkGh4+84XEsAmQWvxgFATptGfnYiTlQOspqO94W6a16o3oyRD/7V6vTEIsh6A52YPv+Vz52uwLrlzye/JLNF52GvQNz7ZmjEsC637D3ONkAAwOoTo3F3XpkPEovLyJQSxAvqxNxag9aItVC9XQMF5T2N4LPciVJq5HzqAhRgtpE+Dzvbr0YyNX/2PnJfsBFk24cQKAl4lxo7i2pk+tADSKke9cPoWpfgnBUFQ62On4+wLnEh/fX20Q80TKnt6y54499eyECFrL60LsPTxaw/6pWIzABr9b/rGMZW3wQMVddpVWxKcrDLebo40Rjr2rQjYXgAqFIaE0co994YoJ/glzAexolfToyHd8MdjQAGtVEhr89MY//1jvim1xvNXTrohEGvm0+DGjM2ClPawwwRHsCZEjH1nmSIo8I7dlBZo3neaYJI6KNxvG5Mguai1HbZVUOdAKE1CLl44Mnu3jWHsJnTaNs/Nv+AX7wSK6lbMxMot74wpH/G8zm9K8VbQo91lzwz4kBDZyETJtpoODfjtkhckBCcAi86uHRVyGGGfiGdPgRmvqaq18yZBV32hmMCSm+eS6q4cYaL+lQuvQK0LRlndjZmtzSwbP3nr4PPCyZBwvKjpmNtO84+4PUfsDkCGkYfutw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 955453b2-1a0a-4c65-eb06-08dbea0410d1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 20:05:38.7334
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fY0JkrOeZ2YkF9RnPxdIQPAqS0WlStHfCjsqYyLoVVnqxeyBOgz5IGbJY3hntf+4C+19mV/3Ik+3f3Ez/cGQDU/vqkyounk++T/slKn8Xfo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6743
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-20_20,2023-11-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311200146
X-Proofpoint-GUID: XBQAmk2fIPrPkPgmUErfrZm8GoGUnoY3
X-Proofpoint-ORIG-GUID: XBQAmk2fIPrPkPgmUErfrZm8GoGUnoY3
Subject: [oss-security] GIMP 2.10.36 fixed multiple image format parser vulnerabilities

https://www.gimp.org/news/2023/11/07/gimp-2-10-36-released/#fixed-vulnerabilities
reported:

> Four vulnerabilities were reported by the Zero Day Initiative in code for the following formats and fixed immediately:
> 
>     DDS: ZDI-CAN-22093
>     PSD: ZDI-CAN-22094
>     PSP: ZDI-CAN-22096 and ZDI-CAN-22097
> 
> Additionally dependencies have been updated in our binary packages, and with them, some vulnerabilities recently reported in these libraries were fixed.

These vulnerabilities also had advisories released by ZDI which gave
the corresponding CVE ids:

ZDI-CAN-22093: CVE-2023-44441
  GIMP DDS File Parsing Heap-based Buffer Overflow Remote Code Execution Vulnerability
  https://www.zerodayinitiative.com/advisories/ZDI-23-1592/

ZDI-CAN-22094: CVE-2023-44442
  GIMP PSD File Parsing Heap-based Buffer Overflow Remote Code Execution Vulnerability
  https://www.zerodayinitiative.com/advisories/ZDI-23-1594/

ZDI-CAN-22096: CVE-2023-44443
  GIMP PSP File Parsing Integer Overflow Remote Code Execution Vulnerability
  https://www.zerodayinitiative.com/advisories/ZDI-23-1593/

ZDI-CAN-22097: CVE-2023-44444
  GIMP PSP File Parsing Off-By-One Remote Code Execution Vulnerability
  https://www.zerodayinitiative.com/advisories/ZDI-23-1591/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
