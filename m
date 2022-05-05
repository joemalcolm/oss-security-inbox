Received: (qmail 11724 invoked by uid 550); 5 May 2022 06:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4034 invoked from network); 5 May 2022 01:50:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651715429; x=1683251429;
  h=from:to:subject:date:message-id:mime-version;
  bh=0E2YqhMsr/wr6FUjRIUvTjPXa4SyIJO/EqB0lCj6poI=;
  b=NLWvRHxsAYGkUR6wHwdsTQvoUcxQqgCyyNBGslil9wLm4AVtYXvIy95j
   o+AFo1B0cWGCZyvafAq5Mor/e1DjaqkyAgEr3/DwN8VjmX/B6rXb9s5F8
   LvWJ7alf86bD0gSe76VfId+K/h1GdCC39nxZlv9KKiH145DAfAIdF0NbB
   /JrLBTh8Bx+BXUtmyit291itWu+a1aQAmcNpDN1vpIEb2/UFYnwiF2VUS
   Z0YiBrjBWEXIHapIDfoHKH4L1ba0Q/xQc33o6QsGNrIU+DhYSXfCxKkGy
   9F/qrptzY+qEhu8+2lVQPjr4uqJzj8HWSc/97DSzx6Xd844ekk/93pjOK
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="265550348"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; 
   d="scan'208,217";a="265550348"
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; 
   d="scan'208,217";a="621073064"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DK+a3mXnAXEVASAx8gB4mW13tv9X7TJvVgte6j5BnkGLjX1FtGSHM/ss02zpy4rQMPNGZRJttf409MLG+Uj5hOe0AWD1iD9kFR6YwDnwYfRGAzRjsyNcsOuu4xGU84JQKqeLmiFESuM61kXBwk4tohBsnr6oI5PpSuggnSXgqzLXuR31SP2P9YY/0FwEWTUyFe75/WSqFT2zaMvPlOXfuYo2l9QWnua7s4ulJ94LzzfnJqSgLPFs/WeeV7g8yNtMRFN8VmbgDGaYw60y1IoRsOFStSd/XFNnoNyFD15ATizej+0an/K1+/vdLigCBf2P2sEKYKRVU+LUQbkZ+OG1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nESqv9slGqQhrnXVgSOyUwSmdR8gIpRSO/AL7S5duL4=;
 b=S+/bXF44ExuZ2z36Wa7JDOnliR4sQjXNXIu0LnUwjCJY022B8cZu0q29DVDd/WHz30n1jF5yje9Er8fEZln4EwQmHsb7yznQO0SHTmsscjanSZRkJexQHX/eLJ8NfDcrTSq/eURP+gDmeIg97bhHeOup8mSBxIdLJwVpChioHfOJhv4kG9nH88zYNjrgrEyl7gvdruAiux9xiV6D4qXlZe1mSOSbiPTHdD+HhYh/8UdAhFs3sipKoewlhNHXwbQDOorL9ICN/TLb7US05a78hn8rFYbQmzxssgXvgmFjwFSrpvTweFTfVN5ypXz6Qb8u3J+pyZTkist8gEVQPd0pEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
From: "Jiang, Cheng1" <cheng1.jiang@intel.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: DPDK CVE-2021-3839 Release Notice
Thread-Index: AdhgIlEAvIDtMkTSQzW+4bH8dYDb+w==
Date: Thu, 5 May 2022 01:50:08 +0000
Message-ID: <SJ0PR11MB500698A24AD3AC00A44358D7DCC29@SJ0PR11MB5006.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.15
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dd5acdf-4d91-4eb6-6b15-08da2e3995f8
x-ms-traffictypediagnostic: DS0PR11MB6423:EE_
x-microsoft-antispam-prvs: <DS0PR11MB64238AD8FF0D4F09F781F7E3DCC29@DS0PR11MB6423.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v5GOXx9mGidlyaIagcVuedBvX82GfKpJ9mbfLfr+mvnXM7qz/bbp8wPAosTk30RPUPcvTa4k2EWKBJ8+2n4/2ap2WHiUP1DTctUcAagAajxC89v9Y45/hWbqtu+bEG5b9DVlLQFq4NREhLRN6C0cb+FCAILGqJbH4vA8yDElfHumYIJhv3biTm4h3OPknxr8LdbBzgfuTfAoJQZXjopzGZjq+B5LmBHuSHouiY2HqrW3/6eiZ63cNrUvCGrLsjDekioTM0Zq+cymJuG6TCPMM0GOkw4fOh8zVpaP6ASvYaEmB9M9g6BF05MiMGzvdpIBTc4ZUHKXeeEioKwlZkcER43vj5A4pKDcpW95nfp0KSaDIQP+rDdS/A9hKew3T3l7CSDASB3C4QmXTtKvwY2sR5gQBgeCTnQlW9VCETux6/UWnRhMURF30btt4ykGjJJaEgMBGQ85Xtei2UI3E4nQeTmmD1J4wV8Z8tDDLfX1REXp2JD7N9eVMV/QfUUE+Oig6DQcs3XIsyBKVKVRHn82rQBhUyoABYHi2BLY1AU4d1yw2oPlx4MBAFQasi2rB7K1Kpsad50qIMAz56E0bigt42rthrK7RFPrULbavuznMHkImSXKhcCIaOQBtW6ZFDKeE2u3lLrVEBA2GsrwJtcTkBWUZV3a+L93GhyKyqA8ERV0itwzfPH3Zm3cuorB+BBU5jB1Y7e1CkmuEOEOpuYOCXJg1OqmZOBoC5REew58GM84UlWgMolPN1P/S7toL47WO6paRcUbpTg+u6F2dHt/AGOQOhmqcdT/huDZxgbV8dI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5006.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38070700005)(166002)(82960400001)(38100700002)(83380400001)(26005)(9686003)(122000001)(86362001)(33656002)(2906002)(15650500001)(966005)(71200400001)(316002)(186003)(55016003)(5660300002)(8936002)(6916009)(52536014)(66476007)(8676002)(66446008)(64756008)(4744005)(76116006)(66946007)(66556008)(508600001)(7696005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RtFEhVvnIlKtUf9qB+1pRkwKoyQ8bBdUeTzeEgGr3aavdNVf0BxQIMz2SaSc?=
 =?us-ascii?Q?aBhXsHuLQPcuzDmYxykV5RvBIbl7hE62H51FWetyZQRXJLaNEGd4NwuO+H6Q?=
 =?us-ascii?Q?JPdmTMM41NBRot+ZCDXyhgVdkHh2l+LSHe7kr8SzycyfQ7y7BlPbmM3FoBJt?=
 =?us-ascii?Q?omr2V68ar/XpRSSUl7zlyEbQ2s0AvhKBUcCj2RJcz+Ocjz0pbFScv/hDjXuG?=
 =?us-ascii?Q?HqX/8PJBlyLVp34mnrgIIHSJA8s+XCYWJN0ASqQBlWchTSy/UciRdqsp4REa?=
 =?us-ascii?Q?6XHCjDJwtP6Z7wI7rqlrEuld/Ti6pS1wLyipyGHzTh1lVMi8xojebI4nrPKv?=
 =?us-ascii?Q?xng+lqdUqfPB+7flY5njDVnLks0TZHCjqagMlRmUGHAE/2M7d7bWsJOgvQyQ?=
 =?us-ascii?Q?2h/RedpEo9+HayRBnaqEY3be1480WBBGUbwTFGRzGUzNFz4wCLwXGFrKbx4J?=
 =?us-ascii?Q?WJTX22aoHVzN1sc57q7XlgKNJbm1paln2rMBHIvYZvLV9rl6PSxT6+w+N+es?=
 =?us-ascii?Q?YDgLg/cj8OpX9SwoO9/CiQS1XvaWOcL9FLRddtHyYaulmgAM/KwryyqioyeP?=
 =?us-ascii?Q?1c2UH4NA6dFgaB5v5BTPtJmC2lFSF3nlTtgldegrFpsP223ux7DNnMj8I/q+?=
 =?us-ascii?Q?ljYi63J1wIO0enWzUGdOe1WT2cWm9+wXAaz8cVe0PA1fO7iMXeejsKlTTDcz?=
 =?us-ascii?Q?EEzYKU9nmtZ6/P892ETGTZxccv9rpNSp8z6CUUD/040ggxdrw6qFhHLJ25Ua?=
 =?us-ascii?Q?mck+yewMVyVPKFEST6eFPaE9SjgpxbzqdNZTM/NZmZ9QbmTtqg1AS86oaixI?=
 =?us-ascii?Q?+UF0dtSu7zGnEYMdpD2yFolm5cCtlRSq9AmKTKgRphHbk/7+Y0r7ZMVmiwJF?=
 =?us-ascii?Q?K+MHW7TbT4PW6BYeXWTlWciuIe9xoawQZa/Ncg/YUK3WMoylF8JjocflDg68?=
 =?us-ascii?Q?W8B2ju1mDX1et0niP8DJDQR1jq7WghaggWTvLYDvyKQuZiMDd021U13qmTlX?=
 =?us-ascii?Q?KH4zfW1skzxUO2UumZT8568qdnQnFxrH5AR09g0O4U1h2bJKeAn8SP01cbg1?=
 =?us-ascii?Q?k4+szkW0q5pR36PWOEmAiNZj7ibU60sRifdR1GtpCNHYyiarxfm1G5N152HA?=
 =?us-ascii?Q?MIgOaqj8/UAAzqeBvY+Qjl7CusJLgnauz9o6jAaFUnreYbnvhPWMTpk1riSh?=
 =?us-ascii?Q?20QFMMzCw/Y5q/360wfBWqNlHxPDJAr0u4Fhf7kHhFGUnnXPwX2xEtHwC1ls?=
 =?us-ascii?Q?WdKJ6jZ8saZchRd4qqIBzpa0vbdSkTnT7yQZRk4RrOIHWSzHP2thx9CaGtlj?=
 =?us-ascii?Q?ywO7qL9kYrotdRUcJkrW2CvNjC1dDP8Tmw2uWewPl7cakxSfW9Om8CFjScXm?=
 =?us-ascii?Q?45cuchfnvTNttcFaIFqECoMSWFCLp0I4rGbI4WXX/G1PCUdAlOhAjTT7ZLsY?=
 =?us-ascii?Q?KR3mphTwYAGNGdYB+YKrSIN7DS7YLlGx9naFdfW0TeldE3iC+7uX3rJ677qw?=
 =?us-ascii?Q?ZSRPgPbvpnVTvexgFOfr6nPk3c/xF1BQPVtco0zGN5R6bC/Cp5AMDMxEcggJ?=
 =?us-ascii?Q?mlXCd5xCqWYevtm3KAH5jNG+9MvhSRpYxOWhpSKFsMBNcQnjhJnJpkHD9ybp?=
 =?us-ascii?Q?9VvGKjFsaJRdLWIDapfw7IbvX+6E5iVr2ooS4FKuWUCWhhXe/HWQPZC2tBAl?=
 =?us-ascii?Q?Zpqwz5lU3NWqh3eN5vugjzNhKeWM+G8jTY0jGMDUGAyzBT5oUFfV9ZYgQFtp?=
 =?us-ascii?Q?pwMEzOsAQQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR11MB500698A24AD3AC00A44358D7DCC29SJ0PR11MB5006namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5006.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd5acdf-4d91-4eb6-6b15-08da2e3995f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 01:50:08.9976
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5BrMjTQXWGg5W3m0nDfFUArEBGlepnGZdv7L4u/PHXE+xzlOVh+wxLc0b08zCQ0956QTDKSF3MLjjc0lM2Lf5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
X-OriginatorOrg: intel.com
Subject: [oss-security] DPDK CVE-2021-3839 Release Notice

--_000_SJ0PR11MB500698A24AD3AC00A44358D7DCC29SJ0PR11MB5006namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

A vulnerability was fixed in DPDK.
Some downstream stakeholders were warned in advance
in order to coordinate the release of fixes
and reduce the vulnerability window.

In DPDK Vhost communication, we didn't test if msg->payload.inflight.num_qu=
eues is out of bounds in function 'vhost_user_set_inflight_fd()', and could=
 cause the program to write OOB.

Commits: 6442c329b9d2 on the main branch

CVE: CVE-2021-3839
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=3D657
Severity: 5.2 (Medium)
CVSS scores: 3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:L

Thanks
Cheng Jiang, on behalf of the DPDK security team


--_000_SJ0PR11MB500698A24AD3AC00A44358D7DCC29SJ0PR11MB5006namp_--
