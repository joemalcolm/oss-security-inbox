Received: (qmail 20035 invoked by uid 550); 29 Sep 2023 21:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20003 invoked from network); 29 Sep 2023 21:52:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=y/IdrIVIgfF1XKObKSqSm3O5O+PmGqWxznQJhZs3U3Q=;
 b=y0mqsz4r9s0taEstKzFtovMGJIEZuTnku+5k+WhXr4dglmuGocqxmJKe9D/suGJx0f2U
 BCm+uUsf//IV4hqhy4MLEPZEt3hpPE9JjSB6qFAGpgq3s7TXdPUmanq/7smdUp4DMs9H
 PgONy1H9kV1L9AzzcACV9QBJP78FqAm/E6mSVb43K/pa5ghsjE3HmVOUwzDW4y4iw30r
 YImD/wneBdCsCC5pgA/vu6lP8x9rb0mx7PtbbPf8KjQ97Tsyx/Yg2hEOcioG3VoyfScp
 yg2AO8VQ1BZmLME+RcidM1HvWirRvw2pRkY+bZM11/2wvZpMoM5hmOFI/f5GnBJLRPmx JA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oD6AM3thbd5Qfva6IxcTNfmKxl3U1ybW+kBYnbmSSLhIoF0kUwZFmXtUiEQZoWmPZJukyclHZFW3VJb82elne/IFM1RfN4ZjThKM/QZJJvwb2rXzkC8KJqVnN1D2MlmcmaoCjKBrklT1UDjrfx1kU3uzjotpfy5mX6FrAxM59IJAtNZKVQ9OWTy6eY4KLu87H9JU3WpU9uwZhnED7goP92Zdkom+/VbXEvPBvzav7xl1AAjlXelDzo84Y57Ss8SrOh8PGqrI5FCvHGaVUtUZ9d7TEXSr74xC2RpNtnsUkUEmpVrxxCp7EEY41YBTsvLD/1pZumXFFbEyawZT/DJyzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y/IdrIVIgfF1XKObKSqSm3O5O+PmGqWxznQJhZs3U3Q=;
 b=Q1DuSAV4ETSuCcLoqi6Y5ZqUHPmQumXv7FnVEHPH9GPWvHuk0g6zGFrRQbQPgWo0H2cXAXrPi2r1v5EO8jHP2Q2AJlvwtt0FqJw8v5/DgDYvFnSDXW1H8nZPOPGIdBycXa6WPgpFzRYSBt4bD+YKJawIpL92OBuy/T0YfbNfJXfIPfjc2f0dIw49Vlq6gK4Y41ZQZvvw3N3UR8esTpU0fhyFxUctZ2S16h5BRI+qZ4mZ9bf6NAfL/B7rgKPCjd0sIlYJ1KYltCp/tiopUPvbbIdDS7hcJbfTp0pEofkboIvpeW0rqLnu3m62hNdgf4LpOb/cvmR69WUdGsb2uisI8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y/IdrIVIgfF1XKObKSqSm3O5O+PmGqWxznQJhZs3U3Q=;
 b=CD5QDgvtq+2kBwyw2NnygUiX7koc90uBOH9xCl2cNypNUJWplyWdrqIVmXfj4/9vOY5uHyHZd5TyISH0BXmxa8SZPJnEvP0tqGcIljjrOTheMdezrbl5KB29CSK4CCn6Gy8l7kJD/G9RnF/ja5WwzbCVR0amrmsehzdp59DPcRU=
Message-ID: <7f2a8960-dec5-4cb8-b4f2-d2366c4d9a21@oracle.com>
Date: Fri, 29 Sep 2023 14:52:17 -0700
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
X-ClientProxiedBy: DS7PR05CA0089.namprd05.prod.outlook.com (2603:10b6:8:56::6)
 To IA0PR10MB7303.namprd10.prod.outlook.com (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|CH3PR10MB7283:EE_
X-MS-Office365-Filtering-Correlation-Id: 17a400ae-3da0-43e8-3097-08dbc1365ac7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sSY/5PiA4nCaDS+JAIDOlrb4aBKQ556cBxbktKMAwIyK0/TkdoUHHCQenEEjSQKG0H7xEK1e7cgfuQt7iozSlB59adpE/YbHry3T0cKvwDoJ4V++oyfWZHCkUMhI36VAi8rF6/lqIZA0a8FZdkVfX/8PnFjRTDGuRxpiZf7z749j+kIKM96H4gabg82Or0l+GvqOUFLlW8rWCCVQCRsYTVD1X1DxmfKGU3dOCdLWm61Mf2RrF8s+ofaV/DdKvts74sme47Z39I9FlNgkPoATjE8FlRiMiAxV3VG8wWF9ti4O1OPpGccRVsfIeTyrlI2nz8rfuPj6boZCxAe6UKQEG15Y64kYz4CLj0cwqSK6ZIIYYJKlCc5P5wmz0ccd2LNPpqJ3A2yuBsEUWN5Y/+H/5QTM8zBr8UBk/Dxez5wabAtdaoj03B1bolHOQ4tuJHsJAde/AHgLHnIY7Ri3mEkJx9gEkmHs3dlskYPDWWhw+JoIeUmHm6ycWz1L0Uzm2YpcMCCmnrUt5LYOZno3uCCRV/WOQ3+K0YJ9deqBsEAkWv1VbbeeIwUmalETVKibeTnIIufIQRfUKGiGBAyTt0NkUvcD3VnDCgUDICNf7gTaA5WS3rbR+I620mtmbXOlnSKG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(136003)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(316002)(66556008)(66946007)(66476007)(6916009)(8676002)(8936002)(41300700001)(26005)(2616005)(36756003)(478600001)(966005)(6486002)(6506007)(6666004)(83380400001)(6512007)(31696002)(38100700002)(86362001)(2906002)(5660300002)(31686004)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eUlLR0pxbUNEU0xlOXJjSElBMGVHOGZybHl4MFo5bzcrRitUREpvS2VvTFNp?=
 =?utf-8?B?WkVLRlJhdFl2aTZDL1BWOE9PaE5UVC9uK3RLN2J5dWxFMGVUVHo0YTZMTFJw?=
 =?utf-8?B?Q0RYUlVnK01RKzREcUlFWm16UWg4bjdQM1YxdTNaMkhkcVhRWE03VGpJc0lO?=
 =?utf-8?B?ZUNsVk5UNDF1WVMzRHA2Vis3WDFWZGtPWHdUa0wwL2t0L3U0Q3gyNEhZM1g4?=
 =?utf-8?B?NU8wT294RVVsWnhGbEZ5NWVOaU4zY1hjOWYvbEdER3N4cnNOYkNEdm8zbGI2?=
 =?utf-8?B?TUFtVkd3SXJydUhXVC95c0ZOZmt0UUVhaFdpSUFPcnZqb05DMlc3MWxSWTcx?=
 =?utf-8?B?ZGcvYnB5clRqWng2M2grckFKby9qMGZodkZ3eGsvWjB3NWRabmxaTVhwdjNP?=
 =?utf-8?B?dFVmLy9rTE9WQkFPeFBuNkFyY0g2V2EzR2pLU29hM0NIdGxiOWUwSWthTisz?=
 =?utf-8?B?ZTF1cURDRzZVbXZGcE10cWN6QWlkSWNhSTZwYWo5UE1lNng0cG9vRzhocU9r?=
 =?utf-8?B?b0k0cDRNMm5VUXFYT00vYU9GVGQzQ3FaWTJvRHRDOWlVUFF4cW4xTHkzakN0?=
 =?utf-8?B?TmVKYUhxdCsxZ29oaTdSR09LRkNKZVZ5WCtpbTlFNC9QaVFCQzZDUHhXQlNK?=
 =?utf-8?B?eENmYkVRSWlSQndVek9XQUxKY3QwNFkxRGwzekJVWm1ZUFR4OS9kOHNGY3ZI?=
 =?utf-8?B?dWVXQ1RYTXVLWGU0MUZxZTUrdlpQbHY4bFRmd05QWXdIU08xbHFVV1drVU5k?=
 =?utf-8?B?Z093cEMvZGp0Zmptdjc1QlFsTDNtcERDMDhzOWVQMGZXYXJJZm9rSjVQNEwv?=
 =?utf-8?B?cHczcFRNV1JJRFlWN2ZabmhhSFQ2Q0w1a2NwM25vTlhpRVR1MUpkd1BHYXZh?=
 =?utf-8?B?SzV4dnREVXpkV1BTekdhME9rWkQ5ZVlNT0FOaVhNZGZKMytxYXFLL2xua2Jr?=
 =?utf-8?B?N1VOZnU2VzQ4dlJKaUQ3bi9TR1p5WUdhZS9DY3BtM3FOMm1nV2lWallaMlQy?=
 =?utf-8?B?QWw0YTNwMnVPRDFaelBjRTBQZUprZFg3dVlXL3lYdS85Ymltd0RTcjNWY0cr?=
 =?utf-8?B?NHJUUUd6a1JrVlN6S1RkT3gzRWw0WXVsdUlFRGJZcEloRzRYaUNscTAwdEV4?=
 =?utf-8?B?a3I2S2NQNUs5Wi9IMTFFUVRFVGVpd0VCbko2VUJIUHZLRXVoMXRwc1pqYVNX?=
 =?utf-8?B?RzlzcDdJbm1ra2hwR2VnY3ZnZGs3SkR2Y01TZC9PVUtsckUxb3VoZjZhdUUr?=
 =?utf-8?B?QTh4dTdCSlQvejVTMnJTTWhJVUswRG9lNkZFYk1BYml0MlZJUlhIUkVqMjJR?=
 =?utf-8?B?TjNNTTZtWE1ETlUxT0NORno3ODJVR0o3SnczVHlOUjcxeGJ5Wk1oRWFCcVAw?=
 =?utf-8?B?YTh2VFE2Q2czblFBc2oyK2huSjh6RUFKY2NjMkEvanNXWjU5Qlg3amFIejd2?=
 =?utf-8?B?SXlDUjdqNGJnR25aSWVOYUltTDd0a3FLSGpmQm80SDFEMHJRQXlBa3NSZWk2?=
 =?utf-8?B?VTdKNWtSV2txQ083N0puRXVWTWV3T2FuKzI1WW9oNzNURE5TWTBqUVg3Sldu?=
 =?utf-8?B?aUpSWVkzaXpsc0Z3Q0pEanh0cGFpcjMrQm05Zmk2cGZxSjJEamZmSHVHbmF6?=
 =?utf-8?B?Wjc4Ym9Jc3dLTmI1dFFIaEpNQzltd1M4TVBuMXNadHFxZWV2SmlMOEZNUDQx?=
 =?utf-8?B?Q2ttTWJxaE15bWFWV3J3cXhkeHEzQzJra1A2aERTbGozeDF4dFNHVC9JMnVP?=
 =?utf-8?B?dnlWbXdQT3NtcnZTQnVmUUhzMlJDQUFxVldibTFMQTNvRUNOd1g1dU9kTnp5?=
 =?utf-8?B?NlBoZThvdTZLeXY2WWEvcVFRQmFJdlErMDlJS0xWU3FrU3RYZ2YyLzEwditV?=
 =?utf-8?B?N1dxSGNyMjY3UUFMNnBPMmdCSnVIYW1jbFRRdzUrd3FMeGYxRjFoQVp1SnMy?=
 =?utf-8?B?OXY5OUtJTEhNajQ4QkFaM24vak9KemgzeUhNWUgxL2ZEVnZOLzV6cmhuVS9M?=
 =?utf-8?B?SmgwT2g1dWFBZ0luNnUxQnRGaE94RWw1ZTJUMnZVWGltVE1WRmxuUTBraFJH?=
 =?utf-8?B?WXYyZlUzN0lNdWFtM3JnTTJhdjMzUHpPczdOejVaa2x6L3ZQcHgxSTRNRXRG?=
 =?utf-8?B?b2I1OXpaRW5wYVFuZTRKSFJoZmtZbUZzUlRBU04yTHdMMnN4ZXN0eEpXUXhL?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	oDuPpaDwSjrSyJnm8iaiGbuFh6OP1wdmE51qWVznhG3J8soUJ0ZbQBInNiV5RXQMt1AMn/Q+0NEWMwoYMrbBmVBtIGMBULFGSLnIQ5QLxSO7zNHmlHy6fJpLE4STuu1yKvnr5Vt/3WdbdSzjtLNLoe1ozrmFyR5Slj9Coo/ZMsAkn4LvOxKM+NNQUepwn3sh7pffjfazTk4k5uKZ1aD6Bn15y/rOjBVUzuQ2M2R3uTkoNwsy15tcctflTItBCkLqKAyhaNjGD0CkiclqfaM4Z9RaRiJ1pnNTpvTt2kJw6sZ6BzvhrjHh5PVmDUW4vOSomav8MXwOIcbZ5LZDkMRPBHhhbci0bwKl6Lex5kzkYucI4IYKcRyfSQqwrbqHyG27DN+ua3Ic/ugBDyv2yBVuBjwLUlbK9dGsHhx0nst17EC8lB/58t3BAN/w5IPWFh6yNUE2FfcILrswx4ExvnaPpaAo75XS4vKwV0JR828ZiI3SooK6EOEOwR2BpteOO38svpeb956lx3ZkfMZ/EPWvpXZ1eKtvCb5CNCO5W1E/Mf9ug4z2GDa8QHvbYJgiP2gph9NJZ/I3yJn71113QORO8tokJYGqlo/3YI3/dlGn7qnc6U03ly11hYdddoLSpzQwb50ITgGddrjmj4ImvKmH+QRPRisGdZaTh1WfaUpXqvhKw1Ni+/pY4nUq1irLQtGl1koEsy5vLL9P0kUWH3df+4RzKZQCOVifJIJyV2d17KNHdiwtGuo/ErV5Rh+Ec3NDIDik2LJPUHNLjG09pkEmvQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a400ae-3da0-43e8-3097-08dbc1365ac7
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2023 21:52:19.9932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5hUrvt6nxV1BJO9zxc8vgMWlVuP/zgJqeXPYmy3+ROEnGvi5NWcaQuyP9ipumo1oewysRsSAJz3PP/Ks+NUadbg8KPH6tHu27Mlc3dlx6tI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7283
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_19,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 mlxscore=0
 spamscore=0 mlxlogscore=833 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309290186
X-Proofpoint-ORIG-GUID: BUGTFeeG9EGDGEP61a3fcJbPCNEugCe7
X-Proofpoint-GUID: BUGTFeeG9EGDGEP61a3fcJbPCNEugCe7
Subject: [oss-security] 3 buffer overflows in gstreamer's gst-plugins-bad before 1.22.6

https://gstreamer.freedesktop.org/security/sa-2023-0006.html reports:

    Security Advisory 2023-0006 (ZDI-CAN-21660) (CVE-2023-40474)

    Details:
    Heap-based buffer overflow in the MXF file demuxer when handling malformed
    files with uncompressed video in GStreamer versions before 1.22.6.

    Impact:
    It is possible for a malicious third party to trigger a crash in the
    application, and possibly also effect code execution through heap
    manipulation.

    Solution:
    The gst-plugins-bad 1.22.6 releases address the issue. People using older
    branches of GStreamer should apply the patch and recompile.

    Patches:
    https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/5362.patch
    (includes patch for SA-2023-0007 / ZDI-CAN-21661 / CVE-2023-40475)

https://gstreamer.freedesktop.org/security/sa-2023-0007.html reports:

    Security Advisory 2023-0007 (ZDI-CAN-21661) (CVE-2023-40475)

    Details:
    Heap-based buffer overflow in the MXF file demuxer when handling malformed
    files with AES3 audio in GStreamer versions before 1.22.6.

    Impact:
    It is possible for a malicious third party to trigger a crash in the
    application, and possibly also effect code execution through heap
    manipulation.

    Solution:
    The gst-plugins-bad 1.22.6 releases address the issue. People using older
    branches of GStreamer should apply the patch and recompile.

    Patches:
    https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/5362.patch
    (includes patch for SA-2023-0006 / ZDI-CAN-21660 / CVE-2023-40474)

https://gstreamer.freedesktop.org/security/sa-2023-0008.html reports:

    Security Advisory 2023-0008 (ZDI-CAN-21768) (CVE-2023-40476)

    Details:
    Stack-based buffer overflow in the H.265 video parser when handling malformed
    H.265 video streams in GStreamer versions before 1.22.6.

    Impact:
    It is possible for a malicious third party to trigger a crash in the
    application, and possibly also effect code execution through stack
    manipulation.

    Solution:
    The gst-plugins-bad 1.22.6 releases address the issue. People using older
    branches of GStreamer should apply the patch and recompile.

    Patches:
    https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/5364.patch

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
