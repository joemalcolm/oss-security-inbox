X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3591" "Wednesday" "17" "May" "2017" "22:08:25" "+0200" "Stefan Pietsch" "stefan.pietsch@foxmole.com" "<fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>" "96" "Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues" nil nil nil "5" "2017051720:08:25" "[oss-security] Dolibarr ERP & CRM - Multiple Issues" (number mark "U       stefan.piets May 17   96/3591  " thread-indent "\"Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues\"\n") "<24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>" ("<24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9595 invoked by uid 550); 17 May 2017 21:03:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5295 invoked from network); 17 May 2017 20:09:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=keyidentity.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vbZGKoG5FOHKHPa0HxXvvW2hn34xjJNGAKCNZKRuvJw=;
 b=Xc4g/lMVTUiYHZgukUJ1L02bKISVJoQNNnzXSyKOSBBHZl9+o50Ix1y6jRjU8umKZyzQioWxTFc92+NYtT3mml1PfZST+weKJDr+dfLXO71QR77V5Fqso1YKl1Gwe0BOfCfnXbVPxm00lRYamolFks9hJAZvpdTuvUjEWO+lEDo=
Authentication-Results: seclists.org; dkim=none (message not signed)
 header.d=none;seclists.org; dmarc=none action=none header.from=foxmole.com;
To: <oss-security@lists.openwall.com>
References: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
From: Stefan Pietsch <stefan.pietsch@foxmole.com>
Organization: FOXMOLE
CC: <fulldisclosure@seclists.org>
Message-ID: <fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>
Date: Wed, 17 May 2017 22:08:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="aiqDLvg1tEhUaoGCXwSd6qVSd5QT1viwp"
X-Originating-IP: [31.24.175.118]
X-ClientProxiedBy: DB6PR02CA0025.eurprd02.prod.outlook.com (10.170.218.166) To
 HE1P193MB0057.EURP193.PROD.OUTLOOK.COM (10.171.125.16)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da93ac0c-be28-459c-4654-08d49d608980
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(22001)(201703131423075)(201703031133081);SRVR:HE1P193MB0057;
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;3:HMcBz8rvdu8vq9UQJerXiHm9G5OuDNHq8Q/YtIqcFJbnhDRvOqV8FqKe6b6EFt0THEMqxoarylNOrohxeJNos/c6L/NXvdgcdJi2kzVQLKtXa8u6X+vnrXdwgZffXKztHiKVw99xURs1y1mF2zQDe77FHZxmMeKYuQDL0BKfbb5FxXPLQKUZHzU4CcTEWLGacfaNVbcAYzgXiSGdHBRfoU9fLcCWo4Txi6pYRrSQ9QvyFkhOuMpsGVqxVYtRuYtf2L65xI3zOwNovEAB9T8xyYF5Ud9TwzT8xhMoNwGYckGs548bjYvWjdOTBRbU+TvWv7IYYlbro7Xe7wJdrB9Tjg==;25:k+1D5UAeRrIfITjocK5EIzwwZK+nX+c1a3lFEx+fs8ZFVWhcfxD3pStc4QBLhSoKCgf1C2HfbZ9lppkMEQA59C2snVbKXuVJYmfwmgNfY1KqVXguE0NEkbe2ptOyVwMWZXVJBQ3GbKoHamXwAO6u8Jz2QLagxielOmOdAQ8cOmGobuBxl80NN9QvfeYpBr93gueJE4o6AbiGNUoEjVUr3rSPJa7BAbM62Ufv6OiWAlglzs7nhLeSKn251PM6B3RtpKWWlOQgN0fh6u52tBnhz4aLZg5plcj00kaCF7zZxTY+Hblw1ApV/gx0Xic7TzrA+YFbWuCa5jJn9AlvKa72y00loUTE2ABkyjZBW4VTai9Ky1BmgcPhmXUj4knd4g29MelDRRb+87h7mEzWuzVM+AflPfuTvHKHkTQW/zqokiXtbxVdRNmiEI9nwv9DX8laaFtWoj119rqQqvb393ekbK2fg5iFqVL/6N1vjZqt8bQ=
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;31:zX4zTmMT5+gr89x62oQsjlsllpgdQpE5UcYzLDkwjW2PE9i9z68H6cT5Dzu3oMFqoxAtfGIoB3a3igfvprgW1AijFhzfdW81jVRNpEV6/DjLtnNtPHzH8/syLd9TpcLkn1Ry5RtNGfAMPOK15znz5G2NapxosgJWmg1BFGekM/4ksnV/ByqaqClP8ZlLghchg/amDoVRtxtdWOEQ7Zk5gZXSE0BaOxVrSJ1ehFEm8YQ9sVUzAs0e01oOo5Vz+n0F5w1TfOV6SgKxiLyXER+7ug==;20:JqgixmQF2cOpirGeL/TbEMD1UhgjfPGQrnHxSZUXScSShjC/LAgjgoTG3ibKpbO8jLWsIToc3ZfytSgjNtt9RuM1nLWER6gMoIaTaIwC3lBSDHM82k/xrK2f5gXpE+Cd5O+yZvTgarlWLEwBfU3Olmw4ig3b1fO5kAAujagz2OCGn9Hj4EUS/omzU/yaDlnluGko7fvZvwSl1Lrk+pQCtkzdByT6KsYU596CWrL9AJdoSF3p2TXPvfMDHMTWyduCTP1Z5vh9xvQojwKQaIfX3tQIYMVLSQJFl48fY3ZLnLdknN1E95agAIcb6kY2K0cLPZB2Nj+0utvnLCgQE87BYoj0pExhuWYHBB1gu0ChCdmXDMaJybZPo4d6VbST3UG3TAqKaMQLD064aCuIAy+Tc9PqoQo6op2JRSiOIqJyUjNGTq6n1pSyLIBOoDveMOoETTsFygYYveCKuxD7Uz5odl5xMc/FnfZWoX3qvR+ed/HhfY+Zs56n5pjpJJKCJrZE
X-Microsoft-Antispam-PRVS:
	<HE1P193MB0057BC6B005CC2C10D80276481E70@HE1P193MB0057.EURP193.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test:
	UriScan:(76373721406558)(166708455590820)(192374486261705);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6040450)(2401047)(5005006)(8121501046)(3002001)(93006095)(10201501046)(6041248)(20161123562025)(20161123560025)(20161123558100)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148);SRVR:HE1P193MB0057;BCL:0;PCL:0;RULEID:;SRVR:HE1P193MB0057;
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;4:wmbynY3KfGxs08Iz50b+AlYaqJwhbmGt/zTKssCgMQZrSmjDAhqiIRSbaY6nsdGW9itOMyCo39t514qbFh2GUd5/yRyqvLz6+t67tmnqJxs6nc7395BnQcifa7gKkp0haDghXrStdVgzRswYrndkw9lWNn5M3NORLlnOsNy8N9AbLcEF8ainDnITmg/lLAuBM7bhs2AWfdcrrpMOSiKrMRWGstVeVY8fHazYY9fdwfeKv7y/YSrw00IfTHlj1KMidbYTRMefDdj7kM7jC4g0uv4srIdy5El3xnt32g1mzCj4VIDCWjGurf8U+cN2zxEJUW34rQF5DmDum2L5SFFdbu2VDgoHaH6I40jBwR9VomPhHPx8JqtjlmMrVeCTBl7jKKEVEX7v/w7C9KjHfhU6eHVnI9ZEQ0C7RGyf/u7w1cHZOQ5hPZuEuQcBmjalCDlaFRXBTKStUYP/3XjeeitzHYKe4yWWw8hlyksAXDP7GlSIH723Qo1biU58Qm8Q3SbQPGFgl7DnNfwXorHpmLZ5/EXrjuwLnpWKQVsUI0ZCfjfrn3hjVAMiKx9mV3cZxDbjMIh/OZMMBQvLQrNkGV5kxWAUxP9fnR/2i8ge5IfOaknIAvimETCvhROuy5Nf32LEgiO6qxQy/93Vjv537dVQ1GvQcUX4oxBklZN5EKsyiXJwKglVn3kAv+6hV1RPt9UfmTlBj4w4ZfmFuw8wOPTbXw2QrENf8iNna3a29Afs3W0UhaQKjUsBdm3fGGWX5k41poARte00oAsbei2WPh0PWQSzepYqTnhM9x4SpZZjBf9hj0LtgYNPkqmNmnuotysU33XuzUgeRXbOJCLHndb/eDErXZ/BP1fW8Ik/ZjoqGIs=
X-Forefront-PRVS: 0310C78181
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10019020)(4630300001)(6049001)(6009001)(39400400002)(39830400002)(39410400002)(39450400003)(377424004)(24454002)(54356999)(76176999)(2906002)(551544002)(7736002)(81166006)(42186005)(2351001)(8676002)(31686004)(53936002)(50986999)(512874002)(478600001)(5890100001)(38730400002)(84326002)(4326008)(5660300001)(25786009)(83506001)(6486002)(110136004)(53546009)(36756003)(229853002)(65806001)(42882006)(6306002)(6916009)(15650500001)(189998001)(77096006)(6666003)(2950100002)(3846002)(6116002)(65956001)(305945005)(4001350100001)(66066001)(568964002)(33646002)(21480400002)(966005);DIR:OUT;SFP:1102;SCL:1;SRVR:HE1P193MB0057;H:[10.76.107.12];FPR:;SPF:None;MLV:sfv;LANG:en;
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;HE1P193MB0057;23:djPF0EOhqJJ5ybU9tA8uU0fqVz0h+eQiNfAJpOIuj?=
 =?us-ascii?Q?VEcF5ZGUC/1IDqI1gbE02Cln1/zQUB7UTRfKSS7TVhTzmR+ryC3HWu5QxxDS?=
 =?us-ascii?Q?qkyqU6OaTgQWCj3YaN62b/0tKXOCy0aLiNCW1e7puP2x9W8i0SLh6YhkuGEO?=
 =?us-ascii?Q?PYr+ERlnW+qnvMCaowI+r3gUbK8e0ff6qk79x5a8OfsoRLcQPOYPoywYsTjE?=
 =?us-ascii?Q?M8dZfGRjjINP+QRM+uBo1s3MDj3oiBdWrzfffos3Y7dDJp/N7iPDKc9+fp2X?=
 =?us-ascii?Q?4qf5ztvgwl9kDLcO3XWFMz3iPX9+r7rybpRrJmmSRpLXwScgySfRYOH933sb?=
 =?us-ascii?Q?VLkCaaef8ZYG4WEifB93oNhj3hVlDa8SXup7QwkdYMED9te9/T3tiVZf0B7s?=
 =?us-ascii?Q?Ut+1zVzVfbW99FtY7RqmRC4iTE16O5fWgKYdCNq3aJxAKiQiFv42j5lfTQp8?=
 =?us-ascii?Q?Dzlb0uP9tZWZXAOcW0fSfndKgMtk0MYxXSQwn1X/9fFqWtNe0WhWniycEDxy?=
 =?us-ascii?Q?LtVYK7CEloKtU1A6wkQ5ULU31xGJxzuTzE2lroVDvIcTxf6NOekn5xrGHO+y?=
 =?us-ascii?Q?bXxEXdtHfslk1In9AbfdB5Hw78wZhcAW+0WZkMs20SEQlgSX+cOdIVgQmCGz?=
 =?us-ascii?Q?tCqSGq+2gQB6wFjpuhaMQ0eQWnmaeduzMbvWTECAUTb4fFYcWyYEmXuFWJ0Z?=
 =?us-ascii?Q?a6RIQvZgAbbUt2j5lP9u5XnvZvldF1SjmheTsE9oJ9CT+a9zA+MaF17Z/a8c?=
 =?us-ascii?Q?PhMnWZhYO7j+V4MqSZQKgjUoIziRhY0B/ybh3JLBbcbPVbNe4Xg/HmflqVAV?=
 =?us-ascii?Q?ZXZ+SsqN/F9oS0FPiAgf+iHSZqsqz9ND9MiUeqwMEv4rXDs7SDMazdli2e0g?=
 =?us-ascii?Q?5lE1CfhrHRkeZvaPo9Km3+1YCdl1fxawYQBFDWwf+ZXTfrJxFwXMDXM0P1eD?=
 =?us-ascii?Q?4MEIYzNNdDk7kkvHmL1DnbhT0qYhlKMrlPYl0Hao7Rq83h9VexMzrs8Q9RwQ?=
 =?us-ascii?Q?c+Qh/or8kuv0SVl+EMWcdzpLWWrx7+oeUKR8XxPNaFf9o2z99tqHw27wKGtX?=
 =?us-ascii?Q?VClDRkrmQQ49dRCquHzggZHjBi7D6HWdtn+Hshji13utPTTCvt1LKd+hK+/m?=
 =?us-ascii?Q?e9HV2XqXGECSIRO8I6Aw37WF2M7ImPRJV4dYk7ODj7gOR23kVN0/jfnV2JjF?=
 =?us-ascii?Q?104MMZyfT0Kj6tZFf1JZYhMnRROddzcjonbXG75DVD8F5sp1CukD7YVgmB8+?=
 =?us-ascii?Q?zsPu/vw4IaN2CibioRvfMVA9sTaB7HgornMeB/QUFPMH/ViQm4nGlQfhPzmF?=
 =?us-ascii?Q?xbhKndBJiK4KKBPdt+cPeyPTBtgZt0CJnxvlB+H1/9B?=
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;6:ZIdk1wIjy8LeMa9nmL6Dnpe+IE+8oDYFQvh5pZ3qu9uCMLJGAPUxtA5v/Qr1wuXR/WkeXXHHWMa0y1Y0m3E/KOfUEi3N9lK8vb6sZmiRbtN7nY9UuBhbwIBcBtdNp3ljMPLBmpEc1wOLHMNzFiPw799HML4T2YOxdcAfQtW38Mo0e9Hv0bl9Hd+EO4+aW7CL6aqUfJDGt4xvFt+l/lmJEdTjk+Gwwu8UyqSCab2DA/pSSV+lVqXwi/d46cCgMNzpgNZ8KB7QNHcp6LmxSHvogw2xWDo4ZXNuk+heQaGlhi2p6gDS+qFZnfeGHede5qZ86d5wp1XL5ulfjBRpeMNZ/KN8Acf9WCmrTAOAwlVTmeFC0WZFEUm8OA5qARmzXJdy40+FIFpk04EjZ9wKJMUPtWIi+AbT5raEgGvDolEk7X4zaFW+2ffpxGYCoorh1fSEzjB3pH6qHQvlHw/KKWuF04IJRtloF3wnHo8uALiIxgTMV8xUdFH6MUXFAGLAXLb2EF+cjjLS/MvdRUlkBq5wTQ==;5:Gr+Y48UgPcUqV6UcPMnc+ftT5i4Pd7PRDspIzvaShydJ7SQSzDUxh9RxvL+3VXH7Hp0ELYM/1uuvKcOoMdhXkVxP1P3Xc/p69ZViyTXT7NbYMXgKtTo3/Id8jQ48mnOCE4KzkJ36jGdZP7LUEn7Tzw==;24:J61lNvKtnncjYtQIhxzpf5IcSTKGjHHsRUCFmeOJXS+k8z5kotp1+j4olySGquwnP83RmCW/ZjusFffiMCapin9XAY95AV/gaw2qpg4jA0Q=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;HE1P193MB0057;7:Q+ScQlRb34w0pIkA8k1h51C5/49AmbkK2rI6IhgGNu5BjOYhZrqSP7BTn2U5JEPwmRj8ZA+8E9iy2ecNYFtTS5NVTIfv4aS83ZTOj50Ny9k5Y0D1nZuJQ2mJEfdX5lbYRDDkEAAOQPHsQQPuBnB3uYjAqS81ezFfDHTZOmYn4z09gSyyFlHVtVpgTSEZRLvt1dQundSvpCvhuJbxJwfvI7yBO3aOXW9JNfxu0bhysFimbeCh/30IydbnAnP2hjszPhGCQgNetM6H0HwL1/7JtfnQKObYP8HU3yb7A9n6zondBQShmFUM/fppatq219cPbtpwgFu004UhhFQXK3N/fw==
X-OriginatorOrg: foxmole.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2017 20:08:51.0364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P193MB0057
Subject: Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues

--aiqDLvg1tEhUaoGCXwSd6qVSd5QT1viwp
Content-Type: multipart/mixed; boundary="glGxmna1wKp9hr40UcgVRLTLBk612vt2F";
 protected-headers="v1"
From: Stefan Pietsch <stefan.pietsch@foxmole.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>
Subject: Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues
References: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
In-Reply-To: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>

--glGxmna1wKp9hr40UcgVRLTLBk612vt2F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 10.05.2017 10:28, FOXMOLE Advisories wrote:
> =3D=3D=3D FOXMOLE - Security Advisory 2017-02-23 =3D=3D=3D
>=20
> Dolibarr ERP & CRM  - Multiple Issues
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Affected Versions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Dolibarr 4.0.4
>=20
> Issue Overview
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Vulnerability Type: SQL Injection, Cross Site Scripting,
>                     Weak Hash Algorithm without Salt, Weak Password Chang=
e Method
> Technical Risk: critical
> Likelihood of Exploitation: medium
> Vendor: Dolibarr
> Vendor URL: https://www.dolibarr.org/
> Credits: FOXMOLE employees Tim Herres and Stefan Pietsch
> Advisory URL: https://www.foxmole.com/advisories/foxmole-2017-02-23.txt
> Advisory Status: Public
> OVE-ID: OVE-20170223-0001
> CVE Number: CVE-2017-7886, CVE-2017-7887, CVE-2017-7888
> CVE URL: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7886
>          https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7887
>          https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7888
> CWE-ID: CWE-79, CWE-89, CWE-327, CWE-620, CWE-759
> CVSS 2.0: 10.0 (AV:N/AC:L/Au:N/C:C/I:C/A:C)

--- snip ---

Here is a small update to our security advisory.

An additional CVE ID got assigned for the password change finding:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-8879


Meanwhile the Dolibarr developers fixed more possible SQL injection bugs
in this git commit:
https://github.com/Dolibarr/dolibarr/commit/fa290c34fad108ec7c0751c0372ae9c=
4b4f63b06

They still didn't release a fixed version of the Dolibarr software.



For CVE-2017-7886 I don't agree with the CVSS v2 scoring from the NIST.
They rated "Confidentiality Impact" as partial while I think it is
complete as we have full access to all tables.


Regards,
Stefan


--glGxmna1wKp9hr40UcgVRLTLBk612vt2F--

--aiqDLvg1tEhUaoGCXwSd6qVSd5QT1viwp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEepv1fyVQaa6GHJZVwzksfGYHXNQFAlkcrb4ACgkQwzksfGYH
XNS7rxAAyHLLrHHzlk+Glc8hhRDdzndHB0+NiZfFsBIFaEWr7lOQerveNpcJrrdo
vdY7srj3YSmFAFtO+e0RV3UMQoHsMmlnC3Zh31dcZRjCy7dRhkgtfCO0SfFDKRUR
TZYvMlzieDJ1Fm69jWl/U7qgpNsx892mxKCWK76hTBFQjz/dw/NonRH7cIoimPyK
OBY2sNidJXezuWyfYc6vHwyorMVnW2fLdcb/2PS5Ay7ZJgk812r7N5NmQDQBDdJW
SO1XfdEnjMzxpWYYCAaVLAEJ8wIrCfqtjFs3tG2R5mpvkrdfp9po1k3IODVDFCxq
nScGLZvUo9hBhwxqltdO1sTi6SnFGD0uatx+XoLXhuBtZ6bHqLVnejkjeldno23X
/6zeAgIsL3JGLg1233k6IApBmWXFQnVCkoSIsRpZyVTQypPkWfHjjhbWsjBFNKU9
eg32kA6eBhctf/JBcm5QHYWtL4e66yv/V7ZyfCIcpzDC0HPSKs3oTyGIOjYvuWDm
sLdSxeDGx0BYkbRp9GXKHWKx+j7gkd/SordV5r2/f/9z3H+lamLCkieiTgBe+2fg
xo71a8ZHBy43hTWr/DR0DVEuouQBSHcUMsw1iiyeqR/HXMLlRS60VW++CkeyoIYU
GHqw+WXHDdUCFegvc3Rlzx9TZgrL0sGQlH4/vGY+UwhxoQie+Ew=
=hMZy
-----END PGP SIGNATURE-----

--aiqDLvg1tEhUaoGCXwSd6qVSd5QT1viwp--
