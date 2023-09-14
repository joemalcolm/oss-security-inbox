Received: (qmail 4033 invoked by uid 550); 14 Sep 2023 15:15:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8002 invoked from network); 14 Sep 2023 14:45:43 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZmdVfK1fq1uIoCmu4JYJykbIC26bXG6H9E+p36hlR8gW8tRcp3FnrpN/a1mEbJBIJIyhvosnYVBDff6MV9qm/AR00PJa/bFFKBCPqgSdI6183Wg2Qtr7/ggkNplIEE/3exyz/QECHxGs61NkyNXM6W7Cyjjj95yHQrjLAyG96NbmBr24olsPC3uSg/94y2i9gPlay6uKVcciUTCrkeVGmsemuwn28E62F6CzC8AMbkv4zcoX0Umf76Kaq+TkN6pEZ52rJ42g2D28zwAkVtf0FNJtOdKYk4ZyNkF30sbg1Iq9ozwlY9xKwqsdayPNBOY0jkYeB6YDqIDbhgNRo7aUMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnS4aZ9YKbhIz/XyOqEyj43DoU58+ZMIGQzaEkIC6Xw=;
 b=HkCmIKFOmLhKDDpObAuTHZiTxRnjGVIm67VJhyRGn+r/4AXy+ITob5TF1ewmhjQ5IM8LM8UHz/yb2g8b60ZJhtZMuye/d5cUquuxl+OtSG/QcBcb+cp/4CZqgWoFsQUGI7tTGV7JLgnmID1GjZBzcZN/X9d8AGdeDKo+lSObjFpZhcxxW2ZfCIyOiH+Q5Awq46HccHn0hLflJpOU/n9qEgZvj8vjsLuTYs9+mBncR9pq6A+MHP2AoftgP0Dc4kC7c2v35fHhB6cTS3xHQfV18TaheT1IJqZdYj+oivRIodzGQZjBo9hy/njhM0morzCDHRQmiysJf85ihrxPged1QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mnx.io; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LnS4aZ9YKbhIz/XyOqEyj43DoU58+ZMIGQzaEkIC6Xw=;
 b=jPymn4uXldimPAIRV3REjr3uC1CnJyfz4cvAg4YbRc1RQD7pwAN3dGQRaZ1C7HKVQqwS8hFzIKVpx8GEWXQzbjrrtdyHA9A04HHIP8rvNgDDsfAQjptVj2WpQ8z/I3W/338Ju+YCbiGVfY2wTPsq781JxtnEUUBg56xyn+io5B0qqeneTUeeOESDPi6lqdoIRD73gzcppEY/ph80kOYgPivJalhknmAKL2HRQ4OGfWbXDx5QvsNM/KEYIHiDZsZDPaWdJvp7tDqdRFoaWnDIAtER3lfYn/aksV4k6RynK9+A2FjnXluFBsNerORv9Wnfc8tP5uhjMlOdNgQCuj0pyw==
From: Dan McDonald <danmcd@mnx.io>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] illumos (or at least danmcd) membership in the
 distros list
Thread-Index: AQHZ5n/c1L5i140dZky1+LnodWZcQLAaZlOAgAAA1IA=
Date: Thu, 14 Sep 2023 14:45:27 +0000
Message-ID: <139258DC-7842-42BF-AF12-92E7A60F1890@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <ZQMbzCxj5XhW5+a5@itl-email>
In-Reply-To: <ZQMbzCxj5XhW5+a5@itl-email>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6546:EE_|SN7PR12MB7910:EE_
x-ms-office365-filtering-correlation-id: 0514e95e-ddeb-4f68-4b63-08dbb5313cb1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ISgb+wFwaBYxQjpXnK/CBrutvmQXFiy8qmdvixcT268OQgwAhJtMXGV5tYtONqJM/7AJ5AMPST9WQ0V8S/EleM6hj6O2QLG7EeYtSoIl6yyeuRd3nuFQy8FYzDt6SUCKy2zhyvRoyiBjlUKEwy1FPf3cH2wacgjeUKzYdwZe4qtfj1ozr9rIUp1fAfzb3AXVESOzu26cVImhZ/ZhGS7OO4Qh2RS2cHHDNkkiHZXCGJ+sQlZD9OgD4KfSC4Z+mpTEm5Izc0T0kgHxytQ2VfNhKBViwrJzwuaRO8EuEeyJ+tA0HPF3sep1Gmcog78+O/10jMLX66PssIBMawFF8/Stgmxl8FULJpYLPjRksn+wjXcPcDLKu8zhr+a1rsYnEHurZO6Se61vPTaFyUWtHws+xn3S1MrNRsaZezl1Vs9BB0BqfabXuy4wja/D7qmp8DJJKMvLc2kifWovqvwgkPDClddMi2DmYM3GWm+thC5we/m/Mc8OPTWiNK02PO119YhWEsZm8HXQXAeUKy3NJYnWvTlUCUy87VLuNFUt9TCvOsYuz8vKaR8Kmguwe3BuSkt6AX2x1eFNtZDYS0qyaNlJvyRp5XetZ3RarFDnu5w7HKug3Ba+1Pf3fDyGQLNGHXTIJvoxWoLlDQNXq24bv5+MhA==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6546.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(346002)(366004)(376002)(136003)(396003)(1800799009)(186009)(451199024)(91956017)(41300700001)(6486002)(6506007)(53546011)(71200400001)(83380400001)(66556008)(6916009)(6512007)(64756008)(2616005)(2906002)(66946007)(316002)(66476007)(76116006)(8676002)(5660300002)(4326008)(478600001)(66446008)(8936002)(26005)(15650500001)(36756003)(33656002)(38070700005)(558084003)(86362001)(38100700002)(122000001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?DkUfuhaFGqjhu89Tb9vYMq4/yp2FurYQq6mabLvTJgePYJPXtl15Cl9QG7Pe?=
 =?us-ascii?Q?8wtfnYKbaF++RgWtFJY3ZCR4e7CcDyKR08n3w2e8w+tj/AbXLPKE9XdcTKua?=
 =?us-ascii?Q?vWnmt1MfJVod+koQqjQGHN3+V8mpJzRdGJYEhAomSAHGJz5E8KCuLtGbquMn?=
 =?us-ascii?Q?oT6na0wBWNUD0TTwSPcSG1maee2x1ygo3ur/CoerXk1/KgbNqEHCU8J2TODH?=
 =?us-ascii?Q?v9vns/+kNW/OmXktQcBCfVhoEZ1yaGhqQ2eZr/TuT+gNM+eo4iVjHgjhAZwz?=
 =?us-ascii?Q?FwrRYtz6G59jtBX1fhTojCq55HY9bDC0b3WnakHRsjFudQk8GLKwqdVt4pK1?=
 =?us-ascii?Q?+eeZutSPs6phz2uYLHLBTDFYm3DFNq42qmf6wm1+6eJMpAqxdVjytNyVBEzf?=
 =?us-ascii?Q?ej0qgGAzkh0FLHJJg27mt9SXpRHYia6ZqtFKwXRBUFda7KLhSBWVRfLzplpP?=
 =?us-ascii?Q?cgvoiJV3jDV0Ju2OOmni/cG2llhj6NiEYGCZMZ5NarLuMt3O0DNytt6Kgow0?=
 =?us-ascii?Q?5PmbMYAhUyDqAab9tQSfkmTpkXK0jLff3pLi5CJXDbKXjo7tcdt4tD87sMZX?=
 =?us-ascii?Q?sGEhAU19OJQwzJRznhUVpAW3k7Oi7ESVeXaTLvYe4Z9J33WgdyBeSulGekx9?=
 =?us-ascii?Q?lnXCVkXzC/Y6lOhMzh2R5SfF2h23WvbfQfyfGgERBXy5Dt3iSXabhfP2ufaZ?=
 =?us-ascii?Q?+4bq97YO6NNxDXvtPYPhrexRrTOtJtqdmqceMI8o5l3QMIVvsD1mEWUS9Z70?=
 =?us-ascii?Q?8nukQ6XpWwrgZwshQ/Bj00KZygF0SnJC9xeMMZKYdYEi/53Nuf3gn1aaBc/y?=
 =?us-ascii?Q?/1HvrxT54yYncPJAI3e0C6JdhVutvFO5RLeGdKL0qStk7zm57Auhcv42w2cj?=
 =?us-ascii?Q?U8JShSE3at1vPniuTB2JsCaX9BACQ0+e4EuESTmiQnThIcLh6aFnQQGPQo3D?=
 =?us-ascii?Q?1jKvk/d/tXm40JX0r9Z5WhuJjoCY82mxuTebh4sCFNL032W1Bl4XNIHKK/B7?=
 =?us-ascii?Q?NEhu1/mosgFAvQQkJsqG2ZCL+VkmAvsJg0jWebs92srF3QzgrBKK6NAbVdUN?=
 =?us-ascii?Q?yJuCrKfFXNk1/IX9fRuKqxPL0Rjh/XagilGlJoGagZTegtR2KSqGj6MiNEly?=
 =?us-ascii?Q?yqiwVS7N/6LOfdF1bSBXh/CpBmV7mwjrvFRXnowqutXAgZ4MeeO0dpg/+jg0?=
 =?us-ascii?Q?F/8mLrOlp8GneqGniKkt3S8i5dvAyBzQsoQe0JchwmOfHbRN02USiRGaJsMi?=
 =?us-ascii?Q?pFGt9HbApwRg2dJi50NDNNERIAecYLIgAogVlAeIapu5W4WZmob5eIYSR7SN?=
 =?us-ascii?Q?X4BiMW+z+6UWU0nHDoQJ0cw/YzUgRhnir24TARkncPtasRpVr2Hi9pS3c2wD?=
 =?us-ascii?Q?D+ijHl4nkazZkeRxsLIlCpm8ZdjG5qbFJahprwkPnULANhpkNeu3Yu7WfKOY?=
 =?us-ascii?Q?CaDLphpb493lWrh/Y+qWC8oVIR35in93qmsUiJtNJVQIpbyOJKslRBUAKHHY?=
 =?us-ascii?Q?faK+C5aAvxLQZ2zT4m+5jrMlviiKYcJvSmZ99d91q5FYH7ofQQGdTA5492hX?=
 =?us-ascii?Q?dqv4P1HlP3eZIiCC3wXixs91SlcQhmWJtXoNkyFN?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1E2C41E40E4D0A44A84C8A9B32A7A49B@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6546.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0514e95e-ddeb-4f68-4b63-08dbb5313cb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 14:45:27.9272
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qqqs1flP+MUlRTNv6DLhaSNkFn9HQqXU907i8msgVwmHMSevPpsFJw6COGEhpQvP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7910
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On Sep 14, 2023, at 10:42 AM, Demi Marie Obenour <demi@invisiblethingslab.c=
om> wrote:
>=20
>=20
> Would security@illumos.org be a better choice?

AIUI the rules state only individuals, not groups, can join distros@.

Dan


