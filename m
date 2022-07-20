Received: (qmail 3791 invoked by uid 550); 20 Jul 2022 20:13:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31918 invoked from network); 20 Jul 2022 19:58:22 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjhUVX1F5BPMw+3SAhXY0G64jdFN7/5qcoCex4WwjU7KcoFFzTP9kyUuD+bNG3DD+8nLv+pY6QnOW9fjWLTdYzUbxNk5H84NTj0VFaJ0eIcbwdsUvk0eXDjw3J//1YPTaFkZT7GP/Q/wE1dbWKbGne/DYtGZQgZclfqYpDKlnv/F3NZIojw/UyiKQjt3bxNSkw1tIzvooKaF5pT9daVdIr3cETj2uKUt7WLcxSuNzzSA3m7LrIzqN00KmPzzrD5GEQTaRR6L3gJWECaWRf/XI0VM+FS+e8Gwm5RfyFR1wawAcS8BiIbbHFfTcxnI8ZgyeFKXox6IYeLq11RK7X+Tgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E0V6YCwcMlgy+U35Ojw/DF6kGOQyIrI/j/UmdncB9PA=;
 b=Cn3Udjz5x0YyvfKqP7VwhRwFPklNw55wMYh7zRrGlVOIlhmyq+w8Z2zjQ0XeptgWDEGMZwo2NMkKyTkyFRs3onGaRFxSVgMlsedRES16qEaI0x4L568+Pps4nhQNsPacOIKEqT2IqdH2hy2NZcX06sUCbaRcz/V38Pw09OkLsEbUDERH/7ZfN+sJNP86guBpyk2l6RA7ARKbhxirnqK0sY5rdsoK5WzOZ74Vr8DEB9aljbD28xTaEWJiiADIpQIw7FOkwkqeiJkX3rrFntdE2wz56l+qIBaaLNWXTujt87mibppFJqVjxZnUFvPyZX5UVTCTxHPlRkednvrUY0L3UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sdbor.edu; dmarc=pass action=none header.from=sdbor.edu;
 dkim=pass header.d=sdbor.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdbor.onmicrosoft.com;
 s=selector1-sdbor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E0V6YCwcMlgy+U35Ojw/DF6kGOQyIrI/j/UmdncB9PA=;
 b=uZQvwC4eOkiJr3i7y0FreKlM39axjUrrIxT567JOJUS7D2FjoZFjZWcF0BbTS+1mBy/W2H1sn6BewVQXaFw0BsmumbhGq3BrUkQBXrVTEV6hIojtm7+HO1K+d6OmSEF7iw70n/au6lzPbtRGMXKz/EZgymdQGG/Y45TzueIy/vM=
From: "Myers, Christopher" <Christopher.Myers@sdbor.edu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Grails Framework Remote Code Execution Vulnerability,
 CVE-2022-35912
Thread-Index: AQHYnHLVENTK1UHdsEyeUwZej/8cmg==
Date: Wed, 20 Jul 2022 19:58:07 +0000
Message-ID: 
 <DM5PR14MB14659176D1373740E82972C2E18E9@DM5PR14MB1465.namprd14.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6244038a-73f3-c133-233f-2168d51b7b14
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sdbor.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1719a572-d092-4872-821d-08da6a8a2a5c
x-ms-traffictypediagnostic: CH2PR14MB3643:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RAIdgSMYOTiMjDCY7DPg9uXrzYvxPnw+zbSVT1qhntSoKC5lCioGDVMOAteZWPAxW1lOEGLOpGibgfz9Au1QegnDRxCsIHVPQl3uzBzGDlQ8Iao/ijW9/SIegrxn+boHlRB//iD7ynTeqpAG7EjNzjzEq1TJ13iFsf9K9eFct7AWURGJljCgSkAviSjGtkYaQZOeKGXj37bSwA6T3A4dYcXGrXRcfVg1qDNsI78QiXf4ldU4TtIsTcktZoPG/5vslTAO6YlqMNqL2HWjQDQYFlhuaDcmFULnENuJ6KHs1JoA8R2k+KGMGthc3E7BWNNvLBFjxBm0FygTD32oHQx5XSXp40dHxSfG2/joSyWLqex6ix9kaI1kixngheOBEJ2+EQl4rWSnuCB949uOHrgcTOAjJ1OmyrIe0zqu7eOCk3PBoJeAWxokQcc1cbku9h8+YLfI3aHxjjq7BTk5HUgnLn4DRZrMtTCn8lmE6z5CujAn1lVS3jPW1ktCZ6lIR0a20QO+vKoi5r8GHkSYhrPUoQIHJdRtpiOLv9C1OkLqBRps7rrcedwxiXMfAs4w7e+rRhu1g/hG3B8nMXr0AJb0VZIxaVzkmm9MmP1A7r/Bwi0EeTqYQzC7Jo/oGY/aQzLDd52dwUhuLKKXBNKXWEkY7PCQ96fXByi1ofndEM9Ow4vegzdlOojeYbQiAtH62D9xZYc1uR6WBGFYGuZnSsl4KVryhnO5xJH6TGNVpU2T5+gH00V29wT8of17L0L0aH/Q5zi8FqjoaWkmCKS25TWY2tpQ8zJys/nbvBYuiBDiQuuzFCnsW+Al7K+lryloWqe0R3sdJOZ/4qRKVKLpIS5QNQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR14MB1465.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(366004)(39840400004)(346002)(376002)(396003)(55016003)(64756008)(75432002)(166002)(38100700002)(186003)(33656002)(66946007)(83380400001)(786003)(316002)(8676002)(71200400001)(19627405001)(76116006)(6916009)(66446008)(41300700001)(38070700005)(2906002)(122000001)(86362001)(66556008)(52536014)(26005)(966005)(66476007)(6506007)(21615005)(478600001)(9686003)(7696005)(4744005)(41320700001)(8936002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?8XCMRlMUB4SKeo8UBiKoMyhT5RALk7099GMKyX4TqDbXHTALSG45m/OX4l?=
 =?iso-8859-1?Q?gmEEuLV7sIbzk5EbHZdPikS03iPHoNy6wSF6vfeZeY5tIfDNzLDK64eUgP?=
 =?iso-8859-1?Q?dX5awAI+mkcVnQDFZLQ0KWgXigh3jCjV+QH2rVH2QLENtiGn6ihsk6vVCg?=
 =?iso-8859-1?Q?vi+MuqgWtL/tiqjo39M1c+8ZyATqyJuxjCXgRYVpy52rZcxUMuO5TmUlBO?=
 =?iso-8859-1?Q?sf7BuByOzQ73duUYPGvkIEn07BfCyR3wnXf3fYzVw/nU1+HedOFn6NM9pR?=
 =?iso-8859-1?Q?LxarTRLR/pu+uG5HAkLgi+mRoSq9bzdYzLNe8KpYCRl4H0KZ3/gmAUlvAD?=
 =?iso-8859-1?Q?1QbN6mcnme9/Xn7PA/4LLhvZapL4h02ebDbRSvBg2OIvhwCZKEo210AG9X?=
 =?iso-8859-1?Q?IuuG5qIB5TGtKzYXT7A+mhJ0UExbyy78pKAPbF7vD44cTO/nh28zgc/a34?=
 =?iso-8859-1?Q?X3wFyl+Uavyqxv6lzE/M/EMMkHognrbeaRbQFxr0DN9hIyvXup+xsYTOpO?=
 =?iso-8859-1?Q?N5PGtrAGa7BWjZ9M/pOCfP69KEzqxNT94G7cPhlx1CJhR5O/vDMORga87B?=
 =?iso-8859-1?Q?QPS3Fuo9y9SSviLvxto+uMpZhk0JjUGo6VBnrhJQsdu5BLsCECvzknzXR8?=
 =?iso-8859-1?Q?nitDsw0ckI8RALBPu8BobqzLbuEJp99w6dfIcMfcEKD58YklQwTVk1CWMZ?=
 =?iso-8859-1?Q?9hHqSPqg4eIRiDtfYZwZm9LyWtUHvOyaAVS84RmIHDkjE19JqzmxG2M/pm?=
 =?iso-8859-1?Q?N2wyPTNAwpnggwLtIqfoiTexqKu/Le+kGPDHJC/0gElMjBbJhQC4EiSdu1?=
 =?iso-8859-1?Q?Ijcqp6jT/TGcp3KnvlXjdVnIYYgOxYb2O4qmtos9y6h9ghTFaeICoYWAbY?=
 =?iso-8859-1?Q?dR2/VPxfTnHjHj7z7ORtREW8XN3CN2YZSyBj2EVwWabqTxDtKu1Rhoooze?=
 =?iso-8859-1?Q?/Y75WNwEjuSjAUfJ+YneT9lFeecaCDMR60Yab9o4oi0SSdz+IRMNaiGPiu?=
 =?iso-8859-1?Q?+0txU8WuUdCIGG8LG9Q0BqD9KtZqhRfFRl0SIJODyJ63bn6HY85+qr0ZSP?=
 =?iso-8859-1?Q?veGGRorCbBMAUPtJaeXbK0n+Gi1I/5HmMw4uSyxTMF9zq1n4iGNOsoYIJi?=
 =?iso-8859-1?Q?fGSA+8dM5+cJF8UqsK0fvBSGhnb95ebJyPg5/m9NQQOtiCw9BkFckokjjK?=
 =?iso-8859-1?Q?A2NMBiVx5Hcl3KsGkfnpSNgBYbS9HRaJn1ZI+ZDow4MgU9v+dUNiFR+MOz?=
 =?iso-8859-1?Q?1ZqqhvoFyt66k6R2m8eyUVe9qqmmdpoxt86au3AoLu+L5yYyUmr0b+zjoS?=
 =?iso-8859-1?Q?pOgmZt7w5lxW8HKSA4y14f6qXtSPU5DyxZ8bjQuj7+Zo69tkl8S26v9exn?=
 =?iso-8859-1?Q?tTrOJ+zpgrcf6nWLTmnq4sxpMDDlpodMi+72XC+VzY+ydh8sZfzEE2iX3E?=
 =?iso-8859-1?Q?a/2zWoTcTSjTHdozfuWi2JI5jSSuCTQf9aXKD1SThZZmTTUuDt+hiUX6Vl?=
 =?iso-8859-1?Q?CCZe3vbNt6dP8TEIlAZ5JS3pK86ktiV57zEpTFiReJXZmPRKYe59DnYwaC?=
 =?iso-8859-1?Q?82yiku5swS1ZrlAPg22zfANavjKAwdkfbE41i/do/RFUOFWUGPVCz2CuOm?=
 =?iso-8859-1?Q?Mjd86EUX1UnbxWVtW/wkqtgkhGiHmfKEkI0ZVC3Qc0Kua6YxZ9n66NyA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR14MB14659176D1373740E82972C2E18E9DM5PR14MB1465namp_"
MIME-Version: 1.0
X-OriginatorOrg: sdbor.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR14MB1465.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1719a572-d092-4872-821d-08da6a8a2a5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 19:58:07.4770
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d4ce7879-9b8d-4aab-9dc5-9271c8455e07
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X2FAu/4Z+lczonToKLM7wEigtPav1MJvv8OZWq0WWpw+Q3NudSGaGHEJ36Ac7IrdOh43RaZFgXY6woGZGZSG9S+Ek8s7LJL4gWwPKRotxEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR14MB3643
Subject: [oss-security] Grails Framework Remote Code Execution Vulnerability, CVE-2022-35912

--_000_DM5PR14MB14659176D1373740E82972C2E18E9DM5PR14MB1465namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I haven't seen this posted yet, so I'm just passing along.



The Grails team has confirmed a critical security vulnerability reported by=
 meizjm3i and codeplutos of AntGroup FG Security Lab. This vulnerability ha=
s been assigned identifier CVE-2022-35912<https://cve.mitre.org/cgi-bin/cve=
name.cgi?name=3DCVE-2022-35912>.


The vulnerability allows an attacker to remotely execute code within a Grai=
ls application runtime by issuing a specially crafted web request that gran=
ts the attacker access to the class loader. This attack exploits a section =
of the Grails data-binding logic. Grails data-binding is invoked in a numbe=
r of ways including the creation of command objects, domain class construct=
ion, and manual data binding when using bindData. For a full description, p=
lease refer to the data-binding documentation<https://docs.grails.org/lates=
t/guide/theWebLayer.html#dataBinding>.

Blog post: https://grails.org/blog/2022-07-18-rce-vulnerability.html

Github thread: https://github.com/grails/grails-core/issues/12626

--_000_DM5PR14MB14659176D1373740E82972C2E18E9DM5PR14MB1465namp_--
