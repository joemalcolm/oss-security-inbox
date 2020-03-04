X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2306" "Wednesday" "4" "March" "2020" "18:52:11" "+0000" "John Haxby" "john.haxby@oracle.com" "<3553F8C1-C0B0-457D-84EA-4E04B4CC8EF1@oracle.com>" "59" "Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" "^Date:" nil nil "3" "2020030418:52:11" "[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" (number mark "        john.haxby@o Mar  4   59/2306  " thread-indent "\"Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities\"\n") "<CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>" ("<CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19636 invoked by uid 550); 4 Mar 2020 18:52:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19609 invoked from network); 4 Mar 2020 18:52:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 content-transfer-encoding : mime-version : subject : date : references :
 to : in-reply-to : message-id; s=corp-2020-01-29;
 bh=VIG1HRo+8vUK3fgAQ30DtSLbLm+s0/Mz/DWTDOdsjzo=;
 b=Ee+y+RxSmUdGpRXOIDbaPQzqWelJY0+5LFcjOEZ70lf9cWxSOlLgBC8bmsLxFYqxSggZ
 6kIOo/XeZVc/R4vgMMCBHoFf6qbr53FpoHAJZp+3hWnm6g7GArHkGBAHnS65YVxvLa8D
 QRhlXxM/3wh6LVxHmXbEACWdeIV7LUNOqatYyx9xaCrCF/FsShyGwqz/oSvXCROGHGQV
 TfSn3jflZZoe1uarYGiWTvgrJU2eLF4YHMXHgk05wJ9UTkF0gTSSzl0cGoWRTmMNkcyW
 pxEoZk5nD0hsovWurSzlgbRyI8znAMJTqcVn0iZo+/d2zHCp7i038odf+re5NqKP4ZGy Gw== 
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
References: <CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>
In-Reply-To: <CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>
Message-Id: <3553F8C1-C0B0-457D-84EA-4E04B4CC8EF1@oracle.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9550 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003040125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9550 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1034 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003040125
Date: Wed, 4 Mar 2020 18:52:11 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS leaving distros/linux-distros on May 26,
 handing off responsibilities
To: oss-security@lists.openwall.com



> On 3 Mar 2020, at 05:07, Benjamin Gilbert <benjamin.gilbert@coreos.com> w=
rote:
>=20
> Hi all,
>=20
> Red Hat recently announced [1] that CoreOS Container Linux will reach
> end-of-life on May 26.  The Container Linux team will be leaving the
> distros lists on that date, and will need to hand off our maintenance
> responsibilities to other distros.  We're currently handling [2]:
>=20
> Administrative-1: Promptly review new issue reports for meeting the
> list's requirements and confirm receipt of the report and, when
> necessary, inform the reporter of any issues with their report (e.g.,
> obviously not actionable by the distros) and request and/or propose
> any required yet missing information (most notably, a tentative public
> disclosure date/time) - primary: CoreOS, backup: Oracle
>=20
> Administrative-2: If the proposed public disclosure date is not within
> list policy, insist on getting this corrected and propose a suitable
> earlier date - primary: CoreOS, backup: CloudLinux
>=20
> Administrative-6: If multiple issues are reported at once, see if any
> of them can reasonably be made public sooner than the rest, and if so
> help untangle them and stay on top of their disclosure process -
> primary: CoreOS, backup: CloudLinux
>=20
>=20
> Oracle isn't signed up for any other tasks, so it seems natural for
> them to move up to primary on #1.  In addition to being backup on #2
> and #6, CloudLinux is primary on Administrative-3 (evaluate if the
> issue is already public).  In my experience it makes sense to handle
> #1 and #2 together, so: Oracle, would you be willing to take primary
> on #1 and #2, and CloudLinux, what would you think of moving up to
> primary on #6?


We, Oracle, happy to pick up primary for #1 and #2.

Benjamin has done a sterling job with these -- always been prompt and clear=
 -- we all owe him a debt of thanks.

jch

>=20
> It'd also be good to get volunteers for the backup slots.  Any takers?
>=20
> We plan to continue executing our current responsibilities until May
> 26, but if other distros want to take over our roles sooner for ease
> of bookkeeping, we're open to that.
>=20
> Best,
> --Benjamin Gilbert
>=20
> [1]: https://coreos.com/os/eol/
> [2]: https://oss-security.openwall.org/wiki/mailing-lists/distros#contrib=
uting-back

