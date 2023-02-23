Received: (qmail 31958 invoked by uid 550); 23 Feb 2023 14:59:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31932 invoked from network); 23 Feb 2023 14:59:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=DI6tzqIZWiL5+3JTj77nCuMQS9NBywhEDlfF+O/oBvk=;
 b=c/x0Yo1zGm9Coma+L9t2A2ZmkLsPqnQxnscjwlCk3NoWeEc3+DZfB8UUfD2fUZ1oJwza
 DxoFMQ7j2qeeYRVs7edbVWp7CT1kSm7+KUw8rGXB+rL+jYf4Wrki1pqsDNshxy25l9Uc
 axFh5CJIW1pHI9eetwoAybSLPsYUDGrpHn8mhwevU5/aC5SsGpUl3N6NUjTnjPCJZYGL
 mgfzWHi7UG7wqyrkEESYiz/hfHnaa1SQWVt5caBJUw3eKiKhAIXJcHMqzKv//UTqgz8A
 pybyBYB9sQKUnEOh0KWHcGuubA/2jNlFym3G8f+W37cn56+Znf4vh/WwY+wEGWDHM6j2 pA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvnOEoOVgmhfaV5khw37phctrtLKJVw8Uj5pw7Tmk9BiZVOcuJiRHGKnbZDyoJlEtelqGKDoji/vXgnx7Qh1ye2G3Tl99gJ2/93A0VrsSy68AewVpPeLalPFQ6cY//c0EBSslMw0+4C8bChy4OItZzFNt3lh+ldz/8bk7wB8qOSZ2S/GKwH7AqrDdA7HD05RDajhCEnLdJlNj1UpuGtVyQQHhh/MsrgqLFYCz8vIeCS2canOYfKD+tjz6v8FK+Wd/fbDArab2STUeRXlhQ+7U6geR3rPhKj3nUZ5HQ7/PvGSw4A9WrM6rAgSUrwhspGByj5xBMyz0gGMkEWp8rzNdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DI6tzqIZWiL5+3JTj77nCuMQS9NBywhEDlfF+O/oBvk=;
 b=FZQa1ta0uXvINY/4fYde54OZeXBjdSUEYyY4TQMx6qy98aCNOMcr6dLfKI/26qlqSXdNt9wCIoNVApMG/LL39PNMxQ2/sVx2x0QRL0oJWx8DAJ57ZJRgX+/uv+4y1Zo3G4ru8THeEg7i7WdGoYlbbIa4NeCj3unA17hzpEIIMKVRECxMu/0BFqb3AXW1tepnI/kawQRVtWXkM86eP1DBDrMgh7GI3LSagYmwiJsqRYpFAE/Fsz0y6lM8P0RGQ1BhWIip2Vd+S4BGhhzoI0OfdnuXooHoKht529r+EbVEqFCl6E2+1vwTzqzhUM3HDJb5aVlbhWCCdw1P1MhMWGZpzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DI6tzqIZWiL5+3JTj77nCuMQS9NBywhEDlfF+O/oBvk=;
 b=kiNacLM82AKXp4uxfd1rEDaY4ecudqJ6d+5BZbBZyW/+kIGH5jT+f1JpAM0khbKksP7ntbf4FXaFlwKXOn2qrySi2tHzaZ283rufkAkqlqaUXKGbKnjFTVPQGWfsjVlI3Gnypczzon1QLd8jJwqErg72xpVu3hvkEbMs30csa37xUnF/2QY7xvAXZlQlAGVRkxdOSVvpLCSX4ZcDFpmIFYJm9YAgmhNAhLhQ1UtYok2h0AF4T/cjdzY+1jKdSW4pRWQt0LdNPFpD6A37Dj6HvCgsxoYHd2AG5enSfWlUulivxyetg3JREZpJK948nY8/A4goNzfYvs+JJY1YEMFdRA==
From: Qualys Security Advisory <qsa@qualys.com>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)
Thread-Index: AQHZP6MCIrfQwQnS6U23aTWiygrAQK7ahPwAgACdQICAAY1VAA==
Date: Thu, 23 Feb 2023 14:59:32 +0000
Message-ID: <20230223145926.GA7509@localhost.localdomain>
References: <20230202130212.GA15689@localhost.localdomain>
 <20230213120214.GB19824@localhost.localdomain>
 <20230222055430.GA32113@localhost.localdomain> <Y/YyAyP4+WYltYm6@itl-email>
In-Reply-To: <Y/YyAyP4+WYltYm6@itl-email>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|MN2PR06MB5823:EE_
x-ms-office365-filtering-correlation-id: 51055b56-5678-429f-59e9-08db15ae9287
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FXU4UXLVztKlN4E+Eawl0MYkrygxVuVAYkIUWHXR1VYKh5w2jiWjRAJ5JpXNhYhM1a/fLXnBC9OJElHZg0OZg8jMTu5b3t/dLFPgPOu3UOEajP6W+hKCPzIPStgUj9Y65kexnkBUWguegiZaP0tkBy/GyVuUyZ6H/1GmamJZYCpa+7E4RUK33feoqCRMZCrTakxziykI9iXeDQ8UQEUlUBuaCkU4riChpmYYCbgWFM1GZd1Pt7IpI/qHp7QR9cKvj1WycQ1sC+oBPeAOTrmWCP2PVeODG4CpZVWLzFu8JHojOxq7wksmHOm4DbzfwRk2NDnj0jAcCy06COd0PJiHwgg90sjwqgLdKzQumZZwbea1q8BZf6BCcz4Rlj5Ko6+FaC7+lzNHl5dix3x9dizEFDwetXEn0pu5Ur4WKcHngFrqzivhkoIu5NYWXkZsNchPm3tKZlVqTGkK/lcneneLpQ3u2xOQz03fUTeKjHkgTnBjJNM+weTrV+fY7QgYv35hDVun9vorTYuvnZ84Gc07IB1wT6JoTFpmUbbQx8fpBQKtrfdZfPTmCpodWZOedB2gukykHMlp3DVwLWjJiq1Pmcl+VVIBY8vJJmeVXa2ICnSzDp/nTph1KaHVNBE0K4GfnwACbwPpTZW8Z/PjXVlLxbVr6tASqsmi9rCpygkuwkzqKmzPYYfHpjkNCkFq1LEiZVffGktViTkWhBDFYnEBIA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199018)(91956017)(2906002)(38100700002)(26005)(186003)(1076003)(6512007)(6506007)(9686003)(478600001)(86362001)(71200400001)(38070700005)(55236004)(316002)(6486002)(33656002)(122000001)(83380400001)(4744005)(8936002)(5660300002)(15650500001)(4326008)(6916009)(66946007)(66556008)(8676002)(64756008)(66476007)(66446008)(76116006)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?264jrZBudJ3pJxhmUP4VUj+AAPLCHm0uMrNyjFvdECnowsRK/gkFAksPTgS6?=
 =?us-ascii?Q?8OoUAyS13HxD2m7RKnwDIh7eL4QdqYY6t/LP+7Rdx59pO6j7YEnlxZRgdYKK?=
 =?us-ascii?Q?+Ju5NETQBLYAYx9HhJvtqF7M5TnUMfz42XERzT/w4EC9V0I3rVr9iKwKtUwT?=
 =?us-ascii?Q?BT7Vc2X/6g1RPdLB56MNj/Nt/0pdAIwiQ/WXA0D/AutJHLyKwX4fp2wC/JKW?=
 =?us-ascii?Q?YoHVqbBWO/5ejEs1qBevuuh85BbgKC4DiBEVMfFNaCefQzv1gQCdpG1XG9Eo?=
 =?us-ascii?Q?o4EN9M4sG2b2YuPC9DG6H05HYc343x7kiFhJ6uxmP22Pc+sp5zxrJ0kM6Ij9?=
 =?us-ascii?Q?ZSUijBSbJhTnYjQvZHW/LYbzw4Z9r/Qi4hZSH7AL1/AGIZy+QZTMAAqrqNG7?=
 =?us-ascii?Q?CVPl0yfEY+wihIAWfiJEOHbAHT8QxtysuOUcl4hZhStWK78HIFTcmAV50Elj?=
 =?us-ascii?Q?0H461WFhswKjoPAuECm7XoS7+ItoaNUj7ZihVTgcuCMT/Gbf9MdWHw4mFy4b?=
 =?us-ascii?Q?IcOiSMQ5VVLAquoUOWer+2RowTDaamtK/eql12zgrJ9p4Lda/hc/9TWhkQw9?=
 =?us-ascii?Q?I+ta9b0rSqJJHCuI22fPPnAfQWFPlcC/C2TqXkDmYhvT+gdO2KZ5hvVh7cYE?=
 =?us-ascii?Q?UieK2SRkdLFsn3dur35kTWcirAJHtQMg3z9p4Udp6QphY746h6ccz3j261Uz?=
 =?us-ascii?Q?/hEkAOpM27w+8nIwnAiOrykuZTlV5SYCf34GUTLCmg/zqXswU955y7e/D2vy?=
 =?us-ascii?Q?WlA0KWbNPoqdmQvmS38EWy6zDxrq66WcnzcXakE3mppwmVGhhm9LwxB6VfUF?=
 =?us-ascii?Q?d4G5juQMXW3ylDIdXJQg5QmN/5cIrh+BeCMALqYaNa8tB46z94i9ZOg1P+LG?=
 =?us-ascii?Q?US0RN2QoJK+gT94VE9OUaLSgA+JpMEBRQQtyU8rNLphNV1CeLjZy/uhRxSJe?=
 =?us-ascii?Q?/8mKsV1oZ0JYlz1OYJVW4cO0avN52MiqOmkQCs4q+AZKdeMMJn6JLOzxnanz?=
 =?us-ascii?Q?M0cPxCNtGzY0Jb0Qdvfstm8/j8R0IhTNikgrhCNx/9cUi5PnZEns4aja1ryK?=
 =?us-ascii?Q?/jGbwJgXr4B+Kdp84W4+Isg8kMgICiYSfyzWViGPtCNhQXGT/BpLP5ObKuv1?=
 =?us-ascii?Q?RXUIkPHZWH45maEOUnxbNEblEUOCbqja2HnvsN+JvMBtQU+jXVHOVQmIr4lw?=
 =?us-ascii?Q?zIwPC1nknJMUh2N2JMnCYuG4SK2Z6T5LYcaR37GVHerMLzCjI6zsqNzbMf5n?=
 =?us-ascii?Q?pFrNSGWjDIKS4agop/9rcUTdDwB88TUNA7gERtIKEny7MMQOFOVTDOMkevii?=
 =?us-ascii?Q?lj0vFNdWJ3POi2As8ATKKKQxY8krlmmLuqRBLemeC3AKd1ZKuSjqJc6/4FAu?=
 =?us-ascii?Q?RvZ4tYPI3zUB0uzXk9UhGXzZTd82pNMHdg5c2WouwPZo48ipGDDquCJhwwML?=
 =?us-ascii?Q?FbDJtMFNiH832EZ6Jg3m6M4CZWZjlZZKuqfmOHd0GVIiaRZ6LxAFX5S6J5ki?=
 =?us-ascii?Q?jmIisDj3rwzuRi5oQCUZLclepByIuZeAdb2ggXdou0TTZG6nM4YmHcbyNHCg?=
 =?us-ascii?Q?yDNwoErOEFXAcUqo1OcY1VWmM6cz0JS/KB7Q2SAr0DUkZAyT1Rwe8b6vqkM6?=
 =?us-ascii?Q?LYPzZC12aHpuR/1dI6+Q/gY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CEA40E891816E241B39A2F9093716147@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51055b56-5678-429f-59e9-08db15ae9287
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 14:59:32.9581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S7/Ttio4h9xE9gVU6MJBdgf1q8aB3dYL+VkzuYJ7glqYfmWsnx0nyO27dMrV4nm/2TerS6pFXfz8+PUjnpc5AuT0F+zfaKVkws48irt3qgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB5823
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-23_08,2023-02-23_01,2023-02-09_01
Subject: Re: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)

Hi Demi,

On Wed, Feb 22, 2023 at 10:17:19AM -0500, Demi Marie Obenour wrote:
> Is it possible to use this information leak to bypass ASLR without
> crashing the process?

Unfortunately, no: sshd calls _exit() immediately after this information
leak, and fork()s + re-execv()s itself (and therefore re-randomizes its
address space) the next time we connect to it; i.e., a memory address
leaked in one connection is useless in another connection.

> Also, is this flaw expected to be exploitable for code execution on
> GNU/Linux?

We are focusing on OpenBSD for now, because its malloc seems more
compatible with this particular double-free bug than glibc's malloc; we
will look into glibc/Linux at some point, and will keep you posted.

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
