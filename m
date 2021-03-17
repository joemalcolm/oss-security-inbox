X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1923" "Wednesday" "17" "March" "2021" "12:40:41" "+0000" "John Haxby" "john.haxby@oracle.com" nil "46" "Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil "3" nil nil (number mark "U       john.haxby@o Mar 17   46/1923  " thread-indent "\"Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25718 invoked by uid 550); 17 Mar 2021 12:40:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25695 invoked from network); 17 Mar 2021 12:40:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=/YR1+vXKQGH+lmOZtRugJOaHwQzXOvnPttNQmBdZIC4=;
 b=JPzhTnUqtwng3lUQm9iLAwF6KlvqGiz6IOc1/pg9sGXcxI2w9JXeSfrhsrrwLRTyR1ff
 hf0EvNNnXepbXN6DXk6k3zUFZrtPlEYlu7aoBxu5cH3UMemy2Byr0UEF37d4q9QyQJkf
 ZodQj7cbTkfhemAk7GuTJFnOT6WSZwK5PYsgY4rveQXIQY1ZJxLbEV8qe6szoxGkbBmU
 VQ1HAfTxlPLH+r+4UH2SzgitRBI0rkYtV8SCZOH02lcyoaJxUHa1M7vMOf8q1+ubqDYO
 3oJ3bqlLp+ntdna1ptgfJKz12IFYKCU731KNWjtbGAeltMMRUHBDKMpmRRbNpr/2uJqI Qg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsphzUIBR1cjRe4zebiQQQh3b5H6CYbBkRo3+shyf96Gj7cIVmKArLq01l6hbQ2uG7oko6n7Z+8+xDk3eVh7e/vWqAtef9k8GvpOHr+yI27cthZ6ahJ5KraJym+DNFlsIK3EK0nONAavI6XcCQM1/Rws+AAkw81K8IGfYODxNZ18zJAMRY/kKFnSnFaIHaUiETP5jQGCmfV3OM8gHbsMCJFjAQIS5Fs3GprnZaInOSU4kzJIUOT/X1NZ3Q4BEtf/Ln4omlwGjBxiQrBJ8Nm3tgr842ClE08CLvME6M1gGXEQbymS1e07H8x62feQpE795EHGkxdPzLrjYQqMgPrKSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YR1+vXKQGH+lmOZtRugJOaHwQzXOvnPttNQmBdZIC4=;
 b=cVKo7iCn1ujZzX8XTd6S6E1cUlgo0IHVC1V/XlznxJcNd36oZFHlPWtAPoRyHEZYUfU7x6X39oVFRs3NvYaetq6SuOxzmsxrDnWkCBCqxnNeT6BnRd8YRj/SrCBMxNshUIlMdfeGrMhUPWa1uc0rrkK20U63MR4LD8vady0hdGIoub44EpUwy1b6d5DlKKzYqQYsRs2JDigo2D1A7Sj2gP9uqv0CfYvmn8jbJJqKzmsd/ZTd+Fr8d+Mh80nMmuls/UEKbUEwVekGB4nqfpn5td8gOVOv6NCzKa7wxNDc1Kzm4c6HwVQDPvlrfAPwlFm4dnYqINyEn7HfdRKikCLVWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YR1+vXKQGH+lmOZtRugJOaHwQzXOvnPttNQmBdZIC4=;
 b=Yc4UZH4OnQEpvTyA1pQHFeAfEmTshBWH8c/smbSipk7T+1yxDlFgNEvzC/DRcpDlzGsYVEt8Dls54WMiZPwuuQrG7cNzIw31E90VHemv6JmPjioKLPBaRct7DnLWhffTdJUWKCRcOYJYbDqgLzxqKB0MI3RKKuQDENY5PQMYlxI=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Use After Free and Double Free bugs in Linux
 Kernel mainline
Thread-Index: AQHXGySKnI413nMmVkahpFs6U86bS6qIHzAA
Date: Wed, 17 Mar 2021 12:40:41 +0000
Message-ID: <28BC3D20-FB43-4E52-9D84-5589FC4366FC@oracle.com>
References: <150fb1c3.1c2a0.17840082a2e.Coremail.lyl2019@mail.ustc.edu.cn>
In-Reply-To: <150fb1c3.1c2a0.17840082a2e.Coremail.lyl2019@mail.ustc.edu.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
x-originating-ip: [2001:470:1f09:58d:4dd5:f023:94d5:25b3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff43fb4b-6db5-4815-4cca-08d8e941e067
x-ms-traffictypediagnostic: BYAPR10MB2565:
x-microsoft-antispam-prvs: 
 <BYAPR10MB2565AF27D85F2F5076AE98B9E46A9@BYAPR10MB2565.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:321;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pxoilOvarJTmytm3GrJxH7FSEx1Ex6WPOv+Qke1mR73vFcYmrXYjbbEgF53M4V7nDsYhsDsN6w6XUBORTgPieCXWvZQcWvwhMflA7+d6ZJtw9psfl8MXAFFCbclCKcbKAcnor3ziF5dbuy/H4QHX4HcnzufRZCdsX5i8lOo31+X5udaalfYhsJedBABjXZY/N7XnN5w+GkvA/9ZFXxNLt0iQQ7jPTlCkp8X3JQwEt9Gw4+fLO/mYZKY/5hD8OOC2+VXi6cZiVE+CO3af4BUlHKvqd/dO0kBR07l51w+1D6ao2qEDUxmTV2VrXDJ2isvXaSy+blG+AsflN+g+GLBLCzwZOJEuXk7ysnfdtQgIrfv+L16aXIjMHm7L7o33omJc9dlA7zl2GcNDemzAel4i1bn9B/B4ITKce+DavMazvpBWOLF1yK+pfXjrkf+MVVEvfjfBjUZVRaL6+fS6gMzYSa1/x48Q2y6Y7Se/kXRuNMp6Dxbb6YMbFx8FCLe+b0f4zFlAe70e2KSP52DcdHHQk6J5ITIbxBe35I/jGwqVxoK3fESvK/I+ooodcF1WsfDJUAcsfy1n/LMMX8JYGTguvUvW1f9wqifzLw5fKc46tTKQREz5fGZIsxld1/BuN5mQ55f54r8H2wHWPbFz0ivyHdGUE6tZuxp9GkPvVMaTtccKbH/MPfDz+uUZMa13ZDT46u+XeIdt2GcfE0qT3WAngA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4429.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(346002)(396003)(376002)(136003)(39860400002)(91956017)(6916009)(86362001)(2906002)(44832011)(64756008)(186003)(76116006)(6506007)(966005)(8676002)(66446008)(6486002)(66946007)(2616005)(8936002)(478600001)(66556008)(15650500001)(66476007)(6512007)(33656002)(71200400001)(83380400001)(316002)(36756003)(53546011)(5660300002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?lX069J6QfibO5zW7jD82VIcHdnAKu65R2H0I+raUI8agAAGoURQdd5rklFuD?=
 =?us-ascii?Q?TzHbWaABeMnkfL8PRnRT/A0Vav8Fd1hjZFxSGdWlrKIFEIbMBUneRWJ070fQ?=
 =?us-ascii?Q?+R7s51DddiJdL6rrM7Di5OFvSfW40zWP7f/DVnxDpAKMUzB9npAPbBd+WXai?=
 =?us-ascii?Q?B01TzWe8ARzp1dMyL9+7mCEHrZaUUavaFrJiYaMf1+c7wf/s/ED9241NNLRC?=
 =?us-ascii?Q?eaMepRo729dq5Hhe/gAGgcCw5KetlmjafgzXrS3K5eEPYKCbaHZ/F27y0YIO?=
 =?us-ascii?Q?64zEyFnjnhOQCr90zT8e3UPmYM20o4MKSWh3xYWuRSlyx9WYi28SJKNGOml1?=
 =?us-ascii?Q?Zwlk/EuT0cz46WS6gXXoIFl8Qw4FGRidgliTZJqGtNSxx2S9y6jEZSwLV2nr?=
 =?us-ascii?Q?kZUQYrkwoAVrSd1cFvAAxBorXyzNijDrfy99/DoVRAJFrmvSwzmPSB6Ge/Qm?=
 =?us-ascii?Q?kObEdvteLMA1V6M5NslvPcgnOu2fBj6DqZI/eq9M3BwJOlC9Sd40TqwNTL3x?=
 =?us-ascii?Q?Kp28c0t1O1iAm6OG5w6i9f5aWFW6uAB28eYZFYXrEU6/OVp2tb374vV57YVs?=
 =?us-ascii?Q?4W4SyMk7653vy9q2AGmf6li9lRXRUvJ0uARhytVJE54Pp1Rl/XYmHHKrHO9T?=
 =?us-ascii?Q?Z/SXBYvWuYgSz4+U9VGB0mofhzoQb+5+EWj7Dr+cTN0kbZUHzouvboVIVDuW?=
 =?us-ascii?Q?KJapnjhRCA7hf0exU8ZQKmPz6WLT4W0DrJ3ffoVMkJ0kJB4pIztYT6u/zYRj?=
 =?us-ascii?Q?8XYunGN3orHuo2av5Q3cL7MqtUR9noaoqgTeOV/ctShkp7MfOUsq0I8669CQ?=
 =?us-ascii?Q?DcvM1I9Vd52vq5iETscuUznyEjMF8I9ThrWoKF64NNViBtlYdsj3ru7if9Rg?=
 =?us-ascii?Q?250mmYU80ySFK9FLPH6wBkGwLKqIyBb+4AXCOf+YfAwpaf1YUELlO6f1gRcr?=
 =?us-ascii?Q?d5SRzoHgl/0Zew6ftiDxG5GtSfgRyBur3a8trMxkf3kAciFXix1j+c0Wvnqf?=
 =?us-ascii?Q?x+vabmNpS8oDKZYoMhNtz56ZfChcnCkWpZFoXj4HVleTm0wE7znA3X9KZ72m?=
 =?us-ascii?Q?9t5zDiaqPuqcSh0m5IqZtc+YGZ0yQ0VpWsKQ9hlCtowAPuak67z9nwAw4bnU?=
 =?us-ascii?Q?C2rvgn5ElguzjSTwkIH30bS+bQkwy2TN2nkRbDFdilxkuGqWYPpouWyNTD1N?=
 =?us-ascii?Q?xt5p+dHnem1C6Mdz7G6zdVsKIADlnQ8tXoMpSjN8YvNhjhTNPt9xoOLIjcfW?=
 =?us-ascii?Q?P60M8EK6bqLD6dBmJWUjrSYrvutOi/uRNHecOmNraCKb8dUuum0vQSuXU7da?=
 =?us-ascii?Q?FXbWW9owIgRhA2HFPvf13PHhEhyZcrn1tesHW19+016l7ZYKmZ3WKX9aG4W/?=
 =?us-ascii?Q?lOql4hlqJfB4FQgH3D5KIs1EvfA6?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AE72B5967235974193B62DB586534F09@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4429.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff43fb4b-6db5-4815-4cca-08d8e941e067
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 12:40:41.8653
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AgC/gNI/mZ5T6gtzY0Vn3vkydyAe9HsvQUfQzGm63MY/lbtXpxdk4CQtbhbckjVHbkvQ5PJIWH64KnVp1cggzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2565
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103170094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 adultscore=0 phishscore=0 suspectscore=0 clxscore=1034
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170094
Subject: Re: [oss-security] Use After Free and Double Free bugs in Linux
 Kernel mainline

This one isn't a security bug:

> On 17 Mar 2021, at 11:53, lyl2019@mail.ustc.edu.cn wrote:
>=20
> Bug2: nvme/rdma: Fix a use after free in nvmet_rdma_write_data_done
> Commit Url: https://github.com/torvalds/linux/commit/abec6561fc4e0fbb1959=
1a0b35676d8c783b5493
>=20
> In nvmet_rdma_write_data_done, rsp is recoverd by wc->wr_cqe
> and freed by nvmet_rdma_release_rsp(). But after that, pr_info()
> used the freed chunk's member object and could leak the freed
> chunk address with wc->wr_cqe by computing the offset.
>=20
> drivers/nvme/target/rdma.c | 5 ++---
> 1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
> index 06b6b742bb21..6c1f3ab7649c 100644
> --- a/drivers/nvme/target/rdma.c
> +++ b/drivers/nvme/target/rdma.c
> @@ -802,9 +802,8 @@ static void nvmet_rdma_write_data_done(struct ib_cq *=
cq, struct ib_wc *wc)
> 		nvmet_req_uninit(&rsp->req);
> 		nvmet_rdma_release_rsp(rsp);
> 		if (wc->status !=3D IB_WC_WR_FLUSH_ERR) {
> -			pr_info("RDMA WRITE for CQE 0x%p failed with status %s (%d).\n",
> -				wc->wr_cqe, ib_wc_status_msg(wc->status),
> -				wc->status);
> +			pr_info("RDMA WRITE for CQE failed with status %s (%d).\n",
> +				ib_wc_status_msg(wc->status), wc->status);
> 			nvmet_rdma_error_comp(queue);
> 		}
> 		return;

Commit ad67b74d2469 ("printk: hash addresses printed with %p") back in 2017=
 made '%p' a non-security issue. That commit noted that there were approxim=
ately 14,000 places in the kernel where there was an address printed with %=
p.  Rather than 14,000 CVEs :) this was fixed once and once only by that co=
mmit.

That's not to say that this "0x%p" doesn't have a problem: for a start you =
don't need the "0x" because %p prints one anyway. That point is moot, thoug=
h, because no one objected to just removing the pointer.  The commit messag=
e is wrong though: it doesn't leak an address.

jch=
