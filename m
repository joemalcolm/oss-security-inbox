Received: (qmail 6133 invoked by uid 550); 16 Aug 2023 18:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13750 invoked from network); 16 Aug 2023 16:55:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1692204932;
  h=message-id:date:from:subject:to:cc:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=eTH8LTw826LidtwNL1MEI6+pGIk7ghHfI9GOTV+h8WQ=;
  b=bTHMO0ndxJ+DBHUJ3jMAggiPCQ7/xScGV81V9kgdVTRfGj0L614c+U7T
   N2gZ6Of1Q2jxrPscN8tLjKx3cv2TqD1LVtM0aVi+cgX9gP5RVKLHL2EOL
   1aZ2a5Lim7pYpVGoY7gMy0PDFcrkVNooe4Nye1+/qNDs5/14hfe55fVi+
   I=;
X-IronPort-RemoteIP: 104.47.66.43
X-IronPort-MID: 120109023
X-IronPort-Reputation: None
X-IronPort-Listener: OutboundMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
IronPort-Data: A9a23:ziJAvalVHA8y9fagWivI7Jro5gyrJ0RdPkR7XQ2eYbSJt1+Wr1Gzt
 xIXDWqOOPqMNjH8KdkkbImyphgAscCAzoI2TQs9/C00RCMWpZLJC+rCIxarNUt+DCFhoGFPt
 JxCN4aafKjYaleG+39B55C49SEUOZmgH+a6U6icfHgqH2eIcQ954Tp7gek1n4V0ttawBgKJq
 LvartbWfVSowFaYCEpNg064gE0p5K2aVA8w5ARkPqgb5QGGzRH5MbpETU2PByqgKmVrNrbSq
 9brlNmR4m7f9hExPdKp+p6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTbZLwXXx/mTSR9+2d/
 f0W3XCGpaXFCYWX8AgVe0Ew/yiTpsSq8pefSZS0mZT7I0Er7xIAahihZa07FdRwxwp5PY1B3
 c4KcmgTKSifvMyzn7+Db8RAid8pAda+aevzulk4pd3YJdAPZMmZBoD1v5pf1jp2gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrM/fZxvzeVklI3jOOF3Nn9I7RmQe18mEqCq
 32A1GP+GhwAb/SUyCaf82LqjejK9c/+cNtITOTgp6Yw2zV/wEQrCgQ9a12QpsXki0ibecxYL
 BFP4W0H+P1aGEuDC4OVsweDiGWDuhcGc91IHusl4QWJjKHT5m6xHWUPUyRAdM0OpMIwAzsw2
 TehmMjyQCdiu6CPSG6M3rOVti+pfy8NIGkdbCsACwAC5rHeTJobixvOSpNmD/Szh9isQzXom
 WjW9245mqkZitMN2+Oj51fbjjmwp5/PCAko+gHQWWHj5QR8DGK4W7GVBZHgxa4oBO6kopOp5
 hDoR+D2ADgyMKyw
IronPort-HdrOrdr: A9a23:FPC6UaBLwsWMliXlHegtsceALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPEfP+U0ssHFJo6HiBEDyewKnyXcV2/hbAV7GZmXbUQSTXeZfBOfZogEIXheOjtK1tp
 0QOZSWaueAa2SS5PySiGbXLz9j+qj/zEnCv5a9854Zd3APV0gW1XYdNu/0KC1LbTgDIaB8OI
 uX58JBqTblU28QdN6HCn4MWPWGj8HXlbr9CCR2SyIP2U2rt3eF+bT6Gx+X0lM1SDVU24ov9m
 DDjkjQ+rijifem0RXRvlWjoKi+2eGRhOerNvb8yvT9GQ+cyTpAo74RGYFqiQpF4d1HLmxa1e
 Uk7S1Qe/iboEmhA11d6SGdpzUIlgxepkMKgGXo/0cKraHCNU0HItsEioRDfhTD7U08+Nl6za
 JQxmqc84FaFBXagU3Glq71vjxR5z6JSEAZ4Jkupm0aVZFbZK5arIQZ8k8QGJAcHDji4IRiFO
 V1FsnT6PtfbFvfNhnizyFS6c3pWm52EgaNQ0AEtMDQ2z9KnGphx09dwMAEhH8P+J80VpEB7e
 XZNaZjkq1IU6YtHOtALfZERdHyBn3GQBrKPm7XKVP7FLsfM3aIsJLz6KVd3pDeRHXJ9upBpH
 3saiIqiYdpQTOeNSSn5uw6zizw
X-Talos-CUID: 9a23:F/qAIm0kfvCI9gxUoR8t3rxfKNJ/KmOa9GvrDUrnBF5MZZGaUlW95/Yx
X-Talos-MUID: 9a23:KduubAXTG0ditv3q/AfunRpcMuxv3/mvDmUvj5IB5pKfcgUlbg==
X-IronPort-AV: E=Sophos;i="6.01,177,1684814400"; 
   d="scan'208";a="120109023"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODnpoDaAVBD+1n6NYM8jfHUvAuYvrkndZvqZJ1Fndt3U0p47ojBAnKoY1m6yBh8SK+4NihZs8jW453noRy8N5j8nYhxN2BFQtdqANU3GkRzbHuTRXsSq3OrwMHk2+H+FBhHiRSWB0+3ubmSKmBIVbidBNi8UBIxdtGXhtkT2HuspVfgqkcdUqpWzKwJI423tcLeGtGPRHIc78Va3TqAdxO23aOeGUZLN4zdJ6PMRqvKoMHr/9b36v1GjE24f/c3Dks5Sbgm2zTGaYRn2QtWg+StecOTfsg2H9M5hNXgTpVHqXJT7R6FX/Rz6Xk6otgZ8WCj+PPMZzVdrw9XC138Wmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cuchlmww4/VQXmvjmJxALJDEewshz1rTDr6BgO47IR4=;
 b=K1y5jl+mPopooMYUY4fCbXaWUoR3PIjMTrEq0fY6DsmwE/uB81aafUBSAD7HlVYOFPvWwNs/DYYdsU7GkMJwP9RcLIQ//E66jMfyxPfLuOmre6emqBVOVWzXCZj81o5ZixegY7N2auAZm5P37j+tPdfFBlXwQwo5Zg29C/IqwkrM8IqH9bBxAgj4mKOmPsONzV33WwxRN4VCwz4FdC41n8NpVSRBsrhwZ5e7GEral5BjeyDty93FyHWQkjUPCbOcLMxT/bOASXSoHe7fnntm6HEktUqPz/g2LEEiUn58IdkUNK7xNUm8XGOrLveWrT67I/Pk4UbJ9m6KJ9ThyVTsKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cuchlmww4/VQXmvjmJxALJDEewshz1rTDr6BgO47IR4=;
 b=vGR5lRzDsLJrRM9322z0bm+9MPxEV7tQogEKJCAdqkY2fAShBG9ERssOb7CCBqRiPnoqdwD1ejDJ3SqjxlK3VFFpkdYFEkRYgoFihifREkgSoU4viou2mQMuYuG26c9C/vyyelAb43N/VRtIxv1r9u7nDHdXZHlI6hGcM7BC5JA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=citrix.com;
Message-ID: <e9886cc4-5fa9-cab6-2b26-a62fce74c983@citrix.com>
Date: Wed, 16 Aug 2023 17:55:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Andrew Cooper <andrew.cooper3@citrix.com>
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>
Cc: "Xen. org security team" <security@xen.org>,
 oss-security@lists.openwall.com
References: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org>
 <20230808180009.GA20736@openwall.com>
 <240c8fa4-2872-0584-3cfd-7648ea4dc0eb@citrix.com>
 <20230816164134.GA8851@openwall.com>
In-Reply-To: <20230816164134.GA8851@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0288.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:38f::16) To BYAPR03MB3623.namprd03.prod.outlook.com
 (2603:10b6:a02:aa::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3623:EE_|SA2PR03MB5881:EE_
X-MS-Office365-Filtering-Correlation-Id: 88c6657c-e5f7-4224-83cd-08db9e799056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	DeN2POo975x2cRd8KGhSEpnVEnGs1Q1QuEDpNLEuwa/Cfadx3yM2KG2ZOwU4cctghDT8Mlemhnc1j9sZHm842w+Nx8zaBkLga65AQO9v6e5rqNADjVD1xO/UJDRSl9MW2TaXIeZ5BieFuvh50cNU/Fcl6aXqZAXwt7T5JW6EXV4a4hDaDC/uxG7WIWXArhdn+8al7pzb+AMZWCaXIjf0tIJRBDqe5IK3xoyrJ2ns1Lo5P+qH1QpAJq3DGlBI1wg9OehYaG7/k5pzfwdupcTRgUL3jpkMZOZYYOk4UUO6afqedz4w8BwkRZEFeJidWnNnJyFFnpRcDvdGubXVuYZ3aDj1xe6MJPRlFJexmzR/Hcil/li7DjdZXDZoxlnzKLU2Lw7GuTxHfmLFJ/PcmZFxecAZqFJz2nnVck46lzo2AVm8BOmA++dLmnmQB4tWZZGamBFMW/mapiHuk0J3xtVKWzqlDlb5sAqRo6PUG33PcP2n/kG0Vj/hjlVSCKpTXZ0yjIE0J7yfKiNmQ5iWvLhHJL7Z2qZ/Ppm1xlY8lQNDaHPLUSBSGoNqv54aan5XpjEuM2WCHvWyUTSO5M2nFVFDCV8d7QQ5UGBNq/0HgkW88r/2+3MNcErcxIU+iVGplS1wTYTXghdmxywB4twfbHhWxA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3623.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(6916009)(66946007)(66476007)(66556008)(966005)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(82960400001)(2906002)(15650500001)(83380400001)(26005)(478600001)(86362001)(31696002)(6512007)(53546011)(6506007)(36756003)(6666004)(2616005)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dnNZQ2dxSFBGNXVaS2tCZjd3aGhHMXM5NUlKdnZSSVJvRjhYc2pDa21yb3lJ?=
 =?utf-8?B?MlU5ZHhidjN2Q2dxMWs2OU5UMXVsMkRyV2FiY3J4djVJNTNCU1VKdDhRRXVy?=
 =?utf-8?B?N1liaDIwU3RtVk9mYnU2ai9FMWJXdEhZUDJ1MjZQaFM4WXdoNjd4S0t2YWNr?=
 =?utf-8?B?dXNRZ25BOFRtM25YRXJIV0pNNkpLbkxqQ1o2KzRUS1NFRHcwK2JiVHhrZkdJ?=
 =?utf-8?B?d2s0Y09tK2NpMm5INlZQOUtYRy9FK0tmMm9YNnJyNFQ1ckNFOXUwT0NSVUMx?=
 =?utf-8?B?dk5jR2ZaMFREcDBibEtOL0xYT21sdHF1d2paR3hpRjJDOW1qVi9FTW5NMnVk?=
 =?utf-8?B?NzhvWXBCeVFhRGU5Q3Q5Vld2STB2dTM0dnlZcjJtMkdQU0xZZGpsSW5uTmQ4?=
 =?utf-8?B?WHplT2g3clJwa0dRZk9XRC9YeWJOQisvc3J0RUpnN2tzeFZUdjRoREtiU2Zt?=
 =?utf-8?B?RmVMcXVWeWY4NnBsUENFZXc3OHVtM2tJNG5kNkpDL2ppQTlNL2xFNUNxK1B3?=
 =?utf-8?B?OWpENThIUkVUSC8yZStNZUpwSlQvdEpacEo2c3FjN3N4MWdORzNHL0pTSkxB?=
 =?utf-8?B?Qkt6MVVxeGJlLzd5UE5MZWtBc3EyekVEcHhTS3UzOGlhTTQyK0FVMXpPbml3?=
 =?utf-8?B?a0w4WEZVbk1oL0VmZlV1T0VRRVRFYldrS2dVRERJUzJ5RzJpQy9VWEtCblhM?=
 =?utf-8?B?cStEcG1mR1dJZVczeVE2TVR5NGdpWHRrMDVwQlNpUDdKUmVJZ2lnNzUyMHQ3?=
 =?utf-8?B?bkVnRUVtK3Rlb1MwODhTRk5iMnlVVmdOZ1dZRFhzUVNIRDgwUEplR0lPUElE?=
 =?utf-8?B?L1piMi9YemRaeGZ0QlA0TzB3MVBEdDh5VVVZdGQrbFNzejZVZ0htM0hzUDRI?=
 =?utf-8?B?TFNXUzhxenBSc0JMb1lNZFoyUDlOSzdudGNVUWY0WnJqclZPVW8xeWo0K0tI?=
 =?utf-8?B?SGZkUGYzYWx0WElGWmc1cE8wM1R3MEpYUzg4NUhyOEtMcU44dzRHZE5iSm5F?=
 =?utf-8?B?cWhVcVpWQS9xeUxXTDlnWGNLYU42M1pWanlqdzJkLzJkQVYrVXhCVVRyKzI2?=
 =?utf-8?B?K0dTMVJLSG9lT1AvWDlUMm01M3FVK3pybGFDUTNlWFB5ZTVxQ050MUdlWVRT?=
 =?utf-8?B?Um40UTNPZjVyT1ZOaFQzRzN1ZnpYZWQxN3l0Z2x2MmZwVUlwYUFyMnhFQkh4?=
 =?utf-8?B?dFRxV2RObnJJZGI1NStlbndlQ0dRQXFmVTZoR1F4b3BhQ285T005MHluMmpT?=
 =?utf-8?B?c1gxTFNaUUMrUm02QStPU0lIdGIrMllNelhjQ2N4L0tIKzNjaDJ0NXlYd3I3?=
 =?utf-8?B?d3Y5OXVrcGRCTlg5QitCMEd2TGhDTlJYaEpUdC9BQUtNb0tBRmZnbThveHpP?=
 =?utf-8?B?OHhYeGpndkJVNlM5dlFJYnU0TUJqcnBsTmFpWStkQ2M0SUM4d1RXQUdMUFFo?=
 =?utf-8?B?SUg1WHA2cnVpUGQ3Y0xEY0tNNkp1RWduVmU4V1lDZ0ZXcktqQ1pabzBZZFFp?=
 =?utf-8?B?czgvZGtvTllqYTNTV1BNQW12L3JUaFRPREs2bzcyVjdKUnZ0L0lPL2x3amlO?=
 =?utf-8?B?SjY2SFEybWJvRFNVdjFtRDR2bmFzSXlFV3V6L2pLTFVoNnJacHJZWmoxbDVQ?=
 =?utf-8?B?RkFsTlo5MEdMejNlRHlLU25JMkh0OGxHYWt4aFVQNWxycG9GS2o3NW1USXg3?=
 =?utf-8?B?eWpVMFkyQTRCMHJyY1JCSHlrb3l6TjJmUUM0OXFlVy9KaFFyNFIxU3R6aGQ5?=
 =?utf-8?B?TkJHMWE0WTFRSjF1SVQ5eDRpSHNZYi9DMS9rY3I1bkhUNzJOaVFXRWE4Wm9w?=
 =?utf-8?B?RFZDY3NMU0dxV01TcXBlOFp0bFJpTnI2eHZzMlhBQlVJY0JDWVFobzBSMnBk?=
 =?utf-8?B?VnVBRGpjdUZOTzMxc2FiemhwRFNYQU9VcjJhME9CVUlRTTlGZUFvZGcyb3hH?=
 =?utf-8?B?Z1FpNVR0ZzJCa2ZvcEtqZlA3ck9PNXI2WHNKbnZJRjdSRW93MWdSZVJlQitP?=
 =?utf-8?B?VTUzV2x4U09lU3JaUFh1S2RYaWxDdFprK3RwWlBBNE0xaTlMdGxXNFFtNkJK?=
 =?utf-8?B?YXl6ejdCVXJEK2dnSnZDaFFwMHd5NHJTbXN5SEM3czFSa0tNUWVWRnZKZk1h?=
 =?utf-8?B?VjNCZm5zZDFtZElza3RMYWZWTVpzV0daaU5kOEsxQlozeEN1dk1zTFp2K2xz?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	gOjBhZXnzHKQ1XAkLxk1lkcSR4fvJBJKGWTFe+KE70sCD1ebPSAOGQdCp/WSXXQSuDXdgS+qxogyatHHBTvfJ8A5SB+FQkvPQGv6zusH0GiTUA8ExbhRBgiRhKe81lzFVViMeiNOYUJT7iW/JiOgZD+kiBpkDftczibrRzjCGltNJ+kibpX6paCV3TlapvLNR+1mtouzRxNA+mc4VX0JBdIR3Yjj3tUuFFgqgZuhjhflDgUSm2Xs5Mkzy53UsIxgENvvkgROLkj0J9ysx44f+OJh+zonB6nsgVWh3Ctpcoh1cGcQVCV7p9rL5lXznkD1YEqees5gV2Gh0RISCdinsuCePuQKN6bzcv+qoWp3ih0HyHvFpt5FtRdBj+inWgFXeJols6RM00JG6kPZBI4OvVtQXCzDdV+OC0v33/dFeoblIFmoGTCk4Y1I8Li1faeeEMMs1O4ksdbMwKdE5i3TGcaXsdYINfnBXZd+fxum1TfVi3BqEc1qAyEzzYeARSqle0QQw+CWfqa5dUVHMHsNPE0QFz8oxNxP/lJUtvEuoGmLUfc1r0SaONrr0R5vubmB/sm9hkpi96kJiwW2nHvUJg0QMLGBMZzQtQ3LRn0CmRgEohxubPPEzAmX4uuRQGxfOh+TATMHigZdBErGUxRDVqcKXEGQBoztSytGTlne7kzGyD+8XpTMciqbdboGSm5m6n4c6tCBDMtp3bXQiCXzFHi4O1GkdTd9qxogY8Vg9P8UPb76XQoU19RWPZAUr3ZfNSZVYdnSXuljEusn06RAhkvm2KaNGxJozR89S23QcHYJBX20MCN/KqrY7nEruAKVKzwxFJMzGOKgy7+tCtjp+g==
X-OriginatorOrg: citrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88c6657c-e5f7-4224-83cd-08db9e799056
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3623.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 16:55:15.5520
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lYnCYEeZutLrepK6xUQCz+/V4ObMjfjG4uyE/71ya0INqmwbNt7BoVo8vx0At33MFDcKGve8DgO7pJKgU1uCggK0CBCvTfK82T9fLtibVZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR03MB5881
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) -
 x86/AMD: Zenbleed

On 16/08/2023 5:41 pm, Solar Designer wrote:
> On Tue, Aug 08, 2023 at 07:18:51PM +0100, Andrew Cooper wrote:
>> On 08/08/2023 7:00 pm, Solar Designer wrote:
>>> +	/*
>>> +	 * Microcode is the preferred mitigation, in terms of performance.
>>> +	 * However, without microcode, this chickenbit (specific to the Zen2
>>> +	 * uarch) disables Floating Point Mov-Elimination to mitigate the
>>> +	 * issue.
>>> +	 */
>>> +	val &= ~chickenbit;
>>> +	if (sig->rev < good_rev)
>>> +		val |= chickenbit;
>>>
>>> This leaves me wondering: why have this line at all?  I understand Xen
>>> wanting to enable the chicken bit on vulnerable CPUs, but why disable it
>>> on other AMD CPUs?  If someone or something had enabled the bit, that's
>>> probably intentional, and even if not it probably shouldn't be Xen's
>>> business to alter CPU behavior beyond what's necessary for Xen itself to
>>> work reliably and securely.
>>>
>>> Am I missing something?
>> There is an earlier exit in this function for any non-Zen2 system.
>>
>> So here, we are strictly on Zen2 (all vulnerable), and either have good
>> microcode or not.
>>
>> The microcode fix is far more performant than the chickenbit.
> Sure, but that's orthogonal to my concern, which was about areas of
> responsibility and control (such as sysadmin vs. tools).
>
> Anyway, it was pointed out to me off-list that Linux kernel does the
> same thing, also explicitly disabling chickenbit when deemed safe:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=522b1d69219d8f083173819fde04f994aa051a98
>
> +	if (!cpu_has_zenbleed_microcode()) {
> +		pr_notice_once("Zenbleed: please update your microcode for the most optimal fix\n");
> +		msr_set_bit(MSR_AMD64_DE_CFG, MSR_AMD64_DE_CFG_ZEN2_FP_BACKUP_FIX_BIT);
> +	} else {
> +		msr_clear_bit(MSR_AMD64_DE_CFG, MSR_AMD64_DE_CFG_ZEN2_FP_BACKUP_FIX_BIT);
> +	}
>
> So at least it's a consistent approach by these two projects, and a
> reason for Xen to be doing it this way.

It is not a coincidence that Xen and Linux are similar here.  The areas
of responsibility aspect was raised during review - we did consider
combining with the old value.

AMD's position AIUI is that prior to Zenbleed, this bit was unsupported
and not used.  Therefore we went for the simpler approach (and as you
saw, still managed to screw that up).

~Andrew
