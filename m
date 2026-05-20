Received: (qmail 30055 invoked by uid 550); 20 May 2026 15:42:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30022 invoked from network); 20 May 2026 15:42:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=+08ZxEEAdi51c3Xv0KgyYdvBmnxIblfGcMkkP0M+WtI=; b=IG
	Of6yBHBd9Xg4PdBhitheFym2WdNoq2JEPJDPLNt9ioYC5Wzurq+XxwA5FerSVMBr
	fjLdL0EyCWMEydlmP9o8cYcT1miWo3kM5C+QfXcZxVS7vYfXYnIaaoia2utM8zPz
	ozxgUKfR72T8HvWZIz0sNIebu+U/Dr++Pu7NxSD5q1F6aPmET9NXvOxbEPemTXbh
	Fn7djsAER037968XY1pN0oBfFgaj7MQqSD9t9RQlwPf2RiUYegV7JVshspqAM8kF
	EY2YJ8l6xhBhD9kFnLeXDr5riw2e6KKG4jDjxVqBBRcPXDxUq4WuWF3KM5a9FXX3
	vIiVkOJh8MDzmhUwjyng==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iRIRlv7I35nEGAlICiS6H0aBlI5YBRC5W1/YpylyDaYpYmve1rJj9b9041qKJ6oJQ1l7dI85bH6mM8JZMyIBNd4L7j/AHvohuqSqBQl/MgPCiD67ZiY00oGNI/RNY7j6pkeADqInwL+kAg2H8HiKi0PKZxNxqcGgAr8peXnO8dFE6mFWYKiizTVysCd6edC9Rs38ipAPDQtN/2n8nNOFyGrQSjXBOVHvGOeDS80H/34mCQNrMbr8bm7rZ4VUsX67lQPfSjhap1nfU8z4iQRodkIowH6GwnD3u+fRhwYDrlATX+MNjSRK7wsUcBZV3yVkiMzbCivFkglK8ephe9TJ5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+08ZxEEAdi51c3Xv0KgyYdvBmnxIblfGcMkkP0M+WtI=;
 b=UD197VoP+X9gEnHrKP6z0WJj3+/XSnKrlM3mHQdHvNlkEZz+oec7n/+KztxOqxpdhyQoSm66pf4fp2e4XLLa5KYPoPr58MVonGjSWDnp87cOlxwbQ9gyvofQcS3fYxxG+wY/siO4Cn+maK9adOsFS2HK8ixlIQnicaFKs2Z5LNteDx+yP7z5xvqC9eaZTUbunX/77Gb2JUzb56Pt9CjjsCKo9DaIjPdEmhE9iLpcF8Bzai+XNUGzbcvM3qeoIOBeUh8akFGK1SDxMg8ICms/Vat9moZkwhAByUKQZvNPNWmlleal7xRwHN1o3ltXCorcHkgZNsu2oR31Valc2beLIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+08ZxEEAdi51c3Xv0KgyYdvBmnxIblfGcMkkP0M+WtI=;
 b=mupn93t5V5BsNK2vYCCysrPUoXbIE6pe9ovUA+ca6QMKua13Ta0bzMh31ElgUI/WEostEDEayFvsmNBbcho9MZ1Xi64n72rHbbwaM7zUQML3FQR3veY9XKAAXTIaFFvDHUAfwjw5GOelHPRzLozC6B/KE73Ps3QxQn1q6ojpJvYWXZ4TXQ8nlUjRnellxeRxcmAieO99Mug4htWLim4smDJrUa1dng6+iNv+unAGWN+Urmrfy0sJFELYl0XpGWRLYm9EledjHx6nJMLHToR8nZC5CslOW3CnaqAXJW82V1B7RkL0bHxsZ1FeoxqwQsXhS+Ot8GbSU6CBsySl41kvzA==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Logic bug in the Linux kernel's __ptrace_may_access() function
Thread-Index: AQHc5BFx3Z6qen8xFke8NWRPdnY9HrYXFluA
Date: Wed, 20 May 2026 15:42:38 +0000
Message-ID: <20260520154221.GA1738@localhost.localdomain>
References: <20260515022033.GA10889@localhost.localdomain>
In-Reply-To: <20260515022033.GA10889@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SN7PR06MB7264:EE_
x-ms-office365-filtering-correlation-id: 24114fe4-1192-4cdf-058d-08deb6866c21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003|38070700021|11063799006;
x-microsoft-antispam-message-info:
 DOHLh5ApIisZMxhUkA6oS9W+TzcYFs+YweDEbNV9g+tHbpPgfscqTc6IQKAIilDUZxt4glE30eXbhWzZ9R8McYyZwTZKmEDy2nv0SCm34Ekje0R/vNJdz9YQbK8fwktFvNwbMhJ/Kj5UsygqIvnD0L8LE0TTHj6OzBxrmL8ABs8m9zlAHMRS6Xy8KpjVzvOtifJwMwSOM3m+Q45frPNGqWVjiDGakVoladma003mQnnWpO1owgPQzICel9vs+huMVr7rpDj3xdEPppAvmdj1CDIEmMYl2TUD4pzivYxz5Q46UFD7u0Mol+PmE6ylcQMRnS5cZmYtekMuczzRA22EqRkJ8XwkZUnGFA23PtC43cEuf6zHsHJEBdvYyl1rF5v/I8xdPuzPhXGudlee5hcC9cEbYzs9v37c0cSjGIwMo+tZLR/7UuX/KMLwWEQ5bEOntI35V+SM4Ys+fmDcsIUqSFWtuZh5AmVqwRccoq6fw/9mF0dCfv8b9OKzcWGEq4ftpqq/0M18GPIPr71qxWfY1QU6FzHdFt7eCs23Wd8Jpumlx6djZxyRXF9ZeGc9e9gEAwfJMEAigAJMbdK9LlLfFz13xS0yREIUahr/ejhgcl+smfMI7ppLSVdITgYU3Y7Sz+gQ4NpUHiLk7IY2BEdfo4zxp8xif9BfpYjK4PeCWxE3pvCq9w2HANjaKpdAE9MiXcHk6kqApfdRu7582Ju0ig==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021)(11063799006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?+hxFlCYFeD1rtbceSDmhdYLP4ory6qPalm69feWlo8M0bM3UNiSbOwLZWSpR?=
 =?us-ascii?Q?1wdsLiIBONn0+1Z7Nce6wFFPhmHrjgx4JUhVqZz32FgV/1qta6cXCz9iQrYZ?=
 =?us-ascii?Q?k7/K8TImXzzQAdYT/ALnpJsYNjFUbjHSX+jPrU8yPVwhOLQo/LUgAwTJj3vQ?=
 =?us-ascii?Q?atgDNrOeyt0UxBMkSiE2KJUd1mM6NfUvNeFJy/J0IIvEtFoVu62S6HB8XE5D?=
 =?us-ascii?Q?xb9TJyccHJoBX95fPM+tK6Iz4A7MsHBCgqdKMtEojofZb9VMgYq/G1naIGaf?=
 =?us-ascii?Q?OYFzDOI0NsPMpKBHrqFtgiJ0+kPivm8qid6upKmVMRBxUCvH8cWJs67vHjwD?=
 =?us-ascii?Q?glv1NygESDaGdblsPJlJdTcb+V9XubiCajkcC7xDS3R22R7ZdXTK/NLG6gHe?=
 =?us-ascii?Q?KuXBETVLWImUeT0/v5J2E4aQu307djZInxXXU/MFqW6G/9n7Vxs72Cjk0Rfc?=
 =?us-ascii?Q?8aFC3UkHJPQPv0dflrDrIG6WkhiibzPqxYbpxS8u2QV3pWf3DlFJGx+1ASzL?=
 =?us-ascii?Q?H0ExzGKRSpLmFz0zE6vrbIu3a4RhLGrDSdPnK5rWupy16eAyKcBz2sjx+gW+?=
 =?us-ascii?Q?qtGP7mOe3mKdrdeMRZ7FwRrXJXhAH+RSRawB5pIzZoKCxt0C0PIW+N+q89xe?=
 =?us-ascii?Q?Bb5e+8EZeKG7RfeobmYHCDpPF9RemD/C+zHfyvom2JiIJi6z6i/0rd2QX/Tv?=
 =?us-ascii?Q?kkzEf/PXg+xsR9mpW+AIuKGKUvnCGzNIXmIZZpv5EEgtzDvFK+kc9aGmhbXR?=
 =?us-ascii?Q?Jxul7NrUQBPKlPcGtg+gfhTWSA4hT6URgcwy66zB0nMLusMEipmrW04Plyze?=
 =?us-ascii?Q?Q8YxDDfoap4dx1gzRw74Ug3lGMmyawJHc+WitdjE1bFnfDPKp3MoJ7fR5AQx?=
 =?us-ascii?Q?qMrCDgvEwbor96NBO98ozBxgjYsSQuDU3Djb4WZvHyzAFF4eUuxqepk+eB5z?=
 =?us-ascii?Q?ZrzP9kg9xrXiM346drjRS2aBILGcIxo6WsftNfGYTkR48ZUBGJV0wmHN6obV?=
 =?us-ascii?Q?1EZ2LbhSBUnwmDNn945V+bDt5vytsDDZID8OBYFrtrFEDArttiCdyLZEbBna?=
 =?us-ascii?Q?M/IW03MEc61GQja0Yg32wi3g0lf3xRDafDxqzwVC3uUdCIOXBPfTOL5jig/y?=
 =?us-ascii?Q?y1S+V60aPo3ubo8+HGQOUL5DMRbPl5WTETgeYtncKyxaNtP6qiqsnTSK0esu?=
 =?us-ascii?Q?o3HS2lEFfkoG3p1AG9GkaO0npL9lJTYqfSk4Nxndq1uX3tZfILntabQ1swQl?=
 =?us-ascii?Q?g8DXkA36CsSjiPfli3cm+fIX132QBKR4zz16hGYouNgneUJNnA8lKXnmFM9I?=
 =?us-ascii?Q?AQh3CFCd6JbJjhAXH/wkqbFuJ2svsosb7G1kQQTo/0ACSr76wPuGOE0NOfKq?=
 =?us-ascii?Q?9uArPg449Wo6sg7Hq50uSWyBmOgBAnM0KRktjlfYAYv0fyPzDZUjjVYJJH8I?=
 =?us-ascii?Q?TNgUfREpoJ13i4FN/XfwukstUBZEShbUY8fsOFsElnCXIzdmSGrch/neQwmH?=
 =?us-ascii?Q?ZrP9pgAsN3ifn2LRt8X59mBIVxd2mf1yxdMzY9ouT/9P18uRjzl3WLqZZgTV?=
 =?us-ascii?Q?7Wa5FN75ZuE7nDteJvMfJAa2JKjB1PPeuDvAUY+kF8gjgXcb4quR2ApRzVmv?=
 =?us-ascii?Q?uGLtKHBSNT0oZgqadZ7/wA7ksI/j4gWSFCXfkz9gC+AxSd9Xz/VMoWGjGf13?=
 =?us-ascii?Q?H9NctQdD3D70ZyMI1PYPfUJnqYN6KnVUBJfgs5yrTVsXW+UexqaZj0d53ruA?=
 =?us-ascii?Q?G2KU54zNlyg7w+/2MACQ1dFc43SL4yY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F9FC6F7909C9E0469D91AA7EC664186D@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	kE44DMvwpeIvl3qChecjX/CQoPxn202PIddiCQ2MKD68LvMxbP1aFrC7anRHVL/EY3KBZPlzPlUw4Nk59yGM+e94MdJfBo+JQZbgi0G3w3BDR2UAbIkCNeHNNkEnhh1AQNZHne6weT98WtaAYqxf3NIYrLCKZyNK8eEoWDEvQsbqtrWeGcGdYT8/d9qkVK6kSP/lNZaDE9V39a2KZlrEOVSQctytjQzi/F8SbqkkySPcfdeKsMD3Tn4yb3ywGg1ehzAlP2oRQu1MYog5KyCK4IjVU7GfGD+SOzMQeMneklsuu9I0yp8q00sYhCQZBQlAw5pgKo12jkuxxw7Mbo7Gbw==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24114fe4-1192-4cdf-058d-08deb6866c21
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 15:42:38.8698
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ViDHOy6AB/M4sgj9GHAIofTbSkPPEdOd6JHBqZijFVC/SOZEB5qR+L5NIU58f43dogcqYsEihqdiaxxgID+TAcwJ0KqABw5SmubZFHf68nU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7264
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
Subject: [oss-security] Re: Logic bug in the Linux kernel's __ptrace_may_access() function

Hi all,

On Fri, May 15, 2026 at 02:20:48AM +0000, Qualys Security Advisory wrote:
> We are not publishing our advisory yet

Massimiliano Oldani has published an excellent post about this
vulnerability:

  https://www.linkedin.com/pulse/ptracemaydream-cve-2026-46333-forgotten-to=
o-soon-full-oldani-i0ghf

so we will publish our full advisory now.

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
