Received: (qmail 7876 invoked by uid 550); 24 Oct 2022 15:15:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7858 invoked from network); 24 Oct 2022 15:15:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=7r88MCJPC7U+bD19sZWAoConL9QIyLcZlZsrkbwK/Zw=;
 b=rtfM9hHWULMJbKUV5JMco7tws8GvQpWLEa2Now7IoN3QZgqiIBuMsX/SW+vFTJtKA1uT
 EVjnvk6pmX1qqp/lo43ekhrkuRP2P3qq8IFu7KWNb+FlBvR1MTw47Z2G4gz/3kk5sXxK
 iItiWieiI+kds1u2HXJ2ilDWbKDVc7PLef65Q+gJV8i5kHMv+7vZICPwFzif03yGiRqE
 pgAd4UgBMtPHzVbjRHPaaaQnqNBbapB2jrWknlpYHJxQvOkWrH8phZUer7wOyiBPp1M5
 fDGdnpazR08/qxz3FpiTZCvBU0Ru/3xXZGaIkPKGJQBcgMUJRWQrcyaZKMK/xYEOic/D qA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcbffhpgtYYMPpQ3rgXbPHPhbXHqa5R35rMPm3HMQRKh9y8fitBKgmXgIlygvPWKje+nvR658HhVdK7/ifjyvfeaL3o4znhhqBMt6MqKPn31oXuYUbp4/uajcXxF8M4APc7i7y0uNjp6Wy26PJGr7Q4ZPmsVTw0QY/yfTSMIK3VSrIIBaWjgnS62RrWDsUGxgy2ZY8RVfwOOSwNUfJYZ3DJ8kSVnOlaGZvmqxo47Zhks9lT0sXwPgZEIfbYSQUk6lfun+tKtgv/4dW0b3qK6sHBdh+s2t5T3kSTWJvbenamntmEAg8NxmkBX2ccLgGxmBy/EkIKGrrG+2vyIK3LZ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7r88MCJPC7U+bD19sZWAoConL9QIyLcZlZsrkbwK/Zw=;
 b=cJxhjoQsoso+VE5YQt9tcj3ab/geGu+hRxxRH1AR4XvYkvY9iECUCm/wH+FCsyBU+V+8ZvhWgKwsEsayq7Nf5KCRXNhOz2TmbjgVruqg4l7e7TQv20bri1u8CtK5n42NbII101Du0ehlkP9sVLQLcNadUJWsytVEdCpPlnKMNWK7e04FdVky2WnaVqv7GllzeJXA5eNETqDVDfmDIO02m28agpxZWNV7DmfXFevzRt8Rb2aoGI03fFoDHYrtnkaPN9ASS75nO/jWq9ETcbE/zPpgPsxeFKeCH31Bz/NeU+lDp450DEziN10UaOhBULfwTHmQLsnMvr4qabkEal5SyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7r88MCJPC7U+bD19sZWAoConL9QIyLcZlZsrkbwK/Zw=;
 b=oPuk2wBUxs7osXhH8nfM0vnFi1+QHMPRf01SC3KirPAvs91z3C79hpqBGHmDbWycGvSwNmofz8Fz+JjHswiCdgZT4lSmZHeT6J4thqvIPR/At5vxRcCTWCQ12Yx25aScgew7ddSRAYhcUUwX3/0dy1MU4njTQgiSeuqgLOLWs/JxB8Ncwy2ODHthoiqk5onVfREvPbyke8+oZ5ukg4kElYITz3nCDQ8QdSRv27DfLz6SGd+7oK7cB6fyRp+4p88XjcHG4zi7OkD2evdtybeNlUx4Eopxut1EbYFaY2Uc4rM+g9GXz+QtvXXUaSPNaW94CEgLHigSmoHDeK2MNGRzrw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Authorization bypass and symlink attack in multipathd
 (CVE-2022-41974 and CVE-2022-41973)
Thread-Index: AQHY57txKL2WIFvxT06cJKkdjK/KMw==
Date: Mon, 24 Oct 2022 15:15:25 +0000
Message-ID: <20221024151432.GA28853@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|BL0PR06MB4306:EE_
x-ms-office365-filtering-correlation-id: dd6708cd-a2ff-4b1d-bc00-08dab5d29414
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 svbZd05F4TrnBlh3k+xDGuz01ar8x4U7mUUgkyCZclD498XflBX8ND6QZYq+sdWxN/fuP/BFdLN1mKu5/6RrF2xI2H7A/ufu9oGTiUB/cyuzOl95rdMzTbn3QjapaNTeRxuSu1srgORSC1NciG2ib5M2BzLL2i37fkVuN5me71ByQqDX/l1o8rLC4O3QHTotArorH1PqbN6pHgbuzFkqePoecYw0oAupjb3rUf8qtu6117ValSto5x5wMll3/guSLkkqHnIicXjMGga4GvuuED9k1tyyHOtnCTsuDrYFE3kS7EYO1tFkoyC+HTrFM6AAQLQgrVcXKIxTs2Xz3dyG0r0Tu9rjhpJOV26TjL6Uqj94RRACTD/i/hjXmuQETQkVJE+WS9jWJNLC+6sd1mxBfLWCr20XKzCwIDZGF6I/oQIB5HdjxTf5oUK8AR10OJXC9NaRcZ8uL5TaM0WKpb7ccgHXodoj1Dk2fkNeo4tiBhMpqpqkV1YEPYWwMXsC1G1d21ghni/xxe0CFmWqrNHrUoPXASdx8uL3V9RPukDCXKCkW+n/wFuLEL9k/OCmTN6wLE+QzaoV6sntDTPivmObpbFfUY0EAZVmsd4ycbZxtVxMnCOQXsy93pnCcNbCfeAT4zyvmWRslPInRie4owpcVnV+L6Qg6PChLLpAlMTebHb4tfkOX4tA3Bgz2gGodvzl5VZ/q1gbM/DQHCuW8hfHHXM6q0diuaDJkCOiS+dql5Zb0pDPZlqvhBsdnzAY7f1aPLuNAWOTMa/n6GJKEr7EVXuPxjz0CDac9Q8KpdHwh6ChukGjsGRNz8XhUjGpv0ElK/7M8M8SlYP5TAhNXNi6pg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199015)(966005)(86362001)(186003)(83380400001)(478600001)(316002)(91956017)(1076003)(38070700005)(8676002)(64756008)(66946007)(76116006)(30864003)(66446008)(5660300002)(66556008)(66476007)(6486002)(55236004)(41300700001)(6506007)(6512007)(4001150100001)(9686003)(26005)(71200400001)(2906002)(8936002)(6916009)(33656002)(38100700002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?kzsffQwKyP2HzOoX7qKAr9l3tdG7108GDrnCmusV+qoTWTvcwShEdDhhWoDu?=
 =?us-ascii?Q?MmSvtrETkHxBrY87DMnD/7GalGzNUYIsrIVQ9GDGQKYAEW5oRElh7HNbkAcX?=
 =?us-ascii?Q?3J11Zb4HYv6ICMvpXiQUd+QO02fCNqfwQLqHLn43sgROnGbYYJHnn0KXpkwk?=
 =?us-ascii?Q?qyDCrYRlEZRn8+plqIqDwWAotTRLCtTyzFg1131sDtyrM+7tVVM5cAM55LEf?=
 =?us-ascii?Q?vzRD5laFLlCY6Er07228+W4XB/F8Pil0mmFdzlERWsen/rn1X1ol+nCNqeOT?=
 =?us-ascii?Q?XJd5gxJJjsbg1/PpvXpAGafiRS2yn0WZcRBZ4c5zFyt2ucuGbFbPrb5kXkiF?=
 =?us-ascii?Q?Y0xfHbwS26+0vPxEty7lg3prZcPuWvZgTTPU7lbnrai43rlMlbMxMDStpqCU?=
 =?us-ascii?Q?2vQRf4SxNzYirdFv0DLmwXpIX2LnsmD1K6YCuz10AyxwjxLfgfNSkD/7k9V5?=
 =?us-ascii?Q?blMGWFTwKW0EKYLcCxACf9AifrGzSW2Sgh/aWg3nckXAKaXCZbUz75N3S0bE?=
 =?us-ascii?Q?UUcPZyCwl1LDYUAkOuEdNOeZsZlMiAGgvRlR5AdaBsLBh18ELju4S717IXvg?=
 =?us-ascii?Q?/zTNFQibfbtYI0Qn7iBwTvFTWhzq6+tDOnGlo11d94MYrI+ZKJbMZLHIw6Vs?=
 =?us-ascii?Q?g3wD6HxetCCjGGggNgt2OmhCd6um6OpmNLiZLHDHmi+WvAOwjxLqKi6RgKeV?=
 =?us-ascii?Q?2pl4N3tlGirkdsAotyNTjBcawPhr2jtAxM8k2K+Lo+B/727KPTgHriu6tTON?=
 =?us-ascii?Q?crlIuF5g0olLOemY+kIEbCccjtZWWra/Z++q+2r9x2AB7zGa5RjZZa+GpXej?=
 =?us-ascii?Q?i2qrv6FHnyrVD0nPscxOjfzRTi/0FzkoKIw82Q8GzBtHQQ1vfHJrM6w7yZLo?=
 =?us-ascii?Q?4YJ7exbAyuvNygv+C05ri6q72MSdU9fB/8eX9xPPsa4mGle/LrJNGr2J3lMo?=
 =?us-ascii?Q?uF1nCikiiSM9I76m3DSFYuFMXtlefnQ0aS4xfa3x9NTAKO4Df/R40W2rHjo6?=
 =?us-ascii?Q?zNSLD74CupgKzTImSWqdUz6cYHkrGfFsZbTyd0lG8Rdzj5IlTfA1HJVNiKrt?=
 =?us-ascii?Q?PRSIzPzSBLZqKfWqmJuU7l8vBDH820ixhxdUXf4aLAL7kIBNcKHK09tTZ/Jd?=
 =?us-ascii?Q?I27GP98cq8jSr7VlBFJFqGJylhnDpkpXvCJcdbk4/59YYXlm4SPFnD3T6Aia?=
 =?us-ascii?Q?Sclwr+Sci6MveHCv0mHr6NJBEz2koES3yZXcF0VFBQUk/M0frMpVHDc7zlEd?=
 =?us-ascii?Q?Lm2kxrM5acaU7alC2lieQLlmKTpaPZ5pZLdCsMhg3rWV1zI8YgGtL+nk8eoX?=
 =?us-ascii?Q?ZB0Bg6v1lVtx4uyoTCyw5uUoR5IymNu4N3wEAd+HPbHE+Sa5ZcWAAjBZQ+lK?=
 =?us-ascii?Q?8iLZx4LjhGNdmF2vc3V39AljmbdPdhVkO7qvXahTLsr4PMEC5Q8AfiCSVLOv?=
 =?us-ascii?Q?M5j9NY9882uVlh7wKdMRGeXYnPlBLOw8hz6luijOoizbe7EXPpUrZ8zGo9MX?=
 =?us-ascii?Q?hc13bwntlHKyB6jagFhzRpjsEfeAu/wjDp0Xu6nD5lfH8rZZQLJ5ndlQek9w?=
 =?us-ascii?Q?KtnETartJDlKlhupxH5UzL/czN8V8/OxShGifkwk0JeqHa8N/mRxzJ1Nd96L?=
 =?us-ascii?Q?DPZ6ZNg5rTL1/kd2mJLkbbE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <84B5AE13D84F65428FA41380BB54EF21@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd6708cd-a2ff-4b1d-bc00-08dab5d29414
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 15:15:25.8024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fiD9UV1OuLA1ZIo7A8g4bu8ax/6m5UtLqafMr4+/CKHz6QU+Q1g3IH2/mvx24qR4l6kyxxnayxWvuwfAVdEJJhe2ZDKDnr1jrFsjbfPqDf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4306
X-Proofpoint-ORIG-GUID: pncjnzir8Dd0fJsMPfOG55Dx0TUL40B5
X-Proofpoint-GUID: pncjnzir8Dd0fJsMPfOG55Dx0TUL40B5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-24_04,2022-10-21_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1034
 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2210240093
Subject: [oss-security] Authorization bypass and symlink attack in multipathd (CVE-2022-41974
 and CVE-2022-41973)


Qualys Security Advisory

Leeloo Multipath: Authorization bypass and symlink attack in multipathd
(CVE-2022-41974 and CVE-2022-41973)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
CVE-2022-41974: Authorization bypass
CVE-2022-41973: Symlink attack
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered two local vulnerabilities (an authorization bypass and a
symlink attack) in multipathd, a daemon that is running as root in the
default installation of (for example) Ubuntu Server:

https://ubuntu.com/server/docs/device-mapper-multipathing-introduction
https://github.com/opensvc/multipath-tools

We combined these two vulnerabilities with a third vulnerability, in
another package that is also installed by default on Ubuntu Server, and
obtained full root privileges on Ubuntu Server 22.04; other releases are
probably also exploitable. We will publish this third vulnerability, and
the complete details of this local privilege escalation, in an upcoming
advisory.

The authorization bypass (CVE-2022-41974) was introduced in February
2017 (version 0.7.0) by commit 9acda0c ("Perform socket client uid check
on IPC commands"), but earlier versions perform no authorization checks
at all: any unprivileged local user can issue any privileged command to
multipathd.

The symlink attack (CVE-2022-41973) was introduced in May 2018 (version
0.7.7) by commit 65d0a63 ("functions to indicate mapping failure in
/dev/shm"); the vulnerable code was hardened significantly in May 2020
(version 0.8.5) by commit 40ee3ea ("simplify failed wwid code"), but it
remains exploitable nonetheless.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2022-41974: Authorization bypass
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The multipathd daemon listens for client connections on an abstract Unix
socket (conveniently, the multipathd binary itself can act as a client,
if executed with non-option arguments; we use this feature extensively
in this advisory to connect and send commands to the multipathd daemon):

------------------------------------------------------------------------
$ ps -ef | grep 'multipath[d]'
root         377       1  0 13:55 ?        00:00:00 /sbin/multipathd -d -s

$ ss -l -x | grep 'multipathd'
u_str LISTEN 0      4096        @/org/kernel/linux/storage/multipathd 18105
------------------------------------------------------------------------

The commands sent by a client to multipathd are composed of keywords,
and internally, each keyword is identified by a different bit; for
example, "list" is 1 (1<<0), "add" is 2 (1<<1), and "path" (which
requires a parameter) is 65536 (1<<16):

------------------------------------------------------------------------
155 load_keys (void)
...
163         r +=3D add_key(keys, "list", LIST, 0);
164         r +=3D add_key(keys, "show", LIST, 0);
165         r +=3D add_key(keys, "add", ADD, 0);
...
183         r +=3D add_key(keys, "path", PATH, 1);
------------------------------------------------------------------------
 53 #define LIST            (1ULL << __LIST)
 54 #define ADD             (1ULL << __ADD)
 ..
 69 #define PATH            (1ULL << __PATH)
------------------------------------------------------------------------
  6 enum {
  7         __LIST,                 /*  0 */
  8         __ADD,
 ..
 23         __PATH,
------------------------------------------------------------------------

In turn, each command is associated with a handler (a C function) by its
fingerprint -- the bitwise OR of its constituent keywords; for example,
the command "list path PARAM" is associated with cli_list_path() by the
fingerprint 65537 (LIST+PATH=3D1+65536), and the command "add path PARAM"
is associated with cli_add_path() by the fingerprint 65538
(ADD+PATH=3D2+65536):

------------------------------------------------------------------------
1522 void init_handler_callbacks(void)
....
1527         set_handler_callback(LIST+PATH, cli_list_path);
....
1549         set_handler_callback(ADD+PATH, cli_add_path);
------------------------------------------------------------------------
321 static uint64_t
322 fingerprint(const struct _vector *vec)
...
325         uint64_t fp =3D 0;
...
331         vector_foreach_slot(vec, kw, i)
332                 fp +=3D kw->code;
333=20
334         return fp;
------------------------------------------------------------------------
 89 static struct handler *
 90 find_handler (uint64_t fp)
 ..
 95         vector_foreach_slot (handlers, h, i)
 96                 if (h->fingerprint =3D=3D fp)
 97                         return h;
 98=20
 99         return NULL;
------------------------------------------------------------------------

When multipathd receives a command from a client, it first performs an
authentication check and an authorization check (both at line 491):

------------------------------------------------------------------------
431 static int client_state_machine(struct client *c, struct vectors *vecs,
...
485         case CLT_PARSE:
486                 c->error =3D parse_cmd(c);
487                 if (!c->error) {
...
491                         if (!c->is_root && kw->code !=3D LIST) {
492                                 c->error =3D -EPERM;
...
495                         }
496                 }
497                 if (c->error)
...
501                 else
502                         set_client_state(c, CLT_WORK);
...
522         case CLT_WORK:
523                 c->error =3D execute_handler(c, vecs);
------------------------------------------------------------------------

- Authentication: if the client's UID (obtained from SO_PEERCRED) is 0
  (i.e., if is_root is true), then the client is privileged; otherwise,
  it is unprivileged.

- Authorization: if the client is privileged, it is allowed to execute
  any commands; otherwise, only unprivileged LIST commands are allowed
  (i.e., commands whose first keyword is either "list" or "show").

Attentive readers may have noticed that multipathd does not, in fact,
calculate the fingerprint of a command by bitwise-ORing its constituent
keywords, but by arithmetic-ADDing them (at line 332). While these two
operations are equivalent if no keyword is repeated, we (attackers) can
send a seemingly unprivileged command (whose first keyword is "list")
but whose fingerprint matches a privileged command (by repeating the
"list" keyword): we can exploit this flaw to bypass multipathd's
authorization check.

For example, we are not allowed to execute "add path PARAM" (whose
fingerprint is 2+65536=3D65538) because the first keyword is not "list",
but we are allowed to execute the equivalent "list list path PARAM"
(whose fingerprint is also 1+1+65536=3D65538, instead of 1|1|65536=3D65537)
because the first keyword is "list" (the multipathd daemon below replies
"blacklisted" because PARAM is an invalid path, not because the command
is denied):

------------------------------------------------------------------------
$ multipathd add path PARAM
permission deny: need to be root

$ multipathd list list path PARAM
blacklisted
------------------------------------------------------------------------

This authorization bypass greatly enlarges the attack surface of
multipathd: 34 privileged command handlers become available to local
attackers, in addition to the 23 unprivileged command handlers that are
normally available. We audited only a few of these command handlers,
because we quickly discovered a low-hanging vulnerability (a symlink
attack) in one of them.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2022-41973: Symlink attack
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

multipathd operates insecurely, as root, in /dev/shm (a sticky,
world-writable directory similar to /tmp). The vulnerable code (in
mark_failed_wwid()) may be executed during the normal lifetime of
multipathd, but a local attacker can force its execution by exploiting
the authorization bypass CVE-2022-41974; for example, by adding a
"whitelisted, unmonitored" device to multipathd:

------------------------------------------------------------------------
$ multipathd list devices | grep 'whitelisted, unmonitored'
    sda1 devnode whitelisted, unmonitored
    ...

$ multipathd list list path sda1
fail
------------------------------------------------------------------------

This command, which is equivalent to "add path sda1", results in the
following system-call trace (strace) of the multipathd daemon:

------------------------------------------------------------------------
386 openat(AT_FDCWD, "/dev/shm/multipath/failed_wwids", O_RDONLY|O_DIRECTOR=
Y) =3D -1 ENOENT (No such file or directory)
387 mkdir("/dev", 0700)                     =3D -1 EEXIST (File exists)
388 mkdir("/dev/shm", 0700)                 =3D -1 EEXIST (File exists)
389 mkdir("/dev/shm/multipath", 0700)       =3D 0
390 mkdir("/dev/shm/multipath/failed_wwids", 0700) =3D 0
391 openat(AT_FDCWD, "/dev/shm/multipath/failed_wwids", O_RDONLY|O_DIRECTOR=
Y) =3D 12
392 getpid()                                =3D 375
393 openat(12, "VBOX_HARDDISK_VB60265ca5-df119cb6.177", O_RDONLY|O_CREAT|O_=
EXCL, 0400) =3D 13
394 close(13)                               =3D 0
395 linkat(12, "VBOX_HARDDISK_VB60265ca5-df119cb6.177", 12, "VBOX_HARDDISK_=
VB60265ca5-df119cb6", 0) =3D 0
396 unlinkat(12, "VBOX_HARDDISK_VB60265ca5-df119cb6.177", 0) =3D 0
397 close(12)                               =3D 0
------------------------------------------------------------------------

- at line 389, the directory "/dev/shm/multipath" is created, if it does
  not exist already;

- at line 390, the directory "/dev/shm/multipath/failed_wwids" is
  created, if it does not exist already;

- at lines 391-397, the empty file
  "/dev/shm/multipath/failed_wwids/VBOX_HARDDISK_VB60265ca5-df119cb6" is
  created, if it does not exist already (its name is the "World Wide ID"
  of the added device).

multipathd is therefore vulnerable to two different symlink attacks:

1/ if we (attackers) create an arbitrary symlink "/dev/shm/multipath",
then we can create a directory named "failed_wwids" (user root, group
root, mode 0700) anywhere in the filesystem;

2/ if we create an arbitrary symlink "/dev/shm/multipath/failed_wwids",
then we can create a file named "VBOX_HARDDISK_VB60265ca5-df119cb6"
(user root, group root, mode 0400, size 0) anywhere in the filesystem.

These two symlink attacks are very weak, because we do not control the
name, user, group, mode, or contents of the directory or file that we
create; only its location. Despite these limitations, we were able to
combine multipathd's vulnerabilities (authorization bypass and symlink
attack) with a third vulnerability (in another package), and obtained
full root privileges on Ubuntu Server 22.04; we will publish this third
vulnerability in an upcoming advisory.

Side note: initially, we thought that the symlink attack 1/ would fail,
because /dev/shm is a sticky world-writable directory, and the kernel's
fs.protected_symlinks is 1 by default; to our great surprise, however,
it succeeded. Eventually, we understood that only the final component of
a path is protected, not its intermediate components; for example, if
/tmp/foo is a symlink, then an access to /tmp/foo itself is protected,
but an access to /tmp/foo/bar is not. Interestingly, this weakness was
already pointed out in 2017 by Solar Designer, and the original
Openwall, grsecurity, and Yama protections are not affected:

https://www.openwall.com/lists/kernel-hardening/2017/06/06/74


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank Martin Wilck and Benjamin Marzinski for their hard work on this
release, and the SUSE Security Team for their help with this disclosure.
We also thank the members of linux-distros@openwall.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2022-08-24: Advisory sent to security@suse.

2022-10-10: Advisory and patches sent to linux-distros@openwall.

2022-10-24: Coordinated Release Date (15:00 UTC).
