X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4292" "Thursday" "8" "September" "2016" "00:22:55" "+0200" "yi" "yi@yshi.me" "<7abbad32-8eb7-bfa4-c38b-a4d598070600@yshi.me>" "85" "[oss-security] CVE Request : Libtorrent 1.1.0 inflate_gzip denial of service" nil nil nil "9" "2016090722:22:55" "[oss-security] CVE Request : Libtorrent 1.1.0 inflate_gzip denial of service" (number mark "U       yi@yshi.me   Sep  8   85/4292  " thread-indent "\"[oss-security] CVE Request : Libtorrent 1.1.0 inflate_gzip denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18204 invoked by uid 550); 8 Sep 2016 00:50:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18242 invoked from network); 7 Sep 2016 22:23:08 -0000
To: oss-security@lists.openwall.com
From: yi <yi@yshi.me>
Message-ID: <7abbad32-8eb7-bfa4-c38b-a4d598070600@yshi.me>
Date: Thu, 8 Sep 2016 00:22:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------D5FEE8AD7F3482679693EA4F"
X-Ovh-Tracer-Id: 10610762200667725734
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeluddriedugddujeefucdltddurdefledtrddttddmucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenuc
Subject: [oss-security] CVE Request : Libtorrent 1.1.0 inflate_gzip denial of service

--------------D5FEE8AD7F3482679693EA4F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi list,

I recently opened a bug on "Libtorrent 1.1.0" regarding malformed GZIP
encoded responses that causes  denial of service.

For example, an attacker-controlled torrent tracker can crash victim torren=
t=20
clients by sending malformed GZIP responses.

This bug has been fixed by the maintainer in master and the branch RC_1_1:

https://github.com/arvidn/libtorrent/issues/1021

https://github.com/arvidn/libtorrent/pull/1022

I also tested the bug with two "Libtorrent based" softwares :
qBittorrent and Deluge. Both of them were affected and crashed on
receiving the malformed response.


--------------D5FEE8AD7F3482679693EA4F
Content-Type: application/pgp-keys;
 name="0x0443D821.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0x0443D821.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
Version: GnuPG v2.0.22 (GNU/Linux)=0A=
=0A=
mQINBFfQjqYBEAC2iSY9mH5XbAULHHWqkR6nJ30DNp/2BwH29hnB964WC0BZBBPP=0A=
8+LyxO9qzmc+R/0LziAGU53KZuCDUK59q7qZ5PGmIBawhlof8lgXSujQ6iEUSJVU=0A=
Sq4KqYc2ByV/MI9GUQbp7G4Y2bPqpNkLNH7euycPUYJVzmUDHpIZNAvWrrknH4oH=0A=
Jo+uWC5DRhwWHFeNwaYQOyZYmC80O0qUMONCSOsSdvkbSydCqsD48XT9OmyQqPop=0A=
dWH3Q4jW3/o7fcjJxTowERyYnAEiPuVoXqaQWEXVksVLVtbT176BJTEra5JLDCPn=0A=
dtRf57Au0XJsJVBj8Y24hqzKbfgPo9E+ah/P3CoXbVkhoDIBH7HaU6Z0oxOIokBo=0A=
lnoljwri73fDzdnUSFptt85msjPW94ys4I5raZcsxLDat7SBGzDvOsHZhhWdAUW4=0A=
wHJjmxTp32rVzFUGzg5fntByMc90WfR5CrJmcy9bdF87OW8BTWDqIPUyHJWLdBx4=0A=
O1A1QKFUPD5mJviqN6LW9nqHA87SFCXyD9ODGtFMiYtWhqziKnuyDURL56uazkW8=0A=
GJ6uDUh5lptz9YhUHRNG68YtPKQV52gIReBDPKSN7sWC0ol6dU5TISSlHeDhXbd3=0A=
3+vVl1BvnpvUsRxTabdhlxA5uBmSvcSTBRf8PB8HmhplcBMyeF3XGshiJQARAQAB=0A=
tBlyaWNoYXJkIDxyaWNoYXJkQHlzaGkubWU+iQI/BBMBAgApBQJX0I6mAhsjBQkJ=0A=
ZgGABwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQ5o5gVwRD2CGzTA/+LeXn=0A=
k8iYE1PCzHPgu5FaQVuvD2JdANprjD3NjsBbf4pl+nC59B8buKpOKzlUaHG45FkL=0A=
zu7OnugdrxoBMR2az5OfMeTFi6/BIM0qyE7CgM+WU5rQUQBsrmR/JcnQQYLxvFVt=0A=
pyyr5ty/KwzwjQ3OGhbRLTRgeIDAID98AUjrMDXqj65ViiqrntcqyRKu5pzu9y0G=0A=
z/CQjotCh5w5KAEZpDZFaER4cm/T05iEMSZHPk32LAuGaPuBTA3FzGXX5GDuFbch=0A=
cqnyrNGCHXzHxd/U06pwgbgxuHvTVIEG9H4TMF5tPu2bSN62wsV9WTumQ8W/tUgB=0A=
tLx1TBMCXImmKiZHs542GtT57BRpnKg6UmFJQvHXpiGPVyz3vwJY2peRyS/UgHpY=0A=
qJsfXhoQJJPUceXBBgqbE9WuZgTWyi0A5+8llCz+r3u1oIA0RCS8DNlfcM9iapKL=0A=
HqVRvYK/1K+aNYeyBziILVl+0JCxiDRjXpLnZzVP4Zkk9BfrUkLRrlSLemvX5tkc=0A=
GMnwJN0TF6n3Er/wt+2DNoaR57PZaYdjX5iVtevbDSwaYK96F9qvE6xR+39y6+OO=0A=
hmg80vcJ+TAzhKxgzO07DsuzCV1Hg5NppBvZQNrRFmdy4OTEzQ8Oygdq5PfX3I2o=0A=
EM9cZg1qoyfwS6jKJ1qSFxjIDvvcXQCmi9WYAES5Ag0EV9COpgEQAOAizNZeoIAf=0A=
hNNuiXvXhXHw9RixTvf12VkoeygGaE+rNH1XHcVyOfdM5vvjQ5LuQVEFOpQC0HKS=0A=
HahjBED0AtYBDFDKHa/0HtUFx7APjxZfvmBn3jmAJ1FcGX0TFky7g/YF81SONHj7=0A=
YDD8ZZtLAM4Yr87ICpi2o1viBgeOKv0pX+ZVfrPiv04jtm81fLGPwuiidVf3yBkB=0A=
AEyiyaXxv3uxTf/J/q33frWRuXT7f8+rY4+Vi39mCVeABjlPQUz3JYyoaeDGQ0O5=0A=
sxvxPBkeLfxKG0DN3g3opC6gZlVxdXKrzbGllAcVSHbfHgqz3e9BMAnT2CyTEruq=0A=
kf/yqBYH6HVS2jzlBfotGo8KlFbfHs5RZtb9tFyNtFuNx3CKydNr/RT6lQ00ELpw=0A=
08ph98K7R0QgVi4q8I5fMa5L0D73eyZjlHgc+ADfn1b1woYoakYDi1v6FnZJOCRv=0A=
5eLc7ah6UANYPqWVM7cbXmWPl7fur3ED+nOm8Fb57EeI7ZewPHj6GihuGAaQfN3L=0A=
ADXzXmr4Zvqrfsicoumx16JIPg0Z61ADk3DTd7Q2wzgtBzncdWVRL01s1eUqNBBD=0A=
WYl0qYnMg6GHxyMh+7LLMmfRQwm1yyBZTh5WkHTaBMiGJ8mQrBxMjGBuMa7moZar=0A=
75pIYE3PuLGRGFvxzLdfGxHb8v0SfwmxABEBAAGJAiUEGAECAA8FAlfQjqYCGwwF=0A=
CQlmAYAACgkQ5o5gVwRD2CHayA//Q0ICJNEYWBN/PNp41vZPu9JTqBa9mIaeV9GL=0A=
K7nDGqSGZJGJApCW5cLEcn8iZwl1xLuZorjTNxuR6H73sZnu3XB0jit/DKFOWbUn=0A=
8VQRG544Btm1490/61gHj1cYt/UfkDlDTPzNVFg3h5dx9sbWuuFI2ydNEab14NoS=0A=
XWs2QkfjyXh0x1ZGVPu3CpUgZXZD/Yc/LwF0KgWNMIFEQyWfQ5N+uTkKrxBKFhOE=0A=
XxzKNXXYM5Z3MiFa+qFiuV7UcTRfprwT5+sA1Zt5dSRLpFgl80cDBuoB5nFrS3jn=0A=
M2yqfiTE/Ydt0YXDkko0UIlE//M/Z/DvxDksDfU4WsyFvxrpgRXtd4C4yWWiqsLw=0A=
GOqTvM3cN5qfpWobqGQWKnM22pYNe72AeZUdltkP6oeKlcWE2axHGmZ+tJWCuFME=0A=
nwA3n2Z9rCZBKQ2993tkxMs9UoG+/Xu133z3l5Xnl/33z3AvUsBvSqWKlit5GAqt=0A=
B7svPvBtLzWKej1q6wB02SIgSgGIGF7sAzmFz1arD6JUpDNL4Du0z99m8U0XwZnS=0A=
RBZAKgFj96MfQJKn94C6UmgHHxsBt16m/7xp9IzceiTs7bv5wk2FrF8vbL9oBgu/=0A=
04J04Sszgormmk4LjbmTUe6YI6erc15Wmrx8lTjgsfzsxRTWH0snotupku7fl02s=0A=
D/27U3Q=3D=0A=
=3DcuPa=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------D5FEE8AD7F3482679693EA4F--
