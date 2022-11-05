Received: (qmail 15424 invoked by uid 550); 5 Nov 2022 01:30:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15391 invoked from network); 5 Nov 2022 01:30:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=content-type :
 message-id : date : references : subject : to : cc : from : in-reply-to :
 mime-version; s=corp-2022-7-12;
 bh=GjCcyu244j3wn1KBajDBcjYYnucC52I11wmMySAv7OA=;
 b=BR9qIxibQj9r2e/HYPuxRneHMQb0xSzLYsLMqnabpFsfG47OxF/u+etsGKuzIXDS69Jt
 m67/tbmpD5FAtjbF4hzDy4he/3vPZAWb/HSorTGNJ8w9KIO4fSiZdi02LaCx4uoTN4UP
 fBxtazeFCSa6h7SbkgdduAEiFsaWsEU5eg4ScrzW/7DDJEY6pW6i75Wz5+LU3Tb2WBw2
 yy5LPsTowQPB7/xK9hum4TEpwoTlRghN2LBtMQblWOzSeAJ1BooGmaggRFUhprdo4Wny
 Cdq7yjImqFiok/di0xqqsNfGmNcGLjRx93j9h1iRz5tUZVrui62bIZV7I6hmrMGJ4my/ qA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWRtHi73EWFs1TGbhXbHUi7JEJbaRe8nMj+WhUd/EoAkmnHesG3wPHp1M/kuQziHiaPSl1/MGY03+sKuGcgRxQLUUf458Gp1yzWckux9g/0/qirgH99nWdDMFuDq/6V72CnBudZsK6ocFUz0rYDZwYWBlxSaKmGqDVlhQPG6PkrFnsJxXauZL7FirbZBsP3Ui307iy0JiAUZmAyZl1OW6zbb+tefiu8cQzyxSScQy6To/eWoQZ4HwRs9JoqfH1btT+jtbY7uEvmXVQPnv4Y6vhMbQEH6njWObj6NiZRqbeNKmMDTXs1LuOXvX/RxgJcCGBJoxl5tpXOIM07eMa9yng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjCcyu244j3wn1KBajDBcjYYnucC52I11wmMySAv7OA=;
 b=XD6M8OhN+XYGfpbizp5bX/IFgN8CQyTBAC4U+uyTU7VJ4iRvhNB427cNOgJ7EwjCHsgP+JFNDH60MSPO6JDoXwPelDvP5z1evxYVMz3gR+h71eSr08W557kWn3guygBdBjmZO+4xAt+U6UVwjgggE5pf3xw3U7pcfQ1dIKqiAJHn3KOUVQZXiUJ/Huk3LSyLVvgyCclv8YHjPCZZYwMA7JWNu+TFzQS3ZEKOIZKo3Qjluqe2UT9LMhr8CQA7Z+bt6ssmgPfFr2k8IlnayYQ3q7VEArkYMZgvuCXQlFzfscwTaylqAj4UT0wELPdtoQvixVcSlMdoMCLT1ltqW89vnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjCcyu244j3wn1KBajDBcjYYnucC52I11wmMySAv7OA=;
 b=Yhmnr4cK+cmlD8K6zi43Ex5/7yPKJBid38B/mOJWWB8K+T2D1uzmZZpRISVLH+UN+HFVZ4iAV4gfKpuwxrRApIHDi0tTR6/JzkjJWWR+pidOk2XeBA/jhPtcz5aycF8rpuuLj9WvEPPsLkNHoXJjYQNICFpWu3qLglKigj2BW2c=
Content-Type: multipart/mixed; boundary="------------5QGJbdxItugJkEcESTmB6m60"
Message-ID: <559a106a-edcb-f904-97db-61da13efe6ee@oracle.com>
Date: Fri, 4 Nov 2022 18:30:26 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
References: <20221102173714.xarujxhg727c46uq@framework>
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <20221102173714.xarujxhg727c46uq@framework>
X-Forwarded-Message-Id: <20221102173714.xarujxhg727c46uq@framework>
X-ClientProxiedBy: SJ0PR03CA0231.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::26) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|DS0PR10MB6728:EE_
X-MS-Office365-Filtering-Correlation-Id: b94fa097-5b6e-4078-1ee8-08dabecd525a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Lkx1OHSeDT3dCLYlLF1f/7u54KnXAT0Ym+Osl+uF6PSB0v1esk4IMlZtbZleDGVfKoy6dws8LfC7jgBzAjgbebakywUcWr8DKVruTZz8BRsMViCh3+QBHuU/4l0XH9V4Y5Pr9xVJa17gF0n7/ESJ2KcFsRHoHNbnllsb5L8PTziQwA5zchopzml1Vml7JokGOTJoSsNar6f8p62jzDnUSv2hlWRdxs2oVY2V7V6xqmoaxQUQ2AQp4opNUnlBuYrMxLN0fQ2ZCYldb0nZKGxX0bL9V5Kl+2kLO1wk9yScPFX8Rr2cgs7g5naOc6+b8oMzzdcjpeKQhR+3MRanYHz1gIrLpeKXBL6d9PZv4t8gl7J4H5SUEnECkCNMstt5O0vu2foIR3udE7dlxDHx1/r8NPlsTL+aPlhLmRf78c6bj1oXHHucLAt+T7QG0WAzr9iPV4MJUB2CiJUmFc4zPPmZ8cd5OAxAOjh/Twwq8jwdjoj3SLRdW8o4ErwnHO9hNG2P8Nk3XpanxI+CoJAzCvda9k3OxRQCp9FMoaHb+PgXiMLlgVbzRxzdjpYZbfg0KCg4rL7KpuVcSrYfKyjXDz1mxhep+et6Nhnq32d5l64+9tFxA0F+KTC/ZNJrqD5DZxhy2NYde4k0SlIRZk2iuNnRk6GcIXMsqp9sDaX1zXpDhlOixKoBTeVCBgxf3s7n4R5keIcTYw+I7xq7li0w5l2b1D0XRuIZgqD62xnkaML27QwosWgF54P0onrxnSG+uClycRp4wi77Q3257O2v0ldpBElRt0BWb5PiN99uLdlhWcFQhYa+E+j/wA9sGEtZl5Ib
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(366004)(346002)(136003)(376002)(396003)(451199015)(6916009)(6506007)(6486002)(8676002)(66476007)(33964004)(66556008)(4326008)(316002)(66946007)(31686004)(8936002)(6512007)(26005)(44832011)(41300700001)(478600001)(38100700002)(235185007)(2616005)(5660300002)(36756003)(186003)(2906002)(31696002)(83380400001)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K0U3c0xyV1Jub2ZFYWoxWGlzRTgydWtPQ212VVZNNzNHdCtZcjVickY2UVp5?=
 =?utf-8?B?cmwzZjEwdGxUWkhwb0dkTFdNODZwb2VXcmR0bk54b3ZuN1RGRDBCTUMyakFt?=
 =?utf-8?B?VTFnbVBHdkRxSWQ1SDY4UDdiU05IVXVlTmxtU01WV1BNaVdPSzh2K3VhcVIv?=
 =?utf-8?B?dmhTSkJhRElDSEVrN21rSUJNSmlBM1BGUUFSNlgrMGRCV0wyWTlkZzNLTURZ?=
 =?utf-8?B?TmYzdWZTdG5qWUw0eWNneHBwa1pxcDh3aG9IREhXcjR3R1hSUkNJZjE5WVc4?=
 =?utf-8?B?OU9GWCtHdkkwbUszRjRyL2c2TkZJZmZySDB5eTA4UnMrME1lSmx0WkZaQThS?=
 =?utf-8?B?NFU0MFQzaGxLMVJwYldzcTFGUnVMNE5IYmZ1NDIxQjZDN2FtSi9FRXNRUEJW?=
 =?utf-8?B?cTY1eW1lcWRFdEFaalJDZnFlYTNiaTZiSFJTVnAzTnI2S2hvTjZmZ2FYNXBQ?=
 =?utf-8?B?bWx1VS9xS2FvM2YwTnlMdXRiU3pXc3BXenkzOWo1MDBJQTBIV0FuK1NTWXRz?=
 =?utf-8?B?RHVlMXoxK0RRQkpZWFJ3QmppQ2tNWERGMUdjT0ZXTVZueXJQTExCTm5sVEc1?=
 =?utf-8?B?NWgzMm00Rjg5aTFEbHpEN0thamlJRGtVRU5uWjdLVW51dHhZRDZYblErNzQ1?=
 =?utf-8?B?MVBPNzR1SHlVNk8rSGtCM1FmZ08xMU1LalV1WmxLT2YvOXJRYi9iNHhqUE9M?=
 =?utf-8?B?a0pmU2dDY1hXMldrcHNuL09CSURSU3UyTlhpZnR4bXJxQTRSbmFibFM4ZVNV?=
 =?utf-8?B?K1JYTlRZK01sNDZub08xU0NRR3RoY0JnY3gxS082MjVHZnJ2N0VBMmpxcXZJ?=
 =?utf-8?B?NXlZU2o0TVhQajFaSk9kd3dLbnhnem1VR3dWbkR0d2pjL1lpeWJ2UnRCeGFW?=
 =?utf-8?B?TTV1cWkvRC9aeFdWMDFoNEpUNlpRUW5sV0xlMkExb0NpOERwUEFoTEVLbjdo?=
 =?utf-8?B?ZGNZMlZPdno4TE9iQ0p6RHN4YW1kV3dJdldEYVlVMm9tUFBCZ2dEZHRVcnQr?=
 =?utf-8?B?aC9JMkxWVnhrOXR2WjNLR3JOZnFDemJzZ3J0WUJhbmN1dXdqZ0NNVThaakEx?=
 =?utf-8?B?MTFGQW04OWJEdGJETy9reGpXYnJFbkZ0RVhUVEJPRjgyeDJJZHVzTUR0c3VZ?=
 =?utf-8?B?SGVhV0pndmlaMFJmKzNqSTRYZkRoTUE1L2J5L092VU5LUTZacUJMZElhQU1P?=
 =?utf-8?B?S2dZNlBSd0hBSXNRVkJad1pPU2dFTEtqNmhjZWw4WmxMUWh3c3o2TDZYZWhj?=
 =?utf-8?B?WmtUT1U1TmtLQXFsWEhtRjlFYnVWRXpybGNWMUJlV2dnZkJJb3JEOFZkZjBn?=
 =?utf-8?B?UWxRRVgxNE9vZmFHUTBUcUhMei9ldERzQmZuRDV1cFlkalBXOEd4YmRRTGx0?=
 =?utf-8?B?OGRIV2xWdGQ1b2d3TVVLY05mejFFeU1vQVRxVUtMSUdHVnA3N3B0V0RHT0th?=
 =?utf-8?B?L24yaHJFYUQvYTRJUTVqN1ZuU1FlOHl6dmlsUHJtK0htcWxwODF5a09iQk9a?=
 =?utf-8?B?d1YyZEpRT0JGU1RkRUNvTFZsNTcwV3M1NFphS0NJL0p5K2RYU1hyazBKb0kw?=
 =?utf-8?B?MWlxck9iQ0FWdG1UVU12K2RLQm03M0IvNWd4QUh5K2hGVVBicy80OVBqOU1J?=
 =?utf-8?B?RmNrTmI1a1dXQUJ4a1UxdFhvaktvN0dueTFoYUlraTNjSlR1ZlNjTVdkM1Va?=
 =?utf-8?B?TDhOdVl5WFVIK3RYOUpWaGhZd1MxcmpyNlViOWxQMWpxZlRzdTlMd29GekdH?=
 =?utf-8?B?cGdlTjdhSzZHMlN3ZEFtZitxM0YzcFRHbmxMU0M0MTR2dGdGdnBQS2kwL2gv?=
 =?utf-8?B?TDNyek1lOXBzLzF2bHpzYkxVaGJJSURxK0U4WmJBNGFUbjJJWExoYU1VUzN5?=
 =?utf-8?B?NkE1OUFOUUpHRGZlcTUydEFrK1NlTlRhaW5ESnFHM2dsWmd6TzJYR1RHVk13?=
 =?utf-8?B?QTJNOU4rTUZqYnZ6bTVWRlB4WkVhdW9pOWw4REFZWHdjSEJ4cjJKWEZyTjFy?=
 =?utf-8?B?eldaQ3RPT0lBOUR0M2dSYkpJTm1wSThWNkNlM1dhR3NoN2V3S2hjYm5RWHBC?=
 =?utf-8?B?Z09LUjNCRHR1QWovbkJSMnpCNi9Xc2xUb09tM3pBNG5hZVdZa3VNN1locmVs?=
 =?utf-8?B?T2gyM0NtbDloVUNuaHErSWl2eTdkNnEyYXJweHNYS09iSXNrK1liNE5wazdw?=
 =?utf-8?B?aGc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b94fa097-5b6e-4078-1ee8-08dabecd525a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2022 01:30:28.7276
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 43xQLk1LqvE37pQBeVE24MW2nyk8/0GCoEKyiBTVgjLtm47yYxFkC2Ddyory//knQDvOZwus6V94W4WZUHBgMa63m4H5r3r1YlyaG6vOTfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6728
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-04_12,2022-11-03_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 suspectscore=0
 adultscore=0 phishscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211050007
X-Proofpoint-GUID: poCPNwgtCdSVBFMSbmYyMBczP6q3rG5b
X-Proofpoint-ORIG-GUID: poCPNwgtCdSVBFMSbmYyMBczP6q3rG5b
Subject: [oss-security] Fwd: [ANNOUNCE] pixman release 0.42.2 now available

--------------5QGJbdxItugJkEcESTmB6m60
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

As noted in the attached announcement pixman release 0.42.2 includes a fix for a
out-of-bounds write reported by Maddie Stone of Google's Project Zero, which has
now been assigned CVE-2022-44638.

-- 
     -Alan Coopersmith-              alan.coopersmith@oracle.com
       X.Org Security Response Team - xorg-security@lists.x.org
--------------5QGJbdxItugJkEcESTmB6m60
Content-Type: message/rfc822; name="[ANNOUNCE] pixman release 0_42_2 now
 available.eml"
Content-Disposition: attachment; filename="[ANNOUNCE] pixman release 0_42_2
 now available.eml"
Content-Transfer-Encoding: 7bit

Received: from DM4PR10MB6040.namprd10.prod.outlook.com (2603:10b6:8:b9::13) by
 PH0PR10MB5730.namprd10.prod.outlook.com with HTTPS; Wed, 2 Nov 2022 17:37:24
 +0000
Received: from DS7PR07CA0013.namprd07.prod.outlook.com (2603:10b6:5:3af::19)
 by DM4PR10MB6040.namprd10.prod.outlook.com (2603:10b6:8:b9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Wed, 2 Nov
 2022 17:37:23 +0000
Received: from DM3NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:3af:cafe::c4) by DS7PR07CA0013.outlook.office365.com
 (2603:10b6:5:3af::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22 via Frontend
 Transport; Wed, 2 Nov 2022 17:37:23 +0000
Authentication-Results: spf=none (sender IP is 147.154.18.20)
 smtp.mailfrom=lists.x.org; dkim=fail (signature did not verify)
 header.d=gmail.com;dmarc=fail action=none header.from=gmail.com;
Received-SPF: None (protection.outlook.com: lists.x.org does not designate
 permitted sender hosts)
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (147.154.18.20) by DM3NAM02FT061.mail.protection.outlook.com (10.13.4.230)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20 via Frontend
 Transport; Wed, 2 Nov 2022 17:37:23 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2A2FsrSo012132;
	Wed, 2 Nov 2022 17:37:22 GMT
Authentication-Results-Original: Oracle OCI internal-mail-router;	spf=none
 smtp.mailfrom=xorg-announce-bounces@lists.x.org;	dkim=fail header.s=20210112
 header.d=gmail.com;	dmarc=fail header.from=gmail.com
Received: from mx0b-00069f01.pphosted.com (mx0b-00069f01.pphosted.com [205.220.177.26])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kgtmc3n9q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 02 Nov 2022 17:37:22 +0000
Received: from pps.filterd (m0246579.ppops.net [127.0.0.1])
	by mx0b-00069f01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2A2FMbqH021170;
	Wed, 2 Nov 2022 17:37:22 GMT
Authentication-Results-Original: ppops.net;	spf=none
 smtp.mailfrom=xorg-announce-bounces@lists.x.org;	dkim=fail header.s=20210112
 header.d=gmail.com;	dmarc=fail header.from=gmail.com
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mx0b-00069f01.pphosted.com (PPS) with ESMTPS id 3kku4x9qf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 02 Nov 2022 17:37:21 +0000
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E11A310E532;
	Wed,  2 Nov 2022 17:37:18 +0000 (UTC)
X-Original-To: xorg-announce@lists.freedesktop.org
Delivered-To: xorg-announce@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD10A10E532;
 Wed,  2 Nov 2022 17:37:16 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id a27so8477217qtw.10;
 Wed, 02 Nov 2022 10:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=48Ql+pn1gneLd1ZKlD970bgtdAwJHIRM+Pu8CschPEs=;
 b=Jb2OwtBPTdlnOThTiWdqXh+IVm8TB60T/5mvbql8Wm83Gt0VjjIloDKZrDZICbtKQX
 uHMQjlrbiztTGDjVgcRmNPKxB6VGowjg496291yxPyTY2RZ7gp8klfjNNAkBNWuXVnzg
 QFyZuFOngar5s+wI3T+yPARdPZmCegsXlL+zFZrG7Kgqktyrm6txs6OmwJCzUsUcjigA
 ZSgsXuiRt7ZaO0Tn9ULE1icjK/RgfqHhf90pfRu9jIkUKPgvsAmRwA15Jdu+swrzP8mD
 bGVbMskWuTQiVmZJH+AZqO/aXgpoW8L2gVbPcJGwBpCJ3wKR8448zVU6FEMhKNZa1YRa
 7/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=48Ql+pn1gneLd1ZKlD970bgtdAwJHIRM+Pu8CschPEs=;
 b=gnlfAAap1rMYKWz6dUwOuI0Q/9yf34zhLorRJ4XjyO3mQ/yVaI+kXb4YhcUr8/qu11
 VKePP9cRE3MtiDUCEX0v99dwhCewcC8AYFlGJNsvtmKTJFJLkNIWF4sxNnxSHYDBp1/X
 r0zlYTEdniPqTcnz9W9ZPW2Nj2FdQ4dWfj42YXYcHWHTMehQqRoxGfRwnDc78PqE1WHN
 Cia021dRYxiAhpzFYCRAFeHS6Ob5VZ4VedDJp2Q0FWdfQcS35PpmYwXelpzoqIRDGv2B
 wBHXmZ+Hk2plyEgugKg8eHXA88fPqN2sQiDRyGFYoY2kRxuhIhlI7vhsG+xn8+/15MBQ
 nTtA==
X-Gm-Message-State: ACrzQf0YvbxEQbwbcwceqPWiAFSqwx/fLJlVIGHNmUzp5G1rHlmES+ag
 U8vBqnlFrGKmR9+JZYYOZNkRoOUj8WY=
X-Google-Smtp-Source: AMsMyM4CUN/CRKXmK60W5hSXtjQ/p+dCmrTDThg+1+4L7paftNWg32olHRcHQMta+uEArj5K69xIRw==
X-Received: by 2002:ac8:5ac3:0:b0:39c:bf99:2f53 with SMTP id
 d3-20020ac85ac3000000b0039cbf992f53mr20139234qtd.207.1667410635737; 
 Wed, 02 Nov 2022 10:37:15 -0700 (PDT)
Received: from localhost ([162.208.5.36]) by smtp.gmail.com with ESMTPSA id
 f13-20020ac8134d000000b003998bb7b83asm6868998qtj.90.2022.11.02.10.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Nov 2022 10:37:15 -0700 (PDT)
Date: Wed, 2 Nov 2022 13:37:14 -0400
From: Matt Turner <mattst88@gmail.com>
To: cairo-announce@cairographics.org, xorg-announce@lists.freedesktop.org,
        pixman@lists.freedesktop.org
Subject: [ANNOUNCE] pixman release 0.42.2 now available
Message-ID: <20221102173714.xarujxhg727c46uq@framework>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="zhmspcrxx5a4posj"
Content-Disposition: inline
X-BeenThere: xorg-announce@lists.x.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Announcements of X.Org tarball releases" <xorg-announce.lists.x.org>
List-Unsubscribe: <https://lists.x.org/mailman/options/xorg-announce>,
 <mailto:xorg-announce-request@lists.x.org?subject=unsubscribe>
List-Archive: <https://lists.x.org/archives/xorg-announce>
List-Post: <mailto:xorg-announce@lists.x.org>
List-Help: <mailto:xorg-announce-request@lists.x.org?subject=help>
List-Subscribe: <https://lists.x.org/mailman/listinfo/xorg-announce>,
 <mailto:xorg-announce-request@lists.x.org?subject=subscribe>
Reply-To: xorg@lists.freedesktop.org
Errors-To: xorg-announce-bounces@lists.x.org
Sender: "xorg-announce" <xorg-announce-bounces@lists.x.org>
X-Proofpoint-GUID: POZLsWessTHiXTfJ4_m-w1ivQ_NmbSIY
X-CLX-Response: 1TFkXGx0cEQpMehcdEhEKWUQXY0RJG15obU59aBMRClhYF25IRmkFGGMYT05 9EQp4ThdjeRwTXFxSUHBlWhEKeEsXbkhGaQUYYxhPTn0RCnlMF2hIWX4Zfmx7XmZBEQpDSBcHGx IYEQpDWRcHGRgSEQpDSRcaBBoaGhEKWU0XZ2ZyEQpZSRcacRoQGncGGx8ccRkfEBp3BhgaBhoRC
 lleF2huZhEKSUYXRVhLSUZPdUNESEVfRE51QkVZXk9OEQpJRxd4T00RCkNOF3plcGZZfU9ZWX5i Q3J+TGAedUcHXRtDXHt1ZEdIeWNzEQpYXBcfBBoEGB0ZBRsaBBsbGgQbGR4EGRkQGx4aHxoRCl5 ZF0tHbxNZEQpNXBceHhsRCkxaF2htUk17EQpMRhdvc2trRWtrEQpCTxdsYh99cB4FHBxochEKQ1
 oXGxkbBBgfGAQYGxoEGx0dEQpCXhcbEQpEWBcZEQpEXhcZEQpCRhdjREkbXmhtTn1oExEKQkcXb XpnaRxyfU1dHWMRCkJcFxoRCkJFF25tZn5gQwVBWBwSEQpCThdjU2NrexNYfhpfXhEKQkwXaVpM eEdBBWdHfUwRCkJsF2ZZYhhJG3xMYGJyEQpCQBd6b09IXGQSHXlZUxEKWlgXHBEKeUMXY35gUlp
 ubRIfeV8RCllLFxMTHhkRClpLFxIeGhgRCnBnF2ZTREhvWn58cnpYEBkaEQpwaBdhTGN5c0BNTm VfSBAZGhEKcGgXbkVlbWZ6T3NvZUEQGRoRCnBoF2UYfkhORxhwTHhTEBkaEQpwaBdtYBtyRQVQW lBEZxAZGhEKcGgXZ3xEE2YfRFNpcFoQGRoRCnBoF2JHXXIYSHliHAFQEBkaEQpwaBdtcFpzGR9P
 fH1TZBAZGhEKcGgXYWxLYhsYExxubn8QGRoRCnB9F2ZoSW5ra28aUnlgEBkaEQpwfRdkGXJkHkN wSVxZRxAZGhEKcH0XZF5mZ0ZfXxNLTHAQGRoRCnB9F2gSR1kcWB9EWFsaEBkaEQpwfRdjfnxhAR JIQXMFaxAZGhEKcH0XZXJcZ1MYXVloZh8QGRoRCnBnF2V7aF4TAXlcUntkEBkaEQpwZxd6WWcSe
 kRyEnlvfBAZGhEKcGcXYwFhf2QZYE9oc3wQGRoRCnB9F2lGWX5GWBhNRm8SEBkaEQpwaxdgaRh8 HElPRl5ORxAZGhEKcEsXYmlyE1hdXGdtU3MQGxocEQpwaxdrYxkbUBJkeFheZBAZGhEKcH8XZAU cSF9NGmNTT2gQGxkaEQpwXxdpenlrGhkTXUVjRxAZGhEKcH8Xb39JGUFJeWQYb0MQGRoRCnBfF2
 lPS1ITaGYZBUBJEBkaEQpwfxdga2cbTmYFR2ByRhAZGhEKcF8XZUVGcx5aaWN8f2gQGRoRCnBfF 2FMHx5pTEsSWWVpEBkaEQpwbBdlR0tBGlhYBWtIfxAbGxgRCnBDF2l7bBphYR9hQGtfEBkaEQpt fhcaEQpYTRdLESA=
X-Proofpoint-ORIG-GUID: POZLsWessTHiXTfJ4_m-w1ivQ_NmbSIY
X-CLX-Shades: MLX
X-Source-IP: 131.252.210.177
X-ServerName: gabe.freedesktop.org
X-Proofpoint-SPF-Result: None
X-Proofpoint-Virus-Version: vendor=nai engine=6500 definitions=10519 signatures=596816
X-Proofpoint-Spam-Details: rule=tap_notspam policy=tap score=0 spamscore=0 impostorscore=0
 phishscore=0 mlxlogscore=940 bulkscore=0 lowpriorityscore=0 mlxscore=0
 priorityscore=78 adultscore=0 suspectscore=0 malwarescore=0 clxscore=176
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211020114 domainage_hfrom=9943 domainage_replyto=8402
X-Spam: Clean
Return-Path: xorg-announce-bounces@lists.x.org
X-MS-Exchange-Organization-ExpirationStartTime: 02 Nov 2022 17:37:23.4360
 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 
 376105e1-d943-470b-1479-08dabcf8e6ad
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3NAM02FT061:EE_|DM4PR10MB6040:EE_
X-MS-Exchange-Organization-AuthSource: 
 DM3NAM02FT061.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: oracle.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id: 376105e1-d943-470b-1479-08dabcf8e6ad
X-Oracle-Tenancy: 1
X-MS-Exchange-Organization-SCL: -1
X-Oracle-IMR: IMR Trust
X-Microsoft-Antispam: BCL:0;
X-Forefront-Antispam-Report: 
 CIP:147.154.18.20;CTRY:US;LANG:en;SCL:-1;SRV:;IPV:NLI;SFV:NSPM;H:iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com;PTR:iadpaimrmta02.appoci.oracle.com;CAT:NONE;SFS:;DIR:INB;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 17:37:23.2485
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 376105e1-d943-470b-1479-08dabcf8e6ad
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=4e2c6054-71cb-48f1-bd6c-3a9705aca71b;Ip=[147.154.18.20];Helo=[iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com]
X-MS-Exchange-CrossTenant-AuthSource: 
 DM3NAM02FT061.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6040
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.4981723
X-MS-Exchange-Processed-By-BccFoldering: 15.20.5769.021
X-Microsoft-Antispam-Mailbox-Delivery: 
 ucf:0;jmr:0;auth:0;dest:I;ENG:(910001)(944506478)(944626604)(920097)(930097);
X-Microsoft-Antispam-Message-Info: 
 =?us-ascii?Q?50+uNLJVgYmxfpmwhFSLOjh0ynlAZrU2i1MW3LeU7qMDHeN2FS0gF9D7FjGJ?=
 =?us-ascii?Q?ds5vCqpHvbIyZ3+HFJ2dXHd43M9IOksCeHhwO/QZnlg0j4mQPcS3mD9H0Pa8?=
 =?us-ascii?Q?09dYou6CeIOm7Evbg4EixFogdNEfvXVF+UwB30BuuvAvx9YGYNptwj8n3O92?=
 =?us-ascii?Q?sSz4YM/X5o0Yr2Yxk9+9JglqpuIuBU/ToUQ6+b3lLkGQZ0f9Iy43k8DU1AsN?=
 =?us-ascii?Q?z/U94LrJhtwTrixy/OysfG6YPFuMKo1PZTpifMhlRH9m1yrtIuBdrywUvyb/?=
 =?us-ascii?Q?maFEVTbdg0vPFxAqKXw1gJ4KC04CNR9bHHUuBzxhDVjp6XTgwNXMBu584zMy?=
 =?us-ascii?Q?oDac1K4zcQeJiu40Uk7wFdyBQ8BMpoK2eAMg9H5N3CqExs2UETd6mNQkvf10?=
 =?us-ascii?Q?Yoize1mo2Y6Vfd3uCEdkoeQRscoMHfa1JLdvORnoDKIBHpUhrSvn3HErL1kD?=
 =?us-ascii?Q?JwX1Nlsj0GIiBeb2N5HntzJombACO1ZMFfs06pAmmw05AxyoG4+KluFZaAHJ?=
 =?us-ascii?Q?OBY2kGzPIr/XlWNkXAeWeR2D8BSZeA2ig5bCVZxvfeaixf43v9lPuC/Mk93c?=
 =?us-ascii?Q?6zofIyxyDH56nUEsW/tXErtSaJVazlMejtHIDERGFw3IE2VbYfKCzOtlyfsd?=
 =?us-ascii?Q?7WLE8T3fLGHW4m5AGS2eYr5T0h1PMDREeyo30KUR5oSwKWMbiiFb6y/Iw7ul?=
 =?us-ascii?Q?gfekD1x81cqLKkwzkeROZy29daXLZqL1JoBGmm0IxK/rXaeoj6ZQ/fkHBvn7?=
 =?us-ascii?Q?HlVjpmKvxXhdjcscOx6hDT/ZpTlOO90bggyWVH0UudtaSua2RDrfZFH1J6Ta?=
 =?us-ascii?Q?fgh821/L8t0jMEXrfiV4dCsMMjrKjhO/Jn6OSACbk5GSR2ZinkP+sd7Hj8UL?=
 =?us-ascii?Q?nLDJAQ7jN3B22ZfUbV83oR+tx4THjyjPBFIO6kYfex8bemg/fIY5B02uI0RZ?=
 =?us-ascii?Q?XqtncX/LWvC4r5G7hqEaKm89PmpRXIe4GjCafrBVGiGs8hWrDwsIeIJE848n?=
 =?us-ascii?Q?YVZUv6pbjxmAWMlY0B4PfYSXWNRxsxuIudhbHBpp9ZJ1lVmbL6AEU+M2wvvU?=
 =?us-ascii?Q?GjTlVuxnxjhKJM9yQYMq2jcSX1T3AD70Pv9KKT2RtDE+0e2aUcg9suQ8OEZs?=
 =?us-ascii?Q?XW2OfbYoW/M5FbEsCZXriKGV2cgjzV2xKVEuoor1E699GCelhhMI7svRcpDK?=
 =?us-ascii?Q?njVOCl7KehfA3ipUjql4Zy4KYM1yULJ42vMZv4diaPYYkdK8y3liLRMm7Rmb?=
 =?us-ascii?Q?FeR0dhusrLUGHsbwgRWSInuk84TuFLvp72iKvAatbZD9OIoAfVCkqqA4/cRa?=
 =?us-ascii?Q?dpxdko3mpaIq5kB/3K9LIzo7n5FycXBk6GJn1BKN1q070nQ3mLL7dONnxaa3?=
 =?us-ascii?Q?GhVoX3GKz3ZO6pZ+W1t0beN7LM/A75ZlhYGVqZxl+HSvxdoKFiRdRozUPssJ?=
 =?us-ascii?Q?cVKE8ZwyJJ4GsFqRpXLcw9UG/CoJZHaMMQxIzWYBvAG/RZfLUTWRm344Hm2E?=
 =?us-ascii?Q?JRYq2RHIxMYGHspq1m9lWXItOg4jUZvJ0Q0hczVIGrDBWVAiwvHwCpzSOWeH?=
 =?us-ascii?Q?+gJeNdRtDq+gu9JQRpx0sepujw9aY1j7FahOqiyU1qlqDNpFMFPhFTOk0a/K?=
 =?us-ascii?Q?At1/MMrwpzHevn09OSgWvP7kp4sphPpsMIa92HzsS8aCPFFV0gYw9isQmq9d?=
 =?us-ascii?Q?PDWMZRckYx7l9GxVgqzTlA9gc2JMyWktcrRfwgCKP71D0jCgW25rgLyxgQos?=
 =?us-ascii?Q?Ml/LYXM7Q47a/QoKKAM33WXVmX4B67f5O/0P6clIAhZ/b5eheAr74Zqr28fW?=
 =?us-ascii?Q?MBuWmJ2OL84Ncclo76h1yTMLaNTgJJ+V6tOHRmGYgexZ3XGKlhQGVACO?=
MIME-Version: 1.0

--zhmspcrxx5a4posj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A new pixman release 0.42.2 is now available. This is a stable release
in the 0.42 series.

This version contains a fix for a heap overflow. A CVE has been
requested, and I'll reply to this email with the number when it is
allocated.=20

See https://gitlab.freedesktop.org/pixman/pixman/-/commit/a1f88e842e0216a5b=
4df1ab023caebe33c101395
and https://gitlab.freedesktop.org/pixman/pixman/-/issues/63 for more infor=
mation.

Thanks to Maddie Stone and Google's Project Zero for discovering this
issue, providing a proof-of-concept, and a great analysis.

tar.gz:
	https://cairographics.org/releases/pixman-0.42.2.tar.gz
	https://www.x.org/releases/individual/lib/pixman-0.42.2.tar.gz

tar.xz:
	https://www.x.org/releases/individual/lib/pixman-0.42.2.tar.xz

Hashes:
	SHA256: ea1480efada2fd948bc75366f7c349e1c96d3297d09a3fe62626e38e234a625e  =
pixman-0.42.2.tar.gz
	SHA256: 5747d2ec498ad0f1594878cc897ef5eb6c29e91c53b899f7f71b506785fc1376  =
pixman-0.42.2.tar.xz
	SHA512: 0a4e327aef89c25f8cb474fbd01de834fd2a1b13fdf7db11ab72072082e45881cd=
16060673b59d02054b1711ae69c6e2395f6ae9214225ee7153939efcd2fa5d  pixman-0.42=
.2.tar.gz
	SHA512: 3476e2676e66756b1af61b1e532cd80c985c191fb7956eb01702b419726cce99e7=
9163b7f287f74f66414680e7396d13c3fee525cd663f12b6ac4877070ff4e8  pixman-0.42=
.2.tar.xz

GPG signature:
	https://cairographics.org/releases/pixman-0.42.2.tar.gz.sha512.asc
	(signed by [ultimate] Matt Turner <mattst88@gmail.com>
	 [ultimate] Matt Turner <mattst88@gentoo.org>
	 [ultimate] Matt Turner <mattst88@freedesktop.org>
	 [ultimate] Matt Turner <msturner@google.com>)

Git:
	https://gitlab.freedesktop.org/pixman/pixman.git
	tag: pixman-0.42.2

Log:
	Matt Turner (4):
	      build: Add a64-neon-test.S to EXTRA_DIST
	      Revert "Fix signed-unsigned semantics in reduce_32"
	      Avoid integer overflow leading to out-of-bounds write
	      Pre-release version bump to 0.42.2
=09
	Simon Ser (3):
	      Post-release version bump to 0.42.1
	      meson: override pixman-1 dependency
	      meson: explicitly set C standard to gnu99
=09
	Thomas Klausner (2):
	      configure.ac: avoid unportable test(1) operator
	      Makefile.am: increase shell portability

--zhmspcrxx5a4posj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iNUEABYKAH0WIQReryEEmoa4pUzLG/qs6yl0DJpOlwUCY2Kqyl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0NUVB
RjIxMDQ5QTg2QjhBNTRDQ0IxQkZBQUNFQjI5NzQwQzlBNEU5NwAKCRCs6yl0DJpO
lw08AQCZbrrzoW+1LvnCrCh7MIRmMP7Nd+OQhk6dppMXaY8EzQEA1ObsQBwZGztU
uY9YCvkYD4xAEPR+2f7IbLGaXbCLDAI=
=z/fx
-----END PGP SIGNATURE-----

--zhmspcrxx5a4posj--

--------------5QGJbdxItugJkEcESTmB6m60--
