Received: (qmail 19718 invoked by uid 550); 4 Oct 2023 20:26:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8070 invoked from network); 4 Oct 2023 19:14:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2023-03-30;
 bh=ONTm9NtDGSQfYw96DGnutTvfi3hU/kWwc4FAyTqv3d4=;
 b=i0ulpztih2ZvOPu7GFYZSUbYUOB9SoW8yJt9tiYRGxMx0Ng8JSWqxbyxcQG1Q3I0j5My
 wsisBxU94uO8p0+y6EnRkcl26/Gx50GM52rzsnKUweRJzCQXkbO2KDHjNmd0+E6AUVdQ
 zR7m0cwrSfnne4VHnRAf0QGQ7vuozbpt0V8N+Rby1MP/krRZzCpNsyAH7HF/jeKXsDM0
 5KPfZgq7M9XbHOnY9NwEIeiig1hnTNbhoyL1GF+0ToEBF9393+uOaoZ3vh89x+LB5M98
 496FJr+KxuRWBjBxfveSXk04KK2hPtdNc4SdTSUzcvVAp3apUMcyoyL9hdokQXwyGfZr yQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYS29rCqNwNnPyOmDen5ObgGQhIcXaJSJlC8tIOJd64wE8HnomG8FXqZTDNfsAGYOrebMYXnnT9saiXm/WZtH/p58sUQ5CaMlGxVSwfbbehDA5JQlgCO81QLvkFmanCDwrTb2YsCI44pWY5mza666gslmHu8GFkaHDEA2ePqnk4g88iHB/8Kr4xIHwWTgaogBZVaHUQVi4Nc6tcM/Z5d8iIuJfPxweQH7m1T0oK548jRtl0NoqBRisQC7z/VuGyPH6J+ARerNzEwMjpPiLIMhCbDuW+/CxuxuJ6pJV8/6fdz6iDMtR8p1Wcu8YU2WErHj66FPYl4Q0bjG1feZUJH0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONTm9NtDGSQfYw96DGnutTvfi3hU/kWwc4FAyTqv3d4=;
 b=JRVd+WcbbvtwoVBEzqBbWJaF9PWjDgM2drO0k5vUrVVW876ntvJwP6ASrQmSM9RVJnsJyQwzwHhf9La6/Rj2QNHefg1n4Ptq/MQnFODhiCOz+M2alJf8wbduJf+X0N8qk8FeXiXQv2wCE+vN+Wj4u++owRtgjwN+YQXuurnPgYWmHqh4rAAJ/WhUtbaNSGuIDsddgNlijwH2tB/Eej9v47t1RJcuxaLi48TsSwM3+HBOc7Y+Ajc03aUdNHT429xoAVzT5RFRdKxwt4F7RXo38W4ZRo4R7otpNBJucYNgSTxpOHKxxaiyAEPvXl3E5FuJXanHgYPkTF9qmOgjvTpH/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONTm9NtDGSQfYw96DGnutTvfi3hU/kWwc4FAyTqv3d4=;
 b=gkumNl7erQpGKg8gCtyYczJvegcUVASio+ZwWY2EjnbXWCP0K57Q2RjmHXci5QHNVqvmo39BZ8pjGzQ61mQNAFTQ6y5YVu02H1W7ax1P+FqzIZRv1FeH3HhPM+Yfk7cD+0JqwtQm/pVi90PUKhDxmEu1b6Apm2MHF8E/fy/7yD8=
Date: Wed, 4 Oct 2023 21:14:04 +0200
From: Daniel Kiper <daniel.kiper@oracle.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Maxim Suhanov <dfirblog@gmail.com>
Message-ID: <ZR25fFZDBJVCrurM@tomti.i.net-space.pl>
References: <20231004151357.GA29150@openwall.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004151357.GA29150@openwall.com>
X-ClientProxiedBy: WA2P291CA0044.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::20) To LV8PR10MB7920.namprd10.prod.outlook.com
 (2603:10b6:408:1fd::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR10MB7920:EE_|IA0PR10MB7232:EE_
X-MS-Office365-Filtering-Correlation-Id: 8feb27f3-de0d-4088-70ef-08dbc50e15c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a3vCjnMuM53OTlyhtzMjUZzeYrtgkga5xzkGyxlPgEPJc3B1Z4SWXzPDMcstWPxcwn/EvUfx+OTSlJH3dv43PeMEnfZBM/iERD4i5NcFM0ftI18T/GKt3Pt9Y4U6TePHG8ds36t30ZukrMyza4Oq2sTwrbKaUGEkhC3gV5/x7d+CqDeWWr9HtjSxdj64ER4nH/g78vUPEGcByXma7lPL5A+UndSsRoqMs5J/LyfZ0bHzoFBUrWg2vdJPlk3uONxERYplBVXDuMzRuKOyxcp8gu4vaV5w9+gmj/nqgEt1Xizo1ukfTml6XvnriCJ7vjVKWXUypGARBYEw/85b5M9Tzl4oVLxgzGvRBj6EXu/HInLGqBoybGRLqutKfFJ7GYRduvEW82Y9Bu3vDoDr3cgIWs55pwVODzepZoql/Ndidh5IoLKkZUQcIxSrt9TzHHqn2oPPZRyzoZEUpxZFdeJe7IQWDcWyC1vgdmnUygJ4C7/yd50MRhP3aCh8B0cDaRQPaR/sCTZwf6eqSYTjP6RMbd4Mr1+ZSRvESzNpuFQAla4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR10MB7920.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(41300700001)(8676002)(4326008)(8936002)(316002)(6666004)(6506007)(6512007)(9686003)(6916009)(478600001)(44832011)(5660300002)(4744005)(6486002)(966005)(66946007)(66556008)(66476007)(83380400001)(2906002)(26005)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?+rLq3QwjvNHz3yLbb1n5ttnZGObDW589XrcD33fQPiB2LTea6ilEXII1Aj1p?=
 =?us-ascii?Q?iu4sm64HRurT2CLs9S2wy2oYeXiIB291qPM8VIwrrPTuNKS9enQAoUV2O9hG?=
 =?us-ascii?Q?O8GlqW5pZzubf7ML4P5rnYs9PT0RHDCh/vouO4UM7wrfSB/EIJLdRzJk0RNG?=
 =?us-ascii?Q?icIPyS2l/uocHAHObiKJ3nyGOXlNNxicoJ8ZUWR7MQN4jlsSVq/EVZNDJnpP?=
 =?us-ascii?Q?XOghiNrgRgsmKJ/X46JnP/1g8DQntPOvc7mtSQ6SUmRDhiUkSDEBenrnF63H?=
 =?us-ascii?Q?xBGHnspSQnsQJg1aRB7zOeAExfhYmMdCQRVehMwZ3oUWkXs1ciJhxIRbPgGL?=
 =?us-ascii?Q?fnZAvSzmrrG/85UQhR4N9luOlrlxT3aBe0i+cP9s2RY86AiX0axkAvvn5UsX?=
 =?us-ascii?Q?ElWhTpzQhWVA2692h6TR0rPlRHAGb/tfVJHpPRgsyQx3NS4uk6TAEdLvUkqs?=
 =?us-ascii?Q?kyqAHtB7wxhagfBiaW2qjvF4iBFZNhXy6ujqDE/1Z4IYdws9SsDYLTHv5F1z?=
 =?us-ascii?Q?55KI+ihZrOJ+OeDbJFj+c2tpOHa512/ct0bpengpzHbVuWBF2xFS2eORPa5h?=
 =?us-ascii?Q?j6/yZYGFgAICdmOp4OkppUBMx1dTgoZcFH4wxaMkxMNAGCfdPEgjdPI/+MA7?=
 =?us-ascii?Q?V4+Y94/eCWu4mcT7RnBVC8PU9eVtbHuLbTQz9ENCUTBodAaE3f3i98u+KiHW?=
 =?us-ascii?Q?70NGQa2/mrscCoG/DuXeDiRbvM8J17kzuKXd9ITD7djoeRnSmXNAz9a1R3iL?=
 =?us-ascii?Q?PbVAA2ZLGTdZ/x/nPqYe9SP2Ode304Oa0STcf1ky0TTw9ckXxc+mT83/ekYU?=
 =?us-ascii?Q?oqpStXUUPx2VoiXC2o6TOQUPalA6R03Nj4wn8U3xqVpHCknljwxBV8OtT/xk?=
 =?us-ascii?Q?CePLpvgjB4PSp9pTChFdxIuLeadsyizOJ3VvsQlCBXSzWGFiLc0WWQaC9Y13?=
 =?us-ascii?Q?k2uSyaCUBkTFEU+mHg1IgxYqBy+51SL5j9JsyCh5ilGpKl6u/WcYLzmEAkqe?=
 =?us-ascii?Q?7ZAYxqIpFAz7z3oPf45LKQWAcU76Is4K9M9YTLCxhR86JJQ3JRVBbCq03mtC?=
 =?us-ascii?Q?ihu4eHylfCLCigNtd7OoXt7eKFaian6gfGjB+IRqstEkREbDuAkNBFL8HL19?=
 =?us-ascii?Q?T5o673sDzjoOPBRAo4AHYoImYJ+yX8//x5g04L2kVT9imU74S5x8jGA3f8vE?=
 =?us-ascii?Q?YI+z/5/sAuQ1dDdE8d7STFYqUBStW8KJYpd1N99PNL/M/F+wzPIBgtwmbRsO?=
 =?us-ascii?Q?O3BBk4RVVzXlz+BkQyH2AD/LqT6fGUA4QllP0PlYEserxvwr5W5OUUwFM1//?=
 =?us-ascii?Q?NFFCxlT6eILxkG01eIHvTkIkxGI3VxF/4aAxTPj9U5ezo7SETF2sPht/e8Yv?=
 =?us-ascii?Q?MBLMvVQurCDnkoIGWSCY+yNxydhW9t+zfhAX9aazsbR9ZdI2pkIIneZmx/51?=
 =?us-ascii?Q?dM0dxip5esU5NACi+iPa20VeqrNWhoTZt6+P15r5/qzean/4cMcGk6msmQ2e?=
 =?us-ascii?Q?72B3FQLpW6JU81vrm2/HWdBlmXOQOm8UlEO1FAXbpVccuOog9cT+53PHdQz/?=
 =?us-ascii?Q?SQMDpxIw8njIF/0GSWOHRujFKkg87gLsSAyCuDNN?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	BXD/8+gBqrcWXDbGvPiAr2+IK61SsSUqNKeDtCQaGhf6SRjKaAaU63n2aqK6GtEuaLpfCcx9Uzu9drFKnnTpDb8SpQtZlms0gxR+tDuixPR0SCND8z0y3tQl7UU+0BCmtqnLU6J0N2c2uMy9Y8TWNiMSH2/BR6m+FZTZhIrGWEbKyzY6GTBSaB04UhmfEVSvwlAkpP4moQiyqhC6N8CemGYnnuWmRB5hKe723Ml9kegEtWWhVhbCznaItWtAWCqjG5px5zXoxcznzj3BnGBe7ZxOnbrJR8GewBz7o+yJWHF6HW+lpLJSaN23dLEVycUdVw1NhD8LNnWM3y7bB1CjY0ns2ofJpAOE+QHwWCAfFwxtWx9RcTc1XCt5HMivITwZlqPRVYpPNLdzfvLDqjYEMisxF2mZWYTJeplmlfPT3+IgsK6Vo/Dgjo2fn4kl19k01u9i9k3Bts26my4phU6fCndG+ulgJ6d4SuQJMQIBkm6iVHIs/aGKk1Q+RgLyzwgH8rS7bFeVX2qFwC8BghH9N8SKyTIsNV4/Vhgm/UvGEZPWcJEzdxtOYhwJ7pgZrEFwpqtSOb1xOICl4rMN/F0R+z+PcVSdNh0QmOkWs3iZ9M6mgGy+hYXlzWxHL0WRVgsF6QSC+wo6oOHZLozSBKwexVAhFiD6OkmLMH9fr+QNd0JFNxxPd1ef9rPdss8U4vmWeng16C0M3MGNgZrnUDS7VbvooZUa/EU8Z949xYChGf7txGZJ+gBuWu6US9EDankiFCnl2RrRDMr/WTkEBZw3m/M9dXE8TkEkbDwgU1hh15kO/w+eteFNrdSIWWvu9TwUWgXzH7OCrUqK4ejIQ9wwwg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8feb27f3-de0d-4088-70ef-08dbc50e15c4
X-MS-Exchange-CrossTenant-AuthSource: LV8PR10MB7920.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 19:14:08.9735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: evgTyyA+d+mtJJy5khw3QyvLeGrCALuekYMac2cQJ4HI4fokG6okwhv7RXdKCYRbdpUE9QUTbROSuiserK3Luw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7232
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_10,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=408
 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310040141
X-Proofpoint-GUID: s-6Dc30Tx-MfmFfy78CXcDQhNlF41F9j
X-Proofpoint-ORIG-GUID: s-6Dc30Tx-MfmFfy78CXcDQhNlF41F9j
Subject: [oss-security] Re: CVE-2023-4692, CVE-2023-4693: grub2: OOB write, read via
 specially crafted NTFS filesystem

On Wed, Oct 04, 2023 at 05:13:57PM +0200, Solar Designer wrote:
> Hi,
>
> A couple of issues in GRUB relevant to setups with Secure Boot got fixed:
>
> https://lore.kernel.org/all/ZRxK8s4nQV2jBq%2F9@tomti.i.net-space.pl/
>
> Daniel, I'd appreciate it if you post things like this to oss-security
> going forward.  Thank you!

Sure thing! I hope I can post to this ML without being member of it.

Daniel
