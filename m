X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9410" "Monday" "24" "January" "2022" "14:05:01" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "256" "[oss-security] CVE-2021-3998 and CVE-2021-3999 in glibc's realpath() and getcwd()" nil nil nil "1" nil nil (number mark "U       qsa@qualys.c Jan 24  256/9410  " thread-indent "\"[oss-security] CVE-2021-3998 and CVE-2021-3999 in glibc's realpath() and getcwd()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3998 and CVE-2021-3999 in glibc's realpath() and getcwd()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21818 invoked by uid 550); 24 Jan 2022 14:05:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21793 invoked from network); 24 Jan 2022 14:05:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=X8IzJF2yrS6C7kMA7ZRUWyLInqBi4WNv5jE4eK3CzRc=;
 b=Rfc42ah0lDeZhsjau0rfSHLYi2+QWWchIAwzDWSZ3mQwG9TS8jYZcN4Ay6MzsyNY8Ut7
 OlNxxjATXHy1yz9dsv/VqrRxTF/ZkG7T9ZqSwqZi8LwgWLOa2aLvr0qh75mj7sslcEay
 M75fhRYhTyJv3v2A3B6nuIlsgbpvif3BQkMkiciMxQe8FNJvJtcfFwBhLl9un9lX+0Bp
 CPpWpwDvR6zk6UBx+f8uNMq9KjcY9hS0/2Bf6ZnaHulnIw6IQ4vC2I2fMwsPsiyOFHwO
 Vao6UwZnltu2RJCoA/dyc2n1YuQJF323ohKjVIHjBAyjUNtCKh3qop6PpUoQ0hUprXvA fA== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QBN5VXNxyVcHxpMyt9nY8XnPUvWjxhMCE+JmaCqN1YzWrttRMOo4OH6CR/MyPhb+3YQHxca0/Rz+HYfL+3AyKNsUoFIFHs9vNWasByZVZ3YhO3YcyEcS56LqO0vW4IQXpkS/zxJNW7bv/kDFpoZizNdSg/zrC/uEyJRBBvSUML4X/RopSpisCJmeKNiKoNAm2Pqvud7X5JeI8Riv69XAFRSvOEJoH1/nkZapL4OF/J6jb5igrHs7Ky9zl8hdxKdobwW/mz4/tQnXFFIHUyr7t3kZrBGGdAlW9k7yujEU3EitlSULctlEdL9E/uCo3I+ojbeqJ3IPSoppV5nYEhtUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8IzJF2yrS6C7kMA7ZRUWyLInqBi4WNv5jE4eK3CzRc=;
 b=B0HJqioNlR6/lVXuX58BtUvQde2i0/Z7e4uM5LR2Esna2Jccol39ZeyrorhrZ+Y6CTUw8qXbO99YcgF8xwJ+un3Oe+Qi9OoUyiEOFRbxPYAYmCQmQERNupwac9Iki4nbQy9P63SlYmAA6GtkoHVcznWGws2jHM+UvF3Oy4QprVSHlpPb1TUSBk8/AXVHGYDBdggtA+DKzLwHOtJlP5N1lluMl098YXFCzceNss9J+v3UigW/uWjWYwTk7T9GRy9zx6vNyAHWUYKBVBuiW7UdGFAWpSISNpSDVutsaLGL8FZsmtcuR2m3sXE0uMyD0NrFKkGAK27/H39IGC8ZnOjRfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8IzJF2yrS6C7kMA7ZRUWyLInqBi4WNv5jE4eK3CzRc=;
 b=keLf5lgvNvRN6FkTa3tpZNkruGWX+dsPMADbmYcEyy5c3uSz4adx8M40sRiEAAGHEm9Xka328VqFtffHb7A7P8p21jSbyH1c941Uq+i4qi0S5LukrZn9JMClr9fJXdvpykAD5gslPjqBOdR/4oMRT2l3P30fKcfcbx6Fsi7NJixTKK7TAc6XfYcjlsN4oBkHztqWpwk3D04K21U8Ui1xJl6b57HIRgDmmyLhus0z5Wtch2Ywr0jzSu5HuVFWqRBhYOGkhz9FC7uvYHWchZI4RkNrHDTPhsrIMwB6geBcyDdUUtT9DMmf+y5MzHRZY2MJWt++/epKFEbv5JJYVfBIUA==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-3998 and CVE-2021-3999 in glibc's realpath() and
 getcwd()
Thread-Index: AQHYESthC8gtuAjdFUmziOEM54kZYQ==
Date: Mon, 24 Jan 2022 14:05:01 +0000
Message-ID: <20220124140408.GA21504@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 092a3856-2c74-4295-fb1e-08d9df42838a
x-ms-traffictypediagnostic: BN8PR06MB6001:EE_
x-microsoft-antispam-prvs: 
 <BN8PR06MB60010EB6EF80ACFC4DF4EEBDD55E9@BN8PR06MB6001.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xGZjomqyWl+4HGFwiZsXMknrHXqO/t+sYEh1+kOWRH8MHxRG0TiEo5AGXvIi5XUAe6ZJquuQpFOZNXsI+GBIAb/umbIToFDOzdnGTPoZRbYI2Wm4C6ApI0uRhQBk1rlfcOn64CX9rA+K4FJVwgHDMo+pu/YjoEIIpxPFkq5T5+CnbO4Nt7s1HJiSI/g8UEimYXqdXbceuutUnAnOSf0FFjAIeDFb1BGDFMPLDtuSB3jG8skSzdp7aPvYKZBqnRC66GoUzrlfFyOAjQCl/u/DorLfyavS/XNgXKMrEYGg014gt2gsLEsbQYAkLET8lXARNeSbCxLRx69TmsGK4a40q7Mly3SEKUm5Ml4VvZ0b2d3nXO5zIFjfwbNcP3W7wW84aEjnclmb5ZmuH+tDgb9vcDtRbQGN75kKAeVPMCs3RnEHlX7RjpvQvvxwTHP3M/O68es3arb3lsaKcpckjhKBiOUHmqBOESCPzMxKddMUugH8Gf7eS3ybRlJTUh7LPKR5qZOshELkljba+F4BieQ/FpDdw5L9cDaWlr2Uy9Rg9HimuLTAEGQl2OGcQxS1V5tFOX1h5xTSNXG3qLa/+0SWBUx2Lxi36XMJLE4XkSCJMHldFQVsMLPEvvMQycItN5GMKnHajM+GNR/0kGIWhhdWd7uWUKCd+7HXdok79zk2d4fIoiRFVJ8KUh0RhOyyK0sy7xTnnliioqHut/+83TzSEJ9F8f5RQwUlOhwQQPOXiZDIy/3OuHn41ddYmV4D14tklWuAqNLWpNzG5AxtzfV37AZ5/+DX+EhC0qFvC5mvab0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(38070700005)(83380400001)(2906002)(122000001)(38100700002)(6486002)(76116006)(66556008)(66476007)(64756008)(66446008)(66946007)(5660300002)(6512007)(8936002)(508600001)(966005)(9686003)(33656002)(6916009)(1076003)(6506007)(316002)(186003)(86362001)(71200400001)(8676002)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?1iv6+4DEYtpXRtrsq+wtC5KvrvOGIBxYAmdbEZjFFRmdEpVCyEgVeg/KjCuZ?=
 =?us-ascii?Q?1SvjPhzEZsK32uiYwlNxqvMMDmv0T0hYy7V74GpYoYlCzpQSRqg8rxQrVK5W?=
 =?us-ascii?Q?YGHVnwr89M0ALvVvydYTsm5m5zX7k5b2SyQj0Mw1bwPuyeKosoJ0FE+IZvom?=
 =?us-ascii?Q?m0LIErOnRaO2PzVPOxXqEEd6zcHnMQ/Ny5OUwYzN/XfNG9Msdt8LJJjG+P6h?=
 =?us-ascii?Q?xJNRX+XS724ToHBdnaejxgA8yRo5Fj9ZnsdIRc69r8m2YZVtoZX8FOut/sXy?=
 =?us-ascii?Q?gBDIxqOQGnFyf56Q3NOCpZ7g8YWzbSLjgel5Ss6/TQsETZYh1FvnlAIbLtBz?=
 =?us-ascii?Q?n5x5VsICiqDyN3ZU4JqTi3B8gHhvU3dw2fRdNVOmQqYGZUAxs8BilZ2314oG?=
 =?us-ascii?Q?Odx27Uh3yGZs8hDI5j/Ned/aIoaquwALahsloHvIh0W0l2dR/fHrKkwnlQJL?=
 =?us-ascii?Q?hL36iHVwRDnLod0ralUkSgDlb2wRv36axZTV4Tto/ADM2HQuXGkg0h6krBkw?=
 =?us-ascii?Q?ewrI3wvonTxBZNM6MbpPqDJyRRAkTOhNMotrPM0BjsAFy4dieWHLXjcGT4rc?=
 =?us-ascii?Q?Q9in8K7lz27MCpwylC2yNpIOU2d1ha6ItUmd9MbFeGWbgmaDkvPMHBYdBmYm?=
 =?us-ascii?Q?0WNgkMzSVc01vkpfHaOx+PeEYDfeOI84FD7pqiNnjGgb3tBRKTiqQ6+dLyvl?=
 =?us-ascii?Q?5W3h9gO7Fs+PABI5DxVXPFIDjWQAdZRQsREAICJzg05CX9INRA56Y21HuoFS?=
 =?us-ascii?Q?qZzfExU5fMypoRPwDcrV1Atnii1FKP7yzmGudkOy55WgJ5T9FKpjRmGvaeAA?=
 =?us-ascii?Q?JKfH30AxHz5YJaRTizDTrtyS1VLgLO08J2SBpC8pMXPgOxcgUN5xAmfXPn0N?=
 =?us-ascii?Q?1Rsw5vB17qG0ih+wToTByfPuil3UW4bRfIg+//GMBIihYOHBIIHGyNywtRZF?=
 =?us-ascii?Q?0TmKEaNLrOfLvU7BP55yTk2lmIwGUKVxMBp2AC70jXuGymV1cVQUrDwdbujI?=
 =?us-ascii?Q?FfOI8PMALJ8bDIj/PUv/XpoYJhJQiNkCDZPRAR5YP21QJ44VOJzmN6W9yk7e?=
 =?us-ascii?Q?fYP0MSrHqTAiKFHICKfowvbIOiFTdSnxeG/WuYq52T9CRHEONvtYySlTfiqT?=
 =?us-ascii?Q?9c3uhc862/OkSBItf0udf3ULDI2i/1sfBPfd73krLp4CSjTrdN7V8uPTHq4z?=
 =?us-ascii?Q?Bm9nwpoJ3NPOj0nushXgeqZm2RyWzIuaElZv0/2a6xJi30ZU+bVQiJTBTsQH?=
 =?us-ascii?Q?ZzTvNOO6U43dRQwu1JClT8HzQID9XMvRgM3FC9qHvRrAea8eGyQIGO89kcWN?=
 =?us-ascii?Q?3vr/xRNEznpYqIQ450NBKlXfs4BH1fE19BBXCoiYm5sg2+chxJFV/dbRiuLO?=
 =?us-ascii?Q?12sFR9cdc9JRrkSWeoiAZS+kkQD4SqV1jMcmMZ7NUWaZmpw6kXucc6rIWOzI?=
 =?us-ascii?Q?1pnCGkChZhdMF5dSLjqlTE4snHcjQL0vBzHryPd5HgMqrIvnqWEyYdRU0MLf?=
 =?us-ascii?Q?pGeNzbeOjtV8dT4sbwcJg/bXqnD72IlfSll+2Bk/d3a9E0iS2GnSHvuwji63?=
 =?us-ascii?Q?AmYwq4yOCtlF5035NEfnb9Ogm0WqG92pSMSRwoPZI20WYamtIQSxJC8Q4z10?=
 =?us-ascii?Q?X2f7MLf5zKOa8BCgWaHga4EfWl/iqamaNEGLit8KoXvRy1mhuQu4WVENHN1j?=
 =?us-ascii?Q?fBJJ0AxciBUVyfl75VR/3162s2o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B7CEDC3FE48CAB47BE83F23C11580196@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092a3856-2c74-4295-fb1e-08d9df42838a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 14:05:01.6301
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zjAHpiSh2K8Y3IAd5/f8Aib1VOYXe5pP67vIA8oxq1XQ0VxtvMHqfRkQ+lwtHDoLWUj1v+fcqff7BoXTu61gXCmg+mDswO4WVIOge8q+wcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR06MB6001
X-Proofpoint-ORIG-GUID: iDTTOS4KH1a0SFs_qgIoWuEkpO5r1vMI
X-Proofpoint-GUID: iDTTOS4KH1a0SFs_qgIoWuEkpO5r1vMI
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-24_07,2022-01-24_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 phishscore=0
 suspectscore=0 priorityscore=1501 clxscore=1034 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201240094
Subject: [oss-security] CVE-2021-3998 and CVE-2021-3999 in glibc's realpath() and getcwd()

Hi all,

We discovered two vulnerabilities in the glibc, CVE-2021-3998 in
realpath() and CVE-2021-3999 in getcwd(). Patches are now available at
(many thanks to Siddhesh Poyarekar and Red Hat Product Security):

https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3Dee8d5e33adb284601c0=
0c94687bc907e10aec9bb
https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3Df7a79879c0b2bef0dad=
d6caaaeeb0d26423e04e5

https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D23e0e8f5f1fb5ed1502=
53d986ecccdc90c2dcd5e
https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D472e799a5f2102bc0c3=
206dbd5a801765fceb39c

Below is a short write-up (which is part of a longer advisory that is
mostly unrelated to the glibc and that we will publish at a later date):


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3998: Unexpected return value from glibc's realpath()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While auditing umount and fusermount, we also discovered a vulnerability
in the glibc's realpath() function, which is used internally by various
programs. Normally, when the output buffer "resolved" that is passed to
realpath() is not NULL, then realpath() either returns NULL on failure,
or it returns the output buffer "resolved" on success. Unfortunately,
since commit c6e0b0b ("stdlib: Sync canonicalize with gnulib") from
January 2021, realpath() can mistakenly return a malloc()ated buffer
that is neither NULL nor the output buffer "resolved":

------------------------------------------------------------------------
430 char *
431 __realpath (const char *name, char *resolved)
432 {
...
437   struct scratch_buffer rname_buffer;
438   return realpath_stk (name, resolved, &rname_buffer);
439 }
------------------------------------------------------------------------
197 static char *
198 realpath_stk (const char *name, char *resolved,
199               struct scratch_buffer *rname_buf)
200 {
...
399   failed =3D false;
...
403   if (resolved !=3D NULL && dest - rname <=3D get_path_max ())
404     rname =3D strcpy (resolved, rname);
...
410   if (failed || rname =3D=3D resolved)
411     {
412       scratch_buffer_free (rname_buf);
413       return failed ? NULL : resolved;
414     }
415=20
416   return scratch_buffer_dupfree (rname_buf, dest - rname);
417 }
------------------------------------------------------------------------

For example, if the input path "name" is "." and if the current working
directory is longer than PATH_MAX, then:

- at line 399, "failed" is set to false;

- at lines 403-404, "rname" is NOT set to "resolved" and "resolved" is
  left untouched and uninitialized (because "dest - rname" is longer
  than PATH_MAX);

- the code block at lines 410-414 is skipped (because "failed" is false
  and "rname" is not "resolved");

- at line 416, scratch_buffer_dupfree() returns a malloc()ated buffer
  that is NOT the output buffer "resolved".

The consequences of this vulnerability depend on the affected programs;
for example, fusermount (a SUID-root program) can disclose sensitive
information (pointers) when displaying the contents of a stack-based
buffer that is mistakenly left uninitialized by realpath() (we tested
this proof of concept on Ubuntu 21.04):

------------------------------------------------------------------------
$ gcc -o CVE-2021-3998-fusermount CVE-2021-3998-fusermount.c
$ ./CVE-2021-3998-fusermount > CVE-2021-3998-fusermount.output
...

$ hexdump -C CVE-2021-3998-fusermount.output
00000000  2f 75 73 72 2f 62 69 6e  2f 66 75 73 65 72 6d 6f  |/usr/bin/fuser=
mo|
00000010  75 6e 74 3a 20 65 6e 74  72 79 20 66 6f 72 20 f0  |unt: entry for=
 .|
00000020  83 9b 99 ff 7f 20 6e 6f  74 20 66 6f 75 6e 64 20  |..... not foun=
d |
00000030  69 6e 20 2f 65 74 63 2f  6d 74 61 62 0a 0a 2f 75  |in /etc/mtab..=
/u|
00000040  73 72 2f 62 69 6e 2f 66  75 73 65 72 6d 6f 75 6e  |sr/bin/fusermo=
un|
00000050  74 3a 20 65 6e 74 72 79  20 66 6f 72 20 39 ac b7  |t: entry for 9=
..|
00000060  a5 a2 7f 20 6e 6f 74 20  66 6f 75 6e 64 20 69 6e  |... not found =
in|
00000070  20 2f 65 74 63 2f 6d 74  61 62 0a 0a              | /etc/mtab..|
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3999: Off-by-one buffer overflow/underflow in glibc's getcwd()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While studying the vulnerability in realpath(), we also discovered a
vulnerability in the glibc's getcwd() function (which is used internally
by realpath() to resolve relative pathnames) -- an off-by-one buffer
overflow and underflow, but if and only if the "size" of "buf" is
exactly 1:

------------------------------------------------------------------------
 48 __getcwd (char *buf, size_t size)
 49 {
 ..
 54   size_t alloc_size =3D size;
 ..
 76     path =3D buf;
 ..
 80   retval =3D INLINE_SYSCALL (getcwd, 2, path, alloc_size);
...
100   if (retval >=3D 0 || errno =3D=3D ENAMETOOLONG)
101     {
...
110       result =3D __getcwd_generic (path, size);
------------------------------------------------------------------------
158 __getcwd_generic (char *buf, size_t size)
159 {
...
187   size_t allocated =3D size;
...
247     dir =3D buf;
248=20
249   dirp =3D dir + allocated;
250   *--dirp =3D '\0';
...
262   while (!(thisdev =3D=3D rootdev && thisino =3D=3D rootino))
263     {
...
441     }
...
449   if (dirp =3D=3D &dir[allocated - 1])
450     *--dirp =3D '/';
...
457   used =3D dir + allocated - dirp;
458   memmove (dir, dirp, used);
------------------------------------------------------------------------

If, at line 48, the "size" of "buf" is exactly 1:

- and if, at line 80, the kernel's getcwd() syscall fails with the error
  ENAMETOOLONG (because the current working directory is longer than
  PATH_MAX),

- then, at line 110, a generic implementation of getcwd() is called;

- at line 250, a null byte is written to "dirp", which points exactly to
  "buf" (because "size", and hence "allocated", are exactly 1);

- if the code block at lines 262-441 is skipped entirely (if the current
  working directory corresponds to the "/" directory),

- then, at lines 449-450, a slash is written to "buf-1" (an off-by-one
  buffer underflow, because at line 449 "dirp" was still pointing
  exactly to "buf"),

- and, at lines 457-458, a null byte is written to "buf+1" (an
  off-by-one buffer overflow, because at line 457 "used" is exactly 2).

It may seem impossible to satisfy the condition at line 100 (the current
working directory is longer than PATH_MAX) and the condition at line 262
(the current working directory corresponds to the "/" directory), but in
reality we can:

- in a child process:

  - create an unprivileged mount namespace;

  - create a directory longer than PATH_MAX;

  - bind-mount "/" onto this directory;

  - open() this directory and send its file descriptor to the parent
    process (outside the unprivileged mount namespace);

- in the parent process:

  - receive the file descriptor of this directory (which corresponds to
    "/" and is longer than PATH_MAX) and fchdir() to it;

  - execute a SUID program that calls getcwd() with a buffer of size 1,
    which triggers the off-by-one buffer overflow and underflow.

Apparently, this vulnerability was introduced in February 1995 by the
very first commit in the glibc's git history (28f540f, "initial import")
and could be triggered without an unprivileged mount namespace, by
simply chdir()ing to the "/" directory:

------------------------------------------------------------------------
190 getcwd (buf, size)
...
218     path =3D buf;
...
226   pathp =3D path + size;
227   *--pathp =3D '\0';
...
242   while (!(thisdev =3D=3D rootdev && thisino =3D=3D rootino))
243     {
...
351     }
352=20
353   if (pathp =3D=3D &path[size - 1])
354     *--pathp =3D '/';
...
359   memmove (path, pathp, path + size - pathp);
------------------------------------------------------------------------

Although "the size of buf is exactly 1" is a strong requirement,
vulnerable code like the following may exist in the wild:

------------------------------------------------------------------------
#include <unistd.h>
#include <stdio.h>

int main(int argc, char * argv[]) {
    char buf[4096];
    int len =3D snprintf(buf, sizeof(buf), "%s: cwd is ", argv[0]);
    if (len <=3D 0 || (unsigned)len >=3D sizeof(buf)) return __LINE__;
    if (!getcwd(buf + len, sizeof(buf) - len)) return __LINE__;
    puts(buf);
    return 0;
}
------------------------------------------------------------------------


Thank you very much! We are at your disposal for questions, comments,
and further discussions.

With best regards,

--=20
the Qualys Security Advisory team=
