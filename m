Received: (qmail 25832 invoked by uid 550); 19 May 2022 13:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22170 invoked from network); 19 May 2022 12:42:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to :
 subject : message-id : reply-to : content-type : mime-version;
 s=corp-2021-07-09; bh=E9lgvIif/gxfY7qqgnyczr1uoOzcZj/Wkl1qsx+n/Qw=;
 b=CDcu8d5bc5WOpQvncPwrwygY+U37cQLrxiVs5INiCYEiAw9ObJ9zG3rAEceWzPbIJmFI
 MPG7t3kz02qv5rVg6TmrR885IU6dHvQrPDwZXOtp4c+daE8TJRu/s4Ob/tb6HPDterIh
 5Hy1EiZymbked+CiALwY9ekjiw6VjbMEuRh6OjYp/CluFY4vW8Rkg2zNydQPOIFX0avf
 oaV4re2yI0lkZfELZEF2T6F4xXqXXI86rRlvjIzkAWdGPApY2lJYliGy6NVJMSvwn7Kk
 k6UX+ahKHgXOKIiyYx3PJ71Nwv/kC2a9H8L6JLNZd7s/4RTO2tXBTTjYTe7b6uP3Pqo8 Kw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVlW/g0XHdWvQW78Ivp9O7ZtmoeRas6yvmwjJkqEcpP6M6WYGAT6zRvg7fCs5+S8T17TLHdEjUuI59YFhW3bBdj/ZA+ZlDUamA/yx9Yez8+oLgV489bbzPununU7UDnLN9QcN4ZFamFJNsqVURaAZMZugvYP3euaKKURB+mrdVFjwL1pjEHFHOTm/AFIrIzXTh0fbt6FLSJvUWDgRT79bh38IHlGD4YiSrJYT1tldyjEU7cKr9yhGvrmvpizysXVmt/JNGWAQXWmNpC1BVaZaiwq9pDZm+z4Bx4vbwHwThPTfT2ae+aMcAqsik/gZ45a0nfjGpBbMCJf6X+hFMVvug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E9lgvIif/gxfY7qqgnyczr1uoOzcZj/Wkl1qsx+n/Qw=;
 b=CdBS9aqPgotl/oRM3ZqtXs11nUEwBnMIwQ8Pph1Da0kr386lweveIheSzS/OEDzx6qQ1yB6prSkf+lG5Ook9c9+hYuOXaPoNyhwCyaLE+qehoUB/KVe6mH5r39z9+Tujrd9g6HZubN5XS4+RhYBBxBVgcEM2M3/o84gv3wyZlC4aj3DkjZnnQrX0TrptRZ746ULoFUdNg+FRT+DsdIf+8szRGFHkI4TpIqHrOnOFrxzjF0tVRbGf45Axvhk36wfdDInxQbcXDqHHvXw/09OfRdS00O1trPcfxCZ0nmLp+2QeMFoUDI7kwbNL+8t+AVZjazG0y+1btlCavfnIPLkkfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9lgvIif/gxfY7qqgnyczr1uoOzcZj/Wkl1qsx+n/Qw=;
 b=vI38gyHVHqHckGO8Z9P4EVk5mwp0H1oNfI2rMuuCFZOL4Hi4POK4BohajJKXE6njLH5r2TGBTkPMExQke23Ne3VW2ESFiSHFxsEyEGgAxGryXiGbi47hUm8MvjgmrrBzfg8qFBaPwIUd2CttQ5nDyYqf/K+GrcdMMlvvTXStHoI=
Date: Thu, 19 May 2022 15:41:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: oss-security@lists.openwall.com
Message-ID: <20220519124125.GT29930@kadam>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0038.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::9)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fedf4ea3-f950-44fc-f425-08da3994ed2b
X-MS-TrafficTypeDiagnostic: MW4PR10MB5751:EE_
X-Microsoft-Antispam-PRVS: 
	<MW4PR10MB5751E1405EAF213E85BB86D18ED09@MW4PR10MB5751.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sMtB/nfJC4A/K8/yr3+/uWqD+U0eQvpTVIdMtbBhnETgQUgz2HMRbTvjzAnSydJmf35U/n1xATLbH3z/G6Pz2txQK5hlYI0csUMmne79B8oS1OxUM2lY44uY1deXyJ+y9GSobkakgvtAkpdw6Gw9w+Fmn0UruCfAu9GS0Yd2lhnQuNSLD5QRBxEFfEpeVuwKDj+trT5++ApjgOt61Dz0L1siGPrPpu07g3iktMPF6r2iFYwOsLU2j04we+hDKuc6xLbQo35AdKEhMYId3psUsCLC7vcDl3HstzFNC8S5US+9cpfU8stkPOUHb49VKcPM5foeXmBvoHgow8CBOg7bLglBfPZP6wIex2gW50ZAv/+wFVmQwT933cHOWAsnDHIK4b9Y1ZBmU0xImPlQhrB5UxsN0/NZUk4z6qwLQSs7qyhoT52Ta84WbResvONVB1jdeVIK4W0V5eivSyOJpLoPRGIAF51DCjV8qhhfcz7iSq6V4ZpJQq/4yP6HIw2Ge2Hn2Bahdsl1bi1SH2u5P3YP47rZs0fljVinCe6fYEnuGA6L/IB2u9AJWInyvhyNfLP1BoXGj+ma0yA623ES/Avm0v1T35qbpsLrh7lgqDNWDYRya6CwPYqoZxAcigz7C/qthGQyJRV2itY22komBsiH4ayEkY+fln7zpyHObg5qxppds9w1bgEUfTmaVJbPr7JnYujcyDwkgQipT5Gy4XZGqw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(38350700002)(66476007)(6666004)(6916009)(8676002)(9686003)(33656002)(86362001)(6506007)(66946007)(1076003)(83380400001)(5660300002)(2906002)(8936002)(4744005)(508600001)(52116002)(38100700002)(44832011)(33716001)(15650500001)(186003)(6486002)(66556008)(26005)(6512007)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?lpezfbTVffdGwXTvwAWWEgxw6Po6EXr+UQuTqCRw3zcVtMH9RyEXD0q4XRVc?=
 =?us-ascii?Q?N0HAoFVVY+4MCs7gBEI6JTAf53H963Ok6bDsQ1EIDQ2yQS4qVzzOLcxUUl89?=
 =?us-ascii?Q?VVpktiUhvzuKRDE+D90V6iPaOMF/L86UTbGpd2MruOdn1o3Rh43ypAD59mpH?=
 =?us-ascii?Q?V+QK4lp6Fm3a+82YcGIPtBrpbG5YdZC8L304LOy8xhEUY3hG692HflXWmujD?=
 =?us-ascii?Q?4aDELrGI5hYL6SHqdfpIqCPHMAsdj11ffPDrfocUmtbEXGGDfBKq1VWlsizX?=
 =?us-ascii?Q?fZzTRORWdV6YWvrxKklAjdshi0ZGEGpd5XEYXe8t6V8ocpQbgjmsj2b1xL7I?=
 =?us-ascii?Q?T1F0XnezQEZW0UFIbRlLwVtf5u6qSG9/l5rFXAeCwxhBkhMx7FCfkpzXdRf4?=
 =?us-ascii?Q?mlSo69SkwdURdspyCqAbSYxx9uV5CfXnbOA8HSTvEM6BPV1omDBhyYl0wCAY?=
 =?us-ascii?Q?5VleAR0iaLMmJuu9LyADD9FhIzCTH4/g2mIltGRWGiu/0rMCU/DjOnJoSwif?=
 =?us-ascii?Q?Q3vHheB+JGmR7UBgg9Xc8glS9JErybBdRC13ZZ+hSgoM9RSQ6xfpPhXqZcq1?=
 =?us-ascii?Q?0pj/SlJmzObbXzEBndbNxtgq51t8CVNvfs4TfA7akYw19qyeWgZMP5IkvJ/G?=
 =?us-ascii?Q?7WSPl312IIGv3QhUYcR0bwPcN7Li0p1dFP60rLGRiUUykQmPOh/NtbPRGkWI?=
 =?us-ascii?Q?W3DAj44iDGeECOK+3UyECP8NLcHudRjEvhOKVl/4e9Mdb4smNmYseY5LlHQj?=
 =?us-ascii?Q?0ZwNgPkV8+MttQJb2IGQnwP4x9kIiR8Snlexuk8c+wWayqeNDcHQgULl0eak?=
 =?us-ascii?Q?X7GtRp8vTKJvnz9ZqVFg9pGgdVO64dWpNUg0/aSjPR5d0MEgAgbHI3O7V3Kx?=
 =?us-ascii?Q?TyohMe8ke+pN0ExtNfVjutYmP9amC+i3x5DfJhwKwWCZAOVLMgGW188umSWY?=
 =?us-ascii?Q?IKCDVVXYvFCJjx/IVJDfKHl9CCLRMg0BxVJynSa/J4ddEUYFKCTcwrnM5ygX?=
 =?us-ascii?Q?hUyBB16WstGA1gCyB4MV2RcRm+8suBIfCffqHaxw/g3epCmM0grYVxbbGT//?=
 =?us-ascii?Q?uH02O9ZlTd/qIM/T0+64vgEfKTfTFnfi09VxEfAGel5uc1/dn/gUu1Lgt+nH?=
 =?us-ascii?Q?QC3r1BrJLHupCeMUaxCQFbrYesqz7Q0G4ykHqkTBsmhGnp0NXOi0l7tOJSOz?=
 =?us-ascii?Q?SrBFCs38Cm6VfUJHe8jKGOi0dTK/Jb1faoCpH6cqz407H6Ck25BIB0+M0+64?=
 =?us-ascii?Q?7YrX0piL3pUtSiod7yaZJEm+0fYefxQof547b8KZoAhdPy1l7+gzwpcvZsmJ?=
 =?us-ascii?Q?+fA7YUZcXWXHNWsRQjx4hj4VSbTah0V+33PBtlJqBPZ2q5z3ixeKUx9kDaMG?=
 =?us-ascii?Q?YZjOsrdE+Dy7uwXFwozwPlRriOD0TwXtwzi7OJVAzrECt1keInNsaOURaJmR?=
 =?us-ascii?Q?Lj7tHVQNRR2954yafLaupj+w+lQD3sPe5Tq7fZf9HdgC4MxQNAZBr6YyWNEx?=
 =?us-ascii?Q?OnHlTEK6Qo5gB0XVA9VYPcU56YPZO40MRWA8oKZZax92t0na1u7jR9VUDrcT?=
 =?us-ascii?Q?Egma7p/e0FBuvWdShJCIRDsiGDerhUuM3Qw0+c8nxE9ZQ2kopx/eD6/i2Rs9?=
 =?us-ascii?Q?A0K6Jbpm+PKGMLZQlFfZZ/xQFLloP3JpAMTXmH/P7CwSwbuzsL1S5Fa+nXrW?=
 =?us-ascii?Q?9RdWkF1EhlR6yMPUFPH/84t3hFcYyM3ufae/zHDIHWpaHgVCSrtR+v67+Dyc?=
 =?us-ascii?Q?4RVzTRs4gRymYuPjvmah/RT4KEaW6iE=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fedf4ea3-f950-44fc-f425-08da3994ed2b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2022 12:41:42.8682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UVWItGehu6mLcH9oXJI2EqoX5qC66zrMWORxw6eAyfhpeYsknMQEh1z3aHt6F9SRIkJafguqkpILl0yn0a8/3BjPZlp+fw+LcOA2xho4U+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5751
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-19_03:2022-05-19,2022-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 suspectscore=0
 phishscore=0 bulkscore=0 adultscore=0 mlxlogscore=865 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205190073
X-Proofpoint-GUID: Xd1Qs1j4m7nb2vDilm2RvsGTmvNWMA2-
X-Proofpoint-ORIG-GUID: Xd1Qs1j4m7nb2vDilm2RvsGTmvNWMA2-
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

What I wish we had is a private way to tell maintainers "You may want to
pick up a patch."  It has to be private.

Sending emails to oss-security does not work.

I don't know how to distributions do embargos and I don't want to be a
part of that discussion.  If I started disclosing bugs then I would be
a part of a discussion I'm trying to avoid.

I'm pretty sure a lot of employers have policy about disclosing
vulnerabilities.  I've never disclosed a vulnerability so I don't know
Oracle's policy.  Possibly sending an email to oss-security could get
me fired???

Probably Linux distro maintainers would be pissed because they didn't
get a heads up?  Or their customers could be pissed at me?

The optics of reporting bugs to oss-security are bad.  The patches are
always fixed in -stable.  Why would people pay for an distro kernel when
only the free of charge -stable tree has the patches you need?

Plus the people who report bugs often want to disclose it themselves.

regards,
dan carpenter
