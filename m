Received: (qmail 21761 invoked by uid 550); 18 Nov 2025 18:14:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7583 invoked from network); 18 Nov 2025 18:01:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=TItUXZlJKwhXZDAtotPmGE5T6NqzHhyNZSojLzx/BaA=; b=
	Do1NAhyBzGbWS56CZFOvF6BbFeXFst5vdnfhEwLcR62ElFw2yKzigoFaPMGeYtsz
	SHA8FGYdqc9cs/qUfvtH8NTD0KHs51W8BpZMzI3TULpcK1jE3ukrs1Psk0E6Wztr
	lwR14YQccbXC11ryTwc6HvuE06g1xYRViFGjTzwhdfuzT2kg8GZ4na5jaux1EJd6
	f8xS3zholQiaUp8KXKEzTMaj83M8NE010m4vd6plsUwR06wZ8iJc1rDSxgrY9orv
	PKO+Xss31ZNEa3+P4bE/yTrd2Zohu0oYr1WSAMzRw/wav5PtOcZKcEjS4NzySJMN
	Xs9vg/O7zELtr+cyPNAbxw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hK6BnNuSJjxPU3qI8xKaQkVP/edvhdxG1YPJYOT1NdeW+rIrtJ6YPdg6qTaOcS1RBRWPrTXTDB8vA8DpxZ1XT2O0zh3oRks6SnitMv0xlP7GDGMzlDZftGCYuYnbkimNXvSUP7HgMMvNL3mwCaMwBfxMsv6TrW1uZ5hzLdJEodVfef7suTYy+sUEs5hSdyzQd9NtACSFtL9vnNtIr6V/DK+FKx2kEoNwVUgp6ggfi/mxP+boAUmO/BqN40uXcJUkzVR5xW0GGbv/DR0sfY7D/X2g/DWgFjmtEUscFSx1yZ6WqDnc4dODkdWxfqi3JQubnGnxex9AP9XO5JAXeG1Qwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TItUXZlJKwhXZDAtotPmGE5T6NqzHhyNZSojLzx/BaA=;
 b=fjk68wubeQJi5Dflsz8EuuymD9A5FQG/Hhi88XIwwGyTlDBPvLa9rjXD6GZ+eA6KdoZewGfoqlmPDiDWOl0U+PWe8+HC8Fr0ReiuGuA9kEWaxghYsfEgCgcIsyFULaNHBAg4b22T0ZFQawngdzpZEVZqygXITvcfHygJH3tlX+DTiN8XbgSn3rUTVTw1LnUT8cRF8zIzNNR4CWEUNhJ3RMUilame/aH0pfaK2n+xjjn6Fl4VImObKHTu/lx1hbybnw444lmxxvnnq3riC82RlclEZCZNFpM9x18JonBTuprS6HT5qO0OIy/Jz9bda35Z5anxbhELnpCJAHjEBZhzww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TItUXZlJKwhXZDAtotPmGE5T6NqzHhyNZSojLzx/BaA=;
 b=jjS+ohgnQHaHEzZmHBoivAfDFT33AuQ3UDvwFHhLlJ41IfjRqd9/EY1lDOPS5VaHiwnJ7Xba9LM40QkoujwKLg+koLa9cZggh76KRFx+6U+gJf6TNmQT1nAO0ZuPIzGgsi3pY3nRNynrU8t6eKLswKqvJZma5Y8Otmg+xa+f5ZM=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:19 +0100
Message-Id: <20251118180021.2890-7-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|PH0PR10MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c14d85a-f8ff-408e-8d29-08de26cc65d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Wn5Oq10DkzJ4EudJDop/Z/LsjNOHX+/F8YbininYgGbvr9T4VpVDPMlLhC64?=
 =?us-ascii?Q?Ic6a92+wrPT/PV0fEiAG3AtSHxqNDH1VAO9e3aI8ym/M80zv4s2lJ4qiaU6y?=
 =?us-ascii?Q?l/tfYkbJRY/PKLWe+t9W1EBvLmV0rX2WHj1Q0UcVfQq3Pt5zZKtPcSQBBVjd?=
 =?us-ascii?Q?KJExu1pZCvaG33gxqGf6y+BqskjQJrdl+fCSqGIIu5hUyyXWDQCSecKbLcB8?=
 =?us-ascii?Q?4Iep3sdR3U/27XZ821plrXfGDTFF9/EJ/y8qxL6WgxVY7kQwgEYhAZhHmvmN?=
 =?us-ascii?Q?ZKPQxmspeiDG/pgkJHDvvk5KvdmuNvrKC/d0N+PyqxRkzMuPM4+oWi0x6C4s?=
 =?us-ascii?Q?Bn9Aig/Go6sVZIOHAzLLqMiyxSRaZZ8a4jUj6UpJuWih9DKdutZA6mVZkNYw?=
 =?us-ascii?Q?RCRkQ3V+MWiDyBwkaT1bD0JMO90Q6LoNULk9OUuZT+6e3DNx5VTq36yB0YWo?=
 =?us-ascii?Q?6+lExyH1S/qvIqOENOe0f9Scxw0ddseVvFieCAh09mVLAjakdfomv/UQNKC0?=
 =?us-ascii?Q?UCpVnz/a1D3oJ5xUCIT+YHdjqfLxwfj6LpJIFLtA4vL23BbgoYaE+ZuN0fPE?=
 =?us-ascii?Q?Q7/EBqC+JTjEJaGp34Xut6CQM+9e9SxL9gxD/EFdh4x6S4KQmJ9jm2yYvBTq?=
 =?us-ascii?Q?2fJNLyYRu50MsRVfWZQm5Ce52Y6FWJc84Kq+T5yEidSEaE0vghB7mdJt4giT?=
 =?us-ascii?Q?ts5so/enqzfcSlRWCwtyMY9OgA3CiP8okPnT4Hp1QeiEEDMtuH1nZ6is0WvU?=
 =?us-ascii?Q?p1mkP2hNsErT9a+VP8PVMWxdhbGjGfEI4JI7gXtvrO+SCdENbjR/rqmmFO1k?=
 =?us-ascii?Q?umwCjzwERDXRpWd+Lv0rAzb4tgafmEkkZU4Wjiy6BRMtAWW4U11P89XpI+R7?=
 =?us-ascii?Q?ZUYXcwpV/QjcCjQKql4CHzS6SoKvO4aNF4XWh4qRU9R708RNgV8fLobZNcdW?=
 =?us-ascii?Q?w9Fk4Z26QbI5m1hggvyCZOFyb8i4MeduNcNY9Mard1RXeh7/7/t/NRtLmBdy?=
 =?us-ascii?Q?g3a3CdrOKS1ib+dkjIhDH0s2wAoNAvkF9fGcmAb5AxBFsV4WihRiLtEnBOzt?=
 =?us-ascii?Q?12Wdcu4Xyd0Al6zR6lrhCPrcZl6hRwhdJaYLvLzZe+a0Ln6KAbXQpESSYDLG?=
 =?us-ascii?Q?dAlHpNSz2ZnDO7uFimLDHJwaMbql2qNxHEtD1eIPqbj3VcqbbS8RuZY6Suam?=
 =?us-ascii?Q?ZIXG+n6UMVsrpgk/N5zFLiOaIr+cYHPhu7SUS/UGrsvbo5rMjN36doieNPdq?=
 =?us-ascii?Q?4M8Q3SG0UGKvxOV2bWcXichOyGiTOAtFDK9Sb57w0vKXPWyd+s18EBY89m5t?=
 =?us-ascii?Q?tvBAC7jV1m6zG6Kr9hbkqBG2TAV/wq4u8AYuGiO/oZFbNU80KJ0TTvTr4oY4?=
 =?us-ascii?Q?5fIudPBz17O+swc/zZqAHrzw0duqvVGzY0h3DzzQZtDRko+8eHKxSf1ik7a1?=
 =?us-ascii?Q?tG3dV5DyEaPefEIbSbZF2sSfjHDh84T9?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?paPLxxl1ktIKUNuQ6SLARbJTBi+aZI/3p35URV7Dxq6Otg9FD02hk2QPsNiM?=
 =?us-ascii?Q?87iq7Q4tZqTwh0O2w/tnADlOzuadS29GYqeVT6NxcfiVl2RNp8e6V/tXk13u?=
 =?us-ascii?Q?NzDNgGUr/h+D09US+i+GW0H/HR3fDBsZVIQELsRDEOZ7FpUnh2GnSa4URSNU?=
 =?us-ascii?Q?bjcz80GZdoFYgF0o4P54r9t7zyY4Pm/boTebq3DGu9T44sIjfZyIv9WRF5wQ?=
 =?us-ascii?Q?X11RpqQH1P05h0941fdaXJPBWtaBAgjsgK/1lUliW04mDZa4XaMeB7kr+uy5?=
 =?us-ascii?Q?cs/Elt83YRo86GDerPG2vdPBVuKLBeoTlSSvS1JgKRXLDgcFLExFqs6h7m/Z?=
 =?us-ascii?Q?eEsMNsJQKHzyd4gos/UflkaPJaKG+vKBDd5hsPeV3t8LIdNIPKP6jtG8Mawa?=
 =?us-ascii?Q?CDKo4XbjaOL3Tw2FIedB0PsA11TTZjpjnIIXsT6hQhicN0dkwRjGTfYVS8L3?=
 =?us-ascii?Q?WELNUIi/3ntgataohn/KhNwQuWVpPJYUT8KUgBevZO/pUm3I9WIhO/X3Je+g?=
 =?us-ascii?Q?YxRw/uWtjyJDvN158VsuI1Ska+dgxRSIwNV7N2HzCFwhNul9PvmWEsmdiqn1?=
 =?us-ascii?Q?X/9C1Ac0i1lfOPIkh1JidASMieI3TDplcUGYz6GWu0tw1GrjsgsaHBjVidSA?=
 =?us-ascii?Q?pVHIXvBg1iVNahWS/NwYeFDRaAbmgLYt4WanGDrDAeUhkZ6UNMJUGX75Y0SK?=
 =?us-ascii?Q?P3kjsTCCWhKxisbd+UfdFwFyVgv68XnSOki2M4nEBgksJR70Qiihv9GcBy1w?=
 =?us-ascii?Q?qZu2gJuxhx8XCl6wvv0q15iCC59EqElj0QND/2qMER6b+dy2M7AqnhlpH3hj?=
 =?us-ascii?Q?6ufcpMZp2yxu56t8rpqVlM0JDRX8V0W1pAGlxD0aoZa7JLC1CKIx99gkl1bi?=
 =?us-ascii?Q?jd6FFxt4GI2kAKKgg/A5NuHwq7F0lH2WnxvQ3/4Dk4kkXDAFtoOvs/CpgOgR?=
 =?us-ascii?Q?xFGJCO/e7kpKDf7PJoIVnv4H3twPD7uErKQNnWEAzC3CpiZPabCAYMTTmgzJ?=
 =?us-ascii?Q?xjapbfSIzWiYmxS6ZWRcjUbVSnOoGwaq9O2WbfzOS14BjW7p8eWiudc4hVav?=
 =?us-ascii?Q?oxV7FQpgZW1/e3XLoBCLtBrqf68MuzH7Kbdholdh9FEwv8DWsPBuJNaqDrx8?=
 =?us-ascii?Q?CnrJYTdm83XSQEbwYLfnwK1XsLH1nRObu2WvCoTYVHohwWNn44zEu/LY4xYj?=
 =?us-ascii?Q?8F1PaHko3B2H2pbgS0lFdVR36NKuz2WpTXIgY7dXI+7+wpZmP8GduDcpnpke?=
 =?us-ascii?Q?ziWnfP+XVN6tItmwT0CF4LSGwfa6bQEhvBKB49ZhTR7tCtNNCLvdQVaeTxTy?=
 =?us-ascii?Q?ssiLGxWYh1asGxSPtNkGjTf4xu2qDdaqZu8uYy81bvV0yk96k7gEVclk/Ae7?=
 =?us-ascii?Q?N2MKz+BV1ipLvaDyHbu0GR23QZXdxU+499f1DiYqHrslqu4JLD9MXKVLo5At?=
 =?us-ascii?Q?EcTgVOKkPMlv2guIqkF1+6QwGGb9xRsV17/19LEpE10499XGoH90GUA7pyjd?=
 =?us-ascii?Q?e5q0jrrYe9jXFHlBZQQ21ET5fMj10TQUcWiCHoHjaggGoLJz6/jD2Pju15oy?=
 =?us-ascii?Q?zxGwDCm2o0nAP7KQgWI4GG/W6LVZxJLOGEeQ7C2/?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XyyQDOp81XTc4oudhjpSbiXJIZ6nh7z9qCe4ZNXG5aHOeucNnyjHVky0vqmB/JP/rnSGycdt9yZqOhkskJqTC7QRRN3XSF5eBTo8a8lFbg31YqxUkTZJUvwFmvL2BabCgjLpoSSGs6myzhYnzgVsQxh3Cd7ylqFLJ1ffb87CSjg2RZ/eIvazU5X5mm6KC0ddcDBoxu6+uB+4Hf3/6MgpCKnYLOxay7QozdSRS9dqqQ2vJg9laXhIf0Avkl6cUQDBHiafuGZVoQdRB5Z8hBU1PimudYE5D2/uUPknc8N9hggeOSCPC75hgCopBxGM9PCKkPQmSZDTAxfOeQ100sRvsG2CcXQcCRKoLc5NLqvzgR3bBNPGBrwNMnULXL/r+x/51zaT75RUopB7LddsAHoiu2XswFicHMgE3ihwfcM778nLCLnPTshJUNzIyY+CJX7SSgEpGkoafX5WRSrzRE7K3l5OMTwHiZwAM700+MXS4G8VyeGBfiejaXY5M7dPlL2u9bCNw9PWSp4lNE/rkGUFIsH+REPkPJ8FAJwDwwJ4YwieZIv2tv4esIu9mX7YRlDmSHB9Po2AOxbRsmv1vL+9AAnYFm/HBBnQYgjVnTSuF/U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c14d85a-f8ff-408e-8d29-08de26cc65d4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:45.9101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pvSkCaWgfK3bri+POUQdeO8macysLAsUv3XRz4u5CuJLA6kgFZ1iYPTo26UPVR4frazsZH2fv54JsZxhPULZPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Authority-Analysis: v=2.4 cv=BoqQAIX5 c=1 sm=1 tr=0 ts=691cb452 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=dBtFPdvOB2ZotuhR_YwA:9 cc=ntf awl=host:13643
X-Proofpoint-ORIG-GUID: mrDmy0m5wTceHQfTVDYa_z5b_Zz2SLkF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX7iYOuhWbQNlM
 LHrrEFcPOj/KwSPXeG5VpLX/AhCrvZdRVjEVeBgmIoi/+E9WIx4b6im3oQY2SxoQxoZXmSaTvDF
 a8SXUoE5Ic/HSWbONScOC4RQ+LIJDqWoVIzeFeAb3FIJRQBLfl4U4Dw3jXb4CRupz17uOcU1bsu
 NiMzjUahXhgvkXfTLqUEotj29u2ITlOhYOjlumXgy9FnXEAFdqraiUoG4ANwdvyl54YGxmPqy6v
 Ih7Z6opu/k2NX66LU+Cz5QD8/4oGlv+nHQRNJrVDR8wO4Osit20T/6Z/tpea9a1DE+jNVy9MOyd
 6s0vgul/qUoT+hpIIbhe7UPYEXAt1nKyBPX6gxm2voUjCrdatcQYE8wqoVNwj1CJwaCr1fm2TtX
 XY4dh/jBExQ9gWfPZADt//uaFAZ5idss97yD7YUu3AIqbI3o+8E=
X-Proofpoint-GUID: mrDmy0m5wTceHQfTVDYa_z5b_Zz2SLkF
Subject: [oss-security] [SECURITY PATCH 6/8] tests/lib/functional_test: Unregister commands on module unload

From: Alec Brown <alec.r.brown@oracle.com>

When the functional_test module is loaded, both the functional_test and
all_functional_test commands are registered but only the all_functional_test
command is being unregistered since it was the last to set the cmd variable
that gets unregistered when the module is unloaded. To unregister both
commands, we need to create an additional grub_extcmd_t variable.

Signed-off-by: Alec Brown <alec.r.brown@oracle.com>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/tests/lib/functional_test.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/grub-core/tests/lib/functional_test.c b/grub-core/tests/lib/functional_test.c
index 94a606bf9..776934e1f 100644
--- a/grub-core/tests/lib/functional_test.c
+++ b/grub-core/tests/lib/functional_test.c
@@ -92,17 +92,18 @@ grub_functional_all_tests (grub_extcmd_context_t ctxt __attribute__ ((unused)),
   return GRUB_ERR_NONE;
 }
 
-static grub_extcmd_t cmd;
+static grub_extcmd_t cmd, cmd_all;
 
 GRUB_MOD_INIT (functional_test)
 {
   cmd = grub_register_extcmd ("functional_test", grub_functional_test, 0, 0,
 			      "Run all loaded functional tests.", 0);
-  cmd = grub_register_extcmd ("all_functional_test", grub_functional_all_tests, 0, 0,
-			      "Run all functional tests.", 0);
+  cmd_all = grub_register_extcmd ("all_functional_test", grub_functional_all_tests, 0, 0,
+				  "Run all functional tests.", 0);
 }
 
 GRUB_MOD_FINI (functional_test)
 {
   grub_unregister_extcmd (cmd);
+  grub_unregister_extcmd (cmd_all);
 }
-- 
2.11.0

