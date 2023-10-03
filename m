Received: (qmail 30589 invoked by uid 550); 3 Oct 2023 17:50:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30557 invoked from network); 3 Oct 2023 17:50:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	from:to:subject:date:message-id:content-type:content-id
	:content-transfer-encoding:mime-version; s=qualyscom; bh=wq8toH4
	Sk33IJHJZIMiaRZn86/4sz/LcMZ3/r3g11tY=; b=Cq8wKu18iiRbm5uT6/Vm+wJ
	sKs5aYlgF+3ccrk2ARM5lNkhEuY71+ANTtCvHpyl/TzzpCO8DUSLO6GypEjQgWjG
	/0nLhi3c6SkHj86q+XafXiGablha1gif7qGfXWzS6USBswnXitkGTKtd6Qvdg0zw
	9RuRoH+nWQu+5BDfg1ZETki/bnYn+bpZpN71KpKYqzmAfsU9a0MWeue5L6EDUQsH
	kY1Y+w9L6zU73HqJ4GVgsoo4rjAIlXb01VDyzfhu+Y57vuEUwUGctn0bTkOPDP4W
	o0miQe/P6Yyujqte+qx5YjSIrAecc9wSNu5HRPnqz2NtxCQCdmilFFyhbM37P8Q=
	=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jtDExQfZO/l0JkT1G3Uppp1Z0EIrHFHo/SVOPAqSWdIolOJz3gt5jxCN896oYYMrOQ4IvPeZcrcPTNyWLkLjQd427V5yeX8HfLQoFgVrRBBVAd3j3uDMyKERrvQ5YmUCcl6yZ3c88MktqJzTEae3ITmVbNh6RjxdoPvYF8KjhkOO0BLIqtpNBG+kLS4CnkBF9R93ZMgwFfC6a1ZJjgajop/cRZyH+Q+aSrpZaOp7NYT8tHwYukOo08MZ8WIGXhRyQMHFIASlj9J8QqWVoRNmaACpd3S/BtuhRTt/b30QVSiAwNcMqTJABDXzOm1i2/vWQIbYSjZ1X/MRTW32jMcJvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wq8toH4Sk33IJHJZIMiaRZn86/4sz/LcMZ3/r3g11tY=;
 b=NzOLD4bsxfsJGBt4HRG+/rHRS0MO+uEkS9zVZv6jxcApOW5LDMv9Vvg+q/z8F80vK7N/mrQhQQQrUBBtV20QdTYfOY+kapZJvo5GkIhYhRBDllfy3OXotkeebwVSqogOZyuA3cPQEHNc40u7XlMTUThB0tnDETuZBl13sF8y+G+X7ex/fpbQXcyVkS/akZfZuaCe3FGFtwepZFEREKmKRvIqttiPkg2FasLZssXu+pdtWH8XSPNf37z8DFTxpihFmnew+vmy/UFZ+c6TRdlFG9c4M+A422P94/oBsEFgVMavRyaHmnHIyFD08oCVh/dss/nRAAPGyzWk1pCJTE/Dhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wq8toH4Sk33IJHJZIMiaRZn86/4sz/LcMZ3/r3g11tY=;
 b=MmJ5h00DglfnxXPgrGAtKht6ffuGAje6UyLHmECo8PoMxJKYLdU/DvRt2V0dIwlP3gx13HeA0idsAVjaOx8QWc2Pm0lbkFO5bkZ0KNABkroRsQs3MWF3HWFh86fKnpnkWucE6ygCpg0iHjdFUpBqGaS2NJ4Yz33CSisSSnmMvbzz7zLFxtd51SgLFYhiYKgmU5hSVlTAChabMRemipxA7MJxnmJGXQFwpncDKn7+563WNnS6hYBqmM0sZGps8ro20WY61oMN3H8nleQ2v9R4FEUi+SZxukoVoB/M4oIgJfI5DBd4vpdb61Y6qfE5nI35OjCC7gMc3PvYKDobSvdlrQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2023-4911: Local Privilege Escalation in the glibc's ld.so
Thread-Index: AQHZ9iId8q4d1aWbIEG6zk7/MRBBgw==
Date: Tue, 3 Oct 2023 17:50:36 +0000
Message-ID: <20231003175031.GA16924@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|BLAPR06MB6769:EE_
x-ms-office365-filtering-correlation-id: ee0904c8-1311-41ae-5c0b-08dbc43940b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7M1AfT4HRQsCgD7dxiDyS3jXshxB78PRRf9NwIF03hdZm0He66FvtryePPsjzRIUUdJJV4/gPg8h8aDrLg17kQWwIfJ+KQdv6j8lLSMbpAtUuALQgvKfUVqhaFdygonc78Rtyg8jgBCkbUYM9dBop8GSh+iARZ7HKmEmlIwvfeVV7tbv5oiFvLd7YuXzW1W8DzE9LhVnhthlV13SOOZxe0G0kaaGdYMabA/SbEoTGTLipnYXxNgpT7aeiR07rpKbha7d+tTnwg9gb3J+5EUWziZaHevfaQx+ZJwpi0bftYBTvjtXXjLHflc2I0sFmL102nWRhAb48F3kvgOYGa09e3S35P3pHAAPN/SDRxYtkbHJQhqD8Yx1VY3V34nSrpjBL/aTV8ZVBacm7VZP887Uf7mpfBiuzYgD6FZTuSysWvuMkr3iaRTn5u6cjl4xBSY42q0DKv0f77PdJY4JfOWBzGmAm8aLxe31dgwr9W2ceXahmjAln5CgCIUM2YsGUsBOh73sT6Pe1+qjh6F8/FJsQaT0qI4qOH8MH4utHn56vzpLtYwQJbbO3t0xd4QDZCNu9OtsUzKF5c4GTPAA6EFfAIF7Z/vkHwE/8ixldSM02+c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39860400002)(396003)(346002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(33656002)(86362001)(71200400001)(6486002)(9686003)(55236004)(6916009)(91956017)(478600001)(64756008)(66446008)(66476007)(66556008)(66946007)(6512007)(76116006)(6506007)(41300700001)(5660300002)(8936002)(26005)(316002)(1076003)(8676002)(83380400001)(2906002)(122000001)(38070700005)(38100700002)(30864003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lgJo5PUUn12gba9XNUeqauuKnRiXjkU6kklux5eC0xvPDUxthR+egBjkZA4Z?=
 =?us-ascii?Q?RT22wf1E3/xlRXluBW7riL2WUPFDNyKzggrzF7fuuvQaVCHBRi6mi1ZxoK4X?=
 =?us-ascii?Q?PSileqCtiZryW1ikwb2YJSnu0fB0vH7E88QqrC8t85VqmlYP8APgw5Hd0BX9?=
 =?us-ascii?Q?g8jmTEN1hCgSJwl/M0F1Vu/JjTFz2uJ1gdmHl+6QMFNHAxDPepJMeg0UTNpN?=
 =?us-ascii?Q?xCmiBqr90c0NLlJDdUihQhiNxIYp0nQhxuXTQmhXkAAAge8YSz2MjY8HQiQC?=
 =?us-ascii?Q?sKJVZDpTru3TtsBr+8Q2bqIZIwubFlkYYWkogkmFENqDhElxjI4RLpTM+z/r?=
 =?us-ascii?Q?wSSA7+bitK5h84LDY5MlcPtnHIlsw6WFiXtN4a62b85ksMT5mSNw8OEFhfiU?=
 =?us-ascii?Q?L3SlnJaUm7aIV/bKDns/x3TZu8mP/4E30E57jw/MvJ7WD8/zHMzd669dIb3L?=
 =?us-ascii?Q?iJy5vBytMPSl9tXvJTuCcGunN0t8O/P0aXwz8DzBDzxs5rzB7XtcRDWXVA36?=
 =?us-ascii?Q?1wwyXcRPlW6yYiL6okMRnfqzX1qa+DoeaG4u1iGr/9n4B04mdL18YnPfUe85?=
 =?us-ascii?Q?3qq2QoDJ125frIpcXp97eGgXJ29WMJ9KueQ07wpQHte2a3yfvDntBRIBLJQn?=
 =?us-ascii?Q?v0XLU8cdsZTr6XN7M88dIBeez+Aol4HHKc9sATeL/eNyW4Ib44hR9HNSXLZZ?=
 =?us-ascii?Q?3TWI2NyVvzjOHsVyyJrEyJNeRHZgdoAff3B7qKFIecC/oVWbIKV5wI0rhbCG?=
 =?us-ascii?Q?e2AOhS4jocsRD29Xgr5YUb1ErHSX+BzdXnKaW+td8/sAcyUbvI3+KDocR78I?=
 =?us-ascii?Q?ATTjDM5EQf8K4joM1Xfi/B99TGFcvXFsZwzmbxmWx7PtWHNBNRdMzvFxAZS2?=
 =?us-ascii?Q?CulxvMW6Qu0MJg36IyJnHTgT91C1c4C4ZdGD7D81mf0ZQLdcS7rxy+/Y/lhd?=
 =?us-ascii?Q?P9NU4EOTTZ1hBjt1FQ+ZaOOZi/f/idFzfKdc8riKyc4qd0QFNjvunbSDCYLN?=
 =?us-ascii?Q?a6xVV/LEGZohakpTzivGig+zBonCQQ36+b5twDq3iEZTFBVAMsAmlojDqTBY?=
 =?us-ascii?Q?6V+A9Fi8J08dd0MOENQ+M6I3xmCebFQk/giNQ9v5JJOlRw3Z5oHSTxg9YCkT?=
 =?us-ascii?Q?eYY10Ai1TatcM7OPBFWDPzfmvtHjAQaH4XRMod8m6yjSBTk4WQDEQFbwDxqR?=
 =?us-ascii?Q?1e1IMune/96sQG+aVSRZGLxDKM2l8ldgu01HuU5boFZHTElCeeOnBguL2Vdk?=
 =?us-ascii?Q?QXY2bULqU1wrBVB8yqI9aIk6B7PritlzLYaqdvRLuz7yPnKVZ4lzFHS1Hw8s?=
 =?us-ascii?Q?ChvV2teIO/cSoQKzIC1l4BoJLThnc+LcDXwhDjw6jZPCwh/WcDNIEkXEGJ7P?=
 =?us-ascii?Q?34H1h3LfDXuZlgNBpBX49ODS1ywT2hwhPDgGGgJaE0q0IOBBkwHkZEbB767H?=
 =?us-ascii?Q?8jL58eI3ps2JIW7sQnmY4Tu20yAnLhhoUHhTE3gk6iJf6F0rZKomF1eJn9EM?=
 =?us-ascii?Q?WQewuxg9DjeYcYKTlwQJcCajdurI5pxneFak01arBowSG1pOL4IT7gdmy8N0?=
 =?us-ascii?Q?gAkPz9KAUorGz66S9QcJP9IPYWH2kMADzss/C3n4mnE+5kWwcH2oZONYhy5O?=
 =?us-ascii?Q?LA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <35AF3B35C3411246BB6EF96202DF4DFC@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee0904c8-1311-41ae-5c0b-08dbc43940b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 17:50:38.0198
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lUUVFKyW7ecicbOwtBYzYz1R0+wEMskOTZSMIHzA65h11GjoW7dPL30+IuxD5YqjV2O8h4dZjpmlqjG3FpdrkE5axLHAR9zm63yJkAm42oc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR06MB6769
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_15,2023-10-02_01,2023-05-22_02
Subject: [oss-security] CVE-2023-4911: Local Privilege Escalation in the glibc's ld.so


Qualys Security Advisory

Looney Tunables: Local Privilege Escalation in the glibc's ld.so
(CVE-2023-4911)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Proof of concept
Exploitation
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The GNU C Library's dynamic loader "find[s] and load[s] the shared
objects (shared libraries) needed by a program, prepare[s] the program
to run, and then run[s] it" (man ld.so). The dynamic loader is extremely
security sensitive, because its code runs with elevated privileges when
a local user executes a set-user-ID program, a set-group-ID program, or
a program with capabilities. Historically, the processing of environment
variables such as LD_PRELOAD, LD_AUDIT, and LD_LIBRARY_PATH has been a
fertile source of vulnerabilities in the dynamic loader.

Recently, we discovered a vulnerability (a buffer overflow) in the
dynamic loader's processing of the GLIBC_TUNABLES environment variable
(https://www.gnu.org/software/libc/manual/html_node/Tunables.html). This
vulnerability was introduced in April 2021 (glibc 2.34) by commit 2ed18c
("Fix SXID_ERASE behavior in setuid programs (BZ #27471)").

We successfully exploited this vulnerability and obtained full root
privileges on the default installations of Fedora 37 and 38, Ubuntu
22.04 and 23.04, Debian 12 and 13; other distributions are probably also
vulnerable and exploitable (one notable exception is Alpine Linux, which
uses musl libc, not the glibc). We will not publish our exploit for now;
however, this buffer overflow is easily exploitable (by transforming it
into a data-only attack), and other researchers might publish working
exploits shortly after this coordinated disclosure.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

At the very beginning of its execution, ld.so calls __tunables_init() to
walk through the environment (at line 279), searching for GLIBC_TUNABLES
variables (at line 282); for each GLIBC_TUNABLES that it finds, it makes
a copy of this variable (at line 284), calls parse_tunables() to process
and sanitize this copy (at line 286), and finally replaces the original
GLIBC_TUNABLES with this sanitized copy (at line 288):

------------------------------------------------------------------------
269 void
270 __tunables_init (char **envp)
271 {
272   char *envname =3D NULL;
273   char *envval =3D NULL;
274   size_t len =3D 0;
275   char **prev_envp =3D envp;
...
279   while ((envp =3D get_next_env (envp, &envname, &len, &envval,
280                                &prev_envp)) !=3D NULL)
281     {
282       if (tunable_is_name ("GLIBC_TUNABLES", envname))
283         {
284           char *new_env =3D tunables_strdup (envname);
285           if (new_env !=3D NULL)
286             parse_tunables (new_env + len + 1, envval);
287           /* Put in the updated envval.  */
288           *prev_envp =3D new_env;
289           continue;
290         }
------------------------------------------------------------------------

The first argument of parse_tunables() (tunestr) points to the
soon-to-be-sanitized copy of GLIBC_TUNABLES, while the second argument
(valstring) points to the original GLIBC_TUNABLES environment variable
(in the stack). To sanitize the copy of GLIBC_TUNABLES (which should be
of the form "tunable1=3Daaa:tunable2=3Dbbb"), parse_tunables() removes all
dangerous tunables (the SXID_ERASE tunables) from tunestr, but keeps
SXID_IGNORE and NONE tunables (at lines 221-235):

------------------------------------------------------------------------
162 static void
163 parse_tunables (char *tunestr, char *valstring)
164 {
...
168   char *p =3D tunestr;
169   size_t off =3D 0;
170=20
171   while (true)
172     {
173       char *name =3D p;
174       size_t len =3D 0;
175=20
176       /* First, find where the name ends.  */
177       while (p[len] !=3D '=3D' && p[len] !=3D ':' && p[len] !=3D '\0')
178         len++;
179=20
180       /* If we reach the end of the string before getting a valid name-=
value
181          pair, bail out.  */
182       if (p[len] =3D=3D '\0')
183         {
184           if (__libc_enable_secure)
185             tunestr[off] =3D '\0';
186           return;
187         }
188=20
189       /* We did not find a valid name-value pair before encountering the
190          colon.  */
191       if (p[len]=3D=3D ':')
192         {
193           p +=3D len + 1;
194           continue;
195         }
196=20
197       p +=3D len + 1;
198=20
199       /* Take the value from the valstring since we need to NULL termin=
ate it.  */
200       char *value =3D &valstring[p - tunestr];
201       len =3D 0;
202=20
203       while (p[len] !=3D ':' && p[len] !=3D '\0')
204         len++;
205=20
206       /* Add the tunable if it exists.  */
207       for (size_t i =3D 0; i < sizeof (tunable_list) / sizeof (tunable_=
t); i++)
208         {
209           tunable_t *cur =3D &tunable_list[i];
210=20
211           if (tunable_is_name (cur->name, name))
212             {
...
219               if (__libc_enable_secure)
220                 {
221                   if (cur->security_level !=3D TUNABLE_SECLEVEL_SXID_ER=
ASE)
222                     {
223                       if (off > 0)
224                         tunestr[off++] =3D ':';
225=20
226                       const char *n =3D cur->name;
227=20
228                       while (*n !=3D '\0')
229                         tunestr[off++] =3D *n++;
230=20
231                       tunestr[off++] =3D '=3D';
232=20
233                       for (size_t j =3D 0; j < len; j++)
234                         tunestr[off++] =3D value[j];
235                     }
236=20
237                   if (cur->security_level !=3D TUNABLE_SECLEVEL_NONE)
238                     break;
239                 }
240=20
241               value[len] =3D '\0';
242               tunable_initialize (cur, value);
243               break;
244             }
245         }
246=20
247       if (p[len] !=3D '\0')
248         p +=3D len + 1;
249     }
250 }
------------------------------------------------------------------------

Unfortunately, if a GLIBC_TUNABLES environment variable is of the form
"tunable1=3Dtunable2=3DAAA" (where "tunable1" and "tunable2" are SXID_IGNORE
tunables, for example "glibc.malloc.mxfast"), then:

- during the first iteration of the "while (true)" in parse_tunables(),
  the entire "tunable1=3Dtunable2=3DAAA" is copied in-place to tunestr (at
  lines 221-235), thus filling up tunestr;

- at lines 247-248, p is not incremented (p[len] is '\0' because no ':'
  was found at lines 203-204) and therefore p still points to the value
  of "tunable1", i.e. "tunable2=3DAAA";

- during the second iteration of the "while (true)" in parse_tunables(),
  "tunable2=3DAAA" is appended (as if it were a second tunable) to tunestr
  (which is already full), thus overflowing tunestr.

A note on fuzzing: although we discovered this buffer overflow manually,
we later tried to fuzz the vulnerable function, parse_tunables(); both
AFL++ and libFuzzer re-discovered this overflow in less than a second,
when provided with a dictionary of tunables (which can be compiled by
running "ld.so --list-tunables").


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Proof of concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

$ env -i "GLIBC_TUNABLES=3Dglibc.malloc.mxfast=3Dglibc.malloc.mxfast=3DA" "=
Z=3D`printf '%08192x' 1`" /usr/bin/su --help
Segmentation fault (core dumped)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This vulnerability is a straightforward buffer overflow, but what should
we overwrite to achieve arbitrary code execution? The buffer we overflow
is allocated at line 284 by tunables_strdup(), a re-implementation of
strdup() that uses ld.so's __minimal_malloc() instead of the glibc's
malloc() (indeed, the glibc's malloc() has not been initialized yet).
This __minimal_malloc() implementation simply calls mmap() to obtain
more memory from the kernel.

The question, then, is: what writable pages can we overwrite in the mmap
region? To the best of our knowledge, we have only two options (because
this buffer overflow takes place at the very beginning of ld.so's
execution):

1/ The read-write ELF segment of ld.so itself (the first pages of this
read-write segment are actually ld.so's RELRO segment, but they have not
been mprotect()ed read-only yet):

------------------------------------------------------------------------
7f209f367000-7f209f369000 r--p 00000000 fd:00 10943                      /u=
sr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7f209f369000-7f209f393000 r-xp 00002000 fd:00 10943                      /u=
sr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7f209f393000-7f209f39e000 r--p 0002c000 fd:00 10943                      /u=
sr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7f209f39f000-7f209f3a3000 rw-p 00037000 fd:00 10943                      /u=
sr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
------------------------------------------------------------------------

However, on all the Linux distributions that we checked, the unmapped
hole immediately below ld.so's read-write segment is at most one page,
but ld.so's __minimal_malloc() always allocates at least two pages ("one
extra page to reduce number of mmap calls"). In other words, the buffer
we overflow cannot be allocated immediately below ld.so's read-write
segment, and therefore cannot overwrite this segment.

2/ Our only option, then, is to overwrite mmap()ed pages that were
allocated by tunables_strdup() itself: because __tunables_init() can
process multiple GLIBC_TUNABLES environment variables, and because the
Linux kernel's mmap() is a top-down allocator, we can mmap() a first
GLIBC_TUNABLES (without overflowing it), mmap() a second GLIBC_TUNABLES
(immediately below the first one) and overflow it, thus overwriting the
first GLIBC_TUNABLES. As a result, we can:

- either replace this first GLIBC_TUNABLES with a completely different
  environment variable, for example LD_PRELOAD or LD_LIBRARY_PATH -- but
  these dangerous variables are later removed from the environment by
  ld.so (in process_envvars()), and such a replacement would therefore
  be useless;

- or replace the first GLIBC_TUNABLES with a GLIBC_TUNABLES that
  contains dangerous (SXID_ERASE) tunables, which were previously
  removed by parse_tunables() -- although this seems promising at first,
  exploiting such a replacement would require a SUID-root program that
  setuid(0)s and execve()s another program with a preserved environment
  (to process the dangerous GLIBC_TUNABLES as root, but without
  __libc_enable_secure).

  Alas, we do not know of such a SUID-root program on Linux (on OpenBSD,
  /usr/bin/chpass setuid(0)s and execv()s /usr/sbin/pwd_mkdb, and was
  exploited in CVE-2019-19726); if you, dear reader, know of such a
  SUID-root program on Linux, please let us know!

At that point, the situation looked quite hopeless, but a comment in
ld.so's _dl_new_object() (which is called long after __tunables_init())
caught our attention (at line 105):

------------------------------------------------------------------------
 56 struct link_map *
 57 _dl_new_object (char *realname, const char *libname, int type,
 58                 struct link_map *loader, int mode, Lmid_t nsid)
 59 {
 ..
 84   struct link_map *new;
 85   struct libname_list *newname;
 ..
 92   new =3D (struct link_map *) calloc (sizeof (*new) + audit_space
 93                                     + sizeof (struct link_map *)
 94                                     + sizeof (*newname) + libname_len, =
1);
 95   if (new =3D=3D NULL)
 96     return NULL;
 97=20
 98   new->l_real =3D new;
 99   new->l_symbolic_searchlist.r_list =3D (struct link_map **) ((char *) =
(new + 1)
100                                                             + audit_spa=
ce);
101=20
102   new->l_libname =3D newname
103     =3D (struct libname_list *) (new->l_symbolic_searchlist.r_list + 1);
104   newname->name =3D (char *) memcpy (newname + 1, libname, libname_len);
105   /* newname->next =3D NULL;      We use calloc therefore not necessary=
.  */
------------------------------------------------------------------------

ld.so allocates the memory for this link_map structure with calloc(),
and therefore does not explicitly initialize various of its members to
zero; this is a reasonable optimization. As mentioned earlier, calloc()
here is not the glibc's calloc() but ld.so's __minimal_calloc(), which
calls __minimal_malloc() *without* explicitly initializing the memory it
returns to zero; this is also a reasonable optimization, because for all
intents and purposes __minimal_malloc() always returns a clean chunk of
mmap()ed memory, which is guaranteed to be initialized to zero by the
kernel.

Unfortunately, the buffer overflow in parse_tunables() allows us to
overwrite clean mmap()ed memory with non-zero bytes, thereby overwriting
pointers of the soon-to-be-allocated link_map structure with non-NULL
values. This allows us to completely break the logic of ld.so, which
assumes that these pointers are NULL.

We first tried to exploit this buffer overflow by overwriting the
link_map structure's l_next and l_prev pointers (a doubly linked list of
link_map structures), but we failed because of two assert()ion failures
in setup_vdso(), which immediately abort() ld.so (all the distributions
that we checked compile their glibc, and hence ld.so, with assert()ions
enabled):

------------------------------------------------------------------------
 96       assert (l->l_next =3D=3D NULL);
 97       assert (l->l_prev =3D=3D main_map);
------------------------------------------------------------------------

We then realized that many more pointers in the link_map structure are
not explicitly initialized to NULL; in particular, the pointers to
Elf64_Dyn structures in the l_info[] array of pointers. Among these,
l_info[DT_RPATH], the "Library search path", immediately stood out: if
we overwrite this pointer and control where and what it points to, then
we can force ld.so to trust a directory that we own, and therefore to
load our own libc.so.6 or LD_PRELOAD library from this directory, and
execute arbitrary code (as root, if we run ld.so through a SUID-root
program).

------------------------------------------------------------------------

Where should the overwritten l_info[DT_RPATH] point to? The easy answer
to this question is: the stack; more precisely, our environment strings
in the stack. On Linux, the stack is randomized in a 16GB region, and
our environment strings can occupy up to 6MB (_STK_LIM / 4 * 3, in the
kernel's bprm_stack_limits()): after 16GB / 6MB =3D 2730 tries we have a
good chance of guessing the address of our environment strings (in our
exploit, we always overwrite l_info[DT_RPATH] with 0x7ffdfffff010, the
center of the randomized stack region). In our tests, this brute force
takes ~30s on Debian, and ~5m on Ubuntu and Fedora (because of their
automatic crash handlers, Apport and ABRT; we have not tried to work
around this slowdown).

------------------------------------------------------------------------

What should the overwritten l_info[DT_RPATH] point to? In other words,
what should we store in our 6MB of environment strings? l_info[DT_RPATH]
is a pointer to a small (16B) Elf64_Dyn structure:

- an int64_t d_tag, which should be DT_RPATH (15), but this value is
  never actually checked anywhere, so we can store anything there;

- a uint64_t d_val, which is an offset into the ELF string table of the
  SUID-root program that is being executed (this offset references a
  string that is the "Library search path" itself).

In our exploit, we simply fill our 6MB of environment strings with
0xfffffffffffffff8 (-8), because at an offset of -8B below the string
table of most SUID-root programs, the string "\x08" appears: this forces
ld.so to trust a relative directory named "\x08" (in our current working
directory), and therefore allows us to load and execute our own
libc.so.6 or LD_PRELOAD library from this directory, as root.

------------------------------------------------------------------------

One major problem remains unsolved, however: to avoid the kind of
assert()ion failures mentioned earlier (when we tried to overwrite the
l_next and l_prev pointers of the link_map structure), we must overwrite
the soon-to-be-allocated link_map structure with NULL pointers only
(except l_info[DT_RPATH], of course); but intuitively, the ability to
overflow a buffer with a large number of null bytes while parsing a
null-terminated C string sounds quite unusual.

Luckily for us attackers, the bytes that are written out-of-bounds by
parse_tunables() are also read out-of-bounds (at line 234), but not from
the mmap()ed copy of our GLIBC_TUNABLES environment variable (tunestr),
but from our original GLIBC_TUNABLES environment variable in the stack
(valstring, at line 200). Consequently, if we store a large number of
empty strings (null bytes) immediately after our GLIBC_TUNABLES in the
stack, followed by the string "\x10\xf0\xff\xff\xfd\x7f", followed by
more empty strings (null bytes), then we safely overwrite the link_map
structure with null bytes (NULL pointers), except for l_info[DT_RPATH]
(which we overwrite with 0x7ffdfffff010, which points to our own
Elf64_Dyn structures in the stack with a probability of 1/2730).

Final note: the exploitation method described in this advisory works
against almost all of the SUID-root programs that are installed by
default on Linux; a few exceptions are:

- sudo on all distributions, because it specifies its own ELF RUNPATH
  (/usr/libexec/sudo), which overrides our l_info[DT_RPATH];

- chage and passwd on Fedora, because they are protected by special
  SELinux rules;

- snap-confine on Ubuntu, because it is protected by special AppArmor
  rules.

Last-minute note: although glibc 2.34 is vulnerable to this buffer
overflow, its tunables_strdup() uses __sbrk(), not __minimal_malloc()
(which was introduced in glibc 2.35 by commit b05fae, "elf: Use the
minimal malloc on tunables_strdup"); we have not yet investigated
whether glibc 2.34 is exploitable or not.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank Red Hat Product Security, Siddhesh Poyarekar, the members of
linux-distros@openwall, Salvatore Bonaccorso, and Solar Designer.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2023-09-04: Advisory and exploit sent to secalert@redhat.

2023-09-19: Advisory and patch sent to linux-distros@openwall.

2023-10-03: Coordinated Release Date (17:00 UTC).
