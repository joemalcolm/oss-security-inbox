X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["683" "Tuesday" "26" "September" "2017" "21:07:37" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<4174873.rEhhimjYuO@wanheda>" "18" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Cc:" nil nil "9" "2017092619:07:37" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        ago@gentoo.o Sep 26   18/683   " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13362 invoked by uid 550); 26 Sep 2017 19:07:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13342 invoked from network); 26 Sep 2017 19:07:53 -0000
Message-ID: <4174873.rEhhimjYuO@wanheda>
In-Reply-To: <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov> <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org> <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Kurt Seifried <kseifried@redhat.com>
Date: Tue, 26 Sep 2017 21:07:37 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On marted=EC 26 settembre 2017 20:18:38 CEST Kurt Seifried wrote:
> You can check the CVE Database? There is the official MITRE one:
> cve.mitre.org and the DWF for Open Source (and yes, I lag in submissions =
to
> MITRE) at https://github.com/distributedweaknessfiling/DWF-CVE-Database/ =
in
> both cases the CVEs will have reference link(s) that ideally point to the
> upstream making it easy to match up.

As pointed out in the past (maybe spender?) the real issue is when there is=
 a=20
silent fix of a vulnerability where the commit message does not clearly sta=
te=20
about the security implication. Afaik it happens frequently.

--=20
Agostino Sarubbo
Gentoo Linux Developer
