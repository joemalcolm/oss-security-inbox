Received: (qmail 12045 invoked by uid 550); 5 May 2022 06:20:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9626 invoked from network); 5 May 2022 01:55:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651715735; x=1683251735;
  h=from:to:subject:date:message-id:mime-version;
  bh=dGPFtjJOKsfIlCSw7mHr55Pf43uj/WMaHUVkAfZ8pBY=;
  b=Ylauq6bzZBaVlQkLSRdbdPDJFpJe//xVa3KKJTCa4kTvMX+1hS5GGnZD
   wiSi+Ikuvwq9c71j1dOduw5p+P6mjqyYemTfibQUkKZYiTRZMk58halHF
   HJLfZAUnQiO5PU6nNO7Qup0xIBKy76NmZk1PQsa77fGHH7cwCn3GbJHc2
   DMEuOPcBdzUxC00myypxN9VGe3H61/unclnGE7ZhmdN7x//FVxV1StTUX
   r+8ROfiJvfZK6tJpu0hhOTcByrdNmQ9pFfj+FlLT4ml7TxJndIzbVFW8I
   vXSX8mMCY2SSa4hmiizIHN6T99hxU3XXNlDUTVDeMvpf/z8zIw771Sprp
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="293153080"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; 
   d="scan'208,217";a="293153080"
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; 
   d="scan'208,217";a="568373993"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NqdWPIKlREDHw9bi8arHeeUN5FXcw5CkaGFLHpEMbhcFWSaBN4zvN3nuCFbROKlTCFVVch5K97CGCa0jJ0Y9fsqi7r6SiYhPR2u2d6TWEWjGsjYhXLP6xMeCN3L/OLrJ4fMkkv669pTeVJJj4022SOXroAkRsuBHYxPrh/3ZlwvomZl4SzmTcwA6a5ranfHDm8dgKGLafthx4mX0AMXntlSaCOMeUoSyKU5Vn5aoz7To0SvDAGe0ZSz18zbw5uPdKW3HvY/lhb2DlR6PU0ZNHLx9nyPwJEgYsOiqD9hdN0R/GmFJk/WBW1OVkp06X+8lQo4o48mKF5hCOeVLE42F/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fs+vzFxqVIr3Z31FriybQiu6TSCmE8ukWirjVnDJM/g=;
 b=MDfGFtF4UK9nIb7A83j0J6KgKy3hPvU+Q59eISU7kTr1C+zPnQYgW01oMix0QU21MI3TgfY2adTyo/8VkuME3whA06zLih9PwL0k93kuOsan41DbyIGberXhiqn8wvQ82YT03MA8hrltRl/r17bGsApZyRCJ8074Yz0QiW6NmfDa0liuNAfl6uX1ySsCpAVcc5z7yveFHv2Fme7Lcha2dHReIs9RoVI2YLvKV6OmTmTcJr1qKFWXtaG2761iA7QMb+LlFjni3s74oKSQzNay4o+0cWKoHfadJ+mt4/e6GPzRiejYlDFBJc7MLDAyBtM3UjdV16JsbQ2Mk3/PAevLwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
From: "Jiang, Cheng1" <cheng1.jiang@intel.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: DPDK CVE-2022-0669 Release Notice
Thread-Index: AdhgIuzsCGj76IrCRRq9ku+giWTQRQ==
Date: Thu, 5 May 2022 01:55:20 +0000
Message-ID: <SJ0PR11MB5006E1D447596CFDF564B946DCC29@SJ0PR11MB5006.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 7b3aae8b-610e-40fa-2833-08da2e3a4f67
x-ms-traffictypediagnostic: BN6PR11MB1505:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1505CF453F6EA01843A2B851DCC29@BN6PR11MB1505.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ueUNh/v5K7M/70evXMKRABtff/kycurF5brlgQVylwim1rx0a9rf9XEeXOp/ZYq15eb5UKmvAIVV6MxwMsmXJVGw8NFZzqL4fCxaRMxvvSQIS23GtAoIIkmOr3uMr5KVsjN6v4HpllwLAIreMP0FYTAqslSVDDR9+Av1r9airb4G592LDeuXqrxgRGHVwm8WVI/qoIw0khoeQ3hlvBmGbDNy9s1fKqu1amDRpf4dgF/NYBmNp174Ca6AZJD2SYvakZOtfezse0FIOpKyGdXXbeTxnmMtRY6uOlHBkKzixRqcHGWoGioVHzYWPXVQlWKfQEDQAYDsTlBUQjyFMoQKT2s5rK0V/AW4OEp6LjcBwI1p/stCGTBIJtzbmrRHKUJBkDUaYjzQ96+cEasm7/5p6LWrY7vndyEH402FQ+0+TC57JPIhQPqs259RtP+kYeWHx0bzZgcs+B58GnKnY7W83ZVPk5mv38l0g6xnXUteGgF/AcNAjG7q5Qql7PYsoWxgrMqlHrDFLbEw0+IFjjrPsRtzSZKKebWKU8DeCtvvepZjhM5py0/qR4MoB33VQ1oOcVpgB/wtuUCPAVf1Fg5rOpDCtFNYoPAlWQCPPHcsAUw3Ia2fhNfPbPjzeeexnVMI37aP6xbxtV3DJqUE7q4kSF/+BATJdRLIc1c+Lh0Gb0WW3G57hvd6DAna5cix+DiBAxuqa80Eb00l5DyovCxsJPvTgzOkcj6v7ei/wImgglUeB1QSN31Jntn7dWMzCGJy3YyoQm8MvMRMhjSpoUaCpBKZuiHMPK6Az9z0iIMNAXU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5006.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(6916009)(26005)(122000001)(38100700002)(52536014)(38070700005)(2906002)(6506007)(966005)(82960400001)(83380400001)(71200400001)(86362001)(186003)(9686003)(7696005)(5660300002)(55016003)(8676002)(76116006)(8936002)(166002)(66946007)(66446008)(4744005)(33656002)(64756008)(66476007)(66556008)(15650500001)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/lJhZbXO23Lu16SXusTj8Lc/3SJNDXXhD2i0D3wXdAbUs2UCm3pMmvJG+jP5?=
 =?us-ascii?Q?vG+F9Vik20g/J1r9y58pTUBZmyPc/2RUo9x+ChC4OEgmmodgQNO+SG6oHx3U?=
 =?us-ascii?Q?24Bfsr8A9bIZH/R0f5FWHaZduHmWlaXfotEOycTq4mtw7jSo+pCfamyl6gta?=
 =?us-ascii?Q?jJmoQzCdst+goelQh9Fd+YzzazXPcOsKNdMuKk79/9usNm6bnHND/5lBF/9x?=
 =?us-ascii?Q?AO3DK9wCpYijmqcEaq4S2lox/qhl3YVZfrKxUPVo+GfV400zre6JSb8ihrS1?=
 =?us-ascii?Q?nmKEeIKXTVHebn8WVyesyZ+mNA38NOm7a4egV0EmcHzBBS1yoyfcT0fIbx+F?=
 =?us-ascii?Q?oYUX1Jars6M+xSIU2jX0QWcuAqIffwO/10HlQS5c0Mr2+TyuuhuWCHnFR5J3?=
 =?us-ascii?Q?x3rP9/jgu30QfMUrVNKNehbdWwGqyuJASdEMD+xp2r4wSRC/N6vMnF/svgGd?=
 =?us-ascii?Q?eBdb+Ufiz6T9xwOagK1SGA5Yd3QIQMzM7g9hPJ4OdLyC10n1g6w07jBRUrZ/?=
 =?us-ascii?Q?OLflowcCCzc3KYu2XUvgNFln+llvwLKX3p//zXZJPoTAuTCvpD5QAZ2hlNC6?=
 =?us-ascii?Q?JG/FAxUeSkmkS8T6gQjlxGdaPA+1Rt6sQEpS1G/rRABMqJC3Z6EquiuATS1Q?=
 =?us-ascii?Q?Drs5gIS5E1sYmY/IGyKqMXZ1a6jJm8+PfTeC/97eTnqFf3PnnW+fpXlDCrmW?=
 =?us-ascii?Q?sieCd1p/ZPzLLCT40MiGairOJglleF9EUJAUvgbLatoh0+qi8pFhzi5o7BXl?=
 =?us-ascii?Q?L9jOvXI20IKq2qAqPqRqQwjtQFIoXqm5wOfV7HJRXjHRU8CwNK6UHE7eFxUx?=
 =?us-ascii?Q?/zYE2Yn6KRikNb2FNKJ1NKbcSEVjC6oSbR+FKL2ixoyRJ90WDiRUiteG/j24?=
 =?us-ascii?Q?82vXM7gRJpXfdjith9cHZUzFv7a1MtbtkYiMPQ9YLM6aomzhCRd78SlKDphw?=
 =?us-ascii?Q?qAbi+Py0zKV3yQ6J5SlIm0v2Msp3mRPPvq5DuJnOgDRaiSl08jbz8FQw3ujN?=
 =?us-ascii?Q?uNfSaQXvDgj/7QWRMzHrYKBvncLpHPl1dO+Vii9jNb00tevliHOQ3RCpcZXU?=
 =?us-ascii?Q?P+FfwITX+bjoQBz6J0tfO9kNrKBXNn1frTo7dlZH9ygrRohs3j07CUhQZxYH?=
 =?us-ascii?Q?w+vxfpcugyak7QeHmYEuaUXOk2//HF9n6dkGeu4U+erawA7EJeWs226wYr/t?=
 =?us-ascii?Q?jMNztjWmETcG4oMEtAHrHhdld3lRqHkHL7ww91q32VXb3+WpMRXEwBSZWrii?=
 =?us-ascii?Q?EaMod84XcHn3E6+rq6DxiZCqfoQxNpQr7EAma5nP1Njqp8WH+LRgTtWgwKLP?=
 =?us-ascii?Q?AxgFMZD+JEdq1zP/tcUg5fwcNjTJ1ZqvUIQApuljkfbR+LdEq8yBTIfqws0T?=
 =?us-ascii?Q?gZUYpREznL1Q9OLZLXzHNljMWIqRNtaMOtLSXxiLu/4itzTRwZVQSM32hngc?=
 =?us-ascii?Q?d+CVTgew+iJZm3vYKsd53468iWIb/+rBkaSvTj3dEDjTSpjkltKiMWmq5Ta7?=
 =?us-ascii?Q?A8sOVDdAGvPw5ajUaB/Pkib5lBrRY9KCnJfZqENzvWdbR2ObGMlKZLKE7MUi?=
 =?us-ascii?Q?wMRggZRvYC0R3hr/HC6RH/Xp/uhP4YoL1LcJ0N/Joy80ITfA3Pi3TJ0N5cbD?=
 =?us-ascii?Q?dLyhZ2n4vETi870RnqTy0xs78S5iWCPbYf0AFRCJkdEYISlgvJlCHxZ/UNLz?=
 =?us-ascii?Q?sXmY5kwkh/Gh8ar1WgOfoK3rRhzvjaVHfq+UWCCq3Yxge8OurvXI74mcF3AW?=
 =?us-ascii?Q?hI05yndZgQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR11MB5006E1D447596CFDF564B946DCC29SJ0PR11MB5006namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5006.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b3aae8b-610e-40fa-2833-08da2e3a4f67
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 01:55:20.1175
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: le+U7B/8l4yg65vKePg2sNUvx49KF1nLPvSBxVktki1eWLt0xJDjK5WasTW5+LSrP3e64zErf7hm4ebufAqw6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1505
X-OriginatorOrg: intel.com
Subject: [oss-security] DPDK CVE-2022-0669 Release Notice

--_000_SJ0PR11MB5006E1D447596CFDF564B946DCC29SJ0PR11MB5006namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

A vulnerability was fixed in DPDK.
Some downstream stakeholders were warned in advance
in order to coordinate the release of fixes
and reduce the vulnerability window.

It's an issue in the handling of vhost-user inflight type messages. A malic=
ious vhost-user master can attach an unexpected number of fds as ancillary =
data to VHOST_USER_GET_INFLIGHT_FD / VHOST_USER_SET_INFLIGHT_FD messages th=
at are not closed by the vhost-user slave. By sending such messages continu=
ously, the vhost-user master could exhaust available fd in the vhost-user s=
lave process and lead to a DoS.

Commits: af74f7db384e on the main branch

CVE: CVE-2022-0669
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=3D922
Severity: 6.5 (Medium)
CVSS scores: 3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H

Thanks
Cheng Jiang, on behalf of the DPDK security team


--_000_SJ0PR11MB5006E1D447596CFDF564B946DCC29SJ0PR11MB5006namp_--
