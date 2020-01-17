X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1449" "Friday" "17" "January" "2020" "14:50:33" "+0000" "John Haxby" "john.haxby@oracle.com" "<0D9C0CEE-95B6-4017-B15B-85A47CA67701@oracle.com>" "44" "Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" "^Date:" nil nil "1" "2020011714:50:33" "[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" (number mark "        john.haxby@o Jan 17   44/1449  " thread-indent "\"Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume\"\n") "<3a7ec6d5-2959-3daa-a540-ac6389dc15f0@tao.at>" ("<CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>" "<3a7ec6d5-2959-3daa-a540-ac6389dc15f0@tao.at>") nil nil nil nil nil nil nil "Re: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21665 invoked by uid 550); 17 Jan 2020 14:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21647 invoked from network); 17 Jan 2020 14:50:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2019-08-05;
 bh=Csk2x/COTfgoJLA5LUhA5Z33EBr70hQNelSmHFce9rw=;
 b=mraaRe7/0GAkyW74ra+BPZiW6PZR5KTyCmNG+ZzjkL2T4MiEsydInuKAXKQH6jOQHVf4
 kZQ3SEEmt5JT++s9Pxlp6+Cz3xVY+ZK1KOXZlmyo9FwxMrEqVmpIac7zW8jY+GHqsIzH
 LFtCA8pMjz1fsN6Ox5j1qfCsemZs0spX9ADyC0hnhh3xrJokAAqDYXD1R+LJC/uzYNLH
 4fYdWsxA8K+nbLTl1Q6GY6upBY9OYYsQio40YdwPV5VaKiUjckqCovWb6kCWUTXL5vWa
 y7JPAx5tBkyAGFT27ci5i8nIiZEo3A1Fv3X+3xUaWiM6Ga8AhKAjEhxUQp9MIhpYsesz oQ== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_210CEB37-1275-4536-B182-97EFB6057984";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>
 <3a7ec6d5-2959-3daa-a540-ac6389dc15f0@tao.at>
In-Reply-To: <3a7ec6d5-2959-3daa-a540-ac6389dc15f0@tao.at>
Message-Id: <0D9C0CEE-95B6-4017-B15B-85A47CA67701@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=849
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001170116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=897 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001170116
Date: Fri, 17 Jan 2020 14:50:33 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Some AMD cpus with RDRAND fail to produce random
 numbers after suspend/resume
To: oss-security@lists.openwall.com

--Apple-Mail=_210CEB37-1275-4536-B182-97EFB6057984
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 17 Jan 2020, at 08:10, Sven Schwedas <sven.schwedas@tao.at> wrote:
>=20
> On 17.01.20 05:21, Jeffrey Walton wrote:
>> I agree with Lennart Poettering. This seems CVE worthy given RDRAND is
>> often used to get the kernel generator (and other userland generators)
>> in good working order.
>=20
> From my understanding it's harmless as far as linux's kernel generator
> is concerned, as it's just xor'd to other entropy sources?
>=20
> CVEs should only be needed on a case-by-case basis for userland
> generators that aren't properly engineered.

Actually, the kernel does use rdrand directly for cases where a strong CPRN=
G not required.  Whether some of those cases result in an exploitable bug I=
 wouldn't like to say.

jch

--Apple-Mail=_210CEB37-1275-4536-B182-97EFB6057984
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXiHJuQAKCRBFC7t+lC+j
yE4HAQCB5CKJsxdThvGokb5eK6YxoKx2qjEOTlbxlehwQRsUpgD/TgrNFWwJnDCd
1alwES9vrZdklcqTRC2W7hxk1zrJHoE=
=/fc/
-----END PGP SIGNATURE-----

--Apple-Mail=_210CEB37-1275-4536-B182-97EFB6057984--
