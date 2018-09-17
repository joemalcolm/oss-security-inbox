X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1254" "Monday" "17" "September" "2018" "16:00:04" "-0400" "Leo Famulari" "leo@famulari.name" "<20180917200004.GA21388@jasmine.lan>" "31" "Re: [oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781" nil nil nil "9" "2018091720:00:04" "[oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781" (number mark "U       leo@famulari Sep 17   31/1254  " thread-indent "\"Re: [oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781\"\n") "<baedf150-30b4-9039-6488-f5c7b479bb50@thelounge.net>" ("<c44ca0f1-cba9-b129-20b2-ba59816cfd13@apache.org>" "<c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>" "<d08c27a3-a842-e545-38aa-82a4eb50f8bd@thelounge.net>" "<CAMMMAUH38nTHLyjMkZQdhLHh6trT+Ezd=MGhS=+=bTuGWcYJSA@mail.gmail.com>" "<baedf150-30b4-9039-6488-f5c7b479bb50@thelounge.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13612 invoked by uid 550); 17 Sep 2018 20:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32288 invoked from network); 17 Sep 2018 20:00:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	mesmtp; bh=XJwc16Xzkk02nW5MFYikaczzcwMU1fhxFEIF5SQCMJg=; b=UlKrF
	rddHBEm5MxGTb+Jx45T91DhcmunQ+bSCTzppsbEK4dCuWsO7DNtCe/09XfmEHtsH
	aw08TScvcdQ4Y9tyKVjfVqenUVmMD91cXqbRa6LEJBix2dc2gwaOYcLFFI02QDPL
	5uho0kI2ftJuiM0zGNqO1oCxOJVurBHfC+RzRA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=XJwc16Xzkk02nW5MFYikaczzcwMU1
	fhxFEIF5SQCMJg=; b=IbzALxXebndVOhndFdyeEQtsr7gzd/f9iIA4l8y5eFMxk
	H+7s/YdjhzDbr8LqyEQ066pu/5G+Wgv8atxW7QZn2qzxZLMdDgqyjoQQkBD6RtW9
	pPVbmTddPN/w+yH1qX6TsELrmIkLsnbDTe2kfUiv656cxyZdOFiIbbUo3vGXn6dD
	pgbvCDbL40dqqhHz3DSOnVI6Y2ZhGrSfYfIgUVPzHEZ/C2iqOOUu8pgWkaaoxp6u
	lwg/TDHOuFgtMhwPBTvD2ZNro55UwcIVMHd01+UwZe9j0q6aeVhh/GcjOdnWyyby
	xy19EjQDElf3wCvJkyaA3tPATo0it2+JSa5t7V0RQ==
X-ME-Proxy: <xmx:xwegW7ttZT7XWo5LEOJcJgt9boOOTSJMLa3RK6gRknZVOpvuD8dBzg>
    <xmx:xwegW4qoJPPQfrgutyn1QPgEK2WBsxEYQvJEy78ZG98wNKK7_VwQtQ>
    <xmx:xwegWxp13vs7ctmTBcUeRFdnOwpDFEd6QrYd59gPcVGThOp3cueDGA>
    <xmx:xwegW4066Xasj0yyvhILns0dcXA6NJy8U7CdRSrc5epVjZcXr0ThHg>
    <xmx:xwegW-kmrK46avxY2L7YDiPDiYDx2Faj0eXAPUU5G7tH1g5_fqoGow>
    <xmx:yAegW8M_213iHVVe587oiaQsi5-odOir5YLjQDaoZcQ2Pgl8VtSVMA>
X-ME-Sender: <xms:xwegW6Yd0_f5G5UBByZNYMoA_lw6EJCbNE06a2EwE1BkF3xgp90ITg>
Date: Mon, 17 Sep 2018 16:00:04 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Cc: "Kevin A. McGrail" <kmcgrail@apache.org>,
	SA Mailing list <users@spamassassin.apache.org>,
	Spamassassin Devel List <dev@spamassassin.apache.org>,
	announce@spamassassin.apache.org, announce@apache.org,
	security@spamassassin.apache.org
Message-ID: <20180917200004.GA21388@jasmine.lan>
References: <c44ca0f1-cba9-b129-20b2-ba59816cfd13@apache.org>
 <c57c0f41-742c-3c3e-249c-ae2614bf0d7d@apache.org>
 <d08c27a3-a842-e545-38aa-82a4eb50f8bd@thelounge.net>
 <CAMMMAUH38nTHLyjMkZQdhLHh6trT+Ezd=MGhS=+=bTuGWcYJSA@mail.gmail.com>
 <baedf150-30b4-9039-6488-f5c7b479bb50@thelounge.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <baedf150-30b4-9039-6488-f5c7b479bb50@thelounge.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Re: [SECURITY] Apache SpamAssassin 3.4.2 resolves
 CVE-2017-15705, CVE-2016-1238, CVE-2018-11780 & CVE-2018-11781

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 16, 2018 at 11:29:27PM +0200, Reindl Harald wrote:
> bad guys typically watch better than anyone else

Agreed, that's why it's important to publicize the vulnerability so that
the "good people" notice it quickly.

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlugB8QACgkQJkb6MLrK
fwjT9BAAz5ilfQhCJPqvvh97aQOTdk+ABdnSMowphaZ9n8R1eiLuMFngIqMO5gBU
pGMXINOP6GFWeeAQV8qp+/bavCKda5nRKgMYwRqObJ7ijf+HYwJMG3TXGlN147XM
lyU0UPDJOT//D9mqvyLCbaLFoxmv0cE6csMXoFt57NnZ+vIodK1MeEKlHqJy+c7y
jkt/oH2Ferv+jh0YHjJimie/OBZlW8oNVrkGHhs4bzQW5oES5zQWYWXj2T90rjTl
4w8GJRIc9flqJYfUYL2cyhIqBYZ9rwk59zd+3SnBaxqngaMs/fUeXEIvPjdJzTri
4sVpLe+cmgvhYZsESejkLbwYgRCy+d7e4IgVmL/ApiOT8PDNuvmBZSh2cWITvSz+
X+MwXgvbOMiUt0OANoUHaXG2H2Y/FeWGyUL84R+CLDfLQM8bv4RyBeHMwSwQek8s
X++3bXZ5gwVlJZiZaxk4MeQlnw5ulZezXjvH6h2/oPY/lU1g1Ls7eyutMjwB1LFE
80seeanqvLFngqQMi6lggykhqOr5nBhPUnszhcxDTEGVbML0W7TxMHQcMJ3tfmxK
pVCm+ZBrv2UGx3vbRkikFlfaaNObBUJMeT7L05qOr1VdAPjTV4pGHU8Am/W6M9oU
8GrXIv7Qpz7GqKdmBjoAKcqnYQ5N7jTQNJ3ua8IK/aykXsq0ofA=
=cdZx
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--
