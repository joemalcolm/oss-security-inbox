Received: (qmail 26025 invoked by uid 550); 18 Mar 2023 13:34:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25999 invoked from network); 18 Mar 2023 13:34:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zoulas.com; s=201908;
	t=1679146454; bh=fDjB3kaAIxDlirCysla00/Si11p+m/uAVDPJAduMXKE=;
	h=From:Subject:Date:References:To:In-Reply-To;
	b=jfZG3S7pp2EXB5GFK12zEJNvo07C3fFbwCpCVg1xmQ+2OgyV7sX4slGmIl06l3q43
	 3lLkiHU4rUfLwYFAk2cxUICZy5MMe/ym78PtJOrWVBKruGj4eZvFfauFQtnNXjZ2SP
	 kykLbS2q4ExIF075h7GmDbnJsaArKtcvk/+mtlO93yQowOzwjnc00dWALCtqOiLNB0
	 GF2dzpzxLwSqIJWbCrHTuZzfWyz/Rg+RTlzej7zr2OgTlYB/3TA90HdEkvFJyNOK2e
	 uBk4aMJsqmzAiLoRxysC+6v14XxZumQU3dSxwGYjkw7RSugiXFO3txeXqzzYZi51hq
	 0MUZdTGSQFXDA==
From: Christos Zoulas <christos@zoulas.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_09A9036D-FBF9-46E8-AC06-972745590526";
	protocol="application/pgp-signature";
	micalg=pgp-sha1
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Date: Sat, 18 Mar 2023 09:34:04 -0400
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de> <1a1ae12e36d5f711@orthanc.ca>
To: oss-security@lists.openwall.com
In-Reply-To: <1a1ae12e36d5f711@orthanc.ca>
Message-Id: <26BD1B76-2CA5-4BC9-8601-60A5F78892A0@zoulas.com>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--Apple-Mail=_09A9036D-FBF9-46E8-AC06-972745590526
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6C4BFE43-5F98-4DC5-B9B0-847840A1EF7F"


--Apple-Mail=_6C4BFE43-5F98-4DC5-B9B0-847840A1EF7F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I think that the original reason was for csh(1) to implement file completio=
n:
https://nxr.netbsd.org/xref/src/bin/csh/file.c#161
I still have a use case for it. Sometimes I lose my VPN tunnel and an
ssh session where I am running vi(1) suddenly dies. When I ssh to that
machine, I can easily find the tty where the vi session is with ps(1) and
then type "sti pts/X :wq\\n" and save the file  (https://man.netbsd.org/sti=
.8):-)
Of course on NetBSD you need to be root to use TIOCSTI.

Best,

christos

> On Mar 17, 2023, at 7:13 PM, Lyndon Nerenberg (VE7TFX/VE6BBM) <lyndon@ort=
hanc.ca> wrote:
>=20
> Does anyone even remember why TIOCSTI was added in the
> first place?  I remember stumbling across it decades
> ago (SVR?), but I've ever seen a use case for it.
> It puzzled me back then why it even existed.
>=20
> --lyndon


--Apple-Mail=_6C4BFE43-5F98-4DC5-B9B0-847840A1EF7F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; -webkit-nbsp-=
mode: space; line-break: after-white-space;">I think that the original reas=
on was for csh(1) to implement file completion:<div><div style=3D"display: =
block;"><div style=3D"-webkit-user-select: all; -webkit-user-drag: element;=
 display: inline-block;" class=3D"apple-rich-link" draggable=3D"true" role=
=3D"link" data-url=3D"https://nxr.netbsd.org/xref/src/bin/csh/file.c#161"><=
a style=3D"border-radius:10px;font-family:-apple-system, Helvetica, Arial, =
sans-serif;display:block;-webkit-user-select:none;width:300px;user-select:n=
one;-webkit-user-modify:read-only;user-modify:read-only;overflow:hidden;tex=
t-decoration:none;" class=3D"lp-rich-link" rel=3D"nofollow" href=3D"https:/=
/nxr.netbsd.org/xref/src/bin/csh/file.c#161" dir=3D"ltr" role=3D"button" dr=
aggable=3D"false" width=3D"300"><table style=3D"table-layout:fixed;border-c=
ollapse:collapse;width:300px;background-color:#E5E6E9;font-family:-apple-sy=
stem, Helvetica, Arial, sans-serif;" class=3D"lp-rich-link-emailBaseTable" =
cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"300"><tbody><tr><=
td vertical-align=3D"center"><table bgcolor=3D"#E5E6E9" cellpadding=3D"0" c=
ellspacing=3D"0" width=3D"300" style=3D"font-family:-apple-system, Helvetic=
a, Arial, sans-serif;table-layout:fixed;background-color:rgba(229, 230, 233=
, 1);" class=3D"lp-rich-link-captionBar"><tbody><tr><td style=3D"padding:8p=
x 0px 8px 0px;" class=3D"lp-rich-link-captionBar-textStackItem"><div style=
=3D"max-width:100%;margin:0px 16px 0px 16px;overflow:hidden;" class=3D"lp-r=
ich-link-captionBar-textStack"><div style=3D"word-wrap:break-word;font-weig=
ht:400;font-size:11px;overflow:hidden;text-overflow:ellipsis;text-align:lef=
t;" class=3D"lp-rich-link-captionBar-textStack-bottomCaption-leading"><a re=
l=3D"nofollow" href=3D"https://nxr.netbsd.org/xref/src/bin/csh/file.c#161" =
style=3D"text-decoration: none" draggable=3D"false"><font color=3D"#272727"=
 style=3D"color: rgba(0, 0, 0, 0.847059);">nxr.netbsd.org</font></a></div><=
/div></td><td style=3D"padding:0px 12px 0px 0px;" class=3D"lp-rich-link-cap=
tionBar-rightIconItem" width=3D"32"><a rel=3D"nofollow" href=3D"https://nxr=
.netbsd.org/xref/src/bin/csh/file.c#161" draggable=3D"false"><img src=3D"da=
ta:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAQAAAD/5HvMAAANBGlDQ1B=
rQ0dDb2xvclNwYWNlR2VuZXJpY0dyYXlHYW1tYTJfMgAAWIWlVwdck9cWv9/IAJKwp4ywkWVAgQ=
AyIjOA7CG4iEkggRBiBgLiQooVrFscOCoqilpcFYE6UYtW6satD2qpoNRiLS6svpsEEKvte+/3v=
vzud//fPefcc8495557A4DuRo5EIkIBAHliuTQikZU+KT2DTroHyMAYaAN3oM3hyiSs+PgYyALE=
+WI++OR5cQMgyv6am3KuT+n/+BB4fBkX9idhK+LJuHkAIOMBIJtxJVI5ABqT4LjtLLlEiUsgNsh=
NTgyBeDnkoQzKKh+rCL6YLxVy6RFSThE9gpOXx6F7unvS46X5WULRZ6z+f588kWJYN2wUWW5SNO=
zdof1lPE6oEvtBfJDLCUuCmAlxb4EwNRbiYABQO4l8QiLEURDzFLkpLIhdIa7PkoanQBwI8R2BI=
lKJxwGAmRQLktMgNoM4Jjc/WilrA3GWeEZsnFoX9iVXFpIBsRPELQI+WxkzO4gfS/MTlTzOAOA0=
Hj80DGJoB84UytnJg7hcVpAUprYTv14sCIlV6yJQcjhR8RA7QOzAF0UkquchxEjk8co54TehQCy=
KjVH7RTjHl6n8hd9EslyQHAmxJ8TJcmlyotoeYnmWMJwNcTjEuwXSyES1v8Q+iUiVZ3BNSO4caV=
iEek1IhVJFYoraR9J2vjhFOT/MEdIDkIpwAB/kgxnwzQVi0AnoQAaEoECFsgEH5MFGhxa4whYBu=
cSwSSGHDOSqOKSga5g+JKGUcQMSSMsHWZBXBCWHxumAB2dQSypnyYdN+aWcuVs1xh3U6A5biOUO=
oIBfAtAL6QKIJoIO1UghtDAP9iFwVAFp2RCP1KKWj1dZq7aBPmh/z6CWfJUtnGG5D7aFQLoYFMM=
R2ZBvuDHOwMfC5o/H4AE4QyUlhRxFwE01Pl41NqT1g+dK33qGtc6Eto70fuSKDa3iKSglh98i6K=
F4cH1k0Jq3UCZ3UPovfi43UzhJJFVLE9jTatUjpdLpQu6lZX2tJUdNAP3GkpPnAX2vTtO5YRvp7=
XjjlGuU1pJ/iOqntn0c1biReaPKJN4neQN1Ea4SLhMeEK4DOux/JrQTuiG6S7gHf7eH7fkQA/Xa=
DOWE2i4ugg3bwIKaRSpqHmxCFY9sOB4KiOXwnaWSdvtLLCI+8WgkPX9YezZs+X+1YTBj+Cr9nM+=
uz/+yQ0asZJZ4uZlEMq22ZIAvUa+HMnb8RbEvYkGpK2M/o5exnbGX8Zzx4EP8GDcZvzLaGVsh5Q=
m2CjuMHcOasGasDdDhVzN2CmtSob3YUfg78Dc7IvszO0KZYdzBHaCkygdzcOReGekza0Q0lPxDa=
5jzN/k9MoeUa/nfWTRyno8rCP/DLqXZ0jxoJJozzYvGoiE0a/jzpAVDZEuzocXQjCE1kuZIC6WN=
GpF36oiJBjNI+FE9UFucDqlDmSZWVSMO5FRycAb9/auP9I+8VHomHJkbCBXmhnBEDflc7aJ/tNd=
SoKwQzFLJy1TVQaySk3yU3zJV1YIjyGRVDD9jG9GP6EgMIzp+0EMMJUYSw2HvoRwnjiFGQeyr5M=
ItcQ+cDatbHKDjLNwLDx7E6oo3VPNUUcWDIDUQD8WZyhr50U7g/kdPR+5CeNeQ8wvlyotBSL6kS=
CrMFsjpLHgz4tPZYq67K92T4QFPROU9S319eJ6guj8hRm1chbRAPYYrXwSgCe9gBsAUWAJbeKq7=
QV0+wB+es2HwjIwDyTCy06B1AmiNFK5tCVgAykElWA7WgA1gC9gO6kA9OAiOgKOwKn8PLoDLoB3=
chSdQF3gC+sALMIAgCAmhIvqIKWKF2CMuiCfCRAKRMCQGSUTSkUwkGxEjCqQEWYhUIiuRDchWpA=
45gDQhp5DzyBXkNtKJ9CC/I29QDKWgBqgF6oCOQZkoC41Gk9GpaDY6Ey1Gy9Cl6Dq0Bt2LNqCn0=
AtoO9qBPkH7MYBpYUaYNeaGMbEQLA7LwLIwKTYXq8CqsBqsHlaBVuwa1oH1Yq9xIq6P03E3GJtI=
PAXn4jPxufgSfAO+C2/Az+DX8E68D39HoBLMCS4EPwKbMImQTZhFKCdUEWoJhwlnYdXuIrwgEol=
GMC98YL6kE3OIs4lLiJuI+4gniVeID4n9JBLJlORCCiDFkTgkOamctJ60l3SCdJXURXpF1iJbkT=
3J4eQMsphcSq4i7yYfJ18lPyIPaOho2Gv4acRp8DSKNJZpbNdo1rik0aUxoKmr6agZoJmsmaO5Q=
HOdZr3mWc17ms+1tLRstHy1ErSEWvO11mnt1zqn1an1mqJHcaaEUKZQFJSllJ2Uk5TblOdUKtWB=
GkzNoMqpS6l11NPUB9RXNH2aO41N49Hm0appDbSrtKfaGtr22iztadrF2lXah7QvaffqaOg46IT=
ocHTm6lTrNOnc1OnX1df10I3TzdNdortb97xutx5Jz0EvTI+nV6a3Te+03kN9TN9WP0Sfq79Qf7=
v+Wf0uA6KBowHbIMeg0uAbg4sGfYZ6huMMUw0LDasNjxl2GGFGDkZsI5HRMqODRjeM3hhbGLOM+=
caLjeuNrxq/NBllEmzCN6kw2WfSbvLGlG4aZpprusL0iOl9M9zM2SzBbJbZZrOzZr2jDEb5j+KO=
qhh1cNQdc9Tc2TzRfLb5NvM2834LS4sIC4nFeovTFr2WRpbBljmWqy2PW/ZY6VsFWgmtVludsHp=
MN6Sz6CL6OvoZep+1uXWktcJ6q/VF6wEbR5sUm1KbfTb3bTVtmbZZtqttW2z77KzsJtqV2O2xu2=
OvYc+0F9ivtW+1f+ng6JDmsMjhiEO3o4kj27HYcY/jPSeqU5DTTKcap+ujiaOZo3NHbxp92Rl19=
nIWOFc7X3JBXbxdhC6bXK64Elx9XcWuNa433ShuLLcCtz1une5G7jHupe5H3J+OsRuTMWbFmNYx=
7xheDBE83+566HlEeZR6NHv87unsyfWs9rw+ljo2fOy8sY1jn41zGccft3ncLS99r4lei7xavP7=
09vGWetd79/jY+WT6bPS5yTRgxjOXMM/5Enwn+M7zPer72s/bT+530O83fzf/XP/d/t3jHcfzx2=
8f/zDAJoATsDWgI5AemBn4dWBHkHUQJ6gm6Kdg22BecG3wI9ZoVg5rL+vpBMYE6YTDE16G+IXMC=
TkZioVGhFaEXgzTC0sJ2xD2INwmPDt8T3hfhFfE7IiTkYTI6MgVkTfZFmwuu47dF+UTNSfqTDQl=
Oil6Q/RPMc4x0pjmiejEqImrJt6LtY8Vxx6JA3HsuFVx9+Md42fGf5dATIhPqE74JdEjsSSxNUk=
/aXrS7qQXyROSlyXfTXFKUaS0pGqnTkmtS32ZFpq2Mq1j0phJcyZdSDdLF6Y3ZpAyUjNqM/onh0=
1eM7lriteU8ik3pjpOLZx6fprZNNG0Y9O1p3OmH8okZKZl7s58y4nj1HD6Z7BnbJzRxw3hruU+4=
QXzVvN6+AH8lfxHWQFZK7O6swOyV2X3CIIEVYJeYYhwg/BZTmTOlpyXuXG5O3Pfi9JE+/LIeZl5=
TWI9ca74TL5lfmH+FYmLpFzSMdNv5pqZfdJoaa0MkU2VNcoN4J/SNoWT4gtFZ0FgQXXBq1mpsw4=
V6haKC9uKnIsWFz0qDi/eMRufzZ3dUmJdsqCkcw5rzta5yNwZc1vm2c4rm9c1P2L+rgWaC3IX/F=
jKKF1Z+sfCtIXNZRZl88sefhHxxZ5yWrm0/OYi/0VbvsS/FH55cfHYxesXv6vgVfxQyaisqny7h=
Lvkh688vlr31fulWUsvLvNetnk5cbl4+Y0VQSt2rdRdWbzy4aqJqxpW01dXrP5jzfQ156vGVW1Z=
q7lWsbZjXcy6xvV265evf7tBsKG9ekL1vo3mGxdvfLmJt+nq5uDN9VsstlRuefO18OtbWyO2NtQ=
41FRtI24r2PbL9tTtrTuYO+pqzWora//cKd7ZsStx15k6n7q63ea7l+1B9yj29OydsvfyN6HfNN=
a71W/dZ7Svcj/Yr9j/+EDmgRsHow+2HGIeqv/W/tuNh/UPVzQgDUUNfUcERzoa0xuvNEU1tTT7N=
x/+zv27nUetj1YfMzy27Ljm8bLj708Un+g/KTnZeyr71MOW6S13T086ff1MwpmLZ6PPnvs+/PvT=
razWE+cCzh0973e+6QfmD0cueF9oaPNqO/yj14+HL3pfbLjkc6nxsu/l5ivjrxy/GnT11LXQa99=
fZ1+/0B7bfuVGyo1bN6fc7LjFu9V9W3T72Z2COwN358OLfcV9nftVD8wf1Pxr9L/2dXh3HOsM7W=
z7Kemnuw+5D5/8LPv5bVfZL9Rfqh5ZParr9uw+2hPec/nx5MddTyRPBnrLf9X9deNTp6ff/hb8W=
1vfpL6uZ9Jn739f8tz0+c4/xv3R0h/f/+BF3ouBlxWvTF/tes183fom7c2jgVlvSW/X/Tn6z+Z3=
0e/uvc97//7fCQ/4Yk7kYoUAAAA4ZVhJZk1NACoAAAAIAAGHaQAEAAAAAQAAABoAAAAAAAKgAgA=
EAAAAAQAAAEigAwAEAAAAAQAAAEgAAAAAs/lk1QAABadJREFUaAXtWVtoXEUY/jbdJLvbNJfG9J=
KWYFOv8dItUhAUbUEqTdWmD/pghBQCIiqS1MuDlMYrFKooqKVW7aMPgrSIYlQsiSLES7ZRa2pMt=
fXSeqlivMbaNcdv5uw5O3P27NlzWfTlzJJk5r/Nt//M/PPPHyBusQdiD8QeiD0QeyD2QFU9kIhg=
rRlX8HMxOrAI82nnD/yAr/AR3sYoZiLYDaFaj168ijyMMp88hilRH8JyCJU0tuIbCeQURjCEzbg=
AC1HHz0L2NpMyglOSf5yS6RAzBFLZgCNyshxuJoByrYXcnJQ7gg3lhKLTU9glJ5lAN5x7zygxny=
CUCSm/C6kSbhUIi/E+zc9iEElaS6FHs6kDehHtkpvEADUMjGOxJl2FQSemaXga2YKtOnyLcxW7K=
qDLcVjxYLaguUKRjtxdjqOE8x7aFEsP4XFlpAJ6HncoHKAVY9Q+iuUaNcIgIzfoGBo0Gx04KaOP=
RuRgAX3X7CA2SEg5ZBz0kMM9crGEd9RFAm7k5G5Nn/Zaegj0rVjyZ9zEg9K6aWhW7p0kJnFPIPU=
GPIe7ChpZub27A+m7CKdk3BkscNoxFQDSJZQel2fSVN/Kr/Z51BAwSCMTitF2euk8F+BOUg3uxt=
84jdUKI4kPac36cgrDf7cex2lCd3OtD/WleIN6BnY4ZDeSdiKKj3ppIKfEFIf9MsPreOsLONPaT=
VbLUUKe194yej7IwzTbT7klPmRNkRSewpyEM4d1ttYyPEDP3MRxP3nDNj1gp5kJxl9ootZ+HMKt=
aKyofyE+lmCEf4pHvAc/4gl0Se0mWsyXxKmKhk2BTTQ7WpBdhxfwnbYETiMJ3CYPtgBjMDi22AI=
ZLaSOkrvJ5gXq7KTqkKLhHgZNgTa8JIGYcAxcr+jp3SHKPaKT/I5epqp+p5fTvIo7xIIi/u4vJ0=
h6D/mvePA9WFNUNVfeQ4isnTigwZnBMg+FLspOefA9WL9QVdxD3m0t/sH9zLCLHrrFU6GVkj95S=
pRliinqynJNRiPTii2E3WB76S3XuDVTANxEiwZz7lDNAlQ0VmpmL42LPGcezsAHnGrWkRGUakQA=
VHnJRGDYUphzHlbia2wrReCgRFiySpu6jZFpH30jWg2v3Dk+E81c2oFBG0bY1JWO/T7mjEvlZBf=
xjprDk2USNg1PpWNfo0tro085WqVR1EEf420/I3IK9zJBWYC1uB2/qQJKX1w/VhMWD1uDYH/Vq0=
NoppUcuoOv9z08T6sJJo9HPS+VJL5kqLyayyraCPddyKujeLkCZzHcn7QvhAQP+SSLDEOMQYdwq=
ZzI61eGvszhTYo0ysu1eM95abnwrPTjBm7fHTjTlhjg4txJ35zGgwFKCouoL9KP12w7gTsiQRun=
Vkab9nz8yUw7j4P2s9G/YRGrRF4UsqXkpble067lg9Gg47cpmbYmoA30Q7OempFSWDAlN+gJ8Zq=
32n2kjLHw4qetZPQWC2W2JBfZYIkmUkvx4aK+FNbgV+4eMxj6Mbwdn9iQxJeL/AwC3xwG90xWzp=
7GbpztB4cis53nUNTSVtGKgY0KJ3T3WRqaloWG1kIssUypS2nRRLy6pjhgbw1/zKf0Xo0eepDhL=
hL7RhQ21ZbGF0rmXORkmNR3FIfszZfFhoPVKjaACcYxCUlP1/q0VHRGvk9MHI/hYQWQWY45Vr1y=
jLDdKTf3Z1rkeVfbESqgcxhIrdQuy4RVbOZOBWJVuksYIkUCNlAIAm18IqlRRgUE9MmnT7Gk5/+=
pGQBsCk8Tkig+uFVWdUDCrFX03B3lNV8JX7fvsrDwp0FpN/CVZgnEF4Vz8xVmFc67eNZq+Wnho0=
ktnJ/4LwrnJnbxr4XXeb0KH7h98uSG/NdCIpB3dOEWXInL6JVOVqFFQfR3fM/INIl3uN1/1kXjU=
eyB2AOxB2IPxB6IPfC/eeBfPdm2eoBKnHEAAAAASUVORK5CYII=3D" draggable=3D"false" =
style=3D"pointer-events:none !important;display:inline-block;width:32px;hei=
ght:32px;" class=3D"lp-rich-link-captionBar-rightIcon" width=3D"32" height=
=3D"32"></a></td></tr></tbody></table></td></tr></tbody></table></a></div><=
/div><div>I still have a use case for it. Sometimes I lose my VPN tunnel an=
d an</div><div>ssh session where I am running vi(1) suddenly dies. When I s=
sh to that</div><div>machine, I can easily find the tty where the vi sessio=
n is with ps(1) and</div><div>then type "sti pts/X :wq\\n" and save the fil=
e &nbsp;(<a href=3D"https://man.netbsd.org/sti.8">https://man.netbsd.org/st=
i.8</a>):-)&nbsp;</div><div>Of course on NetBSD you need to be root to use =
TIOCSTI.</div><div><br></div><div>Best,</div><div><br></div><div>christos</=
div><div><br><blockquote type=3D"cite"><div>On Mar 17, 2023, at 7:13 PM, Ly=
ndon Nerenberg (VE7TFX/VE6BBM) &lt;lyndon@orthanc.ca&gt; wrote:</div><br cl=
ass=3D"Apple-interchange-newline"><div><div>Does anyone even remember why T=
IOCSTI was added in the<br>first place? &nbsp;I remember stumbling across i=
t decades<br>ago (SVR?), but I've ever seen a use case for it.<br>It puzzle=
d me back then why it even existed.<br><br>--lyndon<br></div></div></blockq=
uote></div><br></div></body></html>=

--Apple-Mail=_6C4BFE43-5F98-4DC5-B9B0-847840A1EF7F--

--Apple-Mail=_09A9036D-FBF9-46E8-AC06-972745590526
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iF0EARECAB0WIQS+BJlbqPkO0MDBdsRxESqxbLM7OgUCZBW9zAAKCRBxESqxbLM7
OsA9AJsEZvF0y1WyUIQecgjteYPDYJW0bQCfS4+t9l7U2nHi3Sk/CcA2mhwCdSc=
=tZCv
-----END PGP SIGNATURE-----

--Apple-Mail=_09A9036D-FBF9-46E8-AC06-972745590526--
