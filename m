Received: (qmail 3619 invoked by uid 550); 30 Sep 2023 20:39:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3599 invoked from network); 30 Sep 2023 20:39:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : in-reply-to : content-type :
 mime-version; s=corp-2023-03-30;
 bh=U6kGEbOHLNgIQi3TmKF2xhtPd+X+pWnu6FuIj+KPQMs=;
 b=IaWfnS0hRFnT2xNWhOt4blj+gOqM9n1/98o9qcw31H5FoFA3QMPpKc9fnujr9XEjdxa5
 ACn5qXXaQserH/e1D4W1JdBivePYdTtowom5wjSwvc1rDTPutdG7sgh++UJj/HUcG9o2
 CHl6YsHOCJ+7cv2dced1i2dqA8WxRLBft/+FNv72dus2GzWeLEPb0Y/IsOEiKdJlkRAl
 nx0B3nxf0pP5tW/lldGYDrQNJfzaaOFLSE0mpAODXbaFmwdBytT9lDSkOQOq7ZkM9Wf8
 LxhZKThyeKzueHRNRqTPvRsfG5OfviPQ+8p4XVR/nb7vO0ZOC7vrKnZTYLqvuF5g1kVS eA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oR9o8zT8VpJeCMuEWWyIUpPJPfgZiaBAkkLPvJEqFfSvxojI2532nqS0No19AMY9r+C+ot3rTpKZixVJDnM9ReDvVLz4sYIu4Z2vY//KedJ6XaLF86BBe68su2tJXtRV+eoaAxXn0nsA8ZGnkpnv38xHUH5TKQmDFuOOfj5mtnOraFiYJc/DfHrSIg8Hdrc/8HhIJAG5OmKc2vdDUIMTRb1LrM94PRoPzUvxEKY7cfGTqOvTKtpgwedOsHXDNe9k5iufvjFWZ+HL39t2Qlb7GmWH8NAr2Emy5drPDhgotMHArrOSTwtXy6qTuglvB1cw1uXCdAm/cXp/BLKGBQvVGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6kGEbOHLNgIQi3TmKF2xhtPd+X+pWnu6FuIj+KPQMs=;
 b=UO3VMx4IQnOm9WCWBsEmE8dRO5LT4r22JLVZ3a9y6xs4za1PTXQ4MCmbAlvR8qmbhNi36zLRKv0kTH4DXloY9T0JHUejdyheOthfR8T+U3IgJi5fM044fCq45CVRS0JBNYhu5oFIZmDNT+aGHaCjpC6XG/17/34XTDPr6XBWlTpLnls4lgSkL9h1PqLpDjrVGY8Q84ROzKcRb1acWSgychGmdgaKwYFHdtObcUYaDeqKLfrKSpqqvmk3GDS5KlL/il1WGyfzh597itGATQtcE65T+AQIeFylq58Dl2C7nXDEGoBKBXfYO07Ym6smw85cZw9eVm9v4rp7sY9XE3oyvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6kGEbOHLNgIQi3TmKF2xhtPd+X+pWnu6FuIj+KPQMs=;
 b=Cy+Gc3B+xHrP85nqIBxmwNorDmSgRO4wWBinY0vwC33pSSKIwLII5QOAtVCTSqkOZOGThw1IQ+35mDzwAApIBkAR/dGung6v9/I4HSSM6jv7ayHEFUVd55H9+udDsZqByCP7/kRskCO9MDvhwQPdl6M2ORsLxrSF8Q7BQfee2i4=
Message-ID: <6284ffe9-d228-46f0-be8c-c7f78a030523@oracle.com>
Date: Sat, 30 Sep 2023 13:38:27 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
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
In-Reply-To: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CHacIhnRKRHKyiauJ07TeOVW"
X-ClientProxiedBy: BY5PR17CA0053.namprd17.prod.outlook.com
 (2603:10b6:a03:167::30) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|SJ0PR10MB4639:EE_
X-MS-Office365-Filtering-Correlation-Id: 331aa522-08ea-4faf-788b-08dbc1f5390b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gYixdp4r2C0o3dqcX1C5RzQFrcbS/k2i78ql52r2gzkesKDQ0HtApZKbbdGIaVngvaj2mxjaPA1oE342zvkTJMrbYh3SnqEY1O56b3Y94XHzmwU92D54VZDuY4c5LrTRVBHsqCHiIlDjSjS7ceHu7h2Ko453HFaSyMkVBJ/xjgDSrk4dmoVqX+o9KEHwrTRbrnKQ07DsvY95iYZ9nWxmCPkMva0U2Nw5TjhbViq6C1u7j2/ssvruKn8hoDy/4DIWSReDoa0OHqs9IFHrjPrDxvNrJ+k4kr+dca8YnYfy0CFvwnENQiV3WmgEvTv9eaO0jGBUiKbOSCe6qc37YAjrx0qm1qUmCHg+R8ybf8pixHCbkg0mmFVNnRLmR7iDl5w3hWk+ebMB5zZGTVOPKWBCwPPEOE3Mhm8lfYj7DmGFX/l99rzoiMnIncoCZI8msWLby5r5+iHsIBwPPeZYsXgtwipkOkd57fT+u3ftQL7eb4I2Kg2ou3Yyiqk3fOQX7+ZU/HH7Uu6tuY6tJSeYqlO5Wkr5oibmXtymr/f8un9VJYl1H3mpMpUSZB10kQMGM3fOuZw6gQ7caekl0ZgrDbKEwJifiM2qA/Rdk73c/56B5NKrF32+JzWJynwKFUWqcp8jWof6YErnu5btoD+LJb/nCGoGCk8/OlRsCystFEog5B/vLkZ86ftsCRX2F6k8fBDO
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(376002)(136003)(346002)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(2906002)(41300700001)(2616005)(38100700002)(6506007)(6512007)(33964004)(53546011)(86362001)(26005)(478600001)(83380400001)(66476007)(31696002)(36756003)(21480400003)(6916009)(6486002)(8676002)(44832011)(8936002)(5660300002)(235185007)(66556008)(316002)(6666004)(966005)(31686004)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S29CaElNa0dlenZnS1BCbTR4bVVBMzA5eHNsTkxYbnlKZ0tTTXViWDVHbC9X?=
 =?utf-8?B?Tkd6a1pVSTMyaXJ5cXk1V1k5b0pyNjAzNUJQeSs3U2dDdE15MTR5a0FNM241?=
 =?utf-8?B?OFFFKzRqT0J3cFRVSDJ6aXBTQm1NWlJlVlQxL0VpbGxERFhPaStPUzQrdlVQ?=
 =?utf-8?B?UjQ5b0lIamhXeTRsQmhxWDBpcUNUdyt6NUlpd0o2Ky9ocSthSGcxR1NtT3RO?=
 =?utf-8?B?OUNyTXpWcmV2OVhLQi9LYUljeE84dlBpeTlPTnF3dUJZNUtkU3RDdHV6c2hF?=
 =?utf-8?B?ZmV5VFp2d281Yk11NkFtQk1qQjh2T0tvQUJNT2NFenZOUkl0cWZXbUhzdWhE?=
 =?utf-8?B?ZWxqTE0rWU8rUGV5K05RWmxSL2VLRGFZVlpoYkVGS2UzRTZJaytLYzBqSm5X?=
 =?utf-8?B?S01KWnRQbnhsQ0pLa21MMlZNbEV3UmtqSmExL3g3aXFTNzNpV3RNQUZzUzFE?=
 =?utf-8?B?Y2lVdzFRY3lBVVYvazRaRVI3UEQ4YmxuS2hndUl2QW9PZk1ISUVMRExtcDJR?=
 =?utf-8?B?cnBZUTJUM29DYTRHNzdkQmV0VzU5OUlrWExlYUFIdFNaaFA1TUlxcDNJa2lV?=
 =?utf-8?B?dVBrVDljZ0tGaGxkUHdyRVk3VDNlem1jdmJadGxzekNubStGRnAwUnRWSXZI?=
 =?utf-8?B?Um9PRVJ3ZDhlSmU5aE1OWnUyRXpvS3dpakFQVVcwZzgreTNzYkpyaEhNUjYr?=
 =?utf-8?B?V0pVcG8vMlUzajd3TnVBYnJjTitCdjR3akx6YklrbUhHMldTMFpHL0dGNHRM?=
 =?utf-8?B?eDZrZGVqUnA5anNFY3BpZ0FldDBwUExRWXlDa0V0N3grTWNxb3VyQk44MFV3?=
 =?utf-8?B?d0RqNnZxRFJGV05Dbng3UnU0RVc1YVNzWmN5djVaU0N5TEZZNTFQVnNTUHJZ?=
 =?utf-8?B?RG5DaUo2QjlIUFE0eWZPN1hWenZtZC9TVjhiUmRwdlRHU2ZSV2F0Y0hteklW?=
 =?utf-8?B?aEhOWitsVDVlOW1Scys4cjZyWVBMT1ZZSzN2WWUzeitnM3BzcWZWWCtpeXIv?=
 =?utf-8?B?ZHVnMEtvc2pqdG02d0kyV1ZGTVYxYzEwTEs0d1YzRENpdU9sR1JteExFOFFC?=
 =?utf-8?B?UVBWMzVpb2NyQzNTVldMbFJacEJmVk5CUVplNElUL0U3OURaWmRIdld6WExu?=
 =?utf-8?B?SWhIVHE1OTVZeVJnV0NwdmJMaEhkYWkvVHg0dXRnYXB6QURQNUxNdzhLRVE3?=
 =?utf-8?B?dElOaUNXR2VONlp6dHlaajRBN2ZhdEZjcVEzQWhSeUZ3d0ZzYXlEQWxPSmhy?=
 =?utf-8?B?WWFwOFdjdmR4b3pOYkhpM0JDVy93U1MyeFdtTnZSRnBORXpMUy9TR081MGJS?=
 =?utf-8?B?bzQ0cVBpMTA3aXM4VnNsRFZkdW9hQlUrVUZ4b1lOSUVVZG9BWTFrdGZTM2JM?=
 =?utf-8?B?RWdmMFY0L2I1M2pSRVYzOThaZDdlYi9pZ0x1dG84eWlnRnJwWXZUWHRUMURT?=
 =?utf-8?B?QktmSE5qYWhYRzBLU0pjNnNUNSs4ODZQNHhndHVDWjlZUGR2QTBpbmRPRkdp?=
 =?utf-8?B?YTRYYVZjTHo5K2xVVUwyS1FUWEhWVmI1Mkh2clJhUjlzNmdjR3drUkdhc2Zo?=
 =?utf-8?B?a3UreW5RWEhXTUlrL3FJRGlCWkd2UldlOEI2VU50NEJQUXNtdGtBU1pLRlBY?=
 =?utf-8?B?Y0xMK1hvUHlKWGxpVkNXZTZJOS9wTWtzRzRUYUtzWEhCcFBad21TWGJWcjcy?=
 =?utf-8?B?NFp2WjZWdnVvQmxvU2lVeHEvbXhQQ3NHU3FpbG9yRk4zR2l3dFZMekRYUE1L?=
 =?utf-8?B?ZDFiMWYwMFVWL05mOS93clk2Z3hqVUJxM0hjdzFVQlNtcnhSZWVvZVNETGVI?=
 =?utf-8?B?c1VyUDZYNUZxWE9taDFjVzhuR3JzZXQwbGtxSU9XY2xFaDdCRyt0dmxlSy9Q?=
 =?utf-8?B?ZGpsKzdqNU11aXlicDNSUUZMWlVMcU5pTFU2R0VHcHZYcG5iVk1HVEVCeWFy?=
 =?utf-8?B?Z09STUZiaVlBNUxHVjlMYThrM1VMR25UbFZXVkdXWjB0VVJWWk5Sa3hkMWNB?=
 =?utf-8?B?Vm1IcFpCUjhLcG1YbnFzblJmTTZHTkFvS3BkN1gxYWdiYWl6ZFpZSkdyN2Fh?=
 =?utf-8?B?S0N4WVc2TEdBUUpUUDFJdHZ1OFNLV2kxdkhHbzdlYjN4UzNUTWRMSGpTTTRR?=
 =?utf-8?B?RWl0VVFveTRoYjh0dFd6N01Zc3lwOElxNjhvUkpQOTdLRGZxeXVEU0JnOFdi?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kbCvprg6wesOPiBBigreO12uPfcy1fkhaU/nR+weqWCdgqpjbUcgXi5v4JWYtEQD+03Z+YgGzj+k3WJDPswSB6h4imp8A1NbMEKvYJJpcmP0ptv0betuV2LIRMkLc8Ab1VAO5IpxXseYWYokSvTEJR3faTbrTZdMBO9v0U7WCIkdU1g/efcFC4ZZPzRewbB/jCE7l6Es4Vtb3Xd40uwyVyZLfM3vbcV6JzNOapR8i9qVx/NiNWkAgfQKIfnNe2Hgzpjwf5cHWK9zIIu4avhFtt5TVmW1wAIUMobZ4h5Lxy8fCmWtpTMbZjK+Bc1IS+E7YF5PIfxFYMsd0NenqS99uCkFxiWfP41p/cv5Hfg/PiEnsyUt3j2LdhQ7jO6Pbln0dksqAXXaOaurmcDbsoUSaeRta9m/gdW0Kq2ZjMONkjG8kj2SeJx6ygiHnkL88iE70eNicjnzjRbsuBW+y7r4iLsee5FBrBBqsojelejH3Px83KGYdAsNSof1QYi2mL7vGWHiccIOR0nftIA+uJm6FfWEDDpPZ4U+3oEyYWiqnb1HqpLzgzTuXayVI5B/wJDJRbPaTJGPlyitjAfB/2/YHNQK+br+BeaBoBiJsdP7gJkFwXvkYMFL6yrTVKLn+lAjJKIFRFTffX0l7WZTlaU74SxK7Y0P8F20n9CEV+Zw+PEl9YZrUFvXW3nQkQbJLBdv+y0Yt79tI2zNIyAq0Aq/lmuwxUSKFi1bp8ULA9Csqg8j4a66hxGYeT/F+SVYsgPaiW3sECvnBvGgo1f5NT1Zog==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 331aa522-08ea-4faf-788b-08dbc1f5390b
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2023 20:38:37.3885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3KvxTcLBQR704aixJ9J7tYEYyv2CXLa9bPVdSfjqPp3HgElUUyrxR+tIf0wuvkt4Wcx+gSfPGNE2Y2HEZvypsV8ErftKsBv+0ndv/bg6K7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4639
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-30_19,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309300171
X-Proofpoint-GUID: 4MMhmB7CFWbf310hJHnT5aGMzx3mGiEC
X-Proofpoint-ORIG-GUID: 4MMhmB7CFWbf310hJHnT5aGMzx3mGiEC
Subject: [oss-security] Re: CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx

--------------CHacIhnRKRHKyiauJ07TeOVW
Content-Type: multipart/mixed; boundary="------------M89HBhugaZ07bVThRfwt0wr6";
 protected-headers="v1"
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Message-ID: <6284ffe9-d228-46f0-be8c-c7f78a030523@oracle.com>
Subject: Re: CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
In-Reply-To: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>

--------------M89HBhugaZ07bVThRfwt0wr6
Content-Type: multipart/mixed; boundary="------------FvHKF6igc99dJ5zRfAD3K00T"

--------------FvHKF6igc99dJ5zRfAD3K00T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8yOC8yMyAxMTozNywgQWxhbiBDb29wZXJzbWl0aCB3cm90ZToNCj4g
SXQgZG9lcyBub3QgYXBwZWFyIHRoYXQgbGlidnB4IDEuMTMuMSBoYXMgYmVl
biByZWxlYXNlZCB5ZXQsDQoNCkl0IHdhcyByZWxlYXNlZCB5ZXN0ZXJkYXks
IHdpdGggdGhlIG5vdGU6DQoNCiAgICAiVGhpcyByZWxlYXNlIGNvbnRhaW5z
IHR3byBzZWN1cml0eSByZWxhdGVkIGZpeGVzLiBPbmUgZWFjaCBmb3IgVlA4
IGFuZCBWUDkuIg0KDQogICAgaHR0cHM6Ly9naXRodWIuY29tL3dlYm1wcm9q
ZWN0L2xpYnZweC9yZWxlYXNlcy90YWcvdjEuMTMuMQ0KDQpDVkUtMjAyMy00
NDQ4OCBoYXMgYmVlbiBhc3NpZ25lZCB0byB0aGUgVlA5IGJ1ZzoNCg0KICAg
ICJWUDkgaW4gbGlidnB4IGJlZm9yZSAxLjEzLjEgbWlzaGFuZGxlcyB3aWR0
aHMsIGxlYWRpbmcgdG8gYSBjcmFzaCByZWxhdGVkDQogICAgIHRvIGVuY29k
aW5nLiINCg0KICAgIGh0dHBzOi8vd3d3LmN2ZS5vcmcvQ1ZFUmVjb3JkP2lk
PUNWRS0yMDIzLTQ0NDg4DQoNCkl0IHBvaW50cyB0byB0aGlzIGNvbW1pdCBm
b3IgdGhlIGZpeDoNCg0KICAgIGh0dHBzOi8vZ2l0aHViLmNvbS93ZWJtcHJv
amVjdC9saWJ2cHgvY29tbWl0LzI2MzY4MmM5YTI5Mzk1MDU1ZjNiM2FmZTJk
OTdiZTE4MjhhNjIyM2YNCg0KLS0gDQogICAgICAgICAtQWxhbiBDb29wZXJz
bWl0aC0gICAgICAgICAgICAgICAgIGFsYW4uY29vcGVyc21pdGhAb3JhY2xl
LmNvbQ0KICAgICAgICAgIE9yYWNsZSBTb2xhcmlzIEVuZ2luZWVyaW5nIC0g
aHR0cHM6Ly9ibG9ncy5vcmFjbGUuY29tL3NvbGFyaXMNCg0K

--------------FvHKF6igc99dJ5zRfAD3K00T
Content-Type: application/pgp-keys; name="OpenPGP_0xA2FB9E081F2D130E.asc"
Content-Disposition: attachment; filename="OpenPGP_0xA2FB9E081F2D130E.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/n=0A=
Z1KboV9Gq5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2g=0A=
EQfPiyBw+trIppWFRV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdE=0A=
a6f4uLqoNHP+m4yYnzapFuMD/R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx9=0A=
8qUR473l4buXjHgDkkXXlHqdzil1vK85PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwV=0A=
Pb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5vR7PdjM32ZJCN2+aM4dYfNzQ=0A=
xQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJvGAENBHSH1QjpZMJG=0A=
CTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLBido3DtAE=0A=
TbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w=0A=
ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsJlBBMRAgAlAhsD=0A=
BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAUCT2fPgQIZAQAKCRCi+54IHy0TDrxZ=0A=
AJ4ucO4mWDBUEnPni/KikswECcSSQgCeM0sYiNPOo7o6I20jWb+MpeVttA3CawQT=0A=
EQIAKwIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAlF50WIFCRRD2HgA=0A=
CgkQovueCB8tEw7QWQCfSIFVTaBSD0Y07DY3EhWi857g0SYAnAv1oFd9diK8UkPD=0A=
0QMhIKM0gfSnwoIEExEKAEICGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAhkB=0A=
FiEEShk8BtNefGcPpO8LovueCB8tEw4FAmRCzZ4FCScM1LQACgkQovueCB8tEw7V=0A=
6wCdHgVUPrQGkNj9smnlELVVeE5WWjgAoImCxB5V4YvEOUy6ECZtwKQ6Np+pzStB=0A=
bGFuIENvb3BlcnNtaXRoIDxhbGFuLmNvb3BlcnNtaXRoQHN1bi5jb20+wmsEExEK=0A=
ACsCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAhkBBQJa2+OYBQkdpequAAoJ=0A=
EKL7nggfLRMOYCwAni5vIJWdzAq0AZUjH3CEOrt/pLFmAJ9cBVZSpFHbRz3wnf2U=0A=
tO1yilkN+MJmBBMRCgAmAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AFAlrb454F=0A=
CR2l6q4ACgkQovueCB8tEw4bQwCfeZS+xZY/BM3VqmKILu1fVuV5neIAoItLzd4o=0A=
JT1TR9oBznE6XTcpdMHMwmYEExEKACYCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX=0A=
gAUCWtvjngUJHaXqrgAKCRCi+54IHy0TDhtDAJ95lL7Flj8EzdWqYogu7V9W5Xmd=0A=
4gCgi0vN3iglPVNH2gHOcTpdNyl0wczCYAQTEQIAIAUCRpv6agIbAwYLCQgHAwIE=0A=
FQIIAwQWAgMBAh4BAheAAAoJEKL7nggfLRMO9pkAn28Qz0g8P9gddIv0X4KShP2l=0A=
fwgXAKCNDnG1x5eRtMZVl06JxnbbaZX0ycJmBBMRAgAmAhsDBgsJCAcDAgQVAggD=0A=
BBYCAwECHgECF4AFAlF50WIFCRRD2HgACgkQovueCB8tEw7qxQCfSOXeH2tjg4nX=0A=
cu7uewpyXKEOk6oAoIWBOZoMZG4NHGWguD2N+2uftru+wmsEExEKACsCGwMGCwkI=0A=
BwMCBhUIAgkKCwQWAgMBAh4BAheAAhkBBQJa2+OYBQkdpequAAoJEKL7nggfLRMO=0A=
YCwAni5vIJWdzAq0AZUjH3CEOrt/pLFmAJ9cBVZSpFHbRz3wnf2UtO1yilkN+MJ9=0A=
BBMRCgA9AhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AWIQRKGTwG0158Zw+k7wui=0A=
+54IHy0TDgUCZELNngUJJwzUtAAKCRCi+54IHy0TDunHAKCKZyiF/IwgoqYQr4Sj=0A=
puMD64swlgCfdkI2v8kaaFwSrEp3AeYvcT2psPTNKEFsYW4gQ29vcGVyc21pdGgg=0A=
PGFsYW5jQGZyZWVkZXNrdG9wLm9yZz7CaAQTEQoAKAIbAwYLCQgHAwIGFQgCCQoL=0A=
BBYCAwECHgECF4AFAlrb454FCR2l6q4ACgkQovueCB8tEw6whACdFj9U5SQuhv0e=0A=
8BQvI4orGPzUMSkAoImqdVB7sU7Z++djBrj3uJc4m0F6wmIEExECACIFAk9nzt4C=0A=
GwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEKL7nggfLRMOZgYAnRMF9y8X=0A=
wVMnsrTRBRZvVb/oFyhoAJ9RayEpD+vnrkoMIBr4qmpgH1bjOsJoBBMRAgAoAhsD=0A=
BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAUCUXnRYgUJFEPYeAAKCRCi+54IHy0T=0A=
DonxAKCPcAgXNojuujUg5Wqi6v0RBFVSUgCggq1SsVEdq9NDWvXvkeGyNaBivSLC=0A=
fwQTEQoAPwIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AWIQRKGTwG0158Zw+k=0A=
7wui+54IHy0TDgUCZELNngUJJwzUtAAKCRCi+54IHy0TDlIAAKCMjV7lOZDqLaWa=0A=
yrz640AE27DwpQCfcJIf59yAKG1emgy29ajreUU9z6fOwU0ERpv6bxAIAJp5aUlh=0A=
o5rUhpS6ik7spsAQFPRuycPKMNu0J4F0v/OoPz085soV8ytLj4HqCGk2Zamh1jSg=0A=
liZwuk9m7V7Wgxx+nBJawpWDX/eKLObErfDwQ4dfOFvjbXLQMmNnQNaUGIWLPP3l=0A=
8GuBOHMq60Bu+TPgh627vUntL5REQEQqTXIzWC6U10QsDblLwIvdOVSdGF5xl/N1=0A=
myXzSKvrsZwWtoFc8G9v9hcCjhtN1sm9b7Ojc51iZXvcetcvPy5RA6AUW3yEExae=0A=
dUdLnvIF9sjFYIfJWFVYh2AgavnGre6fF+NV2v3zfx3wRT7H9//m4YIDYJmgZgyQ=0A=
ccXegTwfGBIq3osAAwYH/1FiMUMMES5Ilz2nDqId+DCWECAU6wgvIFRcXrZWxDxB=0A=
+ZrnmTCXoAD0xedpfOkRHp8XTVc/9MU+wQ+lZRx2OQ6MJW0XGuFvHm94KZF/8HzW=0A=
A2Ah7U4n0+3sLpk6zWceZq2zZNF0yVTjwD98+xNK1Q9sP8aOKdtg8yMH3hisKR6r=0A=
dW+mfX5q0Q8Gol2hZsFH/qyIhnPzhXDknuOh8E5iMkzrejVXUEn++Yzj23XjP59S=0A=
ObLznVkyxI+kBI9qvVEPfFBDybjHWqLcgRcCpXAzjizEi+/d31iDa2ErJHV4R42o=0A=
becFqiPnoDtiX3IiP7z9fmxM4aWPZZRqvq+1ht5wkn/CSQQYEQIACQUCRpv6bwIb=0A=
DAAKCRCi+54IHy0TDoLoAKCHYRpw/XfyEunw1YL/uMZzl78qIQCdFVcXNbqD83qV=0A=
hW4Ly7hyDL8o0aLCwa4EGBEKAA8CGwIFAlrb470FCRLIEBwCKcFdIAQZAQoABgUC=0A=
UXnVIQAKCRDP3xSIKMZCp9bmD/9050ke3bdx0zLPlUANoTu74vQT55f0a0cXgnrj=0A=
15ey6Ln0S1seHadd0aF3lKpDwUOL0YIQppDhLfWf9gEsQEKSPtHQgyKRbajvz8nE=0A=
Oi8Hz5ovrTqGCZp81XHVoiyEiCWuXxeW7eyN4C8bjxbpiN0vaZ+sgMeMhXA5mwyK=0A=
Fs4m9JPpDe6kd2eaMO0zkcJCYjk0RcNZiPohm6EmeesNbA2zJhXgo+hQHEByojIJ=0A=
5ltWyy5Zacc9dfxVq9Wr3y+lXKd8bMZiklsOPX0L+60yMoYjl1y9tVq5wDtf+iS3=0A=
GvFLpIEOG4hoAT3hkeVvGp/Id8RMj8trZn8AsMC1h2ElHaBKRMfIpJbVCpiW6VJ8=0A=
H/+WedrjiaZO5E41sM2BvQUZK+2wExnzSIcOo+BR9LrSTEJ8WuxIZ9MVT5fhADOl=0A=
O1QkRyv4ngdQsN4x/A6CCFV+YrEVdZ+53zENoJe7LAtO1WAwJmng/swDK4mVrGwV=0A=
O75zVWXL3iCuThQy0AssyoJdKiwDj3SAtNJ2DcdLDG3ZD8sl3Ljbtkgy+MZciu6e=0A=
zxT86Yv11WBa7dskewvrxKTHxOzrepM31Bcz88H7xXA5oLs8n6Dq3jQOV46Z2xLx=0A=
w3fXJ/koHyuwvi6fi7XKswl+mdJuU8y7nAmLeSOgD4N3lkWrH2dOLjAGN9VgYI+y=0A=
V6rn0gkQovueCB8tEw7nxACeNnR9mrdd+VMF32hm6lu54QUhWiQAoJLzrvm3uK/H=0A=
XyfDrNoGAjiyAj+3zsFNBFF51SEBEACh6YzpmNOep9LbGaFvauXoLDHJebSgvLop=0A=
q4TtOZ56vuf+tP2HnQvvlfXPW/9/1+ztvC8gZALQYA9MSWUg0NA4U8ygKegM40LQ=0A=
byOvLopxsMUo0/qEKTzMaoQNSNJM6BAwnRKlfh7FTgBHWwIv7T/W23Uw88FXPDFg=0A=
64mpgVKnOd0W9NDH38veN+VIE0uIAITMADYcul2ZjjAYSEzs8RSVBA0wybS2xNG9=0A=
Yz0UEuzR0IGpNYp5rrzzHN8ALqBHEgkrdcbqW2LAaFzoyucAv3hNSyHWaEcltjpE=0A=
9eNA6g2fM30SA/OtIZ4q52IG9PUzzbY/d6bnVAFLek/frXCzeP68YcRzsLHuuihh=0A=
zuG0Na2epn3KOkmHfVetHC+oQtnjHnMsWZYjLte5Y+xF/JcVB/qJiIB3OxxqMlEe=0A=
lflgetHMVo+b9Oc3Xi3mdmiwXDxYcZXwxEpvH+Hs3SUg0tUGZgtD+Yd0SX4YX5nQ=0A=
a/JB86+9ddQ9fzu9QL9VVeRcifWMVEsaeCD7syuyW24FR3AOj716w81lLJZmYDwA=0A=
6Sh+IU5hvzXQqoRF3Ln72OrOcjZLAfF90Xjb7kksnxp0c95L7citF8wuykV9j6ri=0A=
yOgPCiaax8GRqhAdTQxvG9ommJ4ITo8nyGBFUBd5xn2gcL+JawjxKGUlGivH/zUG=0A=
YzVPDUMk5wARAQABwsGuBBgRCgAPAhsCBQJa2+O9BQkSyBAcAinBXSAEGQEKAAYF=0A=
AlF51SEACgkQz98UiCjGQqfW5g//dOdJHt23cdMyz5VADaE7u+L0E+eX9GtHF4J6=0A=
49eXsui59EtbHh2nXdGhd5SqQ8FDi9GCEKaQ4S31n/YBLEBCkj7R0IMikW2o78/J=0A=
xDovB8+aL606hgmafNVx1aIshIglrl8Xlu3sjeAvG48W6YjdL2mfrIDHjIVwOZsM=0A=
ihbOJvST6Q3upHdnmjDtM5HCQmI5NEXDWYj6IZuhJnnrDWwNsyYV4KPoUBxAcqIy=0A=
CeZbVssuWWnHPXX8VavVq98vpVynfGzGYpJbDj19C/utMjKGI5dcvbVaucA7X/ok=0A=
txrxS6SBDhuIaAE94ZHlbxqfyHfETI/La2Z/ALDAtYdhJR2gSkTHyKSW1QqYlulS=0A=
fB//lnna44mmTuRONbDNgb0FGSvtsBMZ80iHDqPgUfS60kxCfFrsSGfTFU+X4QAz=0A=
pTtUJEcr+J4HULDeMfwOgghVfmKxFXWfud8xDaCXuywLTtVgMCZp4P7MAyuJlaxs=0A=
FTu+c1Vly94grk4UMtALLMqCXSosA490gLTSdg3HSwxt2Q/LJdy427ZIMvjGXIru=0A=
ns8U/OmL9dVgWu3bJHsL68Skx8Ts63qTN9QXM/PB+8VwOaC7PJ+g6t40DleOmdsS=0A=
8cN31yf5KB8rsL4un4u1yrMJfpnSblPMu5wJi3kjoA+Dd5ZFqx9nTi4wBjfVYGCP=0A=
sleq59IJEKL7nggfLRMO58QAnjZ0fZq3XflTBd9oZupbueEFIVokAKCS8675t7iv=0A=
x18nw6zaBgI4sgI/t8LBrgQYEQoADwUCUXnVIQIbAgUJCWYBgAIpCRCi+54IHy0T=0A=
DsFdIAQZAQoABgUCUXnVIQAKCRDP3xSIKMZCp9bmD/9050ke3bdx0zLPlUANoTu7=0A=
4vQT55f0a0cXgnrj15ey6Ln0S1seHadd0aF3lKpDwUOL0YIQppDhLfWf9gEsQEKS=0A=
PtHQgyKRbajvz8nEOi8Hz5ovrTqGCZp81XHVoiyEiCWuXxeW7eyN4C8bjxbpiN0v=0A=
aZ+sgMeMhXA5mwyKFs4m9JPpDe6kd2eaMO0zkcJCYjk0RcNZiPohm6EmeesNbA2z=0A=
JhXgo+hQHEByojIJ5ltWyy5Zacc9dfxVq9Wr3y+lXKd8bMZiklsOPX0L+60yMoYj=0A=
l1y9tVq5wDtf+iS3GvFLpIEOG4hoAT3hkeVvGp/Id8RMj8trZn8AsMC1h2ElHaBK=0A=
RMfIpJbVCpiW6VJ8H/+WedrjiaZO5E41sM2BvQUZK+2wExnzSIcOo+BR9LrSTEJ8=0A=
WuxIZ9MVT5fhADOlO1QkRyv4ngdQsN4x/A6CCFV+YrEVdZ+53zENoJe7LAtO1WAw=0A=
Jmng/swDK4mVrGwVO75zVWXL3iCuThQy0AssyoJdKiwDj3SAtNJ2DcdLDG3ZD8sl=0A=
3Ljbtkgy+MZciu6ezxT86Yv11WBa7dskewvrxKTHxOzrepM31Bcz88H7xXA5oLs8=0A=
n6Dq3jQOV46Z2xLxw3fXJ/koHyuwvi6fi7XKswl+mdJuU8y7nAmLeSOgD4N3lkWr=0A=
H2dOLjAGN9VgYI+yV6rn0ryRAKCQbM+fmYHJdiIJEKRMVERryBqBmwCdFva+yZXD=0A=
OW4qv6rNje1X/ghKjH/Cwa0EGBEKAA8FAlF51SECGwIFCQlmAYACKQkQovueCB8t=0A=
Ew7BXSAEGQEKAAYFAlF51SEACgkQz98UiCjGQqfW5g//dOdJHt23cdMyz5VADaE7=0A=
u+L0E+eX9GtHF4J649eXsui59EtbHh2nXdGhd5SqQ8FDi9GCEKaQ4S31n/YBLEBC=0A=
kj7R0IMikW2o78/JxDovB8+aL606hgmafNVx1aIshIglrl8Xlu3sjeAvG48W6Yjd=0A=
L2mfrIDHjIVwOZsMihbOJvST6Q3upHdnmjDtM5HCQmI5NEXDWYj6IZuhJnnrDWwN=0A=
syYV4KPoUBxAcqIyCeZbVssuWWnHPXX8VavVq98vpVynfGzGYpJbDj19C/utMjKG=0A=
I5dcvbVaucA7X/oktxrxS6SBDhuIaAE94ZHlbxqfyHfETI/La2Z/ALDAtYdhJR2g=0A=
SkTHyKSW1QqYlulSfB//lnna44mmTuRONbDNgb0FGSvtsBMZ80iHDqPgUfS60kxC=0A=
fFrsSGfTFU+X4QAzpTtUJEcr+J4HULDeMfwOgghVfmKxFXWfud8xDaCXuywLTtVg=0A=
MCZp4P7MAyuJlaxsFTu+c1Vly94grk4UMtALLMqCXSosA490gLTSdg3HSwxt2Q/L=0A=
Jdy427ZIMvjGXIruns8U/OmL9dVgWu3bJHsL68Skx8Ts63qTN9QXM/PB+8VwOaC7=0A=
PJ+g6t40DleOmdsS8cN31yf5KB8rsL4un4u1yrMJfpnSblPMu5wJi3kjoA+Dd5ZF=0A=
qx9nTi4wBjfVYGCPsleq59K8kQCYx1CnlZcq630ITy9dB/aHCQry2gCbBwZ2Rsf9=0A=
kr05S8uLhlwW3vRSvRvCwcUEGBEKACYCGwIWIQRKGTwG0158Zw+k7wui+54IHy0T=0A=
DgUCZELNigUJHC756QIpwV0gBBkBCgAGBQJRedUhAAoJEM/fFIgoxkKn1uYP/3Tn=0A=
SR7dt3HTMs+VQA2hO7vi9BPnl/RrRxeCeuPXl7LoufRLWx4dp13RoXeUqkPBQ4vR=0A=
ghCmkOEt9Z/2ASxAQpI+0dCDIpFtqO/PycQ6LwfPmi+tOoYJmnzVcdWiLISIJa5f=0A=
F5bt7I3gLxuPFumI3S9pn6yAx4yFcDmbDIoWzib0k+kN7qR3Z5ow7TORwkJiOTRF=0A=
w1mI+iGboSZ56w1sDbMmFeCj6FAcQHKiMgnmW1bLLllpxz11/FWr1avfL6Vcp3xs=0A=
xmKSWw49fQv7rTIyhiOXXL21WrnAO1/6JLca8UukgQ4biGgBPeGR5W8an8h3xEyP=0A=
y2tmfwCwwLWHYSUdoEpEx8ikltUKmJbpUnwf/5Z52uOJpk7kTjWwzYG9BRkr7bAT=0A=
GfNIhw6j4FH0utJMQnxa7Ehn0xVPl+EAM6U7VCRHK/ieB1Cw3jH8DoIIVX5isRV1=0A=
n7nfMQ2gl7ssC07VYDAmaeD+zAMriZWsbBU7vnNVZcveIK5OFDLQCyzKgl0qLAOP=0A=
dIC00nYNx0sMbdkPyyXcuNu2SDL4xlyK7p7PFPzpi/XVYFrt2yR7C+vEpMfE7Ot6=0A=
kzfUFzPzwfvFcDmguzyfoOreNA5XjpnbEvHDd9cn+SgfK7C+Lp+LtcqzCX6Z0m5T=0A=
zLucCYt5I6APg3eWRasfZ04uMAY31WBgj7JXqufSCRCi+54IHy0TDiRsAJ97uVS+=0A=
ZHPJ6P8o4rac77WTtYgYZgCfdka/GHv4Mk1MfL/MFS41nSdZZvw=3D=0A=
=3Dd197=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------FvHKF6igc99dJ5zRfAD3K00T--

--------------M89HBhugaZ07bVThRfwt0wr6--

--------------CHacIhnRKRHKyiauJ07TeOVW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEL328rVsw5mi71RbBz98UiCjGQqcFAmUYh0QFAwAAAAAACgkQz98UiCjGQqfs
lw/+J8F/hjnSNWNAGwLeVtgA8zXDsIIXQVtbqb+2WyQBBbyKN5+jtS+s8+/bXEbBUmqHjWl6mt3a
btIZl6wHtT/kjL1gYO9ZWe69HWVaEQVnhVmommK2nvDX+KmReNmVYp6HcD5/m/8tj+qPDJbICF5l
SjrejELYv1PYS7frJJJUZuKAz2utpuQz+aUMWJOY/PSiriYF1VCfwl7h8KgjCx79VNKR5KX1gr8D
xeOPQjo7ulanJHXmorZ6+nxAoADyR6bpDB5ONdpzkUj7b6eJV+ivOfHm2Gj+up+41FM9fFwRWec9
XFJQ8KwYcnfvpij3fZis0cKNCAKVmOFq+UALe7cMdhpU87bza7+WXZlskHadBv6JATpk+G9q2tfE
HiGzshG29FwLhmvZxkXAUHoeIIxad081y5olCqXyNBwH/dhNrdPOTk7Si9Qn7ogCUTzdhdo8MeJJ
QXcoYQ7QkmLa05Qh0C/xlfQdguU0fLLBu1qc7tZCDPuaD4D6W/msG4yVwIL264rEH9h1zvwx0LJm
aYKWmH3zQXod6JN9P+3iMpvZx3UqohupFXyVnivPeQ0wZlyaiSemiCndlTxDOWT12RWH+lUtFhu5
ibAMEVcLjplKhthHOR95C1v011oLd2auDwG8jqcyIO+u/E4fRAFaTUqID1Zq88W6RX+lvw1V37sq
LRM=
=JHtC
-----END PGP SIGNATURE-----

--------------CHacIhnRKRHKyiauJ07TeOVW--
