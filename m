Received: (qmail 14007 invoked by uid 550); 3 Oct 2024 19:14:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13976 invoked from network); 3 Oct 2024 19:14:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1727982879; bh=sqn7+7iVSXwSFFZBbK+l1Wer9OZiiZsGq9QTFi/ZIKo=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=p6t8NegCwh2mysWk1v3hfqtI748qj3LIAPok+6HPGdblSGAhjZYvjk6jCa73kCuu3
	 8BZDh7nZhIh/vriLY/vfMpUiqdhFj8MNX9y/na4HayHCAXomBLU5dJL8QmH1SiYtjr
	 9GN0oTO6w8xA2Og0LVndIb4MPSnItRxkYtNl0GFytrIFM296LKhRNicvHv4Ph9cI9V
	 qQErCylxkqN4Dtrc8uGTm8PooFIxABWiQCYutArmluDxafIoCCa5YShYcFgr7ATfiD
	 tHVJ/qt34L2aGK/Z2anHTuU6CKzsOfgktdpMGRdDNxbXd/X8xbyvHhrlnpgh7z3h+b
	 qFmRdhTbE30kw==
To: oss-security@lists.openwall.com
From: Larry Cashdollar <larry0@me.com>
Date: Thu, 3 Oct 2024 19:14:35 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2416B19.10000-master-0-afff60057808
Message-id: <d9c0f651-952d-49d2-9db6-69ad20a58d36@me.com>
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--daa771e6-c072-41e2-81fa-4bbefaad90d8
MIME-Version: 1.0
In-Reply-To: <c04ebb34-521b-42d1-bd50-c2ea9d0e78f7@app.fastmail.com>
References: <175c118b-0771-425c-bc9d-d7da8ec5f40b@me.com>
 <c04ebb34-521b-42d1-bd50-c2ea9d0e78f7@app.fastmail.com>
X-Proofpoint-ORIG-GUID: iyAtVNwaruujAcXIFudfQHpByAdOmCc_
X-Proofpoint-GUID: iyAtVNwaruujAcXIFudfQHpByAdOmCc_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-03_17,2024-10-03_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410030136
Subject: =?utf-8?B?UmU6IFtvc3Mtc2VjdXJpdHldIGN1cHMtYnJvd3NlZCB2dWxuZXJhYmxlIHRv?=
 =?utf-8?B?IEREb1MgYW1wbGlmaWNhdGlvbiBhdHRhY2s=?=

--Apple-Webmail-42--daa771e6-c072-41e2-81fa-4bbefaad90d8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

Hello, Peter On Oct 3, 2024, at 2:58 PM, Peter van Dijk <peter@7bits.nl> wr=
ote: Hello, On Thu, Oct 3, 2024, at 19:54, Larry Cashdollar wrote: I've req=
uested a CVE ID to be able to discern between the RCE and the DoS vulnerabi=
lity. I reported this as https://github.com/OpenPrinting/cups-filters/secur=
ity/advisories/GHSA-rq86-c7g6-r2h8 last week, and in the edits at the top (=
by upstream, above the Summary heading) it looks like they did not want (or=
 did not consider) to request a separate CVE for this. Please do coordinate=
 with them if you decide to go ahead with this request. (I did notice, and =
can see value in, Will Dormann's suggestion in the other thread that it mig=
ht make sense to have more fine-grained CVEs for this collection of problem=
s.) -- Peter van Dijk peter@7bits.nl I'll follow up with them. Thanks! Larr=
y=

--Apple-Webmail-42--daa771e6-c072-41e2-81fa-4bbefaad90d8
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--daa771e6-c072-41e2-81fa-4bbefaad90d8


--Apple-Webmail-86--daa771e6-c072-41e2-81fa-4bbefaad90d8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><br></div><div>Hello,&nbsp;Peter<br></div><div><div><=
br></div></div><blockquote type=3D"cite"><div>On Oct 3, 2024, at 2:58 PM, P=
eter van Dijk &lt;peter@7bits.nl&gt; wrote:<br></div><div><br></div><div><b=
r></div><div><div><div>Hello,<br></div><div><br></div><div>On Thu, Oct 3, 2=
024, at 19:54, Larry Cashdollar wrote:<br></div><blockquote type=3D"cite">I=
've requested a CVE ID to be able to discern between the RCE and the DoS vu=
lnerability.<br></blockquote><div><br></div><div>I reported this as <a href=
=3D"https://github.com/OpenPrinting/cups-filters/security/advisories/GHSA-r=
q86-c7g6-r2h8" rel=3D"noopener noreferrer">https://github.com/OpenPrinting/=
cups-filters/security/advisories/GHSA-rq86-c7g6-r2h8</a> last week, and in =
the edits at the top (by upstream, above the Summary heading) it looks like=
 they did not want (or did not consider) to request a separate CVE for this=
. Please do coordinate with them if you decide to go ahead with this reques=
t.<br></div><div><br></div><div>(I did notice, and can see value in, Will D=
ormann's suggestion in the other thread that it might make sense to have mo=
re fine-grained CVEs for this collection of problems.)<br></div><div><br></=
div><div>-- <br></div><div> Peter van Dijk<br></div><div> <a href=3D"mailto=
:peter@7bits.nl">peter@7bits.nl</a><br></div></div></div></blockquote><div>=
<br></div><div>I'll follow up with them.<br></div><div><div><div><br></div>=
</div></div><div>Thanks!<br></div><div><div><div><br></div></div></div><div=
>Larry<br></div><div><br></div></div></body></html>=

--Apple-Webmail-86--daa771e6-c072-41e2-81fa-4bbefaad90d8--

--Apple-Webmail-42--daa771e6-c072-41e2-81fa-4bbefaad90d8--

