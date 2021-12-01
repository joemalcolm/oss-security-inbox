X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["717" "Wednesday" "1" "December" "2021" "09:11:15" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "21" "Re: [oss-security] CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures" nil nil nil "12" nil nil (number mark "U       alan.coopers Dec  1   21/717   " thread-indent "\"Re: [oss-security] CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21751 invoked by uid 550); 1 Dec 2021 17:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21733 invoked from network); 1 Dec 2021 17:11:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=I8qFDrvoPcxHu2C4WbP1yyX2qP0pt30/vWpdpGcqe6o=;
 b=uQmigIgzudNigiNEIp3d2NDpqrOR94aaIbybvIPULoKUlcBLfcYKRvOjMmmF4nM3Qck9
 t6CHQ0gYXQDzxZ6sNp6ambQs3w1qcpDPkG9o1LO9TmyNipBNjpez0ooBsuqHfJDRq3QM
 GrglLjfmM/MKPbcefgiD+6sJJAV2Zfgo1SYwTaDnhUVdnGvMpECGkQqOyhsqKzEVg3hO
 nhSG4fjFVob48n3L2hItQacI3QpDl2SCNyOkYfOI5uayl6WabCaxzrQyCd9VI6KLAg6b
 Kig8TsoC15S9yeMjMjCY4i2UsQ7LotrIIk328gGc+HRhKxrsmmzKkbkFZEvJZzCMbt4g 8Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i3A7/QWp5nYUk0jVRF9hj2q8Mu1gwAYV/ekE0dngZt0zxecr8OFITEGLTe9IZoQD+aiUcxxARsWEIW5enXz54o0kIUalcrO32ej0ql8ySeaKjW+2S85blhPXSFXcZpPhsNzf6NP/A6iy8Lk2QIHyyCDTA1Ict5dghR65+Egcyhd0FxCzXR20pamSYnL4kPKN3LsamQaCS/bE4xTSkHlQIusJ9ll/NHIKhjLTWJQnFF2iDjM0lpxQID3yVuv7SwwtWoka4XVKTHw5isiiARdOl2AszTxi18i8+BlQr+8gVcHn8c7a3iWy/OAEtyrnVGfzkCdqiYcOmik/E3CJ+vyXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8qFDrvoPcxHu2C4WbP1yyX2qP0pt30/vWpdpGcqe6o=;
 b=CcDHb7iLG1Pglq/kqJdbNrV5a0AN2cwxWZknHhfa80GPzhK6YOei0jlfyQSgHbKTSDdDC7QkW/F7V22NirrCx5lHS0t4UazYWjhtv70MNTfltGMA19DapMqcTxgZHlDFGrREKlYsmqbWFohdJCHBa7uhJSRuI5Z/g9x243cMjZeBc6XsCWmwso1b7zdEMHiMdgIdDp3z6AnzsMQpguvVh6BAgfjyRVLLSFcjj5v12qoCXMMOvwlpXKIV4CuDJ3SwKH9uVlQ9FoVvoJDhf/HpaR5f6EU6vit+W4HiwUanmCenSJTJddLjc37CT7mMwLP+bo7AwElKyvh+Q0EZrjgQkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8qFDrvoPcxHu2C4WbP1yyX2qP0pt30/vWpdpGcqe6o=;
 b=McPQEZEqWma4p4B21YooK+Ogn/RGvIHwrxuufBpwYRou3tWMszuh3dPxhwyjum4DMC5g/YFok4nIZg/9m5Aqx3NUvJRQMrsw9sH3J031ocP5F3pESqDcTqC3kNY+dBmH8xnq+4W3259JgoMRvfnd/YBz18O+pVj3pQDeBxJGpzo=
To: oss-security@lists.openwall.com, Dennis Jackson <djackson@mozilla.com>
Cc: Benjamin Beurdouche <beurdouche@mozilla.com>,
        Daniel Veditz <dveditz@mozilla.com>
References: <CAON8YFPiCCj4q3Z52c4dh9ArmDF2ybS_KDN1RWYe-D52fDt2qw@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <e5468d60-4732-2678-94b4-ff10939263c0@oracle.com>
Date: Wed, 1 Dec 2021 09:11:15 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <CAON8YFPiCCj4q3Z52c4dh9ArmDF2ybS_KDN1RWYe-D52fDt2qw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:217::12) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 03467905-e40c-4f35-c94f-08d9b4ed96e2
X-MS-TrafficTypeDiagnostic: BYAPR10MB2710:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB2710CD7589329ADECF392125E0689@BYAPR10MB2710.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vEiwEut55RTvWN36+nCyCWoN3pMLXzm+NYxEa4utDaUOi3sV2N7BmY21I4v/mcUualMBJPu4/t9B3kC7D8w0rZWHCyAlTixYJ51sIDMfX8bi/dbGGf6KR6PL5ktfdxBdfsg+lELlprZ70mQMqtQrXiW2Lf5jz2AxbZLJCIYLTNL9QvJWUWfaqXA7WwvWchHmkQf/W7vRGVjsPb/vVxFmhlU6GrSxnvZwzMgJZW5ZGj/V3lqSJtT8Y4FWU+Bh/ikOZeiUfdkiB68uMYnDfhDZvkyOb75o4b3pTTzQ3fIwXHKzKqwlGBhdKKQajNevOQmnYdgztqSfDwj36n3VrfJIOcTHF5TNRB/iUDJ18eZsAGGoM4ELEl0UDiE2LB2uBVh+sDUY8GD9VBEdtMsvt0N+JytwYx+4PFhNTdxshbpRzKtU3UsvtsTU2Rey9xb+bslgEkO+Im5Y8HWpE3dis0gbMlLanIBv9LNwNCCtw4tQl0jnntzlm/DODBS7zaieC/YbophdE2z9PKbk5RieFsSSkcHQEoNPLlFa5U2JE+9qxd3GMGqcFB+zbgG64AyvFD7M7PfDrLbNJY8n14fxw7PpDXjbxH1zS4u4wUVJdkbmP128eIGNbO0sCXmn7uUftceisEV3qrIegagA3xHwmAa0pZSSM3JD0Q+lEf5s3MQxWrALFGR1h36YptxfQG4ABLjMRAHRrxhkv+cf7JhwBjsRo2kitcJisebir+CIF1eX4PYAV0x2FAnX/g/nwBJr0Xy6Ob2Hxo6vNOLJnY6v+FBphiKiQ/FJFHZ9syjHDiEEuATPCpWZTPBBQOyFRxuGCEEFpyHhpvDjEFTvh34cd1xT+Gg5RQRcY9z2kEt5zN8G8IQz1EXMWW0FsrZFDdowMWej
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(316002)(44832011)(16576012)(26005)(38100700002)(31686004)(4744005)(5660300002)(86362001)(4326008)(6916009)(186003)(2616005)(956004)(66556008)(966005)(508600001)(2906002)(8936002)(53546011)(8676002)(6486002)(66946007)(66476007)(54906003)(31696002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWhxL2ZPQXBERmhkbnBqKzV2VS9OM2VJMXVZWE5wOVA1R29ZMCtsZjFZbVNI?=
 =?utf-8?B?aUZ4UC9RdFYxNVNCV0lJTk9iWEpBS1BlODFkVGV2OVQ4bmtDOGNiejErZmVI?=
 =?utf-8?B?SGw1RGJ1R2xpSDVPY2hoZE03aE55WmF1OG9jSzVSeGhTN1hEVm04SURpaGNC?=
 =?utf-8?B?OHJMYUJ1SG5vR1gwdjhUd2RXcm5WSlpDY3NQR2RpOHBjckR0emxJcWxycEY4?=
 =?utf-8?B?Tm9obHJhSnpxNkphU2J5NEZMcmFpT2s4R2czRnhIQUs4NmttRXh0N1NFRG5k?=
 =?utf-8?B?SzRwK3VUbUNENnNnZDF3eUpRcERhelk4R2Yxc1hOTjVWbmZJYmhucHlJRkI2?=
 =?utf-8?B?cW1HWjhnVFhINDM3VmY0eHBnUWlNakhoYkJoQ1hyTy9lTms4c0dOY1dwSFZF?=
 =?utf-8?B?RHNNMER5K1JCWGpVaDNHY01zQm5GSUhWcEh0TlR0TzNhK0w3bmdkUHVGcHlR?=
 =?utf-8?B?QTBMdGttSVI1QWFTZDU4VDVmY0pTTXdrcEJqdzFWYXU2YVN3djkxNEFaQjNm?=
 =?utf-8?B?aElwUG5Kamx2RHVvUTdhQ05NSk1KYnhIdUJuVHRLWmpGeEpoNEppYmNiT2gw?=
 =?utf-8?B?Z1VWQ3RWaHZ1RDFOay8wc1dDNWNhdjNlaGtycEJHa1RoMXRjdklqZ2hHZzFO?=
 =?utf-8?B?Zms2VXZBakRncUdzLzV4bm1Qb1JYK3lCNHJ0WmdMQ0NPQWVqVHh3QXZ5Mm1U?=
 =?utf-8?B?V1ZLOFBZT2dsdXJRSHdUMkc0T1o3TUdhbnJiMWtHSHRvcHhSTkszWU9lRm4z?=
 =?utf-8?B?WnlhendadlM0Qy85MVZyTWRBTXdmZ1I3NzlaaG92WlNyT3R3MFJGNFhqc0I1?=
 =?utf-8?B?UU5RTzNPMGs1UVdOanVXK3BYVktRaWJpSmhMTWh0a3ZmUGRBS0VkOVE2cE1q?=
 =?utf-8?B?OG1hVFpuc2p0R3hGK3o3VGh5dDhPdnRzNm1zTXdkMDhCYjZnYVRQenllQjRF?=
 =?utf-8?B?VmdqczZGb1pBN3g2ajlzVTlhMDROSGNlZlhpVWcrK3BGcFFlOHJTV2hCWFVS?=
 =?utf-8?B?bE9vUTl0NjIvQllSTzNOSUY2NXBOU0gzQkN3Zm5SbkpPRG9OZnIrenJpVzlh?=
 =?utf-8?B?MWNTRUVxUjBtdmNIaVRrUkZQT0ZmcVhET0NVNVpITjNzdnY4NUJqVmFMMGJW?=
 =?utf-8?B?T1lMd1hsNG9CZngzK2kxUThBRy9pTmFrOGtVelo5Skk4SHl2cFNBbWFtL2Rw?=
 =?utf-8?B?QmRwRjArcUJEb0RWd3NDUW9VbEt6Q3pFWC9jSnZodjkyTm95M0psWkFOSjJu?=
 =?utf-8?B?Nm1QRHdwbHl5ZGVoa0pYTHdseVZsZmY0dE0weXhSL2djTXZDZWdMRVlmN3lN?=
 =?utf-8?B?ZjZVRzNrL3lrMGljNjdNL0pjK0NUUWpiN3FZdVdwZVFmSTFYSkZDbUlzU1o1?=
 =?utf-8?B?ZUgzN2xZbTJXc1lwMUgwSmhDYVZiRTNyZCsrdGhOdHozM2VpZlhCa3MzWXlE?=
 =?utf-8?B?Y1RVSmRyNnRLMVh6SnJEVGpyOXpROXQ5RTZTYU9tQVBHZ1BrVnlZeWR5MHJY?=
 =?utf-8?B?bW5LbU5mNVV4MEFZQktSQkwzaG45RktiL1VRbERLaVpwRWFZaSszWnBqL0ov?=
 =?utf-8?B?dmppNFBwZnl0MVlUMmkyT2VWbzdlWm1RWnE3dVlCUVlYangwUGNHTkljVFBv?=
 =?utf-8?B?OW1qSWN3Q205MzdWUkdiNVUyMXZyZ2sxV3EwWk1xME1lZ0dXRGtpOTNvN1RM?=
 =?utf-8?B?RjJRU3B3RVh4SkQzMTMyak55REdZbjRZZEFnNjNUSDY1SVFDRXNyT2RaR3dx?=
 =?utf-8?B?WTB3M3UxY3BxSHkzVTZGUllKSmZpUlcvZ1IxUlNSaDd2WkZqVjNxMXpmVlpn?=
 =?utf-8?B?YWJHdk0zeStvVHQvSVFERnE5ajd0R2tpdFlCSEFsQmZ6Tk90NCtQeFpDekc0?=
 =?utf-8?B?eE5hNWN1WHdnZWYrT3lTU3g0ZmYzQkprcVlqMGNWZXBKZDdZMy9zTDNhclJJ?=
 =?utf-8?B?U25sekxiNUFtZkdmTWdFSEMyd1dyOWsrRjZiN3NSaytYWkc2Yms2Y1BNWElw?=
 =?utf-8?B?Wk92N0ovcWIyNmc5QWlINHVhL2Fsb3B2bjdMRFl4eGxocFZyWHp1QjRZZTdZ?=
 =?utf-8?B?dW1aN2pxTTNlM0xoRUU5VUhyY0xVR1dZSVpCR0tYVmt6RTQ3bXNYZmltYmNw?=
 =?utf-8?B?Y2V0bGVDN3hhamg2L2pDNkJhdzdHNFFWcE1BTGJNbW95U0ZsSlluWnBQazJR?=
 =?utf-8?B?NElWTGR2T0p0dWFZNnI1VmlGc1h2MVlUcUs1TCs3MkU3akNrZnpjMlRMb1RV?=
 =?utf-8?Q?XXccQiiVGW4irtAt7W5ABvT6pIr4s0tDp+ZNt2GotM=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03467905-e40c-4f35-c94f-08d9b4ed96e2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 17:11:18.2195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: skO4Pk+zep5SP7WhuimUmq+QMp5E44C/M/PaseSYsqzKRg/41Hf2TzINUoEU3puwDTF2NOrcjsta53/jFU/daTh6jF3ZUDadzwbaqn0NJpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2710
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10185 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 adultscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2112010092
X-Proofpoint-ORIG-GUID: OFdooQHbLNwTOvfkWPDLwa4v3izt-lTQ
X-Proofpoint-GUID: OFdooQHbLNwTOvfkWPDLwa4v3izt-lTQ
Subject: Re: [oss-security] CVE-2021-43527: Heap overflow in NSS when
 verifying DSA/RSA-PSS DER-encoded signatures

On 12/1/21 8:43 AM, Dennis Jackson wrote:
> Remediation:
> 
> NSS 3.73 [1] and NSS ESR 3.68.1 [2] have been released and contain the
> fix. A patch suitable for backporting is also attached (patch.diff).
> 
> Acknowledgements:
> 
> This vulnerability was reported to the NSS team by Tavis Ormandy of
> Project Zero.

https://bugs.chromium.org/p/project-zero/issues/detail?id=2237 states that
"It's been 30 days since the initial thunderbird patches have been released".

Is there a corresponding Thunderbird patch/advisory/release distros should be
shipping as well?


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
