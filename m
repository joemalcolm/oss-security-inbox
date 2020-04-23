X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["383" "Thursday" "23" "April" "2020" "21:21:35" "+0100" "John Haxby" "john.haxby@oracle.com" "<E9ED0420-574C-4912-A130-6753D5AFE82C@oracle.com>" "19" "Re: [oss-security] spoofing of local email sender via a homoglyph attack" "^Cc:" nil nil "4" "2020042320:21:35" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        john.haxby@o Apr 23   19/383   " thread-indent "\"Re: [oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<20200423181234.GA23035@openwall.com>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "<20200423133148.GA19214@openwall.com>" "<2236ad47936a87f144248f9ab6c7340f@promiselabs.net>" "<20200423151430.GA21258@openwall.com>" "<8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>" "<20200423181234.GA23035@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1273 invoked by uid 550); 23 Apr 2020 20:23:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1246 invoked from network); 23 Apr 2020 20:23:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=EcblqPWHlSiGRQCz0ka4mEcQ3YGUiTLqZy31DwUou3s=;
 b=HIffTriXGLRRZDBJoT4G2Tzn9NLPo0uikonS8+mC0aZoEUl0IySGdLmpjJ+LGKIEVlfp
 T7zuQh8m3ubHMxE0g33XZiB7EJB2HeWz8LGg/lU2QD36EpmziEFRo7p2L6RunQprg7aJ
 n+7vZLNvW9os90Y/95pLYwaST9/gEr2Dl9Gl/9H71NozPoNw4NTJnplvsuthIqln/eRN
 EpqNRtFCOoN23cM8hQbWhaQc19baqWWPZO2OnY1fp6Q90dY3xMcnDtfaKavJAiaoFfYz
 79guTxwYkrikAmXjThdyqiJztDTCTOQPPZwSqeZZkkvYH4kSbL4voa3Z2XtYbc1RIfjP 7Q== 
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
In-Reply-To: <20200423181234.GA23035@openwall.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E9ED0420-574C-4912-A130-6753D5AFE82C@oracle.com>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
 <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
 <20200423133148.GA19214@openwall.com>
 <2236ad47936a87f144248f9ab6c7340f@promiselabs.net>
 <20200423151430.GA21258@openwall.com>
 <8c73ccfed18df9cf7c01e9be05710a5e@promiselabs.net>
 <20200423181234.GA23035@openwall.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9600 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 mlxlogscore=877
 adultscore=0 suspectscore=1 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004230149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9600 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=1 mlxlogscore=936 phishscore=0
 impostorscore=0 mlxscore=0 clxscore=1034 malwarescore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004230150
Cc: Wietse Venema <wietse@porcupine.org>
Date: Thu, 23 Apr 2020 21:21:35 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spoofing of local email sender via a homoglyph
 attack
To: oss-security@lists.openwall.com



> On 23 Apr 2020, at 19:12, Solar Designer <solar@openwall.com> wrote:
>=20
>=20
> Does anyone see any reasonable action on these (non-)issues?  If not, I
> think the CVE should be rejected.  It's a case of "works as intended."


Yep.  I agree.   I don't see this as an issue at all -- it's the way SMTP w=
orks, basically.

jch

>=20
>>>>>>> Use CVE-2020-12063.
>=20
> Alexander

