Received: (qmail 30474 invoked by uid 550); 3 Jun 2026 02:36:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30428 invoked from network); 3 Jun 2026 02:36:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=JMHcAKTYJ0ETNfMA
	ZFQXKOa1lqtSiB/iRpZOH9003r0=; b=fIoNZAJHO4hWc6p7SHKHV2V+l5pqNz9u
	NF6USF/ngwiJ6xdEM4SXn0bzBbG/4+Snr1mVnwlqQ4NMd0exsxjCLX5R8mvMdj/c
	JGO/K2SrB+rfrMVJ5sR9ORmWMh+KZ4IISY711DJiGc23ABtHVYiojW4hvyJOxY/5
	wtyt6q68Gt9SOcKV7el4kgSAlg53QDvPVsoXb7trmZ4/jVlkjZbMQ3yhmfI4DrBB
	SvbzrluS3pq3DW9hSoBLiHSHUBkC50QXgLtHOQWMM6Qi4zsEHPdnYb6aET/L0j7D
	6p97ZTuRxCB1sCjTM++JViGbElbVDIh7CQPY1h+m3pIJPWZBgwc73w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vlFfuqDkmZDyDpRNNX57AWHZ9kHPAYr7ryWq+/vU6H0tseG4Be8aLIzJdLm9yQcMbv5TTwjulQ70O54lHR7VksEVvVq91aAWEY8fsO0FN3DW1o0ZREE5DOstLZpDhvxp2zwbYSh7n+w+mNy8Ks7PjClNa+OPAs87PppmIr3PKFdeZLUUNR+F5pcmKRR/bDHKo8zmwBY3IV1mkpgAPiuzlGAwFqgh8zadzKFmexd7qpqKrXRVq3pIe1csq0S2Jr4eEZLoo4kegpsu2rCYcdSLwvGQHs4oiwpwyX79XRd+yuNnBlMK2YDXnoC5E0dWle2HfYAaCGga7zbiVm/lmcpA3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMHcAKTYJ0ETNfMAZFQXKOa1lqtSiB/iRpZOH9003r0=;
 b=cv0k2UlEh46i2uyD5Sp63Vc/HlktlTf93zc2Zxg/0cmlyNiO0JkWlW+7saZl6sLJN7VizmqZd9Q46F25HEm+Pt5REHNFHvEy82dixe4RTny5HHqQaLMAqARr5MieKKPVggSpvWDkggFk0N5nMhd8XrS5kIBAb3XdS26F7dsJ7f8wlhPy4OEkuBSlh3jelNd/J9Qg6aLxQT2brwRNqnnf8lJb1IuO2ACSVMGZQVyonsJzhAJeFgPiPlWvSh1KjsbCjBiElKAPr8XzSU3N264IKms+2PzmimOMwV0DPJ916nQEypJHjshp0v8dRINzmJmV6kTeHfzQ2ONG7k2En5MsIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JMHcAKTYJ0ETNfMAZFQXKOa1lqtSiB/iRpZOH9003r0=;
 b=fvepHA6VS4OscxZLVRRDiRyj83OqxYaEL0rXIpj7oAiQ24z57z6gPISv7Y0JH9xN2Nc9pL9SRUsBAipfR+ohuN2BhH8jJc7ivYHINMlJ+RvIhiuU04Onglti9xoNuN0nF1D9K9t2visXmjR+kKwwoF8MpfS77sneevVVN4SHpRk=
Message-ID: <db78849e-dc8f-45bb-bdd4-a67321d913c3@oracle.com>
Date: Tue, 2 Jun 2026 19:36:15 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::9) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|LVTPR10MB997841:EE_
X-MS-Office365-Filtering-Correlation-Id: dced32af-74c0-459e-5074-08dec118e316
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|6133799003|5023799004|3023799007|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	JZRVuji8egk60pfTzwk+CSCFuoDiZjA3akoNIT4YbbviwDiAK74VHTO8V27lNeGqqlTKcyTBIr/ygAPHenfCXgpXRiyuTilgmk3Xj9hTzBIB4U6Fh4p2br1UNbkkvuhze/58IoGGq+v3bgTOULehnDxkfl4G9QBApOLbvKzEHI3nF+xsrO8c/TxCIv+/vlaknDHZUWQ/gsKFjiKnYopXTIoOypx8B5bVhp9a3zQX3n0V2myqQFpxr2GLrn6HcdtI8/EcrwfKbPpRxwqvmG9ra739GqWbzqWwca4RlJ1y5gCiQi6M6LZxzPwmpPnc1lAKL0+ZRFOCwuuYGTykwJ8ZgcrwdVEofmFp4I25wMC8+8MX7lTncRUwN7Sc+Vczpwmfu5TakM9j9FDUKdjbWkCtR9kT2oR/3yFM3+RvuNj7B5sOmQbU9yz0+FFHtBeae5tkyFjiRRl7lHXeaMlcz+7H4q0Jd9eLwCWbFJD6guEdZZrqH6v2SdKW7jjlNatPkVANabaMoGrEXEeK3MfE8TDmOmtRhpciTzsM8fWZ0kjMuL1pqLW45kZt08anLhGkHFKeIuzCUhlJkOgB09JQ7YfIx0v1cgRRZohYKbzM3k7SdutHkQYcWy4M5qis6OBuaPMklwSjA6QAnYyHt1hcMgYPEA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(6133799003)(5023799004)(3023799007)(18002099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?b2lld2w1ckZodTJiSU5seGdseDhtejNUNjJ4c0xqWDNrdjNhR3l5d0lOUnBU?=
 =?utf-8?B?TDBJc2hKUGVUZG80NlY3NHZtdGF3NDh3b1BhZzhMdnl2NWJFOXlSWUFvcXpH?=
 =?utf-8?B?MWh3UmtSbkdQZjlBREZBcjdaRVY1bTQxQTVPbGVYdC9UcmdGN2psMk5aNlFh?=
 =?utf-8?B?VGNpNVVHazJkeUJPR2U5K1kycDlWbmsybElFLzZ6bHlXU05MYmlHM240OVBp?=
 =?utf-8?B?aFBQRk9Ob0FOSTJBYkl6SW1BUjRvR2pGVGJ0RGd4eWRWKzFtSkdNOHE4NmZ6?=
 =?utf-8?B?VTl3WmVFRHYyM1IzWFlRNWNwRE9tdzg3d1h4Qk9XYXNUeDJCR09kTXgvN3VX?=
 =?utf-8?B?WDVjeXY4N0l0OVV5YnMxNTZ5SFVoeXMzYVBDMFh5bklEbE9VNi9xOE5TaU91?=
 =?utf-8?B?bkVjQWtJSVozZGxVeFVSNWlpUXpVZCtBU0hYeElxUFVncUpnb0t5ZlFibEgy?=
 =?utf-8?B?b3Z4VkFuMGlNQmVCd1VwRnV3OW1KZzFrTU9JdXNERyszc2g2U2xHOXZ4bWlH?=
 =?utf-8?B?MThSd2Y1Y0t3UXBUUjYwOUl4ZDNBRzlqUW1DMEIwMm05NUcrQUlVdUhLQVF1?=
 =?utf-8?B?VWZjbkhUT3prRzFxRy9aYzV2UGQweWl3VWpFSkhEUlpNWHRuMTNwZVlxdE5V?=
 =?utf-8?B?a2kvSzJLMzJrSXlmOEZFVkh5VGV1bFVtRndTd0tkbEZIQURCemlQVncwck5Q?=
 =?utf-8?B?Nnd3bktXcGhoTUh1dlFtWUVyendXVHZaakRqUENlSUNVR2w4aDJDckFxM3Y1?=
 =?utf-8?B?aWFQNVlqa3lVVkhrQVVWZkVuWG5ocnBNYUl0OGtiNUswNHNiWExXbWJzRjd6?=
 =?utf-8?B?bUZudFFmODJKNW1XWFEwRERacUxYWlF1aU9QNDZMTHFLcENXTGVwUHZsMEpB?=
 =?utf-8?B?aG9EWHRseFoxdXVibDQ2L2xmaWJkL2NlcmZhL1JhcDE4TkVaSHlGdFFDeWcz?=
 =?utf-8?B?YWs1ZlhjRE12ZUhjakFRSmlXQkVwenVKNmVHeGR6OGVjQmJodkxJUUNjTmQ4?=
 =?utf-8?B?bHl1bGw3Q1ROamZtbUtTQmI2M1BIZzNYOUd3dlRDZ0ZTMnZacklxL1prV1lQ?=
 =?utf-8?B?Q2szZGh3RzdlZk43cnhzU2loNzZzL3hkVnlGaW9FSnpVbUNSNmVnZ1BTYzJ3?=
 =?utf-8?B?L3ZGRzduM21DSTVpSWYzSjBzVVFQZTBLVlplQTVHQzNwRnM0aUxjTE9MNTZ5?=
 =?utf-8?B?TTRub3J1bVJTU2w2RTIvSDZHbCtLVCtzNFcxeC9vQVJDQkphNVgvVTQzWTNk?=
 =?utf-8?B?TkNQWUFvdGtoaDVDem4yR1N3cjBNQVRPdTZvMGtnUDEzMWtKa0RSUlBFTFd1?=
 =?utf-8?B?NlBadlRzaWhjUlozWjM3TWxncTdDKzZ4SStFVEVpRDJNbjFodGRGTzFkNmI3?=
 =?utf-8?B?NTBTZ2xQOCt6alRUaTJ1cmFTaWU5MGtxRytsSG1jU1dNbmhPd0hSQ1ZqbVlB?=
 =?utf-8?B?QTh1ZGVKeWNGUTJDblBONWtKQW5hdFo4dFc0b2RxREFDZ1VJMWJ1Q0R6U2wv?=
 =?utf-8?B?blhINTBMZExNWHUwdy95anhaS2FSMFpKbXlhR296TEpUV0VQQzhkUUllYkxq?=
 =?utf-8?B?bXFRbUo5TnkrdkY4OURJRHhLdnlDbGI2WEwzNGE5VEhDTjFleW1qTE5MVXYv?=
 =?utf-8?B?Lzhxc1FmektxNFRXOHNIWEx2NmxiZDBVMGRUWW5jYmlpRFc3cXBVZHJtWlVL?=
 =?utf-8?B?QXNObSs0eHQzakRRcFN6cVdDeG9tTzI2b0ZCSWtsVEZraXUyU1p6K2JzS252?=
 =?utf-8?B?NWdXUjk1eWxMaGpPYS8xMnhFOWkzQ3huQlBHSkRNNXo0M1pidE9BcGxJQmxj?=
 =?utf-8?B?Q0ROZXl1d1VtTCtZMXNmSnJ4OTR2VGMrQUE5OEMrT29BNTc3VFpFM1kyQlhF?=
 =?utf-8?B?SEdsNkpFcmlkUjFQQlhkV254OWw0aG9wNUhxOWhXazJVU1FHRlkxSFg2M09y?=
 =?utf-8?B?d05mVnZJYkNsRThHbUdQQlJJU2JFcE9uTkVDTG9mTC84RmpUOWdTM1ZKU2g4?=
 =?utf-8?B?NTIxb1NRbjFObGU1RHNrbjZ0K2JTUmdneTRLTjdOMXgrSHlKaGZ2RjN4UTUr?=
 =?utf-8?B?ZnZCOTNyM25WbXFTdWJYWG9kblZGK29qTTQwU3pSNklHbjJ3MlRyU2tFcGZR?=
 =?utf-8?B?VnVnU01KYldsRFowRHZlaE5sQlFyQmg2SEZCV1dmRE8yeGJkYnFEZ1NmSjN0?=
 =?utf-8?B?ZjF0UXljOEVFSk5vSkNDVDlNbmJnOGI5d1NxYTZpclAwcFZpanVKMXRIWEdw?=
 =?utf-8?B?WTJFZ0VwSXdYcTBpUXR2V1V1bmo4WW5NWmFMVXhSQkNrSVZFenlxdHZZOGE1?=
 =?utf-8?B?TXB2ZmpEWW5hZjVDcnFKMGUwVDd1TElrcFhpYjBzTWZSNTdrMlRYOUVVUWFj?=
 =?utf-8?Q?StC5wjz6AP65ktN4=3D?=
X-Exchange-RoutingPolicyChecked:
	PPD6blk3HH8A7uvyIgnn0HcVOtjYcgcNZhDKTtJz1ATkFw8Bnw9ss7nTY/tfX5+9kZXhcb0RvT3xtJe+B5rNZMY16kgtjTJ26xKykILjAz7W3aGnTX/e8sNXdEEhdE8eq58aj7kgPDr3MVt0vOnoOkx4nDCOue9yfvdUI49+NRHiSIvhzgsCV1gVQqp/TCzWL9M1xQ5WhcoBYyoO5CmGDrZpBQYg9g7alIrjubkUfpSIiFWRWde+34c+FDJJmLee25DQM6/M9VdvhigZhOmDKh/KTl0nOLgevOKGHTMbcEOoXg5DhxXFy3EirNQj4JLRAXGXXLGQ0zcYdl9mNWE/Tw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	IdQCSChlcsWSavxrR3nHrX50ozmdPthJ1hGyeCbfaz2Gd58lJxQjw9uL22/Oj24dh/u3jeTggSxO1liys6kYxW5AJm2Skq/KtlITWQHT9F9tRQHkggWEX5tWNC/pIL0CzqOx0NciEbnbtLNST0vrK8pWzUiIl+91cXzcyRxQEmXVJjXW3BhZNdRWRKETQRiwWatQatXN39/GhzHaXZBkEd7NtbMFbVx0hLRbpBZXg2NAQiAdQsNs17p7P+QcxC9UJ0zMN54RVt7OEWP3L0kb5OBsyRdGDXO3z5zYx8LykGFZm9alG1dB+D8c++NmZ91BWH7Zo3fObYYreGsDykDNPu3lsKbhx+ivwsNye975khEcBw0U+Lobzqq4ehhG5vOGfcU1Cp91MxbYNMK0yRKYc8lY298bCfv3sc9+vxEwWy92GJHhmirAsQlPdjq4ugl5ndyqB80w5zYnxRRqHibyOogtFqFhiL3Wjw7vBK57as8gtEcmhL97yaoqh82JwKAY5UzTHEd4bM01tD5pTK3pgtfdVKT4F5rnxa4G2XLgR+zGAaIztjFnG2DXVPruumGrZ23x+slkDwZyjJv+pwQ0aTJwTnehCrW4QjMx4mNeeSk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dced32af-74c0-459e-5074-08dec118e316
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 02:36:16.8714
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jZK7N7cPyAjKoF1y9l2HKk3XThxhXXMaPAJKFvl6BsXgRJaM8yKpd1XmV2s9A5NMrC1FZlLju6TivejOovU/PdaIgtZDVKVGgyB71vXRny0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVTPR10MB997841
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606030022
X-Authority-Analysis: v=2.4 cv=T/S8ifKQ c=1 sm=1 tr=0 ts=6a1f9324 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=2oiMM_oiAAAA:8
 a=NEAV23lmAAAA:8 a=8kNzzQL9vjkQm71gloYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=E6sk8zvZnCEyYBON7110:22 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22
 cc=ntf awl=host:12302
X-Proofpoint-ORIG-GUID: S1--4S9n3JUIfNQqBfZ7a1X9akiYJJir
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDAyMSBTYWx0ZWRfX4CYNrFLmygPi
 GLk4f4YwvWiDjyr8cHQa/Ge0/arIA4PPEg5Klb+VgkAKVRrG3KzYQZ7puczy4RKQkcSzwwS4tl6
 oyx6IA+a6LqoNi/RIhx3wPig/l7yGuxS+pMnt+NQmT74HB798RJunJigkPMMXfb4yRcFI1b6jqg
 hazR+ezkepxE+2yrNRYFjE3lZ+x57Zps7FnsOPmbu5A1x0jn+ujyYERTo1ZZvEKqg3LHtlVjr7j
 V6BdIV5sWYsiveJz63TR/oS4mczFZs824oCDkBiZUn1OWC++hBzCHVI/xFMufX0KGTaW787ZIpH
 UOMD9orQ8ThHD0qTKMyX/b4xoXUlcdOoTaLkM3/X70hCuUrVHiNdIS4GOikw+U9g1N59zKDCo6y
 U0h2244GQfnGW+CQoxOqs18BuZ2LCU2PDuzKHGKCs3BFiScB2ZvTngljkByhvjgtLrx3eHVHmP1
 IncsaOvEZS0fZm26yl6OfFcn/CvsCUUYddVGRdHc=
X-Proofpoint-GUID: S1--4S9n3JUIfNQqBfZ7a1X9akiYJJir
Subject: [oss-security] HTTP/2 Bomb affects Apache httpd, nginx, envoy, &
 pingora

https://blog.calif.io/p/codex-discovered-a-hidden-http2-bomb says:
> We’re publishing HTTP/2 Bomb, a remote denial-of-service exploit against
> most major web servers, including:
> 
>   - nginx
>   - Apache httpd
>   - Microsoft IIS
>   - Envoy
>   - Cloudflare Pingora
> 
> The vulnerable behavior exists in each server's default HTTP/2 configuration.

The blog tells the story of how it was found and provides technical details and
PoCs.

It also says:
> Credits
> 
>     Quang Luong for discovering the exploit. He'll be presenting his techniques
>     at the upcoming Real World AI Security conference at Stanford in June.
> 
>     Jun Rong and Duc Phan for confirming the attack on other web servers.

and:
> Disclosure
> 
> We disclosed the issue to nginx in April. They responded by importing the
> max_headers directive from freenginx, shipping it in 1.29.8 the next day:
> https://github.com/nginx/nginx/commit/365694160a85229a7cb006738de9260d49ff5fa2
> At this point, we consider the attack public.
> 
> We disclosed to Apache on May 27, and Stefan Eissing fixed it on the same day
> by making cookie headers count against LimitRequestFields:
> https://github.com/apache/httpd/commit/47d3100b252dc6668a9e46ae885242be9eeca9cd
> The issue was assigned CVE-2026-49975.
> 
> The fix commits above are public and disclose the vectors directly; any
> capable AI model can turn those diffs into a working exploit, which is exactly
> how we found that Microsoft IIS, Envoy, and Pingora are also vulnerable.
> We've notified their maintainers. Given how short the commit-to-exploit path
> now is, we're releasing this writeup to provide users with the mitigations below.
> 
> 
> Mitigations
> 
> nginx: Upgrade to 1.29.8+, which adds the max_headers directive with a default
> of 1000. If you can't upgrade, disable HTTP/2 with http2 off;.
> 
> Apache httpd: The fix is in mod_http2 v2.0.41, available from the standalone
> mod_http2 releases and in httpd trunk but not yet in a 2.4.x release. If you
> can't upgrade, set Protocols http/1.1 to disable HTTP/2. Lowering
> LimitRequestFieldSize shrinks the per-stream blast radius (it caps the merged
> cookie, and so the crumb count), but it's only a partial mitigation, since an
> attacker can still multiply the effect across streams and connections.
> Lowering LimitRequestFields does nothing here: the duplicate cookie crumbs
> never count against it.
> 
> Microsoft IIS, Envoy, Cloudflare Pingora: No patch available at the time of
> writing. Disable HTTP/2 if you can, or front the server with something that
> enforces a hard cap on header count per request.
> 
> Generally: "Maximum decoded header size" and "maximum header count" are two
> different limits, and a server needs both. Any HTTP/2 termination point should
> cap the number of header fields per request, including cookie crumbs,
> independent of their total size, and should bound the lifetime of a stalled
> stream regardless of WINDOW_UPDATE activity. And if you can't do any of that
> today: cap per-worker memory (cgroups, ulimit -v, container limits) tight
> enough that a bombed worker gets OOM-killed and respawned before it drags the
> box into swap. A worker process rarely needs gigabytes; letting the kernel
> kill one early is a better failure mode than letting the attacker hold the
> whole machine at 95%.
> 
> 
> Takeaways
> 
> RFC 7541 has an entire section on this threat. §7.3 Memory Consumption opens
> with "an attacker can try to cause an endpoint to exhaust its memory," then
> explains that HPACK bounds the dynamic table via SETTINGS_HEADER_TABLE_SIZE
> and considers the matter handled. But when five independent implementations
> all read that section and still ship the same class of bug, the defect is in
> the spec.
> 
> The deeper miss is that the spec frames memory risk purely as an amplification
> ratio, and ratio is only half the equation. A 70:1 amplifier is harmless if
> the memory is freed when the request completes. It becomes an attack because
> HTTP/2 lets the client hold the connection open almost for free, pinning every
> allocated byte for as long as they like.
> 
> The other thing worth noting is how this exploit was found. Both halves have
> been public for a decade. What Codex did was read the codebases, recognize
> that the two compose, and build the combined attack. That combination is
> obvious once you see it, and yet as far as we can tell no human had put it
> together against these servers.

