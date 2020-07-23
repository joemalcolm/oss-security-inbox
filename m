X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17134" "Thursday" "23" "July" "2020" "17:42:33" "+0800" "Zhang Xiao" "xiao.zhang@windriver.com" nil "376" nil "^Cc:" nil nil "7" nil nil (number mark "        xiao.zhang@w Jul 23  376/17134 " thread-indent "\"Re: [oss-security] Contributing Back\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5756 invoked by uid 550); 23 Jul 2020 10:08:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24068 invoked from network); 23 Jul 2020 09:42:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lwm6/8M/0fAp8GdVa6fxSdf7McGdJW7hoBqStm6kL1Me6UznzeIBeTNFQfUdfLm9pgX2Okf8cweR2zunSZ+ejBicDtDxBC6acQZQn1c1zZGkTbYY4okUUUHjbfgCSuFK0PWcoMmQjl6VyZ4Jqd//zn1SzpB3aDXdk3XBcxsfkaZX7138fcyxItbDWLMYw6tr8Jb/TELdFdszKUVrRPmnB+ECmEeZK0+QDYKyTOZJI5ADat3rG5LPp0r1Dh+PN/T/nzLK99BkbHomBC61RmFETEM1zKKGPgYZ/XJ7XXr1g0ow1GD42NDiMsU+JmytCcUyn2lSYYwDurO/VzGJpciHPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTXwFn8zK0L5AVfZ1ZXdcwVeSTXY65LMYmGgnmF5ONk=;
 b=VvcGq5FoB/IPBKarH119fMjoxBYWnSZ4RqQO3v8c4l69xzTd2/LGEa2lWAUI6zULAhz+zrWr3k59XcqV/48o4i66kT5tg/r9ozaKLeJjc+2Uf/NKFydy/EUBnYobz2MGaKWACOPxve1HD7JBRPsT12LfKHS9yhFWnGUIPexRVVui5gWVWbUc0zuV+tET2YIwCn8khJoIt4tkTc3kDvyMe2epSRZv2iZ8equR1Ka8uqNkcxHgBg2MtdyMnDummD0K9QMuneTKsLT4mowDtmSc8rHXc5RSXpW42JLSvd67U3r41cnOmaUvgrt+UQ2f3sSkC0lJCkL0LagaDNON0NbLag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTXwFn8zK0L5AVfZ1ZXdcwVeSTXY65LMYmGgnmF5ONk=;
 b=J50PER7asrRTdG8pJ8GZEpOm4CmYSKCpo6iF6/VEEFeieKY2rwAFe5zKCk/ffYNCoW7GPj/KyVuMszrvA7tZD5RRxoYNv0MBVDMnLJEKS9C48ZqZoB2N//uESpnoqI1M2vQQLX9+zo7Oq7dba1jIKanqW5OG6DrqZicLWqUl86g=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
 <20200711175842.GA8907@openwall.com>
 <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>
 <20200720184054.GA11135@openwall.com>
 <CAC5HUDxonM84K=q2+gsVhOuYBuM_dESB5VZqb5kDAQ2zYy=U_g@mail.gmail.com>
Message-ID: <31b93b89-771c-3c78-c2e1-8201732e227e@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
In-Reply-To: <CAC5HUDxonM84K=q2+gsVhOuYBuM_dESB5VZqb5kDAQ2zYy=U_g@mail.gmail.com>
Content-Type: multipart/mixed;
 boundary="------------697ACDD3DAA0962570E4BAF5"
Content-Language: en-US
X-ClientProxiedBy: HKAPR04CA0008.apcprd04.prod.outlook.com
 (2603:1096:203:d0::18) To BY5PR11MB4353.namprd11.prod.outlook.com
 (2603:10b6:a03:1b9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 90de5c44-9b4a-467f-7592-08d82eecbf13
X-MS-TrafficTypeDiagnostic: BYAPR11MB3447:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB34470E98BBF988DBF773F02E90760@BYAPR11MB3447.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	C29DFM+TQo2z6VD/XBUJyX5SX9weEVqjLo7emdsiou4e8jBKy5/5q+zUEOzqn5HMeB7JZUYjYCWhOP+FS5vuvUT39rCm2CKSGfM/7/BV94/uaRAJijUC7ccTJtgrentlg4ynDDpJRFzhdDxQSA88iJF9/DtUHCGC6X5ioBr6DBMTqsK9iiTUOH71Cifl7paVJ13zoiET7jxo/oeT2aa/HTp6g0QRbOpE2ajHdXjaNnwNzBg0lHfMrLE0b29LT6cQfIKVFincaNBaGf/HasyVoKvsxBrHdbqoIx0TCWQlQigAswKDg+FRTrujKCqx7Q8hEkmWY2klidjgMDIVp5iiv5LcsVCZA2pJlT9nTR4IutjoZZmAQA2S1TQ0JQ+/hoxYJo2Xra0sddqArhcPR1hQtC1wpKInn5be1ijvi6P4Mgx/yVIyQ2qsNNJHqOzhi246h/25aXZDGuRVsFLKu6JC3TvD2fDBgJ27KRtXomdvu9A2n4oUNsm1kgSnT2GHAewHwMVV1B6uji8DOl1D7c4CZg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4353.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39840400004)(136003)(396003)(346002)(376002)(366004)(31686004)(15650500001)(2906002)(52116002)(83080400001)(26005)(36756003)(53546011)(235185007)(5660300002)(107886003)(33964004)(21480400003)(6666004)(966005)(86362001)(6486002)(31696002)(6706004)(186003)(8676002)(478600001)(83380400001)(316002)(16576012)(8936002)(956004)(2616005)(66946007)(66556008)(66476007)(4326008)(66616009)(16526019)(166002)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	Ttg5ipL9IrySHEhpknNbBnD9LkhesrvazSYxiXeIFwjo+0mXiZio+0d84k5SxX3aV9ucTBN4egbhDR0khUT4CBWMNZl0nuCa77rvLLFi49rAqCq83A+KcxByUH/MPh32w20hGQcOjNXoQpZlOP5d26rRubavLqze9SwCnTw7QnIkKH5Ml6oWRxu19TZwBIFXu85hEXHheuWURZK6DKXLCSWCN8fq1mR8WFalu6j8lcYTFW/5JUloKO5rxyDh5vNd3yb/Se1sybLYLvTqNR9rsL5r33g9/MzM1W5aKl3OLeYVWS6b0ZU0b7l0QymdoOkvWqKektop1S/71U6OcUGNceLF/SKr7F7aEhAxcFO8am1+Eg5mxi4T+CImEiKVMe8ajYhwyB3eG62ka5lFDMVQJ/QHgm20cnd4Bm2sXNkje+Z2gytWoY/qquB77MpyjNy4OBGmUq6Wjx7MCPWPlbbpMNbyRaHWHOsQUfhoah/fhcI=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90de5c44-9b4a-467f-7592-08d82eecbf13
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4353.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2020 09:42:42.8886
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1lYp/yZV8urkzOax0IjRe4GaOxh+5oMc4w5bVv1Ibosk/8q3b1b5wI+utgcWQBzzj+/iEKzJmJpEKMNrDl9BanSmtpeWhkjgUIP3bZMCDsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3447
Cc: xiao.zhang@windriver.com
Date: Thu, 23 Jul 2020 17:42:33 +0800
From: Zhang Xiao <xiao.zhang@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: Mohammad Tausif Siddiqui <msiddiqu@redhat.com>,
 oss-security@lists.openwall.com

--------------697ACDD3DAA0962570E4BAF5
Content-Type: multipart/alternative;
 boundary="------------D0977AB6AC781F9D5CBB4F90"

--------------D0977AB6AC781F9D5CBB4F90
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


=E5=9C=A8 2020/7/23 =E4=B8=8B=E5=8D=884:21, Mohammad Tausif Siddiqui =E5=86=
=99=E9=81=93:
>
>
> On Tue, Jul 21, 2020 at 12:12 AM Solar Designer <solar@openwall.com
> <mailto:solar@openwall.com>> wrote:
>
>     On Mon, Jul 13, 2020 at 03:37:03PM +0800, Zhang Xiao wrote:
>     > ??? 2020/7/12 ??????1:58, Solar Designer ??????:
>     > > On Thu, Jul 02, 2020 at 05:33:20PM +0800, Zhang Xiao wrote:
>     > >> And, I have another point want to discuss. As we know,
>     sometimes, the CVE and NVD website don't upgrade their web page
>     timely. For example:
>     > >>
>     > >> the security maillist had an encrypted mail called "curl:
>     overwrite local file with -J" in 20200617. It was a
>     "pre-notification about a security advisory about to ship next
>     week in sync with our next curl release", for CVE-2020-8177. On
>     curl's git tree, that very bug did been fixed and released in
>     20200621:
>     > >> https://github.com/curl/curl/commit/8236aba5854
>     > >>
>     > >> But, till now, both cve.mitre.org <http://cve.mitre.org> and
>     nvd.nist.gov <http://nvd.nist.gov> still mark this CVE as "RESERVED":
>     > >> https://nvd.nist.gov/vuln/detail/CVE-2020-8177
>     > >> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-8177
>     <https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-8177>
>     > >>
>     > >> So I wonder if that is also an contribution to remind them,
>     if so, any advises to make it? And If it ca be defined as an
>     contribution, we can take it. :-)
>     > > We've received some responses in this thread regarding the
>     specific
>     > > example above, but I'd like more general responses please.=C2=A0 =
Is
>     there a
>     > > general task Wind River can reasonably help with for getting
>     CVE details
>     > > published for issues that pass the distros and/or oss-security
>     lists,
>     > > and how exactly could they help with that?
>     >
>     > Actually, we are glad to make it for some customers are also pay
>     > attention on these official web pages. We suppose it will be easy to
>     > make it through the "notify a vulnerability publication
>     > <https://cveform.mitre.org/>". But after I submitted the request
>     I just
>     > get a reply as "This CVE ID has been reserved by the CNA
>     Hackerone and
>     > we are currently waiting on them to submit the details." Seems
>     only "the
>     > CNA Hackerone" can make it. I have no idea on how to notify the
>     "the CNA
>     > Hackerone " to push it. :-(=D0=BF=E2=95=A0=D0=91=E2=88=99=E2=96=91 =
Anyway, if possible we are glad
>     to make it.
>
>     Once again, I think CVE-2020-8177 is more of an exception than the
>     rule.
>     I would be more interested in comments by "CVE experts" on whether the
>     task Xiao proposes and volunteers for is in general worthwhile or not,
>     and why.=C2=A0 Would similar "notify a vulnerability publication" rem=
inders
>     be desirable for issues that got the CVE IDs from one of the CNAs
>     on the
>     distros list?
>
>
> Xiao, Alexander,
>
> I think the ball is on the CNA: Hackerone side to get it published to
> MITRE, so
> that they can show it up on their page.
>
> CNAs are provided with weekly reports by the root CNA: MITRE, which lists
> Reserved But Public "RBP" CVEs owned by that CNA, irrespective of
> whether the
> CVE was assigned on distros list or elsewhere. That closes the
> reminder loop.
>
> There's no pull request for CVE-2020-8177 at
> https://github.com/CVEProject/cvelist/pulls
> We cannot determine if they used the alternative, web
> form:https://cveform.mitre.org/ <https://cveform.mitre.org/>
>
> You may want to reach Hackerone from the CNA contacts
> <https://cve.mitre.org/cve/request_id.html#cna_participants>, for this
> exception of delay.
>
For these two CVEs, I mailed to support@hackerone.com=C2=A0 ten days ago but
haven't get any reply yet. :-(


Thanks

Xiao

> Kind regards=C2=A0
> --=20
>
> Tausif=C2=A0Siddiqui, PRODUCT SECURITY
>
> 0EE1 F6BF 8991 9A65 0A79 A0A7 5849 60EC 88B8 2C71
>
> secalert@redhat.com
> <https://access.redhat.com/security/team/contact>=C2=A0for urgent respons=
e.
>

--------------D0977AB6AC781F9D5CBB4F90
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2020/7/23 =E4=B8=8B=E5=8D=884:=
21, Mohammad Tausif
      Siddiqui =E5=86=99=E9=81=93:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAC5HUDxonM84K=3Dq2+gsVhOuYBuM_dE=
SB5VZqb5kDAQ2zYy=3DU_g@mail.gmail.com">
=20=20=20=20=20=20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D"font-family:comic sans
            ms,sans-serif;font-size:small"><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 21, 2020 at
            12:12 AM Solar Designer &lt;<a href=3D"mailto:solar@openwall.co=
m" moz-do-not-send=3D"true">solar@openwall.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On Mon, Jul 13, 2020 at
            03:37:03PM +0800, Zhang Xiao wrote:<br>
            &gt; ??? 2020/7/12 ??????1:58, Solar Designer ??????:<br>
            &gt; &gt; On Thu, Jul 02, 2020 at 05:33:20PM +0800, Zhang
            Xiao wrote:<br>
            &gt; &gt;&gt; And, I have another point want to discuss. As
            we know, sometimes, the CVE and NVD website don't upgrade
            their web page timely. For example:<br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; the security maillist had an encrypted mail
            called &quot;curl: overwrite local file with -J&quot; in 202006=
17. It
            was a &quot;pre-notification about a security advisory about to
            ship next week in sync with our next curl release&quot;, for
            CVE-2020-8177. On curl's git tree, that very bug did been
            fixed and released in 20200621:<br>
            &gt; &gt;&gt; <a href=3D"https://github.com/curl/curl/commit/82=
36aba5854" rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">ht=
tps://github.com/curl/curl/commit/8236aba5854</a><br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; But, till now, both <a href=3D"http://cve.mitre.o=
rg" rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">cve.mitre=
.org</a>
            and <a href=3D"http://nvd.nist.gov" rel=3D"noreferrer" target=
=3D"_blank" moz-do-not-send=3D"true">nvd.nist.gov</a>
            still mark this CVE as &quot;RESERVED&quot;:<br>
            &gt; &gt;&gt; <a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2=
020-8177" rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">htt=
ps://nvd.nist.gov/vuln/detail/CVE-2020-8177</a><br>
            &gt; &gt;&gt; <a href=3D"https://cve.mitre.org/cgi-bin/cvename.=
cgi?name=3DCVE-2020-8177" rel=3D"noreferrer" target=3D"_blank" moz-do-not-s=
end=3D"true">https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D<span class=
=3D"gmail_default" style=3D"font-family:&quot;comic
                sans ms&quot;,sans-serif;font-size:small"></span>CVE-2020-8=
177</a><br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; So I wonder if that is also an contribution to
            remind them, if so, any advises to make it? And If it ca be
            defined as an contribution, we can take it. :-)<br>
            &gt; &gt; We've received some responses in this thread
            regarding the specific<br>
            &gt; &gt; example above, but I'd like more general responses
            please.&nbsp; Is there a<br>
            &gt; &gt; general task Wind River can reasonably help with
            for getting CVE details<br>
            &gt; &gt; published for issues that pass the distros and/or
            oss-security lists,<br>
            &gt; &gt; and how exactly could they help with that?<br>
            &gt; <br>
            &gt; Actually, we are glad to make it for some customers are
            also pay<br>
            &gt; attention on these official web pages. We suppose it
            will be easy to<br>
            &gt; make it through the &quot;notify a vulnerability publicati=
on<br>
            &gt; &lt;<a href=3D"https://cveform.mitre.org/" rel=3D"noreferr=
er" target=3D"_blank" moz-do-not-send=3D"true">https://cveform.mitre.org/</=
a>&gt;&quot;.
            But after I submitted the request I just<br>
            &gt; get a reply as &quot;This CVE ID has been reserved by the
            CNA Hackerone and<br>
            &gt; we are currently waiting on them to submit the
            details.&quot; Seems only &quot;the<br>
            &gt; CNA Hackerone&quot; can make it. I have no idea on how to
            notify the &quot;the CNA<br>
            &gt; Hackerone &quot; to push it. :-(=D0=BF=E2=95=A0=D0=91=E2=
=88=99=E2=96=91 Anyway, if possible we
            are glad to make it.<br>
            <br>
            Once again, I think CVE-2020-8177 is more of an exception
            than the rule.<br>
            I would be more interested in comments by &quot;CVE experts&quo=
t; on
            whether the<br>
            task Xiao proposes and volunteers for is in general
            worthwhile or not,<br>
            and why.&nbsp; Would similar &quot;notify a vulnerability publi=
cation&quot;
            reminders<br>
            be desirable for issues that got the CVE IDs from one of the
            CNAs on the<br>
            distros list?<br>
            <br>
          </blockquote>
          <div><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:&quot;comic sans
            ms&quot;,sans-serif;font-size:small">Xiao, Alexander,</div>
          <div class=3D"gmail_default" style=3D"font-family:&quot;comic sans
            ms&quot;,sans-serif;font-size:small"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:&quot;comic sans
            ms&quot;,sans-serif;font-size:small">I think the ball is on
            the CNA: Hackerone side to get it published to MITRE, so<br>
            that they can show it up on their page.<br>
            <br>
            CNAs are provided with weekly reports by the root CNA:
            MITRE, which lists<br>
            Reserved But Public &quot;RBP&quot; CVEs owned by that CNA,
            irrespective of whether the<br>
            CVE was assigned on distros list or elsewhere. That closes
            the reminder loop.<br>
            <br>
            There's no pull request for CVE-2020-8177 at <a href=3D"https:/=
/github.com/CVEProject/cvelist/pulls" moz-do-not-send=3D"true">https://gith=
ub.com/CVEProject/cvelist/pulls</a><br>
            We cannot determine if they used the alternative, web form:<a h=
ref=3D"https://cveform.mitre.org/" moz-do-not-send=3D"true">
              https://cveform.mitre.org/</a><br>
            <br>
            You may want to reach Hackerone from the <a href=3D"https://cve=
.mitre.org/cve/request_id.html#cna_participants" moz-do-not-send=3D"true">C=
NA contacts</a>, for this
            exception of delay.<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:&quot;comic sans
            ms&quot;,sans-serif;font-size:small"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>For these two CVEs, I mailed to <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:support@hackerone.com">support@hackerone.com</a>&nbsp;
      ten days ago but haven't get any reply yet. :-(</p>
    <p><br>
    </p>
    <p>Thanks</p>
    <p>Xiao<br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CAC5HUDxonM84K=3Dq2+gsVhOuYBuM_dE=
SB5VZqb5kDAQ2zYy=3DU_g@mail.gmail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div class=3D"gmail_default" style=3D"font-family:&quot;comic sans
            ms&quot;,sans-serif;font-size:small">Kind regards&nbsp;</div>
        </div>
        -- <br>
        <div dir=3D"ltr" class=3D"gmail_signature">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <p style=3D"color:rgb(0,0,0);font-family:RedHatText,sans-=
serif;font-weight:bold;margin:0px;padding:0px;font-size:14px"><span>Tausif<=
/span>&nbsp;<span>Siddiqui</span><span style=3D"text-transform:uppercase;co=
lor:rgb(170,170,170);margin:0px">, <span class=3D"gmail_default" style=3D"f=
ont-family:&quot;comic sans
                        ms&quot;,sans-serif;font-size:small"></span>PRODUCT
                      SECURITY</span></p>
                  <p style=3D"font-size:12px;color:rgb(0,0,0);font-family:R=
edHatText,sans-serif;margin:0px">0EE1
                    F6BF 8991 9A65 0A79 A0A7 5849 60EC 88B8 2C71<br>
                  </p>
                  <p style=3D"font-size:12px;font-style:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);c=
olor:rgb(0,0,0);font-family:RedHatText,sans-serif;margin:0px"><span><a href=
=3D"https://access.redhat.com/security/team/contact" target=3D"_blank" moz-=
do-not-send=3D"true">secalert@redhat.com</a><span>&nbsp;</span>for
                      urgent response.</span></p>
                  <p style=3D"font-weight:normal;font-size:12px;margin:0px;=
text-transform:capitalize;font-family:RedHatText,sans-serif">
                  </p>
                  <div style=3D"margin-bottom:4px"> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------D0977AB6AC781F9D5CBB4F90--

--------------697ACDD3DAA0962570E4BAF5
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
mQGNBF4Ae50BDACwbUj/aceuDcsq+tIQL0QATYoA+u2PiPN2iGK15Aa3hI0kNngg=0A=
mmuDqJpcwVuMdPjaLMKKRSlwP35Lnt3eY83CS9W3hLrSOx2gWn4Ht1hgHJGxJUyd=0A=
zu2hs3qFbmp2cLrrKDNHJh0gPFoBSbF9cX9QP4LJ9klAOzOYfu2WDv08b9RzJjSq=0A=
BleXHh9z8pRV+AYrAlEjWMP5BiFK3P1p1gtbG2qIaSnh41yt6wOmj5rL69ufFFUs=0A=
CIXqw1jjIxX2fm90zSwxsAro9+r6ApTORtbfC6WP/F4dgkQ/gwRcmC4Ny7wM5RA/=0A=
D20bZUUDAbLMqEB2i4h53ycAnDqLDy68gmmlVxr2x+M72g1o96JRE2HLY0DAT99/=0A=
p02GTa7P/UpvpGFJVq2986oJt/yI6qcyRarqghxO/1MqAxj9Z8VQJq7K3Miu2htC=0A=
nn5OwqjN0p0EQAGFZG+CYEymKEnWY1dHFB/VaNExOjQ1AI1xgeo/VIPRCt5/LhQR=0A=
/dLR+dghTnKF8l8AEQEAAbQlWmhhbmcgWGlhbyA8eGlhby56aGFuZ0B3aW5kcml2=0A=
ZXIuY29tPokB1AQTAQgAPhYhBMhrohy3XE01gvdPGBsKbHBIZwsSBQJeAHueAhsD=0A=
BQkB4TOABQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEBsKbHBIZwsSfEAL/3/e=0A=
a2ZhuYwyV1wNI69z0xkRavJxGU5Yhxl8SpBTMf+BYtIeRXjajAp1SC4DoFCNkQlw=0A=
9sFAbMUJEF5nvmKri1iFiFuhQ8fBzOgDUqJGBpJERNOOsxA1BsJo5gNaa4jrhzCF=0A=
8l1IB3w7rp+EdiljH64kpwbMJU5VsXCkBveQAutL4agLGYpXdACUeJmAbmuF5Aqo=0A=
vdD3sqmtpK+sDZeQv3XmZHBTgvvIbodmNmHfwZ1P0T6TZxkz+w1Poso/18iebDJT=0A=
koB2641CbU1uwFSYAh6Xtfx0XdgRYc0EDtcKGePA7tML5IlKo/XuhWzddKVuDSgs=0A=
WQk9L2yko5cAWmxKr+gZMH4d9mFPdjhKQhaKmrErjUEHPwpm0dVpwHzw4u97RHyB=0A=
ccxt/LpW+iy0jRQlw9aMwmNQSjOzDicufXLCEwqpHFgK4cp8V8I2ApuyHJmdgtdp=0A=
cGj2z6eOxGstxPvsYkznwCXqdi/H2xLyCobb7xbrPtkoOgKD4arhZxXvY9ljmbkB=0A=
jQReAHudAQwAxuWTNTyFF3WCY78cKspC96ep0J8VqpRk62c5NkVvLA0DiAD+OE8A=0A=
z51B9qYVRsu/WWtLUwQpsrXkoGNF9LdiuNegpvJ2zU0bmskN3f9rICp1zWGJXRLR=0A=
JC6+i759arotFbj4i+p4OU+8Bcv6No64hJMOhqpwkjhO/uh0CmwaO4Vte7Zi3Tw2=0A=
dXTLNvjaw/sHA0Y/hpaT+1qAp8X7ovvN0+jvoCoi4M+z6OB2owoBSyyo4Qld2Psf=0A=
zdWyJwv/ODd9AkvsVrRJMK7F1cAPP/yqj47o+31fDWk3vQVpkr2a8KTysS7IS5jS=0A=
CXFt6BQY4/FOae9qjjONil8WTxgHCn56pINK9CmpSkP0ghFVq2lC+Z3nHBmerooW=0A=
N7zRhxn3WCToh8AoWpFgLL9MkjWogOlxQ1q3zTJRR3f8W/1ya0jUjAH4kMnDgPwb=0A=
yJ9sN9k0i44yoCCBVDjxIFeQkWMLqwZO9+36p6NAOLGZszcgI+u8D6lPL25C2cOV=0A=
dT/7NuEcy+evABEBAAGJAbwEGAEIACYWIQTIa6Ict1xNNYL3TxgbCmxwSGcLEgUC=0A=
XgB7nQIbDAUJAeEzgAAKCRAbCmxwSGcLEkr8C/96ujMAmEsMPrZrQ8MdsUG7RVpT=0A=
iWyf+tec2w8jixMQCzrNEImMrbctazLMx5HmTgGtjqmL+XNzSiPuba8Bxj4mFgQy=0A=
Ki9vLKa7HqtoVdl+NdE6JnmH3IhQrLR/KAjZILvO7u7KMQqCcg631xT4p8buixGo=0A=
TfUyypoPdsMgNNHw/xzv4MXgB8nG1SOz1geD0Bt/S57SrKw7lpH4bw8gEoMmXyzS=0A=
nQiq/jbxSvnDE9ZEiwyWg8XGwfFP3bEifF2BPxqM+BiLPwRkJ9Zf25x2BTD7BhL/=0A=
pIzENbgWmTeE/XYZQHMcxCMfnv2l91v8lHr9serIaTEc9Dczi+tdUX5OUdwM1Zt3=0A=
abQULbFfUIMwH6pvn73SKeVmgKYirrDDNTrRl80tqm/aiEe4X42zzonlM4TeRbAI=0A=
ue+d1/tVpYhFeENd+jlsSuh1gAXJwOjPdIGnHJbmeIuEQAbuq3Mt9Z7XjUzC4snF=0A=
7HKfh1eCzhMXQ4H6kLeE2h9X6ec1DkqIeVAu7DI=3D=0A=
=3D7c/X=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------697ACDD3DAA0962570E4BAF5--
