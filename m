X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2966" "Monday" "26" "June" "2017" "22:31:14" "+0000" "Kyle R" "Kyle.R@CriticalInformatics.com" "<MWHPR04MB1086792B34233BB68DEE393184DF0@MWHPR04MB1086.namprd04.prod.outlook.com>" "76" "Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)" "^Date:" nil nil "6" "2017062622:31:14" "[oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)" (number mark "        Kyle.R@Criti Jun 26   76/2966  " thread-indent "\"Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)\"\n") "<6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" "<20170625013537.GA21637@grsecurity.net>" "<CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>" "<20170626205012.GA17038@openwall.com>" "<6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14197 invoked by uid 550); 27 Jun 2017 12:42:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7415 invoked from network); 26 Jun 2017 22:31:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=MKHamiltonAssociates.onmicrosoft.com; s=selector1-CriticalInformatics-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=7Ps6RYVWHj/47FyS4zxjBi9DKjyirLDyQTT2gfNZn+M=;
 b=UYYEls+cR2kENUWs9UVTwb+WTCiXL0u1v/ouk+yw+SSGZFH5c0Hfg9EQIa7zEAmtPsosLKY6bcziIisbrW68r8nPykensMff54WJyqwV1LLcZAPMZYvO8NRcJ0ghQ8vFrb2OiRL73hbae76NlTKEB3lPZb5WMWy74kPONzyDDVw=
Thread-Topic: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK
 vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit
 method)
Thread-Index: AQHS7r5OX7v8F84lOkG+84n86/DgxaI3qFYAgAARx7U=
Message-ID: <MWHPR04MB1086792B34233BB68DEE393184DF0@MWHPR04MB1086.namprd04.prod.outlook.com>
References: <20170624005003.GB27479@grsecurity.net>
 <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <20170624151504.GA25902@grsecurity.net>
 <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
 <20170625013537.GA21637@grsecurity.net>
 <CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>
 <20170626205012.GA17038@openwall.com>,<6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>
In-Reply-To: <6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=CriticalInformatics.com;
x-originating-ip: [207.14.32.187]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;MWHPR04MB1088;7:GkRtI3Q54sWV9Rkt5hAdhOet1ojKHgZ+gaXlJVqyO77OdQPCN38hpDLjtPK/ulc3yWEJb/6GsTQZekcrwLnW+IsOn3SX5i8DJcXqetnpsZqi4oQZqramU8RKQuGP52gw7HJOo5MnPM3sfSzWsMN6NxrKyqcLpKlj1+PmZrjrqsoEEwPAwqnmeA7Tru9Rd3qU+9VY3G10O3z1l1JfTtJA3me4BMFwuRSrn0/IHbTBJwkHrdTlHiBoY3ykKR5hJvq1Z7qpEmG61c6zHdWBwN/Wak0vjIDrYGrFOcDYyafs1CLMOjmzCi6qNWjnYrna60j+rfAp8Qpq64sCSra7ETdv2w8Uv8/7NN1w9InO7VpY6qOAPdfOHSsa5YxZw909QFPHt+EpvrDdqzkWpKvjcUj7+rz0LLXFK4JU0ERBSMQE/1ahNFp1mRx7+spU0pY05ZaBUmJbzymJ7dzxSnyVFGFcODPburLBgQl/uRLfyf8ekf8crIURIt1q2ACEDmlLejfl/KDlTcGyN4WkIHB1IXymeee+RhDqCiN9zasMSQlowtk9igTVGXM16YI4d3PI6JTzFfblwoy34eNqp6zlhoKPYlrwx3p721aCJh1gFmaLMwPRdWs4MG/AYok8Ba0lFu8x/tsqyaSDTPL2jmwUDF6Gx/K34oj9Lh5UOqIPg+8x322GtP3qaMEbwFonFE+llJooqq4UVO2vMEeLUTNNWlMSvRpo5Dn3JkxZC2FK6/1p2AQ2aIopBUxhAUiI4Eak6VtWzYqz+yXv61letmoRgR3qMa9lJCMzMk83QSyOrAvzVls=
x-ms-office365-filtering-correlation-id: e42c2006-4b00-47e9-ddde-08d4bce30e2f
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(201703131423075)(300000504095)(300135200095)(300000505095)(300135600095);SRVR:MWHPR04MB1088;
x-ms-traffictypediagnostic: MWHPR04MB1088:
x-microsoft-antispam-prvs: <MWHPR04MB1088CC78C4B73DAD5C7032C984DF0@MWHPR04MB1088.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(125551606395959)(158342451672863)(26388249023172)(236129657087228)(192374486261705)(48057245064654)(247924648384137);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(6041248)(20161123562025)(20161123564025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(2016111802025)(20161123555025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:MWHPR04MB1088;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:MWHPR04MB1088;
x-forefront-prvs: 0350D7A55D
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(39850400002)(39400400002)(39410400002)(39450400003)(24454002)(377454003)(53754006)(5660300001)(2906002)(81166006)(3280700002)(3660700001)(2351001)(7696004)(8676002)(74316002)(3846002)(6116002)(102836003)(86362001)(33656002)(53936002)(8936002)(9686003)(54896002)(77096006)(7736002)(6916009)(55016002)(38730400002)(2900100001)(2950100002)(6246003)(110136004)(6506006)(229853002)(53546010)(66066001)(6436002)(5640700003)(2501003)(25786009)(72206003)(189998001)(15650500001)(76176999)(50986999)(14454004)(99286003)(122556002)(54356999)(478600001)(85282002);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR04MB1088;H:MWHPR04MB1086.namprd04.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_MWHPR04MB1086792B34233BB68DEE393184DF0MWHPR04MB1086namp_"
MIME-Version: 1.0
X-OriginatorOrg: CriticalInformatics.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2017 22:31:14.4406
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae101de8-a5dc-4a52-a8be-3a9dbc6674b4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR04MB1088
Date: Mon, 26 Jun 2017 22:31:14 +0000
From: Kyle R <Kyle.R@CriticalInformatics.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK
 vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit
 method)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_MWHPR04MB1086792B34233BB68DEE393184DF0MWHPR04MB1086namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

+1 for Solar always having a level-head when moderating this list.

________________________________
From: Kurt Seifried <kseifrie@redhat.com>
Sent: Monday, June 26, 2017 2:26:46 PM
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STAC=
K vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / root=
kit method)

To be clear solar has always been a sane and polite person, but I don't kno=
w what the list policy is, in part because I don't think this has really co=
me up before(that I can remember).


-Kurt





> On Jun 26, 2017, at 14:50, Solar Designer <solar@openwall.com> wrote:
>
> Hi all,
>
> Yes, I too would like the discussions in here to stay civilized.
>
> Brad wrote to Linus:
>
>> On Sat, Jun 24, 2017 at 9:35 PM, Brad Spengler <spender@grsecurity.net> =
wrote:
>> With no technical content coming from your end, there's no need to discu=
ss
>> anything further -- don't waste your time because I won't reply.
>
> and I hope that Linus won't reply (as far as I can see, he did not so
> far) and this does in fact end that thread.
>
>> On Mon, Jun 26, 2017 at 03:16:06PM -0400, Mansour Moufid wrote:
>> Is there another mailing list for discussions of Linux security? Or foru=
m?
>
> At Openwall, we also host the kernel-hardening mailing list, but we
> currently moderate it similarly - that is, we're not preventing
> occasional/infrequent threads like this right away, letting a sensible
> number of messages to pass through, even if with insults and such.
> Usually those threads end on their own.  In fact, I only recall one very
> recent thread in there where I intervened and technically shut it down.
> If the pro-grsecurity and/or anti-grsecurity folks try much harder,
> we'll probably have to start moderating the lists much stricter.
>
> There are probably other suitable mailing lists and forums as well.
> Maybe someone else would share some.
>
>> I have been thinking of sharing a few patches for the last couple months.
>> I don't think this is the right place after the kind of insults I saw th=
is week.
>
> This sounds weird to me: you've been sitting on those patches for "the
> last couple months" and now a thread "this week" finally made you decide
> not to post them in here.  Anyhow, if those patches would be on-topic in
> here or on kernel-hardening, please feel free to reconsider.
>
> Off-list, someone else also explained to me that the recent dirt in here
> discouraged them from posting certain reasonable content.  So this is
> probably happening, and that's a pity.  I ask that anyone who thinks
> they have higher quality content than what we see in this thread does
> post that.  Let this be your response.
>
> Alexander

--_000_MWHPR04MB1086792B34233BB68DEE393184DF0MWHPR04MB1086namp_--
