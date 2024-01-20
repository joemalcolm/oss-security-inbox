Received: (qmail 3100 invoked by uid 550); 20 Jan 2024 17:00:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3078 invoked from network); 20 Jan 2024 17:00:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=58bJMcVNyDz46NM3Pi23hB77Cr7nrA+qGsS684qWoyw=;
 b=Bm9fs/7O5MhnWSE2b7PIaxKpM/O3rHrliP3lhsIzpl/WGvLOkbqv3UkajB7rWMuXpCHY
 Vk/bT0Qrj2A+vdQZKT/s0/dpxDcsi7An0EH/57qHis3GW+EqIpgn1FqXyuE6kWILHEq9
 OPOzSEHFBYImvC/1AIbjN3A5KO3dlHl9PbuIPeU53JD9M79gzkv6sDWmK8WBw8YR7eYE
 Aa0+ztmBwDkd7m1wB9xnjj8vsmMjmSPL+f/5wK+GGj107lZk7Ub2lxCtsRFRg9KFcraT
 +ZzuyIs0yvLPO1o0PezTFivDSiWS5woVUORP2c07V7TYzMy4aWuVVxoGOnXmnHDXCvZZ 0w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/osloloVAoY9eB3NbGLjmNp8xQcIXRlM01D3raieW8iS+01z1H00YVEXG95w5Zw7SQUfAFKut2Fz7dIoUsLuyTaK+UAUJN4P5HyVbPlrSvGSH6CaNTqB3Cmzg+c3BhMGbnLfw0NkH5k3Fvh23MxvLYmxRsYB+BpD69qs6ZMDcA762zZpLxWSCyAaSN/OH/Jxzf3ESZN9ejztOtHav1Hle9rQf4VHp8PzgEwG6iEj+scWynPsO8c4FrJJDABnN0nzzUn1GFc6t4Jn7O1e/Zz8Y94MP8yG2ftR7WmFAStri9jWSaDdoZJ0XNVhzVZ3EGqwZn6GLSLckrMAcQqLm0jxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58bJMcVNyDz46NM3Pi23hB77Cr7nrA+qGsS684qWoyw=;
 b=Az+9rJb5AdqGYqEeeioKytg7Q9Jp1q13LGoO3vw4/2hDKGzf9T2TJiMr9ItRzKaFtTYiCcPvF8uxWezadJA/jTCJqlq6A+byozlfPkD7BQSjmgg19br4mgQku2K50EPbLzTmUm5lJipc8BB+FlSVUnkNjZ0yPU4TKmItzQRVWztPSVResaav0kM3gSuIeZDpJw0dGK7ci+9eIXNSQefdBr5AhVXowR46Pne2NV+rylzV574aKm5bquejtHYmdyUoRZ4dZS9iKIL1jfSUpoDw5b4vmCDTOQVWG8+NSyg/L1zrWRwvAhrPrDad6wnBWS7NwtL1PEPnZ9X24nq/s4Zldw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58bJMcVNyDz46NM3Pi23hB77Cr7nrA+qGsS684qWoyw=;
 b=zETsTWv9JaCetFbXMg19rvrRAspUHaFrWDSY7nuZemmlLqDNlyIY1LxOQn2rfBHV1Y1FeQh9lAzh+Av4NN9q0zECctDCOZVKCT5xSy5Ky+4nn6ta032Wz6kVKDMy3aTdPIm8C8fus5OAv+aSZi/eQcl3RLmApkUDNLspkZ8Jemg=
Message-ID: <35642984-999e-4671-899e-3b6f93bd7136@oracle.com>
Date: Sat, 20 Jan 2024 09:01:59 -0800
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
X-ClientProxiedBy: BL1PR13CA0003.namprd13.prod.outlook.com
 (2603:10b6:208:256::8) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA0PR10MB7159:EE_
X-MS-Office365-Filtering-Correlation-Id: d9c0ed5f-6a56-45ac-6a8c-08dc19d985a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OF3IdcqrlF+fjZpkTOy+cktlqk4ZwIbdodx7CV6O2fkbOxk6gI+6+ccSG/yIBx1k9K8RfXNYlv1U6o3ylAeQZ6MY1GbkpzyhmJIosxxntaN6XYr6PHLtXWG5onIQrZjmHBaIIYiYCuYYcA5VDEJ0vx1j/7LLR0WyrnpwH3Lo/5jii+8kkRPBDnaiqzizEfIHJXE/d7r8BXhQJkNXLwgTxVSQobmOOVsPP07MYOhpFmzI2NiCgCDsyqie5g3K/68oEXJkfsZpOxicx4dBtFxSoA2mcq2wUQ1uQnBp9DCnI+viBqbQfx8ijqpvWONezdrU4aOh3jxPlcagKG0cfqFM5hvxpXmmAa34UFw+Y5/dIdctPZxJXCYaWnMGk/kRxeVXu/veg6GBOsWrFeF4YRmR1n+JJFHzXxoAH4WAOuAeVZAA6pIRPVegPQBzkb+lZ9HOcOfrYhU88d2bxKwPGsT0RmkPS6JDfy8rNxk0E3Rd1gJeiMrppg+co14a6zsSlAQ5oDzqw5n7Dp9MF2ANVH4N5zIAsA4fRmXJQQDDnRJBlAUoEcrA4FDGAQmR4zVOqWW57p9PidM8rTNPsd3bT6OGzaYO8vaGJatweHuOwLyb8HpM/VYM8DEofWCCgAQh0XqAnmhyFSPMPvmN5Cy6mOEgfxgfjio+K5uNd/DoPyiH6uQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(6666004)(478600001)(6506007)(966005)(6512007)(6486002)(83380400001)(2616005)(66574015)(26005)(41300700001)(2906002)(5660300002)(6916009)(66946007)(66556008)(66476007)(316002)(44832011)(8676002)(8936002)(36756003)(31686004)(31696002)(38100700002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V2dHaEMzTXZRNmI4aW1uQngvd1ZiUGg0elVGb0EvVUhISURpSVpjMVBrdG85?=
 =?utf-8?B?VHFrTkl4dEFib1hoN3dSWHBSd3NHeHhqbXVEQzV2OEpDTldZdVlYakpabWdS?=
 =?utf-8?B?RXRab0JsZkNveUw4b3Q1SmJXYzBWZUROcjRhTk1HZU5mN0NjZEMzamZ1TkdF?=
 =?utf-8?B?VFJwVUs2Q3FqbDVtZzZCWmNmTmFCemx3U1dXbnF4OVNudkwvejEvdGlFcEFi?=
 =?utf-8?B?VjJCMDlNcnMxV3hIU1RqdS85cllTMFhibHZyTVZGL21Ma1dZbFdYd0I3TmMz?=
 =?utf-8?B?dmxnckFobWhCL1VsM3dWYmdyL2xSclhlWTliWXlBYmdGWlFtaHU0NHRFRGEx?=
 =?utf-8?B?QkUra1lUMjJCNEJ4V2VvZ0ZtZXgvbG1MK1RObVN1Q01BOHVvMUxMK0RyUUxK?=
 =?utf-8?B?YnI5ZUt3NEdLck5ocUh6TVdLOTVLMUxJczBDWDE0UnU1Z1JBMnFhNVlxRzNF?=
 =?utf-8?B?SzFJMjRnQ1BxNHhpL25KYUxiMENDWERwTDB3NEJkeEgzMFpFUTVyVGU0cjJO?=
 =?utf-8?B?WDV2NVJSMGpNMm95ditsU2JKTUtqU0JEZENqOVQ3NGpwOXE1VHREbWt6T3Nl?=
 =?utf-8?B?di9SVG9kd013aHZDb3lsSCtjcVdDMFFTWVA1NkJCY3BxRk0veEUyQWxCRlRN?=
 =?utf-8?B?UG5haWlBNEFJK3VBZGh4b3R1WVpXVVBySzFKTUZ2YkFSdllhZHQwYWdrM3JI?=
 =?utf-8?B?amxHV2M3M202Y2NqWHdFZ3FmNVFXTnNRNXlva3l2WEFiSDRwajIxVGI4Y2Ri?=
 =?utf-8?B?cm5MOFFGbzZvS2VwdG0rTHhXYUZhY3dzTDdEdUxSOXp2b2JCRytCTlNnNG51?=
 =?utf-8?B?L21xK01uZXd3Vmh4bGdVa2hheUNvSlFKMHZ4bWpVRFl4Q3JqN01jRGdYcGxO?=
 =?utf-8?B?NmQ2dGtDVlRINzIvZGlMMEc3NDhEZmZQL3Y4RUlGcWJ6REFvMkRnV1AyVy8r?=
 =?utf-8?B?anRIMEhJdDUvU0xWanhUam02YklXRjBFWC9tWGd6Tlc5WFNXREZESm5MOElS?=
 =?utf-8?B?SmRlbzNMeDRjcVc0M1gxS0VzcjAva2JDK1NQbDJKL3ZYenFndlZua3R4VGxY?=
 =?utf-8?B?MGNqc2Z1UnhxYWRwSkdxTlFvb01jSC9rRTFDKzQ5cC9UNThFUW5ocHplYTB4?=
 =?utf-8?B?NVJJWURTeWpGUVRCU0QzTTkxRUFJU1BYYlpxa01oVnB6ZzB2V1M5c1NIaTZY?=
 =?utf-8?B?TFJybmJHMWgxTmY4dEhQTWJZc2lJUW1PYjRtSVpFZGpVMHVzV2YvUTBsMjN0?=
 =?utf-8?B?emtzNjV5Ni94b1dZRmpoZ3lwTEtZdjRhK2RuY1p4STFvSHhTamRiYVZFMC9E?=
 =?utf-8?B?OFAxcTdoVit2V1ZKMVpxZDJaYW5ScVhEM0NNenE3Q2psbVltRm5TaUpnTFgz?=
 =?utf-8?B?NzloQ3lldEdmTURiRkFNMWpoeUd1ZDhuSDA0RmF6WjRFRHpIYXJENXhHZEtC?=
 =?utf-8?B?MUdUeDBCS0JqQ1k1b2QyTmp5cEJhRzJCOHJZTmpVbVVuRVAzbXAvckFITFdK?=
 =?utf-8?B?NStvRmtxRXRBUlgxVXZ3NFNESHZHUlJCVzYvMENQZ1V4Njlnek9OVzZnVUFz?=
 =?utf-8?B?cHFJRXVDR0NYY09UYkVkWDhOandkR2t0aVY4VUNwWnpUd2oxMDBhcEh4TjJK?=
 =?utf-8?B?aThBd2IycnJBVldsaU12VUo3NjZRN1dDRFRkYXEvQkdCZDd4a2xuc0pteks0?=
 =?utf-8?B?TnRsZWJjWmZWd1V2KzBrVnRSMG82VEJXRVdmMnNISVpxYlM4RlluQVNxaTB0?=
 =?utf-8?B?bXhJYU9DaVRmZXc4SWZXOERGWkduaFVoS29oTkpFa2tZZ2o3c0FjUklMNWk1?=
 =?utf-8?B?NWhTcG10dXAyaTFGNlBIN2tPQUl6MGVpcGhJeVNIN0ZkdWtDdGIxb0VMMGdK?=
 =?utf-8?B?WlNURVoyVVZoNVBsc1BKYkdFTTU4a3phUFM5V2VQdkZ0UXY3RnIvNmo0MWI2?=
 =?utf-8?B?VUJqcGhud0pFNGxhaDNhNXg4MTJ1ZGJ4TXQwcXE2NFRRa0xPMnRiZTZmUTA4?=
 =?utf-8?B?YUFSODMxZmpxNWN1dnNWN0NLYWtPUHRFWFJwN1RUd0Mybm5OeFN3Yk1ubkJv?=
 =?utf-8?B?M1VDOWJqdTFlUWVIaHhOdXd0TVIybVA0bnd3NWg5ckMzUzIrbWhUcjAzOWtm?=
 =?utf-8?B?aVBMU0RHV2lEajFLbGlDcG9lbnpGVWhOaEsxeXV1UTFXY1NSMVZ1eWdBNEQ1?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	SPM02mZUeb9vHvyx8+Uoa7RVPtvKDeQ0L9tE7g3ZtR4LsqTNbgY8faDbxJsH2apch5oGLp8tcyqPzCE+O4KpPFl8VdDPGPO+tlC93GP4qogQe8bl+77BI19ywL2m2zUklx38mJvqvMu3dKx9wpFAHmJzGpc8v8al2b4nTvJY5JmXDohIwG1QqUmS5MQG+x04XnhubF9zYcD84vctJMFIhLFBnqfLKGaZcnOGXr2B+mrvmwYHYdSk2cjKQjb5QH35I8Kle+LHnJq9tyb9IBOQV9acvFHO4TERT3paMMeDe78n1zO7gbANZ3fZNyQ9qD/zkQ2YvBSSO3H3u/R2yQf01/mFB0kpnul+G5HHxwRJPtcrcQZhPeAujt76qZsL60hsO7DXcplKctsNGQO3YI/4na5ypYdaLMBSZinxX63FiauYGeneCPCWLbtHMkqZZFhh4IgTVn6nIS6Ab++c3NseMSnIaG9BcQKJXuoEBFfH8ANLlRG70qGV7lcsWW5q+B93NeYNxOoJbXlJgM9gv/buXaFcK6vHFwOKKkufPe0W0+bXJ5htnMfanyoBuR24HUAbHM+6/qTwuzYstYCoF+4HAnsx41LtUmgRALQ80W13/BA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9c0ed5f-6a56-45ac-6a8c-08dc19d985a0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2024 17:02:02.1232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: un4QQaTqVWxpOejLaiI3e5SXEFiIEe28MAtUDhDb1rc20OunqW6HaS8BPcAMYLNT1vKLKBpPAHSlafK3MG7pYjSYFnDl73NywLUB3rRsgck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7159
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-20_04,2024-01-19_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401200139
X-Proofpoint-ORIG-GUID: SiIs8JrV2jnu3Z4txuZ2YG98Cq2ej5sB
X-Proofpoint-GUID: SiIs8JrV2jnu3Z4txuZ2YG98Cq2ej5sB
Subject: [oss-security] Pillow 10.2.0 released, fixes CVE-2023-50447

Version 10.2.0 of the Pillow module for Python was released on January 2:
https://github.com/python-pillow/Pillow/releases/tag/10.2.0

The release notes listed three security related changes at
https://pillow.readthedocs.io/en/stable/releasenotes/10.2.0.html#security :

 > * ImageFont.getmask: Applied ImageFont.MAX_STRING_LENGTH *
 >
 > To protect against potential DOS attacks when using arbitrary strings as text
 > input, Pillow will now raise a ValueError if the number of characters passed
 > into PIL.ImageFont.ImageFont.getmask() is over a certain limit,
 > PIL.ImageFont.MAX_STRING_LENGTH.
 >
 > This threshold can be changed by setting PIL.ImageFont.MAX_STRING_LENGTH.
 > It can be disabled by setting ImageFont.MAX_STRING_LENGTH = None.
 >
 > A decompression bomb check has also been added to
 > PIL.ImageFont.ImageFont.getmask().
 >
 >
 > * ImageFont.getmask: Trim glyph size *
 >
 > To protect against potential DOS attacks when using PIL fonts,
 > PIL.ImageFont.ImageFont now trims the size of individual glyphs
 > so that they do not extend beyond the bitmap image.
 >
 >
 > *ImageMath.eval: Restricted environment keys*
 >
 > CVE-2023-50447: If an attacker has control over the keys passed to the
 > environment argument of PIL.ImageMath.eval(), they may be able to execute
 > arbitrary code. To prevent this, keys matching the names of builtins and
 > keys containing double underscores will now raise a ValueError.

More information about CVE-2023-50447 was posted by Duarte Santos
of Checkmarx’s Research Group at:
https://duartecsantos.github.io/2023-01-02-CVE-2023-50447/

Checkmarx also posted a short advisory for it at:
https://devhub.checkmarx.com/cve-details/CVE-2023-50447/

The fix for this CVE appears to have been provided by this set of changes:
https://github.com/python-pillow/Pillow/pull/7655

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
