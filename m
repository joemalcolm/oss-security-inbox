X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4498" "Thursday" "2" "April" "2015" "18:12:58" "+0000" "Haggai Eran" "haggaie@mellanox.com" "<1427998401240.52348@mellanox.com>" "109" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040218:12:58" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "U       haggaie@mell Apr  2  109/4498  " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427969085.17020.5.camel@opteya.com>" "<AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<1427981431.22575.21.camel@opteya.com>" "<551D5DC8.6070909@mellanox.com>" "<1427992506.22575.80.camel@opteya.com>" "<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23629 invoked by uid 550); 2 Apr 2015 23:10:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29761 invoked from network); 2 Apr 2015 18:13:13 -0000
From: Haggai Eran <haggaie@mellanox.com>
To: Shachar Raindel <raindel@mellanox.com>, Yann Droneaud
	<ydroneaud@opteya.com>
CC: Sagi Grimberg <sagig@mellanox.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "<linux-rdma@vger.kernel.org>
 (linux-rdma@vger.kernel.org)" <linux-rdma@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
Thread-Index: AQHQbSyKnw+yq2pMTUy5fjpX6HQ0b505i/wAgAAsDICAAFB4AP//4xoAgAAChYCAABS4sA==
Date: Thu, 2 Apr 2015 18:12:58 +0000
Message-ID: <1427998401240.52348@mellanox.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427969085.17020.5.camel@opteya.com>
	 <AM3PR05MB0935AA4898B4B519D2DAA3C4DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
	 <1427981431.22575.21.camel@opteya.com> <551D5DC8.6070909@mellanox.com>
 <1427992506.22575.80.camel@opteya.com>,<AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
In-Reply-To: <AM2PR05MB0929FB71C5A4DE92A7709F92DCF20@AM2PR05MB0929.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [46.121.82.195]
authentication-results: mellanox.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR05MB1034;
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(377454003)(51914003)(479174004)(24454002)(13464003)(51704005)(77096005)(106116001)(36756003)(66066001)(93886004)(77156002)(62966003)(19580395003)(117636001)(122556002)(19580405001)(92566002)(2656002)(46102003)(87936001)(2950100001)(2900100001)(102836002)(86362001)(54356999)(50986999)(76176999)(230783001);DIR:OUT;SFP:1101;SCL:1;SRVR:HE1PR05MB1034;H:AMSPR05MB482.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-microsoft-antispam-prvs: <HE1PR05MB1034C1B15F4E084EDCBD2280C1F20@HE1PR05MB1034.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5002010)(5005006);SRVR:HE1PR05MB1034;BCL:0;PCL:0;RULEID:;SRVR:HE1PR05MB1034;
x-forefront-prvs: 0534947130
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2015 18:12:58.4474
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR05MB1034
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access


On Thursday, April 2, 2015 7:44 PM, Shachar Raindel wrote:
>> -----Original Message-----
>> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
>> Sent: Thursday, April 02, 2015 7:35 PM
>> To: Haggai Eran
>> Cc: Shachar Raindel; Sagi Grimberg; oss-security@lists.openwall.com;
>> <linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org); linux-
>> kernel@vger.kernel.org; stable@vger.kernel.org
>> Subject: Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected
>> physical memory access
>>
>> Hi Haggai,
>>
>> Le jeudi 02 avril 2015 =E0 18:18 +0300, Haggai Eran a =E9crit :
>> > On 02/04/2015 16:30, Yann Droneaud wrote:
>> >> Hi,
>> >>
>> >> Le jeudi 02 avril 2015 =E0 10:52 +0000, Shachar Raindel a =E9crit :
>> >>>> -----Original Message-----
>> >>>> From: Yann Droneaud [mailto:ydroneaud@opteya.com]
>> >>>> Sent: Thursday, April 02, 2015 1:05 PM
>> >>>> Le mercredi 18 mars 2015 =E0 17:39 +0000, Shachar Raindel a =E9crit=
 :
>> >>
>> >>>>> +      /*
>> >>>>> +       * If the combination of the addr and size requested for th=
is
>> >>>> memory
>> >>>>> +       * region causes an integer overflow, return error.
>> >>>>> +       */
>> >>>>> +      if ((PAGE_ALIGN(addr + size) <=3D size) ||
>> >>>>> +          (PAGE_ALIGN(addr + size) <=3D addr))
>> >>>>> +              return ERR_PTR(-EINVAL);
>> >>>>> +
>> >>>>
>> >>>> Can access_ok() be used here ?
>> >>>>
>> >>>>          if (!access_ok(writable ? VERIFY_WRITE : VERIFY_READ,
>> >>>>                         addr, size))
>> >>>>                   return ERR_PTR(-EINVAL);
>> >>>>
>> >>>
>> >>> No, this will break the current ODP semantics.
>> >>>
>> >>> ODP allows the user to register memory that is not accessible yet.
>> >>> This is a critical design feature, as it allows avoiding holding
>> >>> a registration cache. Adding this check will break the behavior,
>> >>> forcing memory to be all accessible when registering an ODP MR.
>> >>>
>> >>
>> >> Where's the check for the range being in userspace memory space,
>> >> especially for the ODP case ?
>> >>
>> >> For non ODP case (eg. plain old behavior), does get_user_pages()
>> >> ensure the requested pages fit in userspace region on all
>> >> architectures ? I think so.
>> >
>> > Yes, get_user_pages will return a smaller amount of pages than
>> requested
>> > if it encounters an unmapped region (or a region without write
>> > permissions for write requests). If this happens, the loop in
>> > ib_umem_get calls get_user_pages again with the next set of pages, and
>> > this time if it the first page still cannot be mapped an error is
>> returned.
>> >
>> >>
>> >> In ODP case, I'm not sure such check is ever done ?
>> >
>> > In ODP, we also call get_user_pages, but only when a page fault occurs
>> > (see ib_umem_odp_map_dma_pages()). This allows the user to pre-
>> register
>> > a memory region that contains unmapped virtual space, and then mmap
>> > different files into that area without needing to re-register.
>> >
>>
>> OK, thanks for the description.
>>
>> ...
>>
>> Another related question: as the large memory range could be registered
>> by user space with ibv_reg_mr(pd, base, size, IB_ACCESS_ON_DEMAND),
>> what's prevent the kernel to map a file as the result of mmap(0, ...)
>> in this  region, making it available remotely through IBV_WR_RDMA_READ /
>> IBV_WR_RDMA_WRITE ?
>>
>=20
> This is not a bug. This is a feature.
>=20
> Exposing a file through RDMA, using ODP, can be done exactly like this.
> Given that the application explicitly requested this behavior, I don't
> see why it is a problem. Actually, some of our tests use such flows.
> The mmu notifiers mechanism allow us to do this safely. When the page is
> written back to disk, it is removed from the ODP mapping. When it is
> accessed by the HCA, it is brought back to RAM.
>=20

I want to add that we would like to see users registering a very large memo=
ry region (perhaps the entire process address space) for local access, and =
then enabling remote access only to specific regions using memory windows. =
However, this isn't supported yet by our driver. Still, there are valid cas=
es where you would still want the results of an mmap(0,...) call to be remo=
tely accessible, in cases where there is enough trust between the local pro=
cess and the remote process. It may help a middleware communication library=
 register a large portion of the address space in advance, and still work w=
ith random pointers given to it by another application module.

Regards,
Haggai=
